<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Admin</title>
<link href="styles/style.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="images/logo.png" />
</head>
<body>
    <header> <span>Movie Cruiser</span> <img id="logo" src="images/logo.png" alt="logo" />
    <nav> <a href="ShowMovieListAdmin">Movies</a> </nav> </header>
    <section> <span id="heading">Movies</span>
    <table>
        <col width="180px" />
        <col width="100px" />
        <col width="130px" />
        <col width="130px" />
        <col width="130px" />
        <col width="130px" />
        <col width="100px" />
        <tr>
            <th class="left-text">Title</th>
            <th class="right-text">Box Office</th>
            <th class="center-text">Active</th>
            <th class="center-text">Date of Launch</th>
            <th class="center-text">Genre</th>
            <th class="center-text">Has Teaser</th>
            <th class="center-text">Action</th>
        </tr> 

        <c:forEach items="${movieList}" var="movie">
            <tr>
                <td class="left-text">${movie.getTitle()}</td>

                <td class="right-text"><fmt:formatNumber type="currency" maxFractionDigits="0"
                        value="${movie.getBoxOffice()}"></fmt:formatNumber></td>

                <td class="center-text"><c:choose>
                        <c:when test="${movie.isActive()==true}">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>
                </td>

                <td class="center-text"><fmt:formatDate value="${movie.getDateOfLaunch()}"
                        pattern="dd/MM/yyyy" /></td>
                <td class="center-text">${movie.getGenre() }</td>
                <td class="center-text"><c:choose>
                        <c:when test="${movie.isHasTeaser()==true}">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>
                </td>
                <td class="center-text"><a href="ShowEditMovie?movieId=${movie.getMovieId()}">Edit</a></td>
            </tr>
        </c:forEach>

    </table>
    </section>
    <footer> Copyright &copy; 2019 </footer>
</body>
</html>