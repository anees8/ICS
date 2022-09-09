import './bootstrap';

import {createApp} from 'vue';
import router from "./router";
import App from './components/App.vue';
import { SetupCalendar, Calendar, DatePicker } from 'v-calendar';
import BootstrapVue3 from 'bootstrap-vue-3'

import 'v-calendar/dist/style.css';


import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue-3/dist/bootstrap-vue-3.css'




createApp(App).use(router).use(SetupCalendar).use(BootstrapVue3).component('v-date-picker', DatePicker).mount('#app');

