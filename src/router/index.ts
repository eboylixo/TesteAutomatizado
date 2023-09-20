import PageCliente from "@/components/PageCliente.vue";
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
    }
];

const router = createRouter({
    history: createWebHashHistory(),
    routes
});

export default router;