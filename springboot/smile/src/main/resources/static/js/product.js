/**
 * first page js
 */
var pages = new Vue({
    el: "#primary",
    data:{
       mtype: 0,
        mlis: {}
    },
    mounted:function () {
        this.$nextTick(function () {
            this.checkValue(1,0);
        })
    },
    methods:{
        checkValue:function (currentPage,type) {
            $.ajax({
                url: "/com/product?currentPage="+currentPage+"&type="+type,
                type: 'post',
                dataType: 'json',
                success: function (data) {
                    pages.mlis = data;
                    pages.mtype = type;
                    alert(JSON.stringify(data));
                }
            });
        }
    }
})









