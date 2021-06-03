import Vue from "vue";
import Vuex from "vuex";

Vue.use(Vuex);

const store = new Vuex.Store({
    state: {
        productos: [],
        carrito: {},

        numero: 10,
        drawer: false,
        search: "",
        page: "",
        flat: "",
        links: [
            {title: "Home", icon: 'mdi-home-city', route: "home",param:''},
            {title: "Marketplace", icon: 'mdi-shopping', route: "marketplace"},
            {title: "Orders", icon: 'mdi-domain', route: "orders"},
            {title: "Dashboard", icon: 'mdi-view-dashboard', route: "dashboard"}
        ],
    },
    getters: {
        totalCantidad(state) {
            return Object.values(state.carrito).reduce((acc, {cantidad}) => acc + cantidad, 0)
        },
        totalPrecio(state) {
            return Object.values(state.carrito).reduce((acc, {cantidad, precio}) => acc + cantidad * precio, 0)
        },

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
        setProductos(state, payload) {
            state.productos = payload
        },
        setCarrito(state, payload) {
            state.carrito[payload.id] = { ...payload }
            console.log(state.carrito)
        },
        setVaciar(state) {
            state.carrito = {}
        },
        aumentar(state, payload) {
            state.carrito[payload].cantidad = state.carrito[payload].cantidad + 1
        },
        disminuir(state, payload) {
            state.carrito[payload].cantidad = state.carrito[payload].cantidad - 1
            if (state.carrito[payload].cantidad === 0) {
                delete state.carrito[payload]
            }
        },


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
    actions: {
        async fetchData({commit}) {
            try {
                const res = await fetch('api.json')
                const productos = await res.json()
                commit('setProductos', productos)
            } catch (error) {
                console.log(error)
            }
        },
        agregarCarrito({ commit, state }, producto) {
            state.carrito.hasOwnProperty(producto.id)
                ? producto.cantidad = state.carrito[producto.id].cantidad + 1
                : producto.cantidad = 1
            commit('setCarrito', producto)
        }
    }
});

export default store;
