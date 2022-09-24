<template>
  <CSidebar
    fixed
    :minimize="minimize"
    :show="show"
    @update:show="(value) => $store.commit('set', ['sidebarShow', value])"
  >
    <CSidebarBrand class="d-md-down-none" to="/">
      <!-- <img class="img-logo" src="../assets/fundoAllto.d74dcfe7.png" /> -->
      <h1>Agenda</h1>
    </CSidebarBrand>

    <CRenderFunction
      flat
      :content-to-render="$options.nav_admin"
      v-show="tipo === 'Administrador'"
    />
    <CRenderFunction
      flat
      :content-to-render="$options.nav_profissional"
      v-show="tipo === 'Profissional'"
    />
    <CSidebarMinimizer
      class="d-md-down-none"
      @click.native="$store.commit('set', ['sidebarMinimize', !minimize])"
    />
  </CSidebar>
</template>

<script>
import nav_admin from "./_nav_admin";
import nav_profissional from "./_nav_profissional";

export default {
  name: "TheSidebar",
  nav_admin,
  nav_profissional,

  computed: {
    show() {
      return this.$store.state.sidebarShow;
    },
    minimize() {
      return this.$store.state.sidebarMinimize;
    },
  },
  data: function () {
    return {
      tipo: "Administrador",
    };
  },
  mounted() {
    this.tipo = "Administrador";
  },
};
</script>
<style scoped>
.img-logo{
  width: 200px;
}
</style>