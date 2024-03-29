/*
    Script for the recipes API 
*/

$(document).ready(function() {
    var query = 'cheese';
    $.ajax({
        method: 'GET',
        url: 'https://api.edamam.com/api/recipes/v2?type=public&beta=false&q=' + query + '&app_id=5c021496&app_key=831a4143a01ca9462aa8a22a5bed4200',
        contentType: 'application/json',
        success: function(result) {
            console.log(result);
            result.hits.forEach(item => {
                const ingrdHTML = item.recipe.ingredientLines.map(line => `<li>${line}</li>`);
                recipeHTML =  `
                    <div class="recipe-item">
                        <h3>${item.recipe.label}</h3>
                        <p><strong>Ingedients:</strong></p>
                        <ul>${ingrdHTML.join('')}</ul>
                        <p><strong>Dish type:</strong>  <span class="dish-type">${item.recipe.dishType}</span></p>
                        <p><strong>Cuisine type:</strong> <span class="cuisine-type">${item.recipe.cuisineType}</span></p>
                        <p><strong>Diet labels:</strong> <span class="diet-labels">${item.recipe.dietLabels.join(', ')}</span></p>
                        <a href="${item.recipe.url}">
                            <img src="${item.recipe.image}" alt="Recipe Image">
                            <span>View the full recipe</span>
                        </a>
                    </div>
                `;
                document.getElementById("api-recipe-container").innerHTML += recipeHTML;
            });
        },
        error: function ajaxError(jqXHR) {
            console.error('Error: ', jqXHR.responseText);
        }
    });
});