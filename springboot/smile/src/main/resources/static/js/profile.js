/**
 * first page js
 */

var com = new Vue({
    el: "#primary",
    data:{
          comp2 : {},
          curls: []
    },
    mounted: function () {
        this.$nextTick(function () {
            this.findC();
            this.findMain(2,"n");
        })
    },
    methods:{
       findC:function () {
            $.ajax({
                url: "/sys/findC",
                type:'post',
                dataType:'json',
                success: function (data) {
                    com.comp2 = data;
                }
            });
        },
        findMain:function (mtype,mflag) {
            $.ajax({
                url: "/com/findMain?mtype=2&mflag=n",
                type:'post',
                dataType:'json',
                success: function (data) {
                    com.curls = data;

                }
            });
        }
    }
});



/*



var Purl = new Vue({
    el: "#post-201",
    data:{
        curls : [],

    },
    mounted:function () {
        this.$nextTick(function () {
            this.findMain(2,"n");
        })
    },
    methods:{

    }
});




*/








