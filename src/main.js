import Vue from 'vue'
import App from './App.vue'
import axios from 'axios'
import router from './router'
// const cors = require('cors')
// const corsConfig = {
//   credentials: true,
//   origin: true
// }
// App.use(cors(corsConfig))
axios.defaults.withCredentials = true
Vue.config.productionTip = false

new Vue({
  router,
  render: h => h(App)
}).$mount('#app')
