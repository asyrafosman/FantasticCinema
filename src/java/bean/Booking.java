/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package bean;

import java.io.Serializable;

/**
 *
 * @author U
 */
public class Booking implements Serializable {
    private int id, status;
    private String username, cinema, moviename, moviedate, movietime, bookingdate, seat;

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param username the username to set
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * @return the cinema
     */
    public String getCinema() {
        return cinema;
    }

    /**
     * @param cinema the cinema to set
     */
    public void setCinema(String cinema) {
        this.cinema = cinema;
    }

    /**
     * @return the moviename
     */
    public String getMoviename() {
        return moviename;
    }

    /**
     * @param moviename the moviename to set
     */
    public void setMoviename(String moviename) {
        this.moviename = moviename;
    }

    /**
     * @return the moviedate
     */
    public String getMoviedate() {
        return moviedate;
    }

    /**
     * @param moviedate the moviedate to set
     */
    public void setMoviedate(String moviedate) {
        this.moviedate = moviedate;
    }

    /**
     * @return the movietime
     */
    public String getMovietime() {
        return movietime;
    }

    /**
     * @param movietime the movietime to set
     */
    public void setMovietime(String movietime) {
        this.movietime = movietime;
    }

    /**
     * @return the bookingdate
     */
    public String getBookingdate() {
        return bookingdate;
    }

    /**
     * @param bookingdate the bookingdate to set
     */
    public void setBookingdate(String bookingdate) {
        this.bookingdate = bookingdate;
    }

    /**
     * @return the status
     */
    public int getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(int status) {
        this.status = status;
    }

    /**
     * @return the seat
     */
    public String getSeat() {
        return seat;
    }

    /**
     * @param seat the seat to set
     */
    public void setSeat(String seat) {
        this.seat = seat;
    }
}
