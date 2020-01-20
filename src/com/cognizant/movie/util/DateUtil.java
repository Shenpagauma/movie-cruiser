package com.cognizant.movie.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil { 
    public static Date convertToDate(String userDate) {
        try {
            SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
            format.setLenient(false);
            return format.parse(userDate); // Converts from String to Date
        } catch (ParseException e) {
            System.out.println("Data Went Wrong!");
        } 

        return null; // never get executed

    }
}
