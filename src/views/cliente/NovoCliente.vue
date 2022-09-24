<template>
  <div>
    <CContainer>
      <CRow>
        <CCol>
          <CCard>
            <CTabs>
              <CTab>
                <template slot="title">
                  <CIcon name="cil-bookmark" /> Dados de Cadastro
                </template>
                <CCardBody>
                  <CRow>
                    <CInput name="nome" placeholder="Nome">
                      <template #prepend-content>
                        <CIcon name="cil-user" />
                      </template>
                    </CInput>
                    <CInput name="nome" placeholder="Email">
                      <template #prepend-content>
                        <CIcon name="cil-user" />
                      </template>
                    </CInput>
                    <CInput name="nome" placeholder="CPF">
                      <template #prepend-content>
                        <CIcon name="cil-user" />
                      </template>
                    </CInput>
                    <CInput name="nome" placeholder="Telefone">
                      <template #prepend-content>
                        <CIcon name="cil-user" />
                      </template>
                    </CInput>
                  </CRow>
                </CCardBody>
              </CTab>
              <CTab>
                <template slot="title">
                  <CIcon name="cil-bookmark" /> Endereço
                </template>

                <CCardBody>
                  <CInput name="nome" placeholder="Estado">
                    <template #prepend-content>
                      <CIcon name="cil-user" />
                    </template>
                  </CInput>
                  <CInput name="nome" placeholder="Cidade">
                    <template #prepend-content>
                      <CIcon name="cil-user" />
                    </template>
                  </CInput>
                  <CInput name="nome" placeholder="Bairro">
                    <template #prepend-content>
                      <CIcon name="cil-user" />
                    </template>
                  </CInput>
                  <CInput name="nome" placeholder="Rua">
                    <template #prepend-content>
                      <CIcon name="cil-user" />
                    </template>
                  </CInput>
                  <CInput name="nome" placeholder="Numero">
                    <template #prepend-content>
                      <CIcon name="cil-user" />
                    </template>
                  </CInput>
                </CCardBody>
              </CTab>
            </CTabs>
          </CCard>
        </CCol>
      </CRow>
    </CContainer>
  </div>
</template>
<script>
import TheContainer from "../../containers/TheContainer.vue";
export default {
  data() {
    return {
      cliente: {
        nome: "",
        email: "",
        cpf: "",
        telefone: "",
        endereco: {
          estado: "",
          cidade: "",
          bairro: "",
          rua: "",
          num: "",
        },
      },
    };
  },
  mounted() {},
  components: { TheContainer },
};
</script>
<style></style>
