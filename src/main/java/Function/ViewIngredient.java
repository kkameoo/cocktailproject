package Function;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ViewIngredient extends MemberDAO{

    public ArrayList<MemberIVO> SelectDB(String inx) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        ArrayList<MemberIVO> stList = new ArrayList<MemberIVO>();

        try {

            connection = connDB();

            String sql = "SELECT * FROM cocktail WHERE ingredients LIKE ?;";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, "%" + inx + "%");
            resultSet = preparedStatement.executeQuery();



            if (resultSet.isBeforeFirst() == true) {
                while (resultSet.next()) {
                    Integer ID = resultSet.getInt("ID");
                    String name = resultSet.getString("name");
                    String img = resultSet.getString("image_url");
                    System.out.println(name);

                    MemberIVO ivo = new MemberIVO();
                    ivo.setID(ID);
                    ivo.setName(name);
                    ivo.setImg(img);

                    stList.add(ivo);
                }
            } else {
                System.out.println("비어있음");
            }
        } catch (Exception e) {
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
        return stList;
    }

    public ArrayList<MemberIVO> View(Integer innx) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        ArrayList<MemberIVO> stList = new ArrayList<MemberIVO>();

        try {

            connection = connDB();

            String sql = "SELECT * FROM cocktaildb.cocktail WHERE ID = ?;";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, innx);
            resultSet = preparedStatement.executeQuery();



            if (resultSet.isBeforeFirst() == true) {
                while (resultSet.next()) {
                    Integer ID = resultSet.getInt("ID");
                    String name = resultSet.getString("name");
                    String ingredients = resultSet.getString("ingredients");
                    String instruction = resultSet.getString("instruction");
                    String theme = resultSet.getString("theme");
                    String img = resultSet.getString("image_url");
                    System.out.println(name);

                    MemberIVO ivo = new MemberIVO();
                    ivo.setID(ID);
                    ivo.setName(name);
                    ivo.setIng(ingredients);
                    ivo.setIns(instruction);
                    ivo.setTheme(theme);
                    ivo.setImg(img);

                    stList.add(ivo);
                }
            } else {
                System.out.println("비어있음");
            }
        } catch (Exception e) {
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
        return stList;
    }
}
