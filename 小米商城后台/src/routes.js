import Login from './views/Login.vue'
import NotFound from './views/404.vue'
import Home from './views/Home.vue'
import Main from './views/Main.vue'
import Table from './views/nav1/Table.vue'
import Form from './views/nav1/Form.vue'
import user from './views/nav1/user.vue'
import Page4 from './views/nav2/Page4.vue'
import Page6 from './views/nav3/Page6.vue'
import echarts from './views/charts/echarts.vue'
import Page7 from "./views/nav3/Page7";
import Page8 from "./views/nav3/Page8";
let routes = [
    {
        path: '/login',
        component: Login,
        name: '',
        hidden: true
    },
    {
        path: '/404',
        component: NotFound,
        name: '',
        hidden: true
    },
    // { path: '/main', component: Main },
    {
        path: '/',
        component: Home,
        name: '商品管理',
        iconCls: 'el-icon-message',//图标样式class
        children: [
            { path: '/main', component: Main, name: '主页', hidden: true },
            { path: '/table', component: Table, name: '添加商品' },
            { path: '/form', component: Form, name: '商品上下架' },
            { path: '/user', component: user, name: '商品修改' },
        ]
    },
    {
        path: '/',
        component: Home,
        name: '用户管理',
        iconCls: 'fa fa-id-card-o',
        children: [
            { path: '/page4', component: Page4, name: '用户' },
        ]
    },
    {
        path: '/',
        component: Home,
        name: '图标',
        iconCls: 'fa fa-address-card',
        children: [
            { path: '/page6', component: Page6, name: '柱状图' },
            { path: '/page7', component: Page7, name: '折线图' },
            { path: '/page8', component: Page8, name: '饼状图' }
        ]
    },
    {
        path: '/',
        component: Home,
        name: 'Charts',
        iconCls: 'fa fa-bar-chart',
        children: [
            { path: '/echarts', component: echarts, name: 'echarts' }
        ]
    },
    {
        path: '*',
        hidden: true,
        redirect: { path: '/404' }
    }
];

export default routes;