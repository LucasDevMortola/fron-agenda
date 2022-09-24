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

            <CModal title="Cadastro realizado com sucesso!" color="info" :show.sync="sucesso">
              {{usuario.nome}}, seu cadastro foi realizado com sucesso!<br>
              Realize o login utilizando o email {{usuario.email}} e a senha cadastrada.<br>
              Os dados de cadastros foram enviados para o seguinte email:<br>
              - {{usuario.email}}<br>
            </CModal>

            <CCardBody class="p-4">
              <CForm>
                <h1>Cadastro</h1>
                <p class="text-muted">Faça seu cadastro</p>

                <CSelect
                  placeholder="SELECIONE UM TIPO"
                  :value.sync="tipo"
                  :options="tipos"
                  @change="selecionaTipo"
                  id="tipo"
                >
                  <template #prepend-content><CIcon name="cil-check-alt"/></template>
                </CSelect>

                <CSelect
                  placeholder="Genero"
                  :value.sync="genero"
                  :options="generos"
                  @change="selecionaGenero"
                >
                  <template #prepend-content><CIcon name="cil-options"/></template>
                </CSelect>

                <CInput
                  v-model="usuario.nome"
                  placeholder="Nome completo"
                  autocomplete="nome completo"
                  valid-feedback="OK"
                  invalid-feedback="Por favor, preencha seu Nome Completo"
                  :is-valid="validator"
                >
                  <template #prepend-content><CIcon name="cil-user"/></template>
                </CInput>

                <CInput
                  v-model="usuario.cpf"
                  placeholder="CPF"
                  autocomplete="cpf"
                  valid-feedback="OK"
                  invalid-feedback="Por favor, preencha seu CPF"
                  :is-valid="validator"
                  v-mask="cpf"
                >
                  <template #prepend-content><CIcon name="cil-arrow-right"/></template>
                </CInput>

                <CInput
                  v-model="usuario.dt_nascimento"
                  placeholder="Data Nascimento"
                  autocomplete="data nascimento"
                  type="date"
                  valid-feedback="OK"
                  invalid-feedback="Por favor, preencha sua Data de Nascimento"
                  :is-valid="validatorData"
                >
                  <template #prepend-content><CIcon name="cil-calendar"/></template>
                </CInput>

                <CSelect
                  placeholder="Clube"
                  :value.sync="clube"
                  :options="clubes"
                  @change="selecionaClube"
                >
                  <template #prepend-content><CIcon name="cil-bank"/></template>
                </CSelect>

                <CSelect
                  placeholder="Universidade"
                  :value.sync="universidade"
                  :options="universidades"
                  @change="selecionaUniversidade"
                >
                  <template #prepend-content><CIcon name="cil-bank"/></template>
                </CSelect>

                <CInput
                  v-model="usuario.telefone"
                  placeholder="Telefone"
                  autocomplete="Telefone para contato"
                  v-mask="telefone"
                >
                  <template #prepend-content><CIcon name="cil-phone"/></template>
                </CInput>

                <CInput
                  v-model="usuario.email"
                  placeholder="Email"
                  autocomplete="email"
                  prepend="@"
                  valid-feedback="OK"
                  invalid-feedback="Por favor, preencha seu Email"
                  :is-valid="validator"
                />

                <CInput
                  v-model="usuario.senha"
                  placeholder="Senha"
                  type="password"
                  autocomplete="senha"
                >
                  <template #prepend-content><CIcon name="cil-fingerprint"/></template>
                </CInput>

                <CButton v-show="confirmar" color="success" class="m-2" @click="onSubmit">Confirmar Cadastro</CButton>
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
  name: 'Register',
  
  data() {
    return {
      senha: false,
      sucesso: false,
      aviso: false,
      confirmar: true,
      telefone: '(##) #####.####',
      cpf: "###.###.###-##",


      tipos: [{value: '', label: 'LISTA NÃO CARREGADA'}],
      tipo: [],
      tipoSelecionado: '',

      clubes: [{value: null, label: 'Teste'}],
      clube: [],

      universidades: [{value: null, label: 'Teste'}],
      universidade: [],

      generos: [
        {value: 'M', label: 'Masculino'},
        {value: 'F', label: 'Feminino'}
        ],
      genero: [],

      usuario: {
        tipo: '',
        nome: '',
        cpf: '',
        dt_nascimento: '',
        email: '',
        clube: null,
        universidade: null,
        genero: 1,
        senha: '',
        telefone: ''
      }
    }
  },
  mounted() {
      this.senha = false,
      this.sucesso = false,
      this.aviso = false,

      this.genero[0] = {value: 'M'},
      this.genero[1] = {value: 'F'},

      this.$http.get(process.env.VUE_APP_API_BASE_URL+"tipos-usuarios")
      .then(res => res.json())
      .then(payload => {
        this.tipos = [];
        this.tipo = [];
        this.tipos.push({value: 0, label: 'SELECIONE UM TIPO'});
        for (var i = 0; i < payload.length; i++){
          this.tipos.push({value: payload[i].id, label: payload[i].descricao});
          this.tipo.push({value: payload[i].id});
        }
      });

      this.$http.get(process.env.VUE_APP_API_BASE_URL+"equipe-universitaria/lista-equipes-universitarias")
      .then(res => res.json())
      .then(payload => {
        this.universidades = [];
        this.universidade = [];
        for (var i = 0; i < payload.length; i++){
          this.universidades.push({value: payload[i].id, label: payload[i].nome});
          this.universidade.push({value: payload[i].id});
        }
      });

      this.$http.get(process.env.VUE_APP_API_BASE_URL+"lista-clubes")
      .then(res => res.json())
      .then(payload => {
        this.clubes = [];
        this.clube = [];
        for (var i = 0; i < payload.length; i++){
          this.clubes.push({value: payload[i].id, label: payload[i].nome});
          this.clube.push({value: payload[i].id});
        }
      });

  },
  methods: {
    onSubmit() {
      if ( 
        this.usuario.nome !== "" &&
        this.usuario.cpf !== "" &&
        this.usuario.dt_nascimento !== "" &&
        this.usuario.email !== "" &&
        (this.usuario.clube !== "" || this.usuario.universidade !== "") &&
        this.usuario.senha !== ""
      )
      {
        this.$http.post(process.env.VUE_APP_API_BASE_URL+"usuario/adicionar", this.usuario)
        .then(res => res.json()) 
        .then(user => {
            this.sucesso = true;
            this.confirmar = false;
        }, err => {
            this.aviso = true;
            this.confirmar = true;
        });
      } else {
        this.aviso = true;
      }
    },

    login() {
      this.$router.push('/login');
    },

    selecionaClube() {
      this.usuario.clube = this.clube;
    },

    selecionaUniversidade() {
      this.usuario.universidade = this.universidade;
    },

    selecionaGenero() {
      this.usuario.genero = this.genero;
    },

    selecionaTipo() {
      this.usuario.tipo = this.tipo;
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
