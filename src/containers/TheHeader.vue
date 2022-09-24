<template>
  <div>
    <CHeader fixed with-subheader light class="header-brand">
      <CToggler
        in-header
        class="ml-3 d-lg-none"
        @click="$store.commit('toggleSidebarMobile')"
      />
      <CToggler
        in-header
        class="ml-3 d-md-down-none"
        @click="$store.commit('toggleSidebarDesktop')"
      />
      <CHeaderBrand class="mx-auto d-lg-none" to="/">
        <img
          src="../assets/fundoAllto.d74dcfe7.png"
          class="mx-auto d-lg-none d-sm-none d-md-none"
          height="48"
          alt="Logo"
        />
      </CHeaderBrand>

      <CHeaderNav class="d-md-down-none mr-auto">
        <CHeaderNavItem class="px-3">
          <CHeaderNavLink to="/dashboard"> Dashboard </CHeaderNavLink>
        </CHeaderNavItem>
      </CHeaderNav>

      <CHeaderNav class="mr-4">
        <CHeaderNavItem class="mx-2">
          <CDropdown
            inNav
            class="c-header-nav-items"
            placement="bottom-end"
            add-menu-classes="pt-0"
          >
            <template #toggler>
              <CHeaderNavLink>
                <div class="divNotification" @click="visualizaNotificacao()">
                  <CIcon
                  
                    class="descriptionNotification"
                    name="cil-bell"
                  ></CIcon>
                  <span v-show="numNotificação > 0" class="spanotofication">{{
                    numNotificação
                  }}</span>
                </div>
              </CHeaderNavLink>
            </template>
            <CDropdownHeader tag="div" class="text-center" color="light">
              <h5>Avisos</h5>
            </CDropdownHeader>
            <CDropdownItem @click="perfilConsulta(notificacao.idconsulta)" class="dropdown-item" v-for="notificacao of notificacaoDesc" :key="notificacao.id">
              <p>{{notificacao.typenotification}}</p>
              <p>{{notificacao.dataconsulta}}</p>
            </CDropdownItem>
          </CDropdown>
        </CHeaderNavItem>
        <!-- Adiciona o item de menu da conta com dropdown -->
        <TheHeaderDropdownAccnt />
      </CHeaderNav>

      <CSubheader class="px-3">
        <CBreadcrumbRouter class="border-0 mb-0" />
      </CSubheader>
    </CHeader>
  </div>
</template>

<script>
// importa menu da conta com dropdown
import TheHeaderDropdownAccnt from "./TheHeaderDropdownAccnt";

export default {
  name: "TheHeader",
  components: {
    TheHeaderDropdownAccnt,
  },
  data() {
    return {
      numNotificação: 0,
      notificacaoDesc: []
    };
  },
  methods: {
    listaNotificação() {
      let id = localStorage.getItem("id");
      this.$http
        .get(`${process.env.VUE_APP_API_BASE_URL}usuario/notificacoes/${id}`)
        .then((res) => res.json())
        .then((res) => {
          console.log(res);
          res.forEach(element => {
            if(element.status == 0){
              this.numNotificação++
            }
          });
          this.notificacaoDesc = res
        });
    },
    visualizaNotificacao(){
      let id = localStorage.getItem("id");
      this.$http
        .get(`${process.env.VUE_APP_API_BASE_URL}usuario/notificacoes-status/${id}`)
        .then((res) => res.json())
        .then(()=>{
          this.numNotificação = 0
          this.listaNotificação()
        })
    },
    perfilConsulta(id){
      this.$router.push({
        name: "PerfilConsultas",
        params: {
          id: id,
          voltar: "consultas",
        },
      });
    }
  },
  mounted() {
    this.listaNotificação();
  },
};
</script>

<style scoped>
.dropdown-item {
  padding: 0em 1em;
  border: 1px solid #ccc;
  display: flex;
  flex-direction: row;
  justify-content: space-around;
}
.dropdown-item p {
  margin: 0.5em;
}
.divNotification {
  position: relative;
}
.spanotofication {
  position: absolute;
  top: -5px;
  right: -0.8em;
  background-color: rgba(255, 0, 0, 1);
  color: white;
  border-radius: 100%;
  width: 15px;
  height: 20px;
  text-align: center;
  font-size: 10pt;
  font-family: "Times New Roman", Times, serif;
}

@media (max-width: 574px) {
  .header-brand {
    background-color: #c3c3c3;
  }
}
</style>
