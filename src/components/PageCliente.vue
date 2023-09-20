<template>
    <div class="row justify-content-center">
        <div class="col-10">
            <h1>Clientes</h1>
            <ListaCliente :clientes="clientes" @ao-excluir-cliente="excluirCliente"/>
        </div>
    </div>
    <div class="row justify-content-center">
        <CadastroCliente @ao-salvar-cliente="listarClientes" class="col-10"/>
    </div>
</template>

<script lang="ts">
import http from '@/http';
import type Cliente from '@/interfaces/Cliente';
import { defineComponent } from 'vue';
import ListaCliente from './ListaCliente.vue';
import CadastroCliente from './CadastroCliente.vue';

export default defineComponent({
    name: "PageCliente",
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
        },
        async excluirCliente(id: number) {
            await http.delete("/cliente/" + id);
            this.listarClientes();
        }
    },
    components: {
        ListaCliente,
        CadastroCliente,
    }
})
</script>