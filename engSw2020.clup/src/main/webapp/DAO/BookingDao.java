package main.webapp.DAO;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Time;
import java.time.*;
import java.util.ArrayList;

import main.webapp.model.Booking;
import main.webapp.model.User;
import main.webapp.util.*;

public class BookingDao {

	public ArrayList<Booking> getBooking(int idStoreUser){
	  ArrayList<Booking> bookingList = new ArrayList<Booking>();
	  Connection con = null;
      Statement statement = null;
      ResultSet resultSet = null;
      
      try{        	 

          con = DBConnection.createConnection(); 
          statement = con.createStatement();
          String query = "Select Name, Surname, Email,  TelephoneNumber, idBooking, Number, bookingDate, ArrivalTime, FinishTime "
          		+ "FROM User INNER JOIN clup_engsw2020.Booking ON "
          		+ "User.idUser = clup_engsw2020.booking.idUser "
          		+ "WHERE booking.idStore = ? ";
          
          	PreparedStatement preparedStatement  = con.prepareStatement(query);
      		preparedStatement.setInt(1, idStoreUser);

      		resultSet = preparedStatement.executeQuery(); 
          while(resultSet.next()) {
        	  Booking bookingBean = new Booking();
        	  User user = new User();
        	  bookingBean.setIdBooking(resultSet.getInt("idBooking"));
        	  bookingBean.setNumber(resultSet.getInt("Number"));
        	  bookingBean.setBookingDate(resultSet.getDate("bookingDate"));
        	  bookingBean.setArrivalTime(resultSet.getTime("ArrivalTime"));
        	  bookingBean.setFinishTime(resultSet.getTime("FinishTime"));
        	  user.setEmail(resultSet.getString("Email"));
        	  user.setName(resultSet.getString("Name"));
        	  user.setSurname(resultSet.getString("Surname"));
        	  user.setTelephoneNumber(resultSet.getString("TelephoneNumber"));
        	  bookingBean.setUser(user);
        	  bookingList.add(bookingBean);
          }
          return bookingList;
       }
      		
      catch(Exception e)
      {
    	  e.printStackTrace();
      }
	return bookingList;
	}
	
	public int deleteBooking(int idBooking) {
		String query = "DELETE FROM booking WHERE idBooking =" + idBooking;
		 Connection con = null;
	     Statement statement = null;
	     int result = 0;
	     try {
	    	  con = DBConnection.createConnection(); 
	          statement = con.createStatement(); 
	          result = statement.executeUpdate(query);
	          return result;
	     }		
		 catch(Exception e){
			e.printStackTrace();
		}
	     return result;
	}
	
	public int modifyBooking(int id, Date date,Time arrivalTime, Time finishTime) {
	    String query = "UPDATE booking SET ArrivalTime="+ "\""+date+" "+arrivalTime  +"\"" +"," + " FinishTime="+"\"" +date+" "+finishTime+"\"" +"," + " bookingDate="+"\"" + date +"\"" + " WHERE idBooking=" + id;
	    Connection con = null;
	    Statement statement = null;
	    int result = 0;
	    try {
	    	con = DBConnection.createConnection();
	    	statement = con.createStatement();
	    	result = statement.executeUpdate(query);
	    	return result;
	    }
	    catch(Exception e)
	    {
	    	e.printStackTrace();
	    }
	    return result;
	}

}

