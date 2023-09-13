<script lang="ts">
import { defineComponent } from 'vue';
import ListaCliente from './components/ListaCliente.vue';
import CadastroCliente from './components/CadastroCliente.vue';

export default defineComponent({
  name: "App",
  components: {
    ListaCliente,
    CadastroCliente
}
})
</script>

<template>
  <ListaCliente/>
  <CadastroCliente/>
</template>

<style scoped>

</style>
