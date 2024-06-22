package com.jspider.cardekhowithservlet.JDBC;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.jspider.cardekhowithservlet.object.Car;
import com.mysql.cj.jdbc.Driver;

public class CarJDBC {
	
	private static Connection connection;
	private static PreparedStatement preparedStatement;
	private static ResultSet resultSet;
	private static String query;
	private static Driver driver;
	
	private static void openConnection() throws SQLException {
		driver=new com.mysql.cj.jdbc.Driver();
		connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/weja4","root","root");
	}
	
	private static void closeConnection() throws Exception{
		if(preparedStatement!=null) {
			preparedStatement.close();
		}
		if(connection!=null) {
			connection.close();
		}
		if (resultSet!= null) {
			resultSet.close();
		}
		DriverManager.deregisterDriver(driver);
	}

	public static int addCar(int id, String name, String brand, double price) {
		// TODO Auto-generated method stub
		int res = 0;
		try {
			openConnection();
			query="insert into car values(?,?,?,?)";
			preparedStatement=connection.prepareStatement(query);
			preparedStatement.setInt(1, id);
			preparedStatement.setString(2, name);
			preparedStatement.setString(3, brand);
			preparedStatement.setDouble(4, price);
			res=preparedStatement.executeUpdate();
			System.out.println(res + "row(s)affected");
			
		} catch (Exception e) {
		e.printStackTrace();
		}finally {
			try {
				closeConnection();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return res;
		
	}

	public static List<Car> searchAllCars() {
		List<Car>cars=new ArrayList<>();
		try {
			openConnection();
			query="select * from car";
			preparedStatement=connection.prepareStatement(query);
			resultSet=preparedStatement.executeQuery();
			
            while(resultSet.next()) {
            	Car car=new Car();
            	car.setId(resultSet.getInt(1));
            	car.setName(resultSet.getString(2));
            	car.setBrand(resultSet.getString(3));
            	car.setPrice(resultSet.getDouble(4));
            	cars.add(car);
				
			}
			closeConnection();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return cars;
	}

	public static int modifyCar(int id, String name, String brand, double price) throws Exception {
		 int car1 = 0;
		    try {
		        openConnection();
		        query = " update car set name=?, brand=?,price=? where id=?";
		        preparedStatement = connection.prepareStatement(query);
		        preparedStatement.setInt(4, id);
		        preparedStatement.setString(1, name);
		        preparedStatement.setString(2, brand);
		        preparedStatement.setDouble(3, price);
		        car1 = preparedStatement.executeUpdate();

		        

		    } catch (Exception e) {
		        e.printStackTrace();
		    } finally {
		        closeConnection();
		    }
		    return car1;
	}

	public static int RemoveCar(int id) {
		int res = 0;
		try {
			openConnection();
			query = "DELETE FROM car WHERE id = ?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, id);
			res = preparedStatement.executeUpdate();
			closeConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}

	public static int userCreate(String email, String password) {
		int res = 0;
		try {
			openConnection();
			query="insert into admin values(?,?)";
			preparedStatement=connection.prepareStatement(query);
			preparedStatement.setString(1, email);
			preparedStatement.setString(2, password);
			res=preparedStatement.executeUpdate();
			System.out.println(res + "row(s)affected");
			
		} catch (Exception e) {
		e.printStackTrace();
		}finally {
			try {
				closeConnection();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return res;
	}

	
	}
	


