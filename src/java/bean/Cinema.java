/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.io.Serializable;

/**
 *
 * @author FANTASTIC CINEMA
 */
public class Cinema implements Serializable {
    private int id, status;
    private String cinemaname;

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
     * @return the cinemaname
     */
    public String getCinemaname() {
        return cinemaname;
    }

    /**
     * @param cinemaname the cinemaname to set
     */
    public void setCinemaname(String cinemaname) {
        this.cinemaname = cinemaname;
    }
}
