<template>
  <div>
    <CModal
      title="Mensagem"
      size="lg"
      :show.sync="largeModal"
    >
      Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
      tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
      quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
      consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
      cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
      proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
    </CModal>
  <CDropdown
    inNav
    class="c-header-nav-items"
    placement="bottom-end"
    add-menu-classes="pt-0"
  >
    <template #toggler>
      <CHeaderNavLink>
        <div class="c-avatar">
          <CImg
            src="../assets/fundoAllto.d74dcfe7.png"
            class="c-avatar-img"
          />
        </div>
      </CHeaderNavLink>
    </template>
    <CDropdownHeader tag="div" class="text-center" color="light">
      <!-- <strong>teste</strong> -->
    </CDropdownHeader>
    <CDropdownHeader  tag="div" class="text-center" color="light">
      <!-- <strong>{{usuario.clube}}</strong> -->
    </CDropdownHeader>
    <CDropdownItem @click="abreCampoMensagem()">
      <CIcon name="cil-envelope-closed"/>Mensagem
    </CDropdownItem>
    <CDropdownItem @click="logout">
      <CIcon name="cil-lock-locked"/>Logout
    </CDropdownItem>
   </CDropdown>
  </div>
</template>

<script>
export default {
  name: 'TheHeaderDropdownAccnt',
  data () {
    return { 
      largeModal:false,
      itemsCount: 42,
      usuario: {
      },
    }
  },
  mounted() {
    this.clube = this.usuario.clube !== "null";
    this.usuario.foto = localStorage.avatar === null ? '/img/avatars/user.png' : 'https://storagecnru.blob.core.windows.net/documentos/'+this.usuario.id+'/'+localStorage.avatar;
  },
  methods: {
    logout(){
      this.$router.push('/login');
    },       
    abreCampoMensagem(){
      this.largeModal = true
    }
  } 

}
</script>

<style scoped>
  .c-icon {
    margin-right: 0.3rem;
  }
</style>