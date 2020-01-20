<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<title>Customer</title>
<link href="styles/style.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="images/logo.png" />
</head>
<body>
    <header> <span>Movie Cruiser</span> <img id="logo" src="images/logo.png" alt="logo" />
    <nav> <a href="ShowMovieListCustomer">Movies</a> <a href="ShowFavorite" id="favorites">Favorites</a>
    </nav> </header>
    <br>
    <br>
    <c:if test="${addFavoriteStatus==true}">
        <b id="movie-added"> Movie Added to Favorites Successfully</b>
    </c:if>
    <section> <span id="heading">Movies</span>
    <table>
        <col width="140px" />
        <col width="120px" />
        <col width="120px" />
        <col width="110px" />
        <col width="110px" />
        <tr>
            <th class="left-text">Title</th>
            <th class="right-text">Box Office</th>
            <th class="center-text">Genre</th>
            <th class="center-text">Has Teasor</th>
            <th class="center-text">Action</th>
        </tr>
        <c:forEach items="${movie}" var="movie">
            <tr>
                <td class="left-text">${movie.getTitle()}</td>

                <td class="right-text"><fmt:formatNumber type="currency" maxFractionDigits="0"
                        value="${movie.getBoxOffice()}"></fmt:formatNumber></td>

                <td class="center-text">${movie.getGenre() }</td>


                <td class="center-text"><c:choose>
                        <c:when test="${movie.isHasTeaser()==true}">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>
                </td>
                <td class="center-text"><a href="AddToFavorite?movieId=${movie.getMovieId()}">Add
                        to Favorite</a></td>
            </tr>
        </c:forEach>

    </table>
    </section>
    <footer> Copyright &copy; 2019 </footer>
</body>
</html>