$(document).ready(function() {
    // Show tooltip on hover
    $('#image-and-area g').hover(function() {
        var tooltipText = $(this).data('tooltip');
        var cheeseId = $(this).attr('id');
        var tooltipColor = $('#' + cheeseId + '-tooltip').css('background-color');
        $('#tooltip').text(tooltipText).css('color', tooltipColor).show();
    }, function() {
        $('#tooltip').hide();
    });

    // Position tooltip relative to mouse movement
    $('#image-and-area').on('mousemove', function(e) {
        $('#tooltip').css({
            left: e.pageX + 10,
            top: e.pageY + 10
        });
    });
});
