/**
 * first page js
 */
//多页面的这个缺点很明显，明明调用一次company的方法就可以了，现在内嵌的页面每次用每次调

var med = new Vue({
    el: "#primary",
    data:{
        medicals : [],
        seeds :  [],
        comp:  {}
    },
    mounted:function () {
        this.$nextTick(function () {
               this.compa();
              this.fmedical(0,"z",1);
              this.fmedical(1,"z",2);
        })
    },
    methods: {
       compa: function () {
           /*bus.$on("comp",function (val) {
                alert(JSON.stringify(val));
                medical.comp=val;
            })*/
               $.ajax({
                   url: "/sys/findC",
                   type:'post',
                   dataType:'json',
                   success: function (data) {
                       med.comp = data;
                   }
               });

        },
       fmedical: function (mtype,mflag,stat) {
            $.ajax({
                url: "/com/findMain?mtype="+mtype+"&mflag="+mflag,
                type:'post',
                dataType:'json',
                success: function (data) {
                    if(stat==1){
                        med.medicals = data;
                    }else{
                        med.seeds = data;
                    }
                }
            });
        }

    }
})















