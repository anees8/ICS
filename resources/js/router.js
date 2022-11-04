import Vue from 'vue';
import Auth from './Auth.js';
import VueRouter from 'vue-router';
Vue.use(VueRouter);

import Login from './components/Login.vue';
import Home from './components/Home.vue';
import About from './components/About.vue';
import Settings from './components/Settings.vue';
import NotFoundComponent from './components/404.vue';
import Users from './components/Users.vue';
import Employee from './components/Employee.vue';

export const routes = [
  {path: '/', redirect: '/dashboard' },
  {name: 'Login', path: '/login', component: Login, meta:{requiresAuth: false}},
  {name: 'Register', path: '/register', component: Login, meta:{requiresAuth: false}},
  {name: 'Home', path: '/dashboard', component: Home, meta:{requiresAuth: true}},
  {path: '/about', component:About,meta:{requiresAuth: true}},
  {path: '/settings', component: Settings,meta:{requiresAuth: true}},
  {path: '/logout', component: Home, meta: {requiresAuth: true}},
  {path: '/list_users', component: Users, meta: {requiresAuth: true}},
  {path: '/list_employee', component: Employee, meta:{requiresAuth: true}},
  {path: '/list_outsource_employee', component: Home, meta:{requiresAuth: true}},
  {path: '/list_customer', component: Home, meta: {requiresAuth: true}},
  {path: '/list_suplier', component: Home, meta: {requiresAuth: true}},
   {name: 'Error', path: '*', component: NotFoundComponent},
];



const router = new VueRouter({
  mode: 'history',
  routes: routes
});




router.beforeEach((to, from, next) => {
 if (to.matched.some(record => record.meta.requiresAuth) ) {
     if (Auth.check()) {
    
            next();
         return;
     } else {
         router.push('/login');
     }
 } else {
     next();
 }
});










export default router;
