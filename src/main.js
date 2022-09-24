import 'core-js/stable'
import Vue from 'vue'
import App from './App'
import router from './router'
import CoreuiVue from '@coreui/vue'
import { iconsSet as icons } from './assets/icons/icons.js'
import store from './store'
import VueResource from 'vue-resource';
import { VueMaskDirective } from "v-mask";
import VueNumeric from 'vue-numeric';

Vue.directive("mask", VueMaskDirective);

Vue.use(VueResource);
Vue.config.performance = true
Vue.use(CoreuiVue)
Vue.prototype.$log = console.log.bind(console)
Vue.use(VueNumeric)

Vue.http.interceptors.push((request, next) => {
  request.headers.set('Authorization', localStorage.getItem('token'));
  request.headers.set('Accept', 'application/json');
  next();
});
/**
Vue.http.interceptors.push((request, next) => {
  request.headers.set('Accept', 'application/json');
  next();
});
*/

new Vue({
  el: '#app',
  router,
  store,
  icons,
  template: '<App/>',
  components: {
    App
  }
})
