//Ajax calls GET/POST
//Make sure we wait to attach our handlers until the DOM is fully loaded.
$(function () {
    $(".update-form").on("click", function (event) {
        //event.preventDefault();
        var id = $(this).data("id");
        console.log(id);
        var burgernameState = {
            devoured: true
        };

        // Send the PUT request.
        $.ajax("/api/burgers/" + id, {
            type: "PUT",
            data: burgernameState
        }).then(
            function () {
                console.log("changed burger to DEVOURED");
                // Reload the page to get the updated list
                location.reload();
            }
        );
    });

    $(".create-update-form").on("submit", function (event) {
        // Make sure to preventDefault on a submit event.
        event.preventDefault();
        var newBurger = {
            name: $("#ca").val().trim()
        };
        console.log(newBurger);
        // Send the POST request.
        $.ajax("/api/burgers", {
            type: "POST",
            data: newBurger
        }).then(
            function () {
                console.log("created new burger");
                // Reload the page to get the updated list
                location.reload();
            }
        );
    });
});
