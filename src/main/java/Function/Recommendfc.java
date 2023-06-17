package Function;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Recommendfc extends MemberDAO {

    public ArrayList<MemberRVO> recommendfc(String rec) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        ArrayList<MemberRVO> ckList = new ArrayList<MemberRVO>();


        try {
            connection = connDB();
            String query = "SELECT name, ingredients, instruction ,image_url FROM cocktail WHERE theme LIKE ?";
            preparedStatement = connection.prepareStatement(query);
            String pattern = "%" + rec + "%";
            preparedStatement.setString(1, pattern);
            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                String name = resultSet.getString("name");
                String ingredients = resultSet.getString("ingredients");
                String instruction = resultSet.getString("instruction");
                String img = resultSet.getString("image_url");
                System.out.println(name);
                System.out.println(ingredients);
                System.out.println(instruction);
                MemberRVO rvo = new MemberRVO();
                rvo.setName(name);
                rvo.setins(instruction);
                rvo.seting(ingredients);
                rvo.setImg(img);
                ckList.add(rvo);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                resultSet.close();
                preparedStatement.close();
                connection.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return ckList;
    }
}