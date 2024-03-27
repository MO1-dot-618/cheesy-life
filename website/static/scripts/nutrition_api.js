/*
    Script for the nutritions API Ninjas
*/

$(document).ready(function() {
    var query = $("#nutrition-facts").data("name");
    $.ajax({
        method: 'GET',
        url: 'https://api.api-ninjas.com/v1/nutrition?query=' + query,
        headers: { 'X-Api-Key': 'NdTImmEpE0R8BfEg8VS9oQ==NRhcRytlBawj9dtR'},
        contentType: 'application/json',
        success: function(result) {
            console.log(result);
            var item = result[0];
            document.getElementById("nutrition-facts").innerHTML =  `
                <h3>Nutrition Facts:</h3>
                <p><strong>Calories:</strong> ${item.calories}</p>
                <p><strong>Serving Size (g):</strong> ${item.serving_size_g}</p>
                <p><strong>Total Fat (g):</strong> ${item.fat_total_g}</p>
                <p><strong>Saturated Fat (g):</strong> ${item.fat_saturated_g}</p>
                <p><strong>Protein (g):</strong> ${item.protein_g}</p>
                <p><strong>Sodium (mg):</strong> ${item.sodium_mg}</p>
                <p><strong>Potassium (mg):</strong> ${item.potassium_mg}</p>
                <p><strong>Cholesterol (mg):</strong> ${item.cholesterol_mg}</p>
                <p><strong>Total Carbohydrates (g):</strong> ${item.carbohydrates_total_g}</p>
                <p><strong>Fiber (g):</strong> ${item.fiber_g}</p>
                <p><strong>Sugar (g):</strong> ${item.sugar_g}</p>
            `;
        },
        error: function ajaxError(jqXHR) {
            console.error('Error: ', jqXHR.responseText);
        }
    });
});