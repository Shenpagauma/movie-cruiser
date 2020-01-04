function validF() {
    var title = document.forms["movieEdit"]["title"].value;
    var titleRegExp = (/^[A-Za-z]{2,65}$/);

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
