<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Favorites Empty</title>
<link href="styles/style.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="images/logo.png" />
</head> 
<body>
    <header> <span>Movie Cruiser</span> <img id="logo" src="images/logo.png" alt="logo" />
    <nav> <a href="ShowMovieListCustomer">Movies</a> <a href="ShowFavorite" id="favorites">Favorites</a>
    </nav> </header>
    <section> <span id="heading">Favorites</span>
    <p id="favorites-empty-notification">
        No movies in Favorites.Use 'Add to Favorites' option in &nbsp;<a id="link-blue"
            href="ShowMovieListCustomer">Movie List</a>
    </p>
    </section>
    <footer> Copyright &copy; 2019 </footer>
</body>
</html>