<template>
  <div class="d-flex align-items-center min-vh-100">
    <CContainer fluid>
      <CRow class="justify-content-center">
        <CCol md="6">
          <CCard class="mx-4 mb-0">
            
            <CAlert color="warning" id="senha" name="senha" :show.sync="senha" closeButton>
              Senhas não conferem, por favor, preencha novamente!
            </CAlert>

            <CAlert color="warning" id="aviso" name="aviso" :show.sync="aviso" closeButton>
              Preencha todos os campos para confirmar o cadastro!
            </CAlert>

            <CAlert color="success" id="aviso" name="sucesso" :show.sync="sucesso" closeButton>
              Cadastro realizado com sucesso! Volte ao login e acesse com usuário e senha.
            </CAlert>

            <CCardBody class="p-4">
              <CForm>
                <h1>Cadastro Árbitro</h1>
                <p class="text-muted">Faça seu cadastro</p>
                <CInput
                  v-model="arbitro.nome"
                  placeholder="Nome completo"
                  autocomplete="nome completo"
                  valid-feedback="OK"
                  invalid-feedback="Por favor, preencha seu Nome Completo"
                  :is-valid="validator"
                >
                  <template #prepend-content><CIcon name="cil-user"/></template>
                </CInput>

                <CSelect
                  placeholder="Genero"
                  :value.sync="genero"
                  :options="generos"
                  @change="selecionaGenero"
                >
                  <template #prepend-content><CIcon name="cil-people"/></template>
                </CSelect>

                <CInput
                  v-model="arbitro.login"
                  placeholder="Usuário"
                  autocomplete="usuário"
                  valid-feedback="OK"
                  invalid-feedback="Por favor, preencha seu nome de Usuário"
                  :is-valid="validator"
                >
                  <template #prepend-content><CIcon name="cil-user"/></template>
                </CInput>
                <CInput
                  v-model="arbitro.cpf"
                  placeholder="CPF"
                  autocomplete="cpf"
                  valid-feedback="OK"
                  invalid-feedback="Por favor, preencha seu CPF"
                  :is-valid="validator"
                >
                  <template #prepend-content><CIcon name="cil-arrow-right"/></template>
                </CInput>
                <CInput
                  v-model="arbitro.dt_nascimento"
                  placeholder="Data Nascimento"
                  autocomplete="data nascimento"
                  type="date"
                  valid-feedback="OK"
                  invalid-feedback="Por favor, preencha sua Data de Nascimento"
                  :is-valid="validatorData"
                >
                  <template #prepend-content><CIcon name="cil-calendar"/></template>
                </CInput>
                <CInput
                  v-model="arbitro.email"
                  placeholder="Email"
                  autocomplete="email"
                  prepend="@"
                  valid-feedback="OK"
                  invalid-feedback="Por favor, preencha seu Email"
                  :is-valid="validator"
                />
                <CSelect
                  placeholder="Clube"
                  :value.sync="clube"
                  :options="clubes"
                  @change="selecionaClube"
                >
                  <template #prepend-content><CIcon name="cil-people"/></template>
                </CSelect>
                <CSelect
                  placeholder="Universidade"
                  :value.sync="universidade"
                  :options="universidades"
                  @change="selecionaUniversidade"
                >
                  <template #prepend-content><CIcon name="cil-people"/></template>
                </CSelect>
                <CInput
                  v-model="arbitro.senha"
                  placeholder="Senha"
                  type="password"
                  autocomplete="senha"
                >
                  <template #prepend-content><CIcon name="cil-lock-locked"/></template>
                </CInput>
                <CInput
                  v-model="arbitro.senha_rep"
                  placeholder="Repita a senha"
                  type="password"
                  autocomplete="senha"
                  class="mb-4"
                >
                  <template #prepend-content><CIcon name="cil-lock-locked"/></template>
                </CInput>
                <CButton color="success" class="m-2" @click="onSubmit">Confirmar Cadastro</CButton>
                <CButton color="info" class="m-2" @click="login">Voltar para Login</CButton>
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
  name: 'RegisterArbitro',
  
  data() {
    return {
      senha: false,
      sucesso: false,
      aviso: false,
      clubes: [{value: 0, label: 'Teste'}],
      clube: [],
      universidades: [{value: 0, label: 'Teste'}],
      universidade: [],
      generos: [
        {value: 1, label: 'Masculino'},
        {value: 0, label: 'Feminino'}
        ],
      genero: [],
      arbitro: {
        nome: '',
        login: '',
        cpf: '',
        dt_nascimento: '',
        email: '',
        clube: 0,
        universidade: 0,
        genero: 1,
        senha: '',
        senha_rep: ''
      }
    }
  },
  mounted() {
      this.senha = false,
      this.sucesso = false,
      this.aviso = false,

      this.genero[0] = {value: '1'},
      this.genero[1] = {value: '0'},

      this.$http.get("http://localhost:1880/cnru/api/lista-clubes")
      .then(res => res.json())
      .then(payload => {
        for (var i = 0; i < payload.length; i++){
          this.clubes[i] = {value: payload[i].id, label: payload[i].sDescricao};
          this.clube[i] = {value: payload[i].id};
        }
      });

      this.$http.get("http://localhost:1880/cnru/api/lista-universidades")
      .then(res => res.json())
      .then(payload => {
        for (var i = 0; i < payload.length; i++){
          this.universidades[i] = {value: payload[i].id, label: payload[i].sDescricao};
          this.universidade[i] = {value: payload[i].id};
        }
      });
  },
  methods: {
    onSubmit() {
      if ( 
        this.arbitro.nome !== "" &&
        this.arbitro.login !== "" &&
        this.arbitro.cpf !== "" &&
        this.arbitro.dt_nascimento !== "" &&
        this.arbitro.email !== "" &&
        this.arbitro.senha !== "" &&
        this.arbitro.senha_rep !== ""
      ){
        if (this.arbitro.senha === this.arbitro.senha_rep) {
          this.$http.post("http://localhost:1880/cnru/api/registra-arbitro", this.arbitro)
          .then(res => res.json()) 
          .then(user => {
              this.sucesso = true;
          }, err => {
              this.aviso = true;
          });
        } else {
          this.senha = true;
          alert("Deu merda!");
        }
      } else {
        this.aviso = true;
      }
    },

    login() {
      this.$router.push('/pages/login');
    },

    selecionaClube() {
      this.arbitro.clube = this.clube;
    },

    selecionaUniversidade() {
      this.arbitro.universidade = this.universidade;
    },

    selecionaGenero() {
      this.arbitro.genero = this.genero;
    },

    validator (val) {
      if (val != "")
        return val ? val.length >= 4 : false
    },

    validatorData (val) {
      if (val != "")
        return val ? val.length == 10 : false
    }
  }
}
</script>
