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
                <h1>Cadastro</h1>
                <p class="text-muted">Faça o cadastro da Federação</p>

                <CInput
                  v-model="federacao.nome"
                  placeholder="Nome"
                  autocomplete="nome"
                  valid-feedback="OK"
                  invalid-feedback="Por favor, preencha o nome da Federação"
                  :is-valid="validator"
                >
                  <template #prepend-content><CIcon name="cil-user"/></template>
                </CInput>
                <CInput
                  v-model="federacao.cnpj"
                  placeholder="CNPJ"
                  autocomplete="cnpj do clube"
                  valid-feedback="OK"
                  invalid-feedback="Por favor, preencha o CNPJ"
                  :is-valid="validator"
                >
                  <template #prepend-content><CIcon name="cil-arrow-right"/></template>
                </CInput>
                <CInput
                  v-model="federacao.login"
                  placeholder="Usuário"
                  autocomplete="usuario do clube"
                  valid-feedback="OK"
                  invalid-feedback="Por favor, preencha o usuário de acesso ao cadastro da Federação"
                  :is-valid="validator"
                >
                  <template #prepend-content><CIcon name="cil-arrow-right"/></template>
                </CInput>
                <CInput
                  v-model="federacao.responsavel"
                  placeholder="Responsável"
                  autocomplete="responsável"
                  valid-feedback="OK"
                  invalid-feedback="Por favor, preencha o nome do reponsável pela Federação"
                  :is-valid="validator"
                >
                  <template #prepend-content><CIcon name="cil-user"/></template>
                </CInput>
                <CInput
                  v-model="federacao.cpf"
                  placeholder="CPF"
                  autocomplete="cpf"
                  valid-feedback="OK"
                  invalid-feedback="Por favor, preencha o CPF do responsável pela Federação"
                  :is-valid="validator"
                >
                  <template #prepend-content><CIcon name="cil-arrow-right"/></template>
                </CInput>
                <CInput
                  v-model="federacao.endereco"
                  placeholder="Endereço"
                  autocomplete="endereço"
                  valid-feedback="OK"
                  invalid-feedback="Por favor, preencha o endereço da Federação"
                  :is-valid="validator"
                >
                  <template #prepend-content><CIcon name="cil-calendar"/></template>
                </CInput>
                <CInput
                  v-model="federacao.numero"
                  placeholder="Número"
                  autocomplete="número"
                  valid-feedback="OK"
                  invalid-feedback="Por favor, preencha o número do endereço da Federação"
                  :is-valid="validator"
                >
                  <template #prepend-content><CIcon name="cil-calendar"/></template>
                </CInput>
                <CInput
                  v-model="federacao.complemento"
                  placeholder="Complemento"
                  autocomplete="complemento"
                >
                  <template #prepend-content><CIcon name="cil-calendar"/></template>
                </CInput>
                <CInput
                  v-model="federacao.bairro"
                  placeholder="Bairro"
                  autocomplete="bairro"
                  valid-feedback="OK"
                  invalid-feedback="Por favor, preencha o bairro da Federação"
                  :is-valid="validator"
                >
                  <template #prepend-content><CIcon name="cil-calendar"/></template>
                </CInput>
                <CInput
                  v-model="federacao.cep"
                  placeholder="CEP"
                  autocomplete="cep"
                  valid-feedback="OK"
                  invalid-feedback="Por favor, preencha o CEP da Federação"
                  :is-valid="validator"
                >
                  <template #prepend-content><CIcon name="cil-calendar"/></template>
                </CInput>
                <CInput
                  v-model="federacao.cidade"
                  placeholder="Cidade"
                  autocomplete="cidade"
                  valid-feedback="OK"
                  invalid-feedback="Por favor, preencha a cidade da Federação"
                  :is-valid="validator"
                >
                  <template #prepend-content><CIcon name="cil-calendar"/></template>
                </CInput>
                <CInput
                  v-model="federacao.email"
                  placeholder="Email"
                  autocomplete="email"
                  prepend="@"
                  valid-feedback="OK"
                  invalid-feedback="Por favor, preencha o email de contato da Federação"
                  :is-valid="validator"
                />
                <CInput
                  v-model="federacao.cargo"
                  placeholder="Cargo do Responsável"
                  autocomplete="cargo do responsável"
                  valid-feedback="OK"
                  invalid-feedback="Por favor, preencha o cargo do responsável pela Federação"
                  :is-valid="validator"
                >
                  <template #prepend-content><CIcon name="cil-calendar"/></template>
                </CInput>
                <CInput
                  v-model="federacao.telefone"
                  placeholder="Telefone do Responsável"
                  autocomplete="telefone do responsável"
                  valid-feedback="OK"
                  invalid-feedback="Por favor, preencha o telefone do responsável pela Federação"
                  :is-valid="validator"
                >
                  <template #prepend-content><CIcon name="cil-calendar"/></template>
                </CInput>
                <CInput
                  v-model="federacao.senha"
                  placeholder="Senha"
                  type="password"
                  autocomplete="senha"
                >
                  <template #prepend-content><CIcon name="cil-lock-locked"/></template>
                </CInput>
                <CInput
                  v-model="federacao.senha_rep"
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
  name: 'RegisterFederacao',
  
  data() {
    return {
      senha: false,
      sucesso: false,
      aviso: false,
      
      federacao: {
        nome: '',
        cnpj: '',
        login: '',
        responsavel: '',
        cpf: '',
        endereco: '',
        numero: '',
        complemento: '',
        bairro: '',
        cep: '',
        cidade: '',
        email: '',
        cargo: '',
        telefone: '',
        senha: '',
        senha_rep: ''
      }
    }
  },
  mounted() {
      this.senha = false,
      this.sucesso = false,
      this.aviso = false
  },
  methods: {
    onSubmit() {
      if ( 
        this.federacao.nome !== "" &&
        this.federacao.cnpj !== "" &&
        this.federacao.login !== "" &&
        this.federacao.responsavel !== "" &&
        this.federacao.cpf !== "" &&
        this.federacao.endereco !== "" &&
        this.federacao.numero !== "" &&
        this.federacao.bairro !== "" &&
        this.federacao.cep !== "" &&
        this.federacao.cidade !== "" &&
        this.federacao.email !== "" &&
        this.federacao.telefone !== "" &&
        this.federacao.senha !== "" &&
        this.federacao.senha_rep !== ""
      ){
        if (this.federacao.senha === this.federacao.senha_rep) {
          this.$http.post("http://localhost:1880/cnru/api/registra-federacao", this.federacao)
          .then(res => res.json()) 
          .then(federacao => {
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

    validator (val) {
      if (val != "")
        return val ? val.length >= 3 : false
    }
  }
}
</script>
