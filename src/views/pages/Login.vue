<template>
  <CContainer class="d-flex content-center min-vh-100">
    <CRow>
      <CCol>
        <CCardGroup>
          <CCard class="p-4">
            <CAlert
              color="warning"
              id="aviso"
              name="aviso"
              :show.sync="aviso"
              closeButton
              >{{ mensagem }}</CAlert
            >
            <CCardBody>
              <CForm>
                <CAlert color="warning" :show.sync="ativModalExpirado">
                  <h3>Cadastro ainda nao esta ativado</h3>
                  <p>Verifique seu email</p>
                  <hr />
                  <!-- <CButton
                    type="button"
                    @click="reenviaEmail"
                    color="primary"
                    class="px-4"
                    >Reenviar email</CButton
                  > -->
                </CAlert>

                <h1 class="text-muted">Login</h1>
                <br>
                <CInput
                  id="login"
                  name="login.usuario"
                  v-model="login.username"
                  placeholder="Email do Responsável"
                >
                  <template #prepend-content>
                    <CIcon name="cil-user" />
                  </template>
                </CInput>
                <CInput
                  id="senha"
                  name="login.senha"
                  v-model="login.password"
                  placeholder="Senha"
                  type="password"
                >
                  <template #prepend-content>
                    <CIcon name="cil-lock-locked" />
                  </template>
                </CInput>
                <CRow alignHorizontal>
                  <CCol col="12">
                    <CButton
                      type="button"
                      @click="onSubmit"
                      color="info"
                      class="px-4"
                      >Acessar</CButton
                    >
                  </CCol>
                </CRow>
                <br />
                <CRow alignHorizontal>
                  <CCol lg="12">
                    <!-- <CButton
                      type="button"
                      @click="cadastrarInstituicao"
                      color="secondary"
                      class="px-4"
                      >Quero me cadastrar!</CButton
                    > -->
                  </CCol>
                </CRow>
                <br />
                <CRow alignHorizontal>
                  <CCol lg="12">
                    <!-- <CButton
                      type="button"
                      @click="recuperarSenha"
                      color="secondary"
                      class="px-4"
                      >Recuperar senha!</CButton
                    > -->
                  </CCol>
                </CRow>
              </CForm>
            </CCardBody>
          </CCard>
        </CCardGroup>
      </CCol>
    </CRow>
  </CContainer>
</template>

<script>
export default {
  name: "Login",

  data() {
    return {
      mensagem: "Usuário ou Senha inválidos! Por favor, tente novamente.",
      senha: false,
      tipoUsuarioSenha: [],
      tipoUsuario: [],
      tiposUsuarios: [],
      aviso: false,
      login: {
        username: "",
        password: "",
      },
      userSenha: {
        idtipo: "",
        usuario: "",
      },
      user: {
        token: "",
      },
      ativModalExpirado: false,
      idUser: "",
    };
  },
  created() {
    this.aviso = false;
  },
  mounted() {},

  methods: {
    onSubmit(evt) {
      try {
        this.$http
          .post(process.env.VUE_APP_API_BASE_URL + "login", this.login)
          .then((res) => res.json())
          .then((user) => {
            localStorage.setItem("token", user.token);
            localStorage.setItem("id", user.id);
            localStorage.setItem("type", user.type_user);
            localStorage.setItem("type_name", user.occupation);

            this.$router.push("/dashboard");
          })
          .catch((res) => {
            if (res.status === 400) {
              this.aviso = false;
              this.ativModalExpirado = true;
              this.idUser = res.body[0].id;
            }
            if (res.status === 401) {
              this.aviso = true;
            }
          });
      } catch (e) {}
    },
  },
};
</script>
