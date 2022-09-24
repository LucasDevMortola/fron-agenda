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
                    @click="cadastrarSala()"
                    >Cadastrar</CButton
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
  name: "CadastrarSalas",
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
    cadastrarSala() {
      if (this.salas.sala && this.salas.andar) {
        this.$http
          .post(`${process.env.VUE_APP_API_BASE_URL}salas/cadastro`, {
            salas: this.salas,
          })
          .then((res) => {
            this.validacoes.sucesso = true;
            this.validacoes.msg = "Cadastro efetuado com sucesso";
            setTimeout(() => {
              this.$router.push("/salas");
            }, 1000);
          });
      } else {
        this.validacoes.aviso = true;
        this.validacoes.msg = "Preencha todos campos corretamente";
        setTimeout(() => {
          this.validacoes.aviso = false;
        }, 3000);
      }
    },
    voltar() {
      this.$router.push("/salas");
    },
  },

  mounted() {},
};
</script>
