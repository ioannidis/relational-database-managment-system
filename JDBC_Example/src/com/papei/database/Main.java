package com.papei.database;

import java.sql.*;
import java.util.InputMismatchException;
import java.util.Scanner;

public class Main
{
	private static final String Domain = "localhost";
	private static final int Port = 5432;
	private static final String Database_Name = "ergasia";
	private static final String Username = "thanos";
	private static final String Password = "paravantis";
	private static final String URL = "jdbc:postgresql://" + Domain + ":" + Port + "/" + Database_Name;
	private static Connection conn;

	private static final int CHOICE_INVALID = 0;
	private static final int CHOICE_MIN = 1;
	private static final int CHOICE_MAX = 7;
	private static final int CHOICE_QUERY_A = 1;
	private static final int CHOICE_QUERY_B = 2;
	private static final int CHOICE_QUERY_C = 3;
	private static final int CHOICE_QUERY_D = 4;
	private static final int CHOICE_QUERY_E = 5;
	private static final int CHOICE_QUERY_F = 6;
	private static final int CHOICE_EXIT = 7;

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

		while (true)
		{
			showMenu();
		}
	}

	private static void showMenu()
	{
		System.out.println("Select which query to execute:");
		System.out.println(CHOICE_QUERY_A + ". Erotima A");
		System.out.println(CHOICE_QUERY_B + ". Erotima B");
		System.out.println(CHOICE_QUERY_C + ". Erotima C");
		System.out.println(CHOICE_QUERY_D + ". Erotima D");
		System.out.println(CHOICE_QUERY_E + ". Erotima E");
		System.out.println(CHOICE_QUERY_F + ". Erotima F");
		System.out.println(CHOICE_EXIT + ". Exit");

		selectChoice();
	}

	private static void selectChoice()
	{
		Scanner scanner = new Scanner(System.in);
		int input = CHOICE_INVALID;

		do
		{
			try
			{
				System.out.print("> ");
				int value = scanner.nextInt();

				if (value >= CHOICE_MIN && value <= CHOICE_MAX)
					input = value;
			}
			catch (InputMismatchException e)
			{
				scanner.next();
			}

			if (input == CHOICE_INVALID)
				System.out.println("Please enter a valid number from " + CHOICE_MIN + " to " + CHOICE_MAX + ".");
		}
		while (input == CHOICE_INVALID);

		if (input == CHOICE_EXIT)
			scanner.close();

		executeChoice(input);
	}

	private static void executeChoice(int choice)
	{
		switch (choice)
		{
			case CHOICE_QUERY_A:
				executeA();
				break;
			case CHOICE_QUERY_B:
				executeB();
				break;
			case CHOICE_QUERY_C:
				executeC();
				break;
			case CHOICE_QUERY_D:
				executeD();
				break;
			case CHOICE_QUERY_E:
				executeE();
				break;
			case CHOICE_QUERY_F:
				executeF();
				break;
			case CHOICE_EXIT:
				System.exit(0);
				break;
		}
	}

	private static void executeA()
	{
		System.out.println();

		System.out.println("Erotima A");

		Statement statement;
		String query = "SELECT * FROM COUNT_MODELS WHERE COUNT_MODELS.num_of_model = (SELECT max(num_of_model) AS maximum FROM COUNT_MODELS);";

		try
		{
			statement = conn.createStatement();
			ResultSet res = statement.executeQuery(query);

			System.out.format("%-5s%-15s%-20s", "ID", "Title", "Number of Models");

			while (res.next())
			{
				System.out.format(
						"%n%-5d%-15s%-20d",
						res.getInt("id"),
						res.getString("title"),
						res.getInt("num_of_model"));
			}
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}

		System.out.println();
		System.out.println();
	}

	private static void executeB()
	{
		System.out.println();

		System.out.println("Erotima B");

		Statement statement;
		String query = "SELECT to_char(start_date, 'Month') as month, ROUND(AVG(cost)::numeric, 2) as avg_profit "
				+ "FROM service_history "
				+ "GROUP BY to_char(start_date, 'Month') "
				+ "ORDER BY avg_profit DESC";

		try
		{
			statement = conn.createStatement();
			ResultSet res = statement.executeQuery(query);

			System.out.format("%-20s%-20s", "Month", "Average Profit");

			while (res.next())
			{
				System.out.format(
						"%n%-20s%-20s",
						res.getString("month"),
						res.getString("avg_profit"));
			}
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}

		System.out.println();
		System.out.println();
	}

	private static void executeC()
	{
		System.out.println();

		System.out.println("Erotima C");

		Statement statement;
		String query = "SELECT salesman_id, employee.first_name, employee.last_name, profit "
				+ "FROM PROFIT INNER JOIN employee ON PROFIT.salesman_id = employee.id "
				+ "WHERE profit = (SELECT max(profit) FROM PROFIT);";

		try
		{
			statement = conn.createStatement();
			ResultSet res = statement.executeQuery(query);

			System.out.format("%-5s%-20s%-20s%-20s", "ID", "First Name", "Last Name", "Profit");

			while (res.next())
			{
				System.out.format(
						"%n%-5d%-20s%-20s%-20d",
						res.getInt("salesman_id"),
						res.getString("first_name"),
						res.getString("last_name"),
						res.getInt("profit"));
			}
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}

		System.out.println();
		System.out.println();
	}

	private static void executeD()
	{
		System.out.println();

		System.out.println("Erotima D");

		Statement statement;
		String query = "SELECT id FROM service_history WHERE end_date IS NULL";

		try
		{
			statement = conn.createStatement();
			ResultSet res = statement.executeQuery(query);

			System.out.format("%-5s", "ID");

			while (res.next())
			{
				System.out.format(
						"%n%-5d",
						res.getInt("id"));
			}
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}

		System.out.println();
		System.out.println();
	}

	private static void executeE()
	{
		System.out.println();

		System.out.println("Erotima E");

		Statement statement;
		String query = "SELECT first_name, last_name, car_id, start_date, end_date "
				+ "FROM employee INNER JOIN service_history ON employee.id=service_history.tech_id "
				+ "WHERE employee.id = 3 AND (end_date > NOW() - INTERVAL '1 month' "
				+ "OR (end_date IS NULL AND start_date > NOW() - INTERVAL '1 month'))";

		try
		{
			statement = conn.createStatement();
			ResultSet res = statement.executeQuery(query);

			System.out.format("%-20s%-20s%-10s%-20s%-20s", "First Name", "Last Name", "Car ID", "Start Date", "End Date");

			while (res.next())
			{
				System.out.format(
						"%n%-20s%-20s%-10d%-20s%-20s",
						res.getString("first_name"),
						res.getString("last_name"),
						res.getInt("car_id"),
						res.getString("start_date"),
						res.getString("end_date"));
			}
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}

		System.out.println();
		System.out.println();
	}

	private static void executeF()
	{
		System.out.println();

		System.out.println("Erotima F");

		Statement statement;
		String query = "SELECT title, car_warehouse.id,COUNT(*) total_count FROM service_history "
				+ "INNER JOIN car_warehouse ON service_history.car_id=car_warehouse.id "
				+ "INNER JOIN car_models ON car_warehouse.model_id=car_models.id "
				+ "WHERE (end_date <= NOW() - INTERVAL '1 year' "
				+ "OR\tstart_date <= NOW() - INTERVAL '1 year') "
				+ "GROUP BY title,car_warehouse.id "
				+ "HAVING COUNT(*) > 1 "
				+ "ORDER BY total_count DESC";

		try
		{
			statement = conn.createStatement();
			ResultSet res = statement.executeQuery(query);

			System.out.format("%-20s%-10s%-10s", "Title", "ID", "Total Count");

			while (res.next())
			{
				System.out.format(
						"%n%-20s%-10s%-10s",
						res.getString("title"),
						res.getInt("id"),
						res.getInt("total_count"));
			}
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}

		System.out.println();
		System.out.println();
	}
}
