$(document).ready(function() {
    $('#im').mapster({
        mapKey: 'data-key', // Use the data-key attribute as the map key
        fillColor: 'ff0000', // Set fill color for selected areas
        strokeColor: '00ff00', // Set color of the border stroke for selected areas
        fillOpacity: 0.9, // Set opacity of filled areas
        onMouseover: function(data) {
            // Get the data-key attribute of the area being hovered over
            var areaTitle = $(data.e.target).attr('data-key');
            // Log the area title to the console
            console.log('Hovered over area: ' + areaTitle);
            
            // Add a custom tooltip or any other customization you want
            // For demonstration purposes, let's change the opacity of the area
            $(data.e.target).css('opacity', '0.5');
        },        
        onMouseout: function(data) {
            // Reset the opacity of the area when the mouse moves away
            $(data.e.target).css('opacity', '1');
        }
    }).mapster('set', true, 'Fresh Cheese, Soft Cheese, Blue Cheese, Hard Cheese'); // Set initial selections
});
