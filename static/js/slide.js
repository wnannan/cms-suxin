$(function(){
    $('h5').on('click',function(){
        $(this).next().slideToggle();
        $(this).children('span').toggleClass('glyphicon glyphicon-minus');
        $(this).children('span').toggleClass('glyphicon glyphicon-plus');
    })
    $('h5').trigger('click');
})