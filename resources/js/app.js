require('./bootstrap');
import Vue from 'vue';
window.Vue = require('vue');

import BootstrapVue from "bootstrap-vue";
import "bootstrap/dist/css/bootstrap.min.css";
import "bootstrap-vue/dist/bootstrap-vue.css";
Vue.use(BootstrapVue)
import VueRouter from 'vue-router';
import VueAxios from 'vue-axios';
import axios from 'axios';
import {routes} from './router';
import App from './components/App.vue';




Vue.use(VueRouter);
Vue.use(VueAxios, axios);
 
const router = new VueRouter({
    mode: 'history',
    routes: routes
});



 
const app = new Vue({
    el: '#app',
    router: router,
    render: h => h(App),
});
