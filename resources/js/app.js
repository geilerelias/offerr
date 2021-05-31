require('./bootstrap');

require('moment');

import '@mdi/font/css/materialdesignicons.css'

import Vue from 'vue';
import vuetify from '../plugins/vuetifyP'

import {InertiaApp} from '@inertiajs/inertia-vue';
import {InertiaProgress} from '@inertiajs/progress'

import {InertiaForm} from 'laravel-jetstream';
import PortalVue from 'portal-vue';
import store from "./store";
import VueSweetalert2 from 'vue-sweetalert2';

// If you don't need the styles, do not connect
import 'sweetalert2/dist/sweetalert2.min.css';

import VAnimateCss from 'v-animate-css';

Vue.use(VAnimateCss);
Vue.use(VueSweetalert2);
Vue.mixin({methods: {route}});
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
                resolveComponent: (name) => require(`./Pages/${name}`).default,
            },
        }),
}).$mount(app);

InertiaProgress.init({
    // The delay after which the progress bar will
    // appear during navigation, in milliseconds.
    delay: 250,
    // The color of the progress bar.
    color: '#29d',
    // Whether to include the default NProgress styles.
    includeCSS: true,
    // Whether the NProgress spinner will be shown.
    showSpinner: true,
});
