import {createRouter,createWebHistory } from 'vue-router';
import Home from './components/Home.vue';
import About from './components/About.vue';
import Settings from './components/Settings.vue';
import NotFoundComponent from './components/404.vue';
import Users from './components/Users.vue';

const routes = [
  {path:'/',component:Home},
  {path:'/about',component:About},
  {path:'/settings',component:Settings},
  {path:'/logout',component:Home},
  {path:'/list_users',component:Users},
  {path:'/list_employee',component:Home},
  {path:'/list_outsource_employee',component:Home},
  {path:'/list_customer',component:Home},
  {path:'/list_suplier',component:Home},
  {path:'/:pathMatch(.*)*',component:NotFoundComponent},
 
];
 const router = createRouter({
   history: createWebHistory(),
   routes, 
 });

 export default router;