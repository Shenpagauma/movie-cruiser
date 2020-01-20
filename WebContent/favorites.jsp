<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Favorites</title>
<link href="styles/style.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="images/logo.png" />
</head>
<body>
    <header> <span>Movie Cruiser</span> <img id="logo" src="images/logo.png" alt="logo" />
    <nav> <a href="ShowMovieListCustomer">Movies</a> <a href="ShowFavorite" id="favorites">Favorites</a>
    </nav> </header>
    <section> <span id="heading">Favorites</span> <br>
    <c:if test="${removeFavoriteItemStatus==true}">
        <b id="movie-removed"> Movie removed from Favorites successfully</b>
    </c:if>
    <table> 
        <col width="140px" />
        <col width="120px" />
        <col width="120px" />
        <col width="110px" />
        <tr>
            <th class="left-text">Title</th>
            <th class="right-text">Box Office</th>
            <th class="center-text">Genre</th>
        </tr>
        <c:forEach items="${movie}" var="movie">
            <tr>
                <td class="left-text">${movie.getTitle()}</td>

                <td class="right-text"><fmt:formatNumber type="currency" maxFractionDigits="0"
                        value="${movie.getBoxOffice()}"></fmt:formatNumber></td>

                <td class="center-text">${movie.getGenre() }</td>
                </td>
                <td class="center-text"><a href="RemoveFavorite?movieId=${movie.getMovieId()}">Delete</a></td>
            </tr>
        </c:forEach>
        <tr>
            <td height="16px"></td>
        </tr>
        <c:set var="noOfFavorites" value="${noOfFavorite}"></c:set>
        <tr>
            <td><label class="bold" class="left-text">No.of Favorites:</label>${noOfFavorites}</td>
        </tr>
    </table>
    </section>
    <footer> Copyright &copy; 2019 </footer>
</body>
</html>