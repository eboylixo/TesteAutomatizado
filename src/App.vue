<script lang="ts">
import { defineComponent } from 'vue';
import ListaCliente from './components/ListaCliente.vue';
import CadastroCliente from './components/CadastroCliente.vue';
import type Cliente from './interfaces/Cliente';
import http from './http';

export default defineComponent({
  name: "App",
  components: {
    ListaCliente,
    CadastroCliente
  },
  data() {
    return {
      clientes: [] as Cliente[]
    }
  },
  mounted() {
    this.listarClientes();
  },
  methods: {
    async listarClientes() {
      const response = await http.get("/cliente");
      this.clientes = response.data;
    }
  }
})
</script>

<template>
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-10">
        <ListaCliente :clientes="clientes"/>
      </div>
    </div>
    <div class="row justify-content-center">
      <CadastroCliente @ao-salvar-cliente="listarClientes" class="col-10"/>
    </div>
  </div>
  
  
</template>

<style scoped>

</style>
