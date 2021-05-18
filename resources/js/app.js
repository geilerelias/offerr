require('./bootstrap');

require('moment');

import '@mdi/font/css/materialdesignicons.css'

import Vue from 'vue';
import vuetify from '../plugins/vuetifyP'

import { InertiaApp } from '@inertiajs/inertia-vue';
import { InertiaForm } from 'laravel-jetstream';
import PortalVue from 'portal-vue';
import store from "./store";

Vue.mixin({ methods: { route } });
Vue.use(InertiaApp);
Vue.use(InertiaForm);
Vue.use(PortalVue);

const app = document.getElementById('app');

new Vue({
    vuetify,
    store,
    render: (h) =>
        h(InertiaApp, {
            props: {
                initialPage: JSON.parse(app.dataset.page),
                resolveComponent: (name) => require(`./Pages/${ name }`).default,
            },
        }),
}).$mount(app);
