$(document).ready(function(){
    $('.right').width('31%');
    $('.left').width('67%');
    var left_width = $('.left').width();
    
    $('#photos').galleryView({
        panel_width: left_width,
        panel_height: 300,
        frame_width: 100,
        frame_height: 100,
        transition_speed:1000,/*Thoi gian choi chuyen 2 tam anh*/
        transition_interval:2000 /*Toc do*/
    });
});