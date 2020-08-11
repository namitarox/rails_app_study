import Vue from 'vue'
import VueRouter from 'vue-router'
Vue.use(VueRouter)
import PageTimeline from '@/pages/PageTimeline'
const router = new VueRouter({
    routes: [
        { path: '/', component: PageTimeline, name: 'timeline' }
    ]
});

export default router;