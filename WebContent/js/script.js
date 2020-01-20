function validMovieForm() {
    var title = document.forms["movieForm"]["title"].value;
    var titleRegExp = (/^[A-Z: a-z]{2,100}$/);

    // title validation
    if (title == "") {
        alert("Title is required.");
        return false;
    }
    if (!title.match(titleRegExp)) {
        alert("Title should have 2 to 100 characters");
        return false;
    }  

    // Gross validation
    var gross = document.forms["movieEdit"]["boxOffice"].value;
    if (gross == "") {
        alert("Box Office is required.");
        return false;
    }
    if (isNaN(gross)) {
        alert("Box Office has to be a number.");
        return false;
    }

    // dateOfLaunch validation
    var datelaunch = document.forms["movieEdit"]["dateOfLaunch"].value;
    if (datelaunch == "") {
        alert("Date of Launch is required.");
        return false;
    }

    // genre validation
    var genre = document.forms["movieEdit"]["genre"].value;
    if (genre == "") {
        alert("Select one genre.");
        return false;
    }
}
