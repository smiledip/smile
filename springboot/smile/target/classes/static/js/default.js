/**
 * model  js
 */

//1.vue.一个js里面仅仅允许写一个new Vue({，多写会覆盖
    //   2.mounted ,相当于初始化
    //   3.注意 写循环的时候，js页面在写v-for那一行就开始循环了
    //   4.vue 本身也提供了ajax的插件 vue.reasource.js 但是习惯了jquery的这里都使用jquery的ajax
    //   5.要注意实例不可以嵌套，嵌套了实例，内层的实例是不显示的，其实可能还是自己使用的有问题，vue支持路由，完全可以去掉layout的使用
    //   6.所以一般vue都是单页面的不需要多页面，故一般一个实例就够了
    //   7.啥是实例;实例就是new Vue({
    //   8.Vue 的好处，我看到数据的双向绑定，非常的有用并且大量的减少了原先使用jquery写的代码
    //   9.既然发现了vue的路由，那么就再写一版吧

//company message

//var bus =new Vue();

var vue = new Vue({
    el: "#defdemo",//".defdemo",
    data:{
        company : {},
        furls: []
    },
    mounted: function () {
        this.$nextTick(function () {
            this.findcom();
            this.findUrls();
        })
    },
    methods: {
        findcom: function () {
            $.ajax({
                url: "/sys/findC",
                type:'post',
                dataType:'json',
                success: function (data) {
                    vue.company = data;
                    //bus.$emit("comp",data);
                }
            });
        },
        findUrls: function () {
            $.ajax({
                url: "/sys/findUrls",
                type: 'post',
                dataType: 'json',
                success: function (data) {
                    vue.furls = data;
                }
            });
        }
}
})


