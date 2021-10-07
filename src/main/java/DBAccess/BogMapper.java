package DBAccess;

import FunctionLayer.Bog;
import FunctionLayer.Kunde;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BogMapper {

    public static void opretBog(Bog bog){

        String sql = "INSERT INTO bogtabel (forfatter, title, forlag, udgivelsesdato) VALUES (?, ?, ?, ?)";


        // se lige try-with-resources f.eks. her  https://www.baeldung.com/java-try-with-resources
        try (Connection con = ConnectionConfiguration.getConnection();  // får en connection

             // se evt. https://docs.oracle.com/javase/tutorial/jdbc/basics/prepared.html
             PreparedStatement ps = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
        ) {

            // her klargøres mit prepared statement ved at min parametre indsættes.
            ps.setString(1, bog.getForfatter());
            ps.setString(2, bog.getTitle());
            ps.setString(3, bog.getForlag());
            ps.setTimestamp(4, bog.getUdgivelsesdato());


            ps.executeUpdate();    //https://javaconceptoftheday.com/difference-between-executequery-executeupdate-execute-in-jdbc/

            ResultSet ids = ps.getGeneratedKeys();
            ids.next();
            int id = ids.getInt(1);
            bog.setIdBog(id);

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public static List<Bog> HentBoger() {

        List<Bog> bogList = new ArrayList<>();

        String sql = "select * from bogtabel ";

        try (Connection con = ConnectionConfiguration.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {           // https://en.wikipedia.org/wiki/Prepared_statement


            ResultSet resultSet = ps.executeQuery();   //https://javaconceptoftheday.com/difference-between-executequery-executeupdate-execute-in-jdbc/

            while (resultSet.next()) {
                int id = resultSet.getInt("idBogTabel");
                String forfatter = resultSet.getString("Forfatter");
                String title = resultSet.getString("Title");
                String forlag = resultSet.getString("Forlag");
                Timestamp udgivelsesdato = resultSet.getTimestamp("Udgivelsesdato");
                Bog bog = new Bog(id, forfatter, title, forlag, udgivelsesdato);
                bogList.add(bog);
            }
        } catch (SQLException e) {

            e.printStackTrace();
        }
        return bogList;
    }

    public static String deleteBog(String bogTitle) {

        String sql = "delete from bogTabel where Title = ?";

        try (Connection con = ConnectionConfiguration.getConnection();
             PreparedStatement ps = con.prepareStatement(sql);) {
            ps.setString(1, bogTitle);


            int res = ps.executeUpdate();       //https://javaconceptoftheday.com/difference-between-executequery-executeupdate-execute-in-jdbc/

            if (res > 0) {

                return "Bogen med titlen " + "\""  + bogTitle + "\""  + " er nu blevet slettet";
            }


        } catch (Exception e) {
            e.printStackTrace();
        }


        return "en bog med titlen " + "\"" + bogTitle + "\"" + " fandtes ikke i listen";


    }

    public static String updateBog(int idBogTabel, String Forfatter , String Title, String Forlag, Timestamp Udgivelsesdato) {

        String sql = "update bogtabel set Forfatter = ? , Title = ? , Forlag = ?, Udgivelsesdato = ? where idBogTabel = ?";

        try (Connection con = ConnectionConfiguration.getConnection();
             PreparedStatement ps = con.prepareStatement(sql);) {
            ps.setString(1, Forfatter);
            ps.setString(2, Title);
            ps.setString(3, Forlag);
            ps.setTimestamp(4, Udgivelsesdato);

            // det er det her jeg søger på.
            ps.setInt(5, idBogTabel);


            int res = ps.executeUpdate();    //https://javaconceptoftheday.com/difference-between-executequery-executeupdate-execute-in-jdbc/

            if (res > 0) {

                return "Bogen med titlen " + "\""  + Title + "\""  + " er nu blevet opdateret";
            }


        } catch (Exception e) {
            e.printStackTrace();
        }


        return "en bog med titlen " + "\"" + Title + "\"" + " fandtes ikke i listen";


    }
}
