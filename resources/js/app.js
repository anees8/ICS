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

axios.defaults.baseURL = document.head.querySelector('meta[name="api-base-url"]');

router.beforeEach((to, from, next) => {
    
    if (to.matched.some(record => record.meta.requiresAuth)) {
    if (Auth.check()) {
    next();
    return;
    } else {
    router.push('/');
    }
    } else {   
        next();
    }


});




 
const app = new Vue({
    el: '#app',
    router: router,
    render: h => h(App),
});
