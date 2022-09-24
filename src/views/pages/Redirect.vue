<template></template>
<script>
export default {
  name: "Redirect",
  data() {
    return {
      user: {
        token: ''
      }
    };
  },
  created(){

    this.$router.push("/dashboard");
  }
};
</script>