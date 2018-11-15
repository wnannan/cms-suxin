$(function(){
    let count = $("span.count").text()*1+1;
    let gid = location.search.split('=')[2];
    // console.log(url);
    $.ajax({
        url: 'counts.php',
        data: {
            count: count,
            gid: gid
        },
        success: function (res) {
            // alert(1);
            if(res = "yes"){
                // alert("浏览成功");
                // console.log(counts);
            }else if(res = "no"){
                alert("浏览失败");
            }
        }
    })
})
