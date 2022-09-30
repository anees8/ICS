require('./bootstrap');
import Vue from 'vue';
window.Vue = require('vue');

import BootstrapVue from "bootstrap-vue";
import "bootstrap/dist/css/bootstrap.min.css";
import "bootstrap-vue/dist/bootstrap-vue.css";
import Swal from 'sweetalert2';
window.Swal=Swal;
Vue.use(BootstrapVue)

import VueAxios from 'vue-axios';
import axios from 'axios';
import router  from './router';
import App from './components/App.vue';
import Auth from './Auth.js';
Vue.use(VueAxios, axios);


window.axios = require('axios');
window.axios.defaults.baseURL = '/api/';

 
const app = new Vue({
    el: '#app',
    router: router,
    render: h => h(App),
});
