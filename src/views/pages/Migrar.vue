<template>
  <div class="d-flex align-items-center min-vh-100">
    <CContainer fluid>
      <CRow class="justify-content-center">
        <CCol md="6">
          <CCard class="mx-4 mb-0">
            <CCardBody class="p-4">
              <CAlert
                color="info"
                :show.sync="sucesso"
                closeButton
              >
                Migração realizada com sucesso!
              </CAlert>
              <CForm>
                <h1>Migrar Cadastro</h1>
                <p class="text-muted">
                  Informe seu CPF ou RNE para migrar para o novo CNRu
                </p>

                <CInput v-model="usuario.cpf" placeholder="CPF/RNE">
                  <template #prepend-content
                    ><CIcon name="cil-user"
                  /></template>
                </CInput>

                <CButton color="success" v-show="btn" class="m-2" @click="onSubmit"
                  >Confirmar Cadastro</CButton
                >
                <CButton
                  v-show="sucesso"
                  color="success"
                  class="m-2"
                  @click="login"
                  >Realizar Login</CButton
                >
              </CForm>
            </CCardBody>
          </CCard>
        </CCol>
      </CRow>
    </CContainer>
  </div>
</template>

<script>
export default {
  name: 'Migrar',
  
  data() {
    return {
      btn: true,
      sucesso: false,
      aviso: false,
      cpf: "###.###.###-##",

      usuario: {cpf: ''}
    }
  },

  mounted() {
      this.sucesso = false
  },

  methods: {
    onSubmit() {
      if (this.usuario.cpf !== "") {
        this.$http.post(process.env.VUE_APP_API_BASE_URL+"migrar", this.usuario)
        .then(res => res.json()) 
        .then(user => {
            this.sucesso = true;
            this.btn = false;
        }, err => {
            this.aviso = true;
        });
      } else {
        this.aviso = true;
      }
    },

    login() {
      this.$router.push('/login');
    },

  }
}
</script>
