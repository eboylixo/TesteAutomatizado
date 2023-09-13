<script lang="ts">
import { defineComponent } from 'vue';
import ListaCliente from './components/ListaCliente.vue';

export default defineComponent({
  name: "App",
  components: {
    ListaCliente
  }
})
</script>

<template>
  <ListaCliente/>
</template>

<style scoped>

</style>
