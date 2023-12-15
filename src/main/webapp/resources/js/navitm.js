function showContent(contentId) {
    $('.navitm').removeClass('active');
    $('#' + contentId).addClass('active2').siblings('.contentbox').removeClass('active2');
    $('div[onclick^="showContent(\'' + contentId + '\')"]').addClass('active');
}