package com.cognizant.movie.dao;

import java.util.List;

import com.cognizant.movie.model.Movie;
import com.cognizant.movie.util.DateUtil;

public class MovieDaoCollectionImplTest {
    static MovieDao movieDao = new MovieDaoCollectionImpl();

    public static void main(String[] args) {
        testGetMovieListAdmin();
        testGetMovieListCustomer();
        testEditMovie();
        testGetMovieListAdmin();
        testGetMovieListCustomer();
        testGetMovie();

    }

    public static void testEditMovie() {
        System.out.println("\nModify Menu Item");
        Movie movieItem = new Movie(1, "Frozen", 123450L, true,
                DateUtil.convertToDate("03/01/2020"), "Animation", false);
        movieDao.modifyMovieList(movieItem);
    }

    public static void testGetMovieListAdmin() {
        System.out.println("\nAdmin View");
        List<Movie> movie = movieDao.getMovieListAdmin();
        System.out.printf("%-15s%-25s%-15s%-15s%-15s%-20s%s\n", "Id", "Title", "Box Office",
                "Active", "Date of Launch", "Genre", "Has Teaser");
        for (Movie movies : movie) {
            System.out.println(movies); // invokes toString();

        }
    }

    public static void testGetMovieListCustomer() {
        System.out.println("\nCustomer View");
        List<Movie> movie = movieDao.getMovieListCustomer();
        System.out.printf("%-15s%-25s%-15s%-15s%-15s%-20s%s\n", "Id", "Title", "Box Office",
                "Active", "Date Of Launch", "Genre", "Has Teaser");
        for (Movie movies : movie) {
            System.out.println(movies);
        }
    } 

    public static void testGetMovie() {
        System.out.println("\n Menu Item");
        System.out.printf("%-15s%-25s%-15s%-15s%-15s%-20s%s\n", "Id", "Name", "Price", "Active",
                "Date Of Launch", "Category", "Free Delivery");
        Movie movie = movieDao.getMovieById(2);
        System.out.println(movie); // invokes toString();

    }

}
