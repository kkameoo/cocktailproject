package Function_Test;

import java.sql.*;
import java.util.Scanner;

public class mbti {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/jsptest";
        String userName = "root";
        String password = "1234";

        try (Scanner sc = new Scanner(System.in);
             Connection connection = DriverManager.getConnection(url, userName, password);
             PreparedStatement preparedStatement = connection.prepareStatement("SELECT name, ingredients, instruction FROM cocktail WHERE theme LIKE ?")) {

            System.out.print("입력: ");
            String input = sc.nextLine();

            // Build a pattern to search for the input as a substring
            String pattern = "%" + input + "%";

            // Set the prepared statement parameter to the pattern
            preparedStatement.setString(1, pattern);

            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                String name = resultSet.getString("name");
                String ingredients = resultSet.getString("ingredients");
                String instruction = resultSet.getString("instruction");
                System.out.println(name);
                System.out.println(ingredients);
                System.out.println(instruction);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
