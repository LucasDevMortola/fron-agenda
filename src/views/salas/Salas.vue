<template>
  <div>
    <CCard>
      <CCardBody>
        <CButton @click="cadastrar()" style="width: 100px" block color="primary"
          >Cadastrar</CButton
        >
      </CCardBody>
    </CCard>

    <CCard>
      <CCardBody>
        <CDataTable
          :items="salas"
          :fields="fields"
          :noItemsView="not_found"
          column-filter
          hover
          sorter
        >
          <template #acao="{ item, index }">
            <td class="py-4">
              <CButton
                color="primary"
                variant="outline"
                square
                size="sm"
                @click="editar(item, index)"
                >VER</CButton
              >
            </td>
            <td class="py-4">
              <CButton
                color="danger"
                variant="outline"
                square
                size="sm"
                @click="excluir(item, index)"
                >EXCLUIR</CButton
              >
            </td>
          </template>
        </CDataTable>
      </CCardBody>
    </CCard>
  </div>
</template>
<script>
export default {
  name: "ListarSalas",
  data() {
    return {
      desativado: false,
      not_found: {
        noResults: "Nenhum registro encontrado",
        noItems: "Nenhum registro encontrado",
      },
      salas: [],
      fields: [
        { key: "sala", label: "Sala", _style: "min-width:200px" },
        { key: "andar", label: "Andar", _style: "min-width:100px;" },

        {
          key: "acao",
          label: "",
          sorter: false,
          filter: false,
        },
      ],
      collapseDuration: 0,
      details: [],
      usuario: {
        id: localStorage.id,
        tipo: localStorage.tipo,
      },
      caption: {
        type: String,
        default: "Table",
      },
    };
  },
  methods: {
    ListarSalas() {
      this.$http
        .get(`${process.env.VUE_APP_API_BASE_URL}salas`)
        .then((res) => res.json())
        .then((res) => {
          this.salas = res;
        });
    },
    cadastrar() {
      this.$router.push("/cadastrar-salas");
    },

    editar(item) {
      this.$router.push({
        name: "Editar Sala",
        params: {
          id: item.id,
        },
      });
    },
    excluir(item) {
      this.$http
        .delete(
          `${process.env.VUE_APP_API_BASE_URL}salas/excluir-sala/${item.id}`
        )
        .then((res) => res.json())
        .then((res) => {
          this.ListarSalas();
        });
    },
  },

  mounted() {
    this.ListarSalas();
  },
};
</script>
<style scoped>
.pb-4,
.py-4 {
  padding: 10px !important;
}
</style>
