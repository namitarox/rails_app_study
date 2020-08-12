import Vue from 'vue'
import VueRouter from 'vue-router'
Vue.use(VueRouter)
import PageTimeline from '@/pages/PageTimeline'
import PageUserLogin from '@/pages/PageUserLogin'
const router = new VueRouter({
    routes: [
        { path: '/login', component: PageUserLogin, name: 'timeline' },
        { path: '/', component: PageTimeline, name: 'login' }
    ]
});

export default router;