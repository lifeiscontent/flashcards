$(function() {
    $('.decks.show .card-inner').on('click', function(event) {
        event.preventDefault();
        $(this).closest('.card').toggleClass('is-active');
    });
});