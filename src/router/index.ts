import PageCliente from "@/components/PageCliente.vue";
import PageContato from "@/components/PageContato.vue";
import PageJogo from "@/components/PageJogo.vue";
import PageProduto from "@/components/PageProduto.vue";
import { createRouter, createWebHashHistory, type RouteRecordRaw } from "vue-router";

const routes: RouteRecordRaw[] = [
    {
        path: "/",
        component: PageCliente
    },
    {
        path: "/produto",
        component: PageProduto
    },
    {
        path: "/jogo",
        component: PageJogo
    },
    {
        path: "/contato",
        component: PageContato
    }
];

const router = createRouter({
    history: createWebHashHistory(),
    routes
});

export default router;