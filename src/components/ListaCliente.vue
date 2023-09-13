<template>
    <table class="table">
        <thead>
            <tr>
                <th scope="col">Id</th>
                <th scope="col">Nome</th>
                <th scope="col">Endereço</th>
                <th scope="col">Email</th>
                <th scope="col">CPF</th>
            </tr>
        </thead>
        <tbody>
            <tr v-for="cliente in clientes">
                <th scope="row">{{ cliente.id }}</th>
                <td>{{ cliente.nome }}</td>
                <td>{{ cliente.endereco }}</td>
                <td>{{ cliente.email }}</td>
                <td>{{ cliente.cpf }}</td>
            </tr>
            
        </tbody>
    </table>
</template>

<script lang="ts">
import { defineComponent } from 'vue';
import type Cliente from "../interfaces/Cliente.ts";
import http from "../http";

export default defineComponent({
    name: "ListaCliente",
    data() {
        return {
            clientes: [] as Cliente[]
        }
    },
    async mounted() {
        const response = await http.get("/cliente");
        this.clientes = response.data;
    }
})
</script>

<style></style>