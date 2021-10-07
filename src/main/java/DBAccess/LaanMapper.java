package DBAccess;

import FunctionLayer.Kunde;
import FunctionLayer.Laan;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class LaanMapper {

    public static void opretLaan(Laan laan)  {

        String sql = "INSERT INTO lånetabel (IdBog, IdKunde) VALUES (?, ?)";


        // se lige try-with-resources f.eks. her  https://www.baeldung.com/java-try-with-resources
        try (Connection con = ConnectionConfiguration.getConnection();  // får en connection

             // se evt. https://docs.oracle.com/javase/tutorial/jdbc/basics/prepared.html
             PreparedStatement ps = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
        ) {

            // her klargøres mit prepared statement ved at min parametre indsættes.
            ps.setInt(1, laan.getIdBog());
            ps.setInt(2, laan.getIdKunde());

            ps.executeUpdate();    //https://javaconceptoftheday.com/difference-between-executequery-executeupdate-execute-in-jdbc/

            ResultSet ids = ps.getGeneratedKeys();
            ids.next();
            int id = ids.getInt(1);
            laan.getTransaktionsId();

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public static List<Laan> HentLaan() {

        List<Laan> laaneList = new ArrayList<>();

        String sql = "select * from lånetabel ";

        try (Connection con = ConnectionConfiguration.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {           // https://en.wikipedia.org/wiki/Prepared_statement


            ResultSet resultSet = ps.executeQuery();   //https://javaconceptoftheday.com/difference-between-executequery-executeupdate-execute-in-jdbc/

            while (resultSet.next()) {
                int id = resultSet.getInt("TransaktionsId");
                int bog = resultSet.getInt("IdBog");
                int kunde = resultSet.getInt("IdKunde");

                Laan laan = new Laan(id, bog, kunde);
                laaneList.add(laan);
            }
        } catch (SQLException e) {

            e.printStackTrace();
        }
        return laaneList;
    }

    public static void hentLaanMedBogTitle() {
        String sql = "SELECT l.TransaktionsId, l.IdBog, l.IdKunde, b.Title  \n" +
                "FROM lånetabel AS l  \n" +
                "LEFT JOIN bogtabel AS b  \n" +
                "ON l.IdBog=b.IdBogTabel  ";

        try (Connection con = ConnectionConfiguration.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {           // https://en.wikipedia.org/wiki/Prepared_statement

            ResultSet resultSet = ps.executeQuery();   //https://javaconceptoftheday.com/difference-between-executequery-executeupdate-execute-in-jdbc/


            while (resultSet.next()) {
//                int id = resultSet.getInt("TransaktionsId");
//                int bog = resultSet.getInt("IdBog");
//                int kunde = resultSet.getInt("IdKunde");
//                System.out.println(id + " " + bog + " " + kunde + " " + title);
                String title = resultSet.getString("Title");
                System.out.println(title);

            }
        } catch (SQLException e) {

            e.printStackTrace();
        }
    }

    public static void hentNavnePaaLaan() {
        String sql = "SELECT l.TransaktionsId, l.IdBog, l.IdKunde, k.KundeNavn  \n" +
                "FROM lånetabel AS l  \n" +
                "LEFT JOIN kundetabel AS k  \n" +
                "ON l.IdKunde=k.idKundeTabel  ";

        try (Connection con = ConnectionConfiguration.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {           // https://en.wikipedia.org/wiki/Prepared_statement

            ResultSet resultSet = ps.executeQuery();   //https://javaconceptoftheday.com/difference-between-executequery-executeupdate-execute-in-jdbc/


            while (resultSet.next()) {
//                int id = resultSet.getInt("TransaktionsId");
//                int bog = resultSet.getInt("IdBog");
//                int kunde = resultSet.getInt("IdKunde");
//                System.out.println(id + " " + bog + " " + kunde + " " + title);
                String name = resultSet.getString("KundeNavn");
                System.out.println(name);

            }
        } catch (SQLException e) {

            e.printStackTrace();
        }
    }
}
