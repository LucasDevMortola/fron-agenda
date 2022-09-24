<template>
  <CFooter :fixed="false">
    <div>
      <a href="https://www.allto.digital/" target="_blank">Allto digital</a>
      <span class="ml-1">&copy; {{new Date().getFullYear()}}</span>
    </div>
    <div class="ml-auto">
      <!-- <span class="mr-1">Desenvolvido por TNZO</span> -->
    </div>
  </CFooter>
</template>

<script>
export default {
  name: 'TheFooter'
}
</script>
