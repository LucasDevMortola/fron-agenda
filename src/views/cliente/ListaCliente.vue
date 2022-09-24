<template>
  <div>
    <CContainer>
      <CCrow>
        <CCard>
          <CCardBody>
            <CButton color="primary" @click="novoCliente()">Cadastrar</CButton>
          </CCardBody>
        </CCard>
      </CCrow>
      <CRow>
        <CCol>
          <CCard>
            <CCardBody>
              <div class="form-floating mb-3">
                <input
                  type="email"
                  class="form-control"
                  id="floatingInput"
                  placeholder="name@example.com"
                />
                <label for="floatingInput">Email address</label>
              </div>
              <div class="form-floating">
                <input
                  type="password"
                  class="form-control"
                  id="floatingPassword"
                  placeholder="Password"
                />
                <label for="floatingPassword">Password</label>
              </div>
            </CCardBody>
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
    return {};
  },
  methods: {
    novoCliente(){
      this.$router.push("/novo-cliente");
    }
  },
  mounted() {},
  components: { TheContainer },
};
</script>
<style></style>
