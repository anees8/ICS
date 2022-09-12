import Home from './components/Home.vue';
import About from './components/About.vue';
import Settings from './components/Settings.vue';
import NotFoundComponent from './components/404.vue';
import Users from './components/Users.vue';

export const routes = [
  {name: 'Home', path: '/', component: Home, meta:{requiresAuth: false}},
  {path: '/about', component:About,meta:{requiresAuth: false}},
  {path: '/settings', component: Settings,meta:{requiresAuth: false}},
  {path: '/logout', component: Home, meta: {requiresAuth: false}},
  {path: '/list_users', component: Users, meta: {requiresAuth: false}},
  {path: '/list_employee', component: Home, meta:{requiresAuth: false}},
  {path: '/list_outsource_employee', component: Home, meta:{requiresAuth: false}},
  {path: '/list_customer', component: Home, meta: {requiresAuth: false}},
  {path: '/list_suplier', component: Home, meta: {requiresAuth: false}},
   {name: 'Error', path: '*', component: NotFoundComponent},
];