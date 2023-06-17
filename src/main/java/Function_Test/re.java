package Function_Test;

import java.sql.*;
import java.util.Scanner;

public class re {
    public static void main(String[] args) throws SQLException {
        String url = "jdbc:mysql://localhost:3306/class2jsp";
        String userName = "root";
        String password = "1234";


        Scanner sc = new Scanner(System.in);
        String inx = sc.next();

        Connection connection = DriverManager.getConnection(url, userName, password);
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery("select name from cocktail where name like '" + inx +"%'");

        if (resultSet.isBeforeFirst() == true) {
            while (resultSet.next()) {
                String name = resultSet.getString("name");
                System.out.println(name);
            }
        } else {
            System.out.println("비어있음");
        }

        resultSet.close();
        statement.close();
        connection.close();
    }
}