$(function(){
    let btn = $('.m-r button');
    let more = $('.mainL .more');
    let pagenum = 0;
    let list = [];
    let flag = true;

   more.on('click',function (e) {
       if(!flag){
           return;
       }
       flag = false;
       pagenum++;
        $.ajax({
            url: 'page.php',
            data: {pagenum:pagenum},
            dataType: 'json',
            success: function (res) {
                if(res.length){
                    flag = true;
                    render(res);
                }else{
                    alert('木有了~~~');
                }
            }
        });
        function render(data) {
            list = list.concat(data);
            // list.push(...data);
            //冒充
            // Array.prototype.push.apply(list,data);
            // Array.prototype.push.call(list,...data);
            let html = '';
            list.forEach(ele=>{
                html += `
                    <li>
                        <h4>
                            ${ele.names}
                            <small>${ele['times']}</small>
                        </h4>
                        <p>${ele.content}</p>
                    </li>
                    `;
                $(".mainL .m-l").html(html);
            });
        }
    });
    more.triggerHandler('click');

    //插入留言
    btn.on('click',function (e) {
    //     阻止默认行为
    //     e.stopPropagation();

        e.preventDefault();

        // return false;

        let data = $('#myform').serialize();
        let arr =  $('#myform').serializeArray();
        // console.log(arr);
        $.ajax({
            url: 'comment.php',
            data: data,
            success: function (res) {
                // sub(arr);
                // console.log(res.length);
                if($.trim(res) == 'yes'){
                    sub(arr);
                }else if(res == 'no'){
                    alert('留言失败');
                }
            }
        });
        function sub(arr){
            //    表单数据清空
            $('#myform')[0].reset();
            // console.log(arr);
            let html = `
				<h4>
                    ${arr[0].value}
                    <small>${formDate()}</small>
				</h4>
				<p>${arr[2].value}</p>
			    `;
            $("<li class='liuyan'>").html(html).prependTo(".mainL ul");
        };
        function formDate() {
            let date = new Date();
            let y = date.getFullYear(), m = date.getMonth()+1, d = date.getDate(), h = date.getHours(),
                i = date.getMinutes(), s = date.getSeconds();
            return y+'-'+m+'-'+d+'  '+h+':'+i+':'+s;
        };

    });

})
