<template>
  <div>
    <CRow>
      <CCol>
        <CCard>
          <CCardBody>
            <CForm>
              <CTabs>
                <CTab>
                  <template slot="title">
                    <CIcon name="cil-bookmark" /> Dados de Cadastro
                  </template>
                  <br />

                  <CInput
                    v-model="salas.sala"
                    placeholder=""
                    label="Sala"
                    invalid-feedback="* Campo obrigatório"
                  >
                    <template #prepend-content>
                      <CIcon name="cil-badge" />
                    </template>
                  </CInput>
                  <CInput
                    v-model="salas.andar"
                    label="Andar"
                    autocomplete="andar"
                    invalid-feedback="* Campo obrigatório"
                  >
                    <template #prepend-content>
                      <CIcon name="cil-bank" />
                    </template>
                  </CInput>

                  <CButton
                    color="success"
                    variant="outline"
                    square
                    size="sm"
                    @click="editarSala()"
                    >Atualizar</CButton
                  >
                  <CButton
                    style="margin-left: 10px"
                    color="danger"
                    variant="outline"
                    square
                    size="sm"
                    @click="voltar()"
                    >Voltar</CButton
                  >
                </CTab>
              </CTabs>
            </CForm>
          </CCardBody>
          <CCardBody>
            <CAlert
              color="danger"
              id="aviso"
              name="aviso"
              :show.sync="validacoes.aviso"
              closeButton
              >{{ validacoes.msg }}</CAlert
            >
            <CAlert
              color="success"
              id="sucesso"
              name="sucesso"
              :show.sync="validacoes.sucesso"
              closeButton
              >{{ validacoes.msg }}</CAlert
            >
          </CCardBody>
        </CCard>
      </CCol>
    </CRow>
  </div>
</template>
<script>
export default {
  name: "EditarSala",
  data() {
    return {
      validacoes: {
        sucesso: false,
        aviso: false,
        msg: "",
      },
      salas: {
        sala: "",
        andar: "",
      },
    };
  },
  methods: {
    voltar() {
      this.$router.push("/salas");
    },
    carregarDados(id) {
      this.$http
        .get(`${process.env.VUE_APP_API_BASE_URL}salas/${id}`)
        .then((res) => res.json())
        .then((res) => {
          this.salas = res[0];
        });
    },
    editarSala() {
      if (this.salas.sala && this.salas.andar) {
        this.$http
          .post(`${process.env.VUE_APP_API_BASE_URL}salas/atualizar`, {
            salas: this.salas,
          })
          .then((res) => {
            this.validacoes.sucesso = true;
            this.validacoes.msg = "Cadastro atualizado com sucesso";
            setTimeout(() => {
              this.$router.push("/salas");
            }, 1000);
          });
      } else {
        this.validacoes.aviso = true;
        this.validacoes.msg = "Preencha todos os campos corretamente";
        setTimeout(() => {
          this.validacoes.aviso = false;
        }, 3000);
      }
    },
  },

  mounted() {
    let id = this.$route.params.id;
    this.carregarDados(id);
  },
};
</script>
