<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Edit</title>
<link href="styles/style.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="images/logo.png" />
<script src="js/script.js"></script>
</head>
<body>
    <c:set value="${movie}" var="movie"></c:set>
    <header> <span>Movie Cruiser</span> <img id="logo" src="images/logo.png" alt="logo" />
    <nav> <a href="ShowMovieListAdmin">Movies</a> </nav> </header>
    <section> <span id="heading">Edit Movie</span>
    <form action="EditMovie" method="post" name="movieForm" onsubmit="return validMovieForm()">
        <input type="hidden" name="id" value="${movie.getMovieId()}" />
        <c:set value="${movie}" var="movie"></c:set>
        <table>
            <tr>
                <td><label for="title" class="grey">Title</label></td>
            </tr>

            <tr>
                <td colspan="4"><input type="text" name="title" size="71" id="title"
                    value="${movie.getTitle()}" autocomplete="off" spellcheck="false" autofocus
                    placeholder="Avengers - End Game" /></td>
            </tr>
            <tr>
                <td height="30px"></td>
            </tr>
            <tr>
                <td><label for="gross" class="grey">Gross (&#36;)</label></td>
                <td><label class="grey">Active</label></td>
                <td><label for="date-of-launch" class="grey">Date of Launch</label></td>
                <td><label class="grey">Genre</label></td>
            </tr>
            <tr>
                <td width="110"><input type="text" name="boxOffice" id="gross"
                    value="${movie.getBoxOffice()}" autocomplete="off" spellcheck="false"
                    placeholder=" 2787965087" size="8px" /></td>
                <td width="130"><c:choose>
                        <c:when test="${movie.isActive()==true}">
                            <input type="radio" name="active" id="yes" value="Yes"
                                class="checkbox-radio-size" checked>
                            <label for="yes">Yes</label>
                            <input id="no" class="checkbox-radio-size" type="radio" name="active">
                            <label for="no">No</label>
                        </c:when>
                        <c:otherwise>
                            <input type="radio" name="active" id="yes" class="checkbox-radio-size">
                            <label for="yes">Yes</label>
                            <input value="No" id="no" class="checkbox-radio-size" type="radio"
                                name="active" checked>
                            <label for="no">No</label>
                        </c:otherwise>
                    </c:choose>
                <td width="159"><fmt:formatDate value="${movie.getDateOfLaunch()}"
                        var="dateOfLaunch" pattern="dd/MM/yyyy" /> <input type="text"
                    name="dateOfLaunch" id="date-of-launch" placeholder="27/04/2022"
                    autocomplete="off" spellcheck="false" value="${dateOfLaunch}" /></td>

                <td><select name="genre">
                        <option value="${movie.getGenre() }">${movie.getGenre()}</option>
                        <option value="ScienceFiction">Science Fiction</option>
                        <option value="Superhero">Superhero</option>
                        <option value="Romance">Romance</option>
                        <option value="Comedy">Comedy</option>
                        <option value="Adventure">Adventure</option>
                        <option value="Thriller">Thriller</option>
                </select></td>
            </tr>
            <tr>
                <td height="30px"></td>
            </tr>
            <tr>
                <c:choose>
                    <c:when test="${movie.isHasTeaser()==true}">
                        <td><input class="checkbox-radio-size" type="checkbox" name="hasTeaser"
                            checked id="hasTeaser"><label id="has-teasar-align"
                            for="hasTeaser" class="grey">Has Teaser</label></td>
                    </c:when>
                    <c:otherwise>
                        <td><input class="checkbox-radio-size" type="checkbox" name="hasTeaser"
                            id="hasTeaser"><label id="has-teasar-align" for="hasTeaser"
                            class="grey">Has Teaser</label></td>

                    </c:otherwise>
                </c:choose>

            </tr>
            <tr>
                <td colspan="4"><input type="submit" name="submit" value="Save" class="submit"></td>
            </tr>
        </table>
    </form>
    </section>
    <footer> Copyright &copy; 2019 </footer>
</body>
</html>