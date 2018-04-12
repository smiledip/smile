

//写一个json请求
function checkValue(currentPage,type){
       $.ajax({
        type:"post",
        url:"http://smile.kim/product?currentPage="+currentPage+"&type="+type,
        dataType:'jsonp',
        jsonp: "callback",
           scriptCharset: 'utf-8',
           success:function(data){
                                  var data= eval(data );
                      var tab="<ul class='products'>";
            var fy="";
            tab+="<ul class='mainul productlist-02' >";
                for(var i = 0; i < data.list.length;i++){
                    if((i+1)%4==1){
                        tab+="    <li class='product border shadow first last-row'>"
                    }else if((i+1)%4==0){
                        tab+="<li class='product border shadow last last-row'>"
                    }else{
                        tab+=" <li class='product border shadow last-row'>"
                    }
                    tab+="<a href='#'>";
                    tab+="<div class='thumbnail'>";
                    tab+="<img width='150' height='150' src='/static/"+data.list[i].url+"' class='attachment-shop_small wp-post-image' alt='"+data.list[i].name+"' title='"+data.list[i].shotintro+"' />";
                    tab+="<div class='thumb-shadow'>";tab+="</div>";
                    tab+="<span class='price'> "+data.list[i].name+"</span>";
                   /* tab+="<strong class='below-thumb'>"+data.list[i].name+"</strong>";*/
                    tab+="</div>";
                   /* tab+="<span class='price'> "+data.list[i].name+"</span>";*/
                    tab+="</a>";
                    tab+="</li>";

                }
            tab+="</ul>";
            tab+="<div class='clear'></div>";
            $("#pagelistid").empty();
            $("#pagelistid").append(tab);
            //update	翻页
            fy="<table  border='0' bordercolor='red' cellspacing='0' cellpadding='0' width='100%'>";
            fy+="<tr>";
            fy+="<td>&nbsp;</td>";
            fy+="<td nowrap align='right'>共<font color='#990000'><b>&nbsp;"+data.pageCounts+"&nbsp;</b></font>页<font color='#990000'><b>&nbsp;"+data.rsCount+"&nbsp;</b></font>条&nbsp;&nbsp;|&nbsp;&nbsp;当前第<font color='#990000'><b>&nbsp;"+data.currentPage+"&nbsp;</b></font>页&nbsp;&nbsp;|&nbsp;&nbsp;</td>";

            fy+="<td width='50%' align='left'>";


            if(data.currentPage!=1){
                fy+="<b><a id='first' style='cursor:pointer' onclick='checkValue(1,"+data.list[0].mtype+");'>首页</a></b>";
                fy+="<b><a id='prev' style='cursor:pointer' onclick=checkValue("+(data.currentPage-1)+","+data.list[0].mtype+");>上一页</a></b>";
            }

            if(data.currentPage!=data.pageCounts){
               fy+=" <b> <a id='next' style='cursor:pointer' onclick='checkValue("+(data.currentPage+1)+","+data.list[0].mtype+");'>下一页</a></b>";
                fy+="<b> <a id='next' style='cursor:pointer' onclick='checkValue("+(data.pageCounts)+","+data.list[0].mtype+");'>尾页</a></b>";
            }
            fy+="</td>";
            fy+="</tr>";
            fy+="</table> ";
            fy+="<div class='clear'></div>";
            $("#pageid").empty();
            $("#pageid").append(fy);

        }
    });

};


//返回流程的列表
function checkUrl(){
    $.ajax({
        url:"http://smile.kim/lcurl",
        type: 'post',
        dataType:'jsonp',
        jsonp: "callback",
     //  contentType: 'text/jsonp,charset=utf-8',
        success:function(data){
            var data= eval(data );

            var tab="";
            for(var i = 0; i < data.length;i++){
                if((i+1)%4==0){
                    tab+="  <div class=\"one-fourth last\">"
                }else{
                    tab+="  <div class=\"one-fourth\">"
                }

                tab+="<h2>"+data[i].name+"</h2>"
                tab+="<p><img class='alignleft size-full wp-image-168' title='int2' src='/static/"+data[i].url+"' alt='"+data[i].name+"' title='"+data[i].shotintro+"' /></p>"
                tab+="<p>"+data[i].shotintro+"</p>"
                tab+="</div>"
            }
            $("#lcurl").empty();
            $("#lcurl").append(tab);
        }
    });

}
    //返回流程的列表
    function checkfirst(type,lswz){
        //type:0药材 1：种子
        $.ajax({
            url:"http://smile.kim/medicinal?type="+type,
            type: 'post',
            dataType:'jsonp',
            jsonp: "callback",
            //  contentType: 'text/jsonp,charset=utf-8',
            success:function(data){
                var data= eval(data );
                var tab="";
                for(var i = 0; i < data.length;i++){
                    if((i+1)%4==1){
                        tab+="  <li class=\"product border shadow first last-row\">"
                    }else if((i+1)%4==0){
                        tab+=" <li class=\"product border shadow last last-row\">"
                    }
                    else{
                        tab+=" <li class=\"product border shadow last-row\">"
                    }

                    tab+="<a href='#'>";
                    tab+=" <div class='thumbnail'>"
                    tab+=" <img width='150' height='150' src='/static/"+data[i].url+"' class='attachment-shop_small wp-post-image' alt='"+data[i].name+"' title='"+data[i].shotintro+"' />"
                    tab+=" <div class='thumb-shadow'></div>"
                    tab+=" </div>"
                    tab+="  <span class='price'> <ins>"+data[i].name+"</ins></span>"
                    tab+=" </a>"

                    tab+="  </li>"


                }
                $("#"+lswz).empty();
                $("#"+lswz).append(tab);
            }
        });


    };

function wx(){


        if($("#imgbutton").text()=="加微信"){

            $("#imgbutton").text("收起")
        }
        else{

            $("#imgbutton").text("加微信")
        }

        $("#wximg").toggle();


}