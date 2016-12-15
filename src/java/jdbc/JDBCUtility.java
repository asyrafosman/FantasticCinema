/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package jdbc;

import java.util.*;
import java.sql.*;

/**
 *
 * @author FANTASTIC CINEMA
 */
public class JDBCUtility 
{
   Connection con;
   String driver;
   String url;
   String userName;
   String password;
   PreparedStatement psInsertBooking = null;
   PreparedStatement psInsertCustomer = null;
   PreparedStatement psSelectAllFromBooking = null;
   PreparedStatement psSelectAllFromBookingByUsername = null;
   PreparedStatement psUpdateBookingViaId = null;
   PreparedStatement psDeleteBookingViaId = null;
   PreparedStatement psSelectAllFromMovie = null;
   PreparedStatement psSelectAllFromMovieAvailable = null;
   PreparedStatement psSelectCustomerViaLoginPassword = null;
   PreparedStatement psSelectAdminViaLoginPassword = null;
   PreparedStatement psInsertMovie = null;
   PreparedStatement psUpdateCustomerViaUsername = null;
   PreparedStatement psDeleteMovieViaId = null;
   PreparedStatement psUpdateMovieViaIdActive = null;
   PreparedStatement psUpdateMovieName = null;

   //use this constructor if using ConnectionPool
   public JDBCUtility()
   {
   }

   //use this constructor if not using ConnectionPool
   //ConnectionPool is used for multi user!
   public JDBCUtility(String driver,
                      String url,
                      String userName,
                      String password)
   {
      this.driver = driver;
      this.url = url;
      this.userName = userName;
      this.password = password;
   }

   public  void jdbcConnect()
   {
      try
	   {
         Class.forName (driver);
         con = DriverManager.getConnection(url, userName, password);
         DatabaseMetaData dma = con.getMetaData ();
         System.out.println("\nConnected to " + dma.getURL());
         System.out.println("Driver       " + dma.getDriverName());
         System.out.println("Version      " + dma.getDriverVersion());
         System.out.println("");
	   }
	   catch (SQLException ex)
	   {
         while (ex != null)
         {
		      System.out.println ("SQLState: " +
                                 ex.getSQLState ());
            System.out.println ("Message:  " +
                                 ex.getMessage ());
		      System.out.println ("Vendor:   " +
                                 ex.getErrorCode ());
            ex = ex.getNextException ();
		      System.out.println ("");
         }

         System.out.println("Connection to the database error");
	   }
	   catch (java.lang.Exception ex)
	   {
         ex.printStackTrace ();
	   }
   }

   public Connection jdbcGetConnection()
   {
   	return con;
   }

   public void jdbcConClose()
   {
   	try
   	{
         con.close();
   	}
   	catch (Exception ex)
	   {
	   }
   }

    public void prepareSQLStatement()
    {      
        try
        {
            //insert into booking
            String sqlInsertBooking = "INSERT INTO booking(username, cinema, moviename, moviedate, movietime, bookingdate, seat) " +
                                      "VALUES(?, ?, ?, ?, ?, ?, ?)";
            psInsertBooking = con.prepareStatement(sqlInsertBooking);
            
            //insert into customers
            String sqlInsertCustomer = "INSERT INTO user(username, password, userType, fullName, email, mobileNum) " +
                                      "VALUES(?, ?, ?, ?, ?, ?)";
            psInsertCustomer = con.prepareStatement(sqlInsertCustomer);
            
            String sqlUpdateCustomerViaUsername = "UPDATE user SET fullName = ?, email = ?, mobileNum = ? WHERE username = ?";
            psUpdateCustomerViaUsername = con.prepareStatement(sqlUpdateCustomerViaUsername);
            
            //select all from booking
            String sqlSelectAllFromBooking = "SELECT * FROM booking";
            psSelectAllFromBooking = con.prepareStatement(sqlSelectAllFromBooking);
            
            //select all from booking by username
            String sqlSelectAllFromBookingByUsername = "SELECT * FROM booking WHERE username = ?";
            psSelectAllFromBookingByUsername = con.prepareStatement(sqlSelectAllFromBookingByUsername);
            
            
            String sqlUpdateBookingViaId = "UPDATE booking SET status = ? WHERE id = ?"; 
            psUpdateBookingViaId = con.prepareStatement(sqlUpdateBookingViaId); 
            
            //psDeleteBookingViaId
            String sqlDeleteBookingViaId = "DELETE booking WHERE id = ?"; 
            psDeleteBookingViaId = con.prepareStatement(sqlDeleteBookingViaId); 
            
            //select all from movie
            String sqlSelectAllFromMovie = "SELECT * FROM movie";
            psSelectAllFromMovie = con.prepareStatement(sqlSelectAllFromMovie);
            
            //select all from movie available
            String sqlSelectAllFromMovieAvalaible = "SELECT * FROM movie WHERE status = 1";
            psSelectAllFromMovieAvailable = con.prepareStatement(sqlSelectAllFromMovieAvalaible);
            
            String sqlSelectCustomerViaLoginPassword = "SELECT * FROM user WHERE username = ? AND password = ? AND userType = 'client'";
            psSelectCustomerViaLoginPassword = con.prepareStatement(sqlSelectCustomerViaLoginPassword);
            
            String sqlSelectAdminViaLoginPassword = "SELECT * FROM user WHERE username = ? AND password = ? AND userType = 'admin'";
            psSelectAdminViaLoginPassword = con.prepareStatement(sqlSelectAdminViaLoginPassword);
            
            String sqlInsertMovie = "INSERT INTO movie(moviename) " +
                                      "VALUES(?)";
            psInsertMovie = con.prepareStatement(sqlInsertMovie);
            
            //delete from table movie
            String sqlDeleteMovieViaId = "DELETE from movie WHERE id = ?"; 
            psDeleteMovieViaId = con.prepareStatement(sqlDeleteMovieViaId);
            
            //edit status
            String sqlUpdateMovieViaIdActive = "UPDATE movie SET status = ? WHERE id = ?"; 
            psUpdateMovieViaIdActive = con.prepareStatement(sqlUpdateMovieViaIdActive);
            
            //update moviename in database
            String sqlUpdateMovieName = "UPDATE movie SET moviename = ? WHERE id = ?"; 
            psUpdateMovieName = con.prepareStatement(sqlUpdateMovieName);
        }
	catch (SQLException ex)
	{
            while (ex != null)
            {
                System.out.println ("SQLState: " +
                                 ex.getSQLState ());
                System.out.println ("Message:  " +
                                 ex.getMessage ());
		System.out.println ("Vendor:   " +
                                 ex.getErrorCode ());
                ex = ex.getNextException ();
		      System.out.println ("");
            }
            
            System.out.println("Connection to the database error");
	}
	catch (java.lang.Exception ex)
	{
            ex.printStackTrace ();
	}
    }

    public PreparedStatement getPsInsertBooking()
    {
      return psInsertBooking;
    }
    
    public PreparedStatement getPsInsertCustomer()
    {
      return psInsertCustomer;
    }
    
    public PreparedStatement getPsUpdateCustomerViaUsername()
    {
      return psUpdateCustomerViaUsername;
    }
    
    public PreparedStatement getPsSelectAllFromBooking()
    {
      return psSelectAllFromBooking;
    }
    
    public PreparedStatement getPsSelectAllFromBookingByUsername()
    {
      return psSelectAllFromBookingByUsername;
    }
    
    public PreparedStatement getPsUpdateBookingViaId()
    {
      return psUpdateBookingViaId;
    }
    
    public PreparedStatement getPsDeleteBookingViaId()
    {
      return psDeleteBookingViaId;
    }
    
    public PreparedStatement getPsSelectAllFromMovie()
    {
      return psSelectAllFromMovie;
    }   
    
    public PreparedStatement getPsSelectAllFromMovieAvailable()
    {
      return psSelectAllFromMovieAvailable;
    } 

    public PreparedStatement getPsSelectCustomerViaLoginPassword()
    {
      return psSelectCustomerViaLoginPassword;
    }
    
    public PreparedStatement getPsSelectAdminViaLoginPassword()
    {
      return psSelectAdminViaLoginPassword;
    }
    
    public PreparedStatement getPsInsertMovie()
    {
        return psInsertMovie;
    }
    
    public PreparedStatement getPsDeleteMovieViaId()
    {
        return psDeleteMovieViaId;
    }
    
    public PreparedStatement getPsUpdateMovieViaIdActive()
    {
        return psUpdateMovieViaIdActive;
    }
    
    public PreparedStatement getPsUpdateMovieName()
    {
        return psUpdateMovieName;
    }
}