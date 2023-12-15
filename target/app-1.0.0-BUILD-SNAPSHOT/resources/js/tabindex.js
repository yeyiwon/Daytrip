
    function changeTab(tabIndex) {
    const contents = document.querySelectorAll('.content');
    contents.forEach(content => {
    content.classList.remove('active');
});
    const selectedContent = document.getElementById('content' + (tabIndex + 1));
    selectedContent.classList.add('active');
}
