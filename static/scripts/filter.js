$(document).ready(function() {
    function search_function() {
        var textureFilters = [];
        document.querySelectorAll('input[type="checkbox"][id^="texture-"]:checked').forEach(function(checkbox) {
            textureFilters.push(checkbox.id.replace("texture-", ""));
        });

        var sourceFilters = [];
        document.querySelectorAll('input[type="checkbox"][id^="source-"]:checked').forEach(function(checkbox) {
            sourceFilters.push(checkbox.id.replace("source-", ""));
        });

        var colorFilters = [];
        document.querySelectorAll('input[type="checkbox"][id^="color-"]:checked').forEach(function(checkbox) {
            colorFilters.push(checkbox.id.replace("color-", ""));
        });

        var priceFilter = document.getElementById("price-filter").value;
        var countryFilter = document.getElementById("country-filter").value;

        //print them in the console for debugging
        console.log("Selected Texture Filters:", textureFilters);
        console.log("Selected Source Filters:", sourceFilters);
        console.log("Selected Color Filters:", colorFilters);
        console.log("Selected Price Filter:", priceFilter);
        console.log("Entered Country Filter:", countryFilter);

        // Construct the URL with query parameters
        var url = '/search?texture=' + textureFilters.join(',') + 
                    '&source=' + sourceFilters.join(',') + 
                    '&color=' + colorFilters.join(',') + 
                    '&price=' + priceFilter + 
                    '&country=' + encodeURIComponent(countryFilter);

        // Send a GET request to the server
        fetch(url)
            .then(response => response.json())
            .then(data => {
            // Handle the response data
            console.log(data); // For example, log the data to the console
            // Update the UI with the search results
            })
            .catch(error => {
            // Handle any errors
            console.error('Error:', error);
            });
        

    };

    $("#filter-button").click(function() {
        search_function();
    });
});