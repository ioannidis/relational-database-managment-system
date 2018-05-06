package com.papei.database;

import java.sql.*;

public class Main
{
	private static final String Domain = "localhost";
	private static final int Port = 5432;
	private static final String Database_Name = "ergasia";
	private static final String Username = "thanos";
	private static final String Password = "paravantis";
	private static final String URL = "jdbc:postgresql://" + Domain + ":" + Port + "/" + Database_Name;
	private static Connection conn;

	public static void main(String[] args) throws ClassNotFoundException
	{
		Class.forName("org.postgresql.Driver");

		try
		{
			conn = DriverManager.getConnection(URL, Username, Password);
		}
		catch (SQLException e)
		{
			System.out.println("Could not connect to PostgreSQL!");
			e.printStackTrace();
		}

		execute2a();

		System.out.println();

		execute2b();

		System.out.println();

		execute2c();
	}

	private static void execute2a()
	{
		System.out.println("Erotima A");

		Statement statement = null;
		String query = "SELECT * FROM COUNT_MODELS WHERE COUNT_MODELS.num_of_model = (SELECT max(num_of_model) AS maximum FROM COUNT_MODELS);";
		try
		{
			statement = conn.createStatement();
			ResultSet res = statement.executeQuery(query);

			System.out.println("ID\tTitle\tNumber of Models");

			while (res.next())
			{
				String id = res.getString("id");
				String title = res.getString("title");
				String numberOfModels = res.getString("num_of_model");
				System.out.println(id + "\t" + title + "\t" + numberOfModels);
			}
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
	}

	private static void execute2b()
	{
		System.out.println("Erotima B");

		Statement statement = null;
		String query = "SELECT to_char(start_date, 'Month') as month, ROUND(AVG(cost)::numeric, 2) as avg_profit "
				+ "FROM service_history "
				+ "GROUP BY to_char(start_date, 'Month') "
				+ "ORDER BY avg_profit DESC";

		try
		{
			statement = conn.createStatement();
			ResultSet res = statement.executeQuery(query);

			System.out.println("Month\tAverage Profit");

			while (res.next())
			{
				String month = res.getString("month");
				String avgProfit = res.getString("avg_profit");
				System.out.println(month + "\t" + avgProfit);
			}
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
	}

	private static void execute2c()
	{
		System.out.println("Erotima C");

		Statement statement = null;
		String query = "SELECT salesman_id, employee.first_name, employee.last_name, profit "
				+ "FROM PROFIT INNER JOIN employee ON PROFIT.salesman_id = employee.id "
				+ "WHERE profit = (SELECT max(profit) FROM PROFIT);";

		try
		{
			statement = conn.createStatement();
			ResultSet res = statement.executeQuery(query);

			System.out.println("ID\tFirst Name\tLastName\tProfit\t");

			while (res.next())
			{
				String id = res.getString("salesman_id");
				String firstName = res.getString("first_name");
				String lastName = res.getString("last_name");
				int profit = res.getInt("profit");
				System.out.println(id + "\t" + firstName+ "\t" + lastName + "\t" + profit);
			}
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
	}

	private static void execute2d()
	{
		//
	}

	private static void execute2e()
	{
		//
	}

	private static void execute2f()
	{
		//
	}
}
