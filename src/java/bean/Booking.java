/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package bean;

import java.io.Serializable;

/**
 *
 * @author admin
 */
public class Booking implements Serializable {
    private int id;
    private String username;
    private String moviename;
    private String showdate;
    private String bookingdate;
    private int status;

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
     * @return the showdate
     */
    public String getShowdate() {
        return showdate;
    }

    /**
     * @param showdate the showdate to set
     */
    public void setShowdate(String showdate) {
        this.showdate = showdate;
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
}
