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
            {title: "Home", icon: 'mdi-home-city', route: "home", param: ''},
            {title: "Marketplace", icon: 'mdi-shopping', route: "marketplace"},
            {title: "Orders", icon: 'mdi-domain', route: "orders"},
        ],
        linksWithAuth: [
            {route: "dashboard", icon: 'mdi-view-dashboard', title: "Dashboard"},
            {route: "category.index", icon: 'mdi-briefcase', title: "Category"},
            {route: "business.index", icon: 'mdi-store', title: "Business"},
            {route: "subcategory.index", icon: 'mdi-ballot', title: "Subategory"},
            {route: "product.index", icon: 'mdi-cart', title: "Product"},
        ]
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
        aumentarNum(state) {
            state.numero++;
        }

    },
});

export default store;
