import Vue from "vue";
import Vuex from "vuex";

Vue.use(Vuex);

const store = new Vuex.Store({
    state: {
        numero: 10,
        drawer: false,
        search: "",
        page: "",
        flat: "",
        links: [
            {title: "Home", icon: 'mdi-home-city', route: "home"},
            {title: "Marketplace", icon: 'mdi-shopping', route: "marketplace"},
            {title: "Product", icon: 'mdi-cart', route: "product"},
            {title: "Orders", icon: 'mdi-domain', route: "orders"},
            {title: "Dashboard", icon: 'mdi-view-dashboard', route: "dashboard"}
        ],
    },
    getters: {
        getDrawer(state) {
            return state.drawer;
        },
        getSearch(state) {
            return state.search;
        },
        getPage(state) {
            return state.page;
        },
        getFlat(state) {
            return state.flat;
        }
    },
    mutations: {
        setDrawer(state, v) {
            state.drawer = v;
        },
        setSearch(state, v) {
            state.search = v;
        },
        setPage(state, v) {
            state.page = v;
        },
        setFlat(state, v) {
            state.flat = v;
        },
        aumentar(state) {
            state.numero++;
        }

    },
    actions: {}
});

export default store;
