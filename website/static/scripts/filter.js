/*
    Script for search filters
*/

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
        var url = '/search?';
        if (textureFilters.length > 0) {
            url += 'texture=' + textureFilters.join(',') + '&';
        }
        if (sourceFilters.length > 0) {
            url += 'source=' + sourceFilters.join(',') + '&';
        }
        if (colorFilters.length > 0) {
            url += 'color=' + colorFilters.join(',') + '&';
        }
        if (priceFilter) {
            url += 'price=' + priceFilter + '&';
        }
        if (countryFilter) {
            url += 'country=' + encodeURIComponent(countryFilter);
        }

        history.pushState(null, null, url);

        // Send a GET request to the server
        fetch(url)
            .then(response => {
                if (!response.ok) {
                    throw new Error('Network response was not ok');
                }
                return response.text(); // Expecting HTML content
            })
        .then(data => {
            // Update the UI with the received HTML content
            document.getElementById("results").innerHTML = data;
        })
        .catch(error => {
            // Handle any errors
            console.error('Error:', error);
        });

    };


    $("#filter-button").click(function() {
        search_function();
    });

    function filter_home(texture) {
        fetch("/search?texture=" + encodeURIComponent(texture))
            .then(response => {
                if (!response.ok) {
                    throw new Error('Network response was not ok');
                }
                return response.text(); // Expecting HTML content
            })
        .then(data => {
            // Update the UI with the received HTML content
            document.getElementById("results").innerHTML = data;
        })
        .catch(error => {
            // Handle any errors
            console.error('Error:', error);
        });
    }

    // Get parameter 'texture' from home.html
    const urlParams = new URLSearchParams(window.location.search);
    const texture = urlParams.get('texture');

    // Use the parameter value as needed
    console.log('Texture:', texture);
    filter_home(texture);

});