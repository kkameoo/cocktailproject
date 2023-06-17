package Function;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class MemberDAO {
    // DB 연결 담당 메소드

    public Connection connDB() {
        Connection connection = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/class2jsp";
            String user = "root";
            String pwd = "1234";

            connection = DriverManager.getConnection(url, user, pwd);
            if (connection != null) {
                System.out.println("연결 성공");
            }
        } catch (Exception e) {
            System.out.println("연결 오류 발생");
            e.printStackTrace();
        }
        return connection;
    }

    public ArrayList<MemberVO> research(String inx) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        ArrayList<MemberVO> stList = new ArrayList<MemberVO>();

        try {

            connection = connDB();
            String query = "select * from cocktail where name like '" + inx + "%'";

            preparedStatement = connection.prepareStatement(query);
            resultSet = preparedStatement.executeQuery(query);



            if (resultSet.isBeforeFirst() == true) {
                while (resultSet.next()) {
                    String name = resultSet.getString("name");
                    String img = resultSet.getString("image_url");
                    System.out.println(name);

                    MemberVO vo = new MemberVO();
                    vo.setName(name);
                    vo.setImg(img);

                    stList.add(vo);
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



