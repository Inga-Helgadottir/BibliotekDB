package DBAccess;

import FunctionLayer.Kunde;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class KundeMapper {



    public static void opretKunde(Kunde kunde)  {


        String sql = "INSERT INTO KundeTabel (KundeNavn, Adresse, PostNr ) VALUES (?, ?, ?)";


        // se lige try-with-resources f.eks. her  https://www.baeldung.com/java-try-with-resources
        try (Connection con = ConnectionConfiguration.getConnection();  // får en connection

             // se evt. https://docs.oracle.com/javase/tutorial/jdbc/basics/prepared.html
             PreparedStatement ps = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
        ) {

            // her klargøres mit prepared statement ved at min parametre indsættes.
            ps.setString(1, kunde.getKundeNavn());
            ps.setString(2, kunde.getAdresse());
            ps.setString(3, kunde.getPostNr());


            ps.executeUpdate();    //https://javaconceptoftheday.com/difference-between-executequery-executeupdate-execute-in-jdbc/

            ResultSet ids = ps.getGeneratedKeys();
            ids.next();
            int id = ids.getInt(1);
            kunde.setIdKunde(id);

        } catch (Exception e) {
            e.printStackTrace();
        }

    }



    public static List<Kunde> HentKunder() {

        List<Kunde> kundeList = new ArrayList<>();

        String sql = "select * from KundeTabel ";

        try (Connection con = ConnectionConfiguration.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {           // https://en.wikipedia.org/wiki/Prepared_statement


            ResultSet resultSet = ps.executeQuery();   //https://javaconceptoftheday.com/difference-between-executequery-executeupdate-execute-in-jdbc/

            while (resultSet.next()) {
                int id = resultSet.getInt("idKundeTabel");
                String navn = resultSet.getString("KundeNavn");
                String adresse = resultSet.getString("Adresse");
                String postNr = resultSet.getString("PostNr");

                Kunde kunde = new Kunde(id, navn, adresse, postNr);
                kundeList.add(kunde);
            }
        } catch (SQLException e) {

            e.printStackTrace();
        }
        return kundeList;
    }


    public static String deleteKunde(String kundeNavn) {

        String sql = "delete from KundeTabel where Kundenavn = ?";

        try (Connection con = ConnectionConfiguration.getConnection();
             PreparedStatement ps = con.prepareStatement(sql);) {
            ps.setString(1, kundeNavn);


            int res = ps.executeUpdate();       //https://javaconceptoftheday.com/difference-between-executequery-executeupdate-execute-in-jdbc/

            if (res > 0) {

                return "Kunden med navnet " + "\""  + kundeNavn + "\""  + " er nu blevet slettet";
            }


        } catch (Exception e) {
            e.printStackTrace();
        }


        return "en kunde med navnet " + "\"" + kundeNavn + "\"" + " fandtes ikke i listen";


    }






    public static String updateKunde(int idKunde, String kundeNavn , String adresse, String PostNr) {

        String sql = "update  KundeTabel set KundeNavn = ? , Adresse = ? , PostNr = ? where idKundeTabel = ?";



        try (Connection con = ConnectionConfiguration.getConnection();
             PreparedStatement ps = con.prepareStatement(sql);) {
            ps.setString(1, kundeNavn);
            ps.setString(2, adresse);
            ps.setString(3, PostNr);

            // det er det her jeg søger på.
            ps.setInt(4, idKunde);


            int res = ps.executeUpdate();    //https://javaconceptoftheday.com/difference-between-executequery-executeupdate-execute-in-jdbc/

            if (res > 0) {

                return "Kunden med navnet " + "\""  + kundeNavn + "\""  + " er nu blevet opdateret";
            }


        } catch (Exception e) {
            e.printStackTrace();
        }


        return "en kunde med navnet " + "\"" + kundeNavn + "\"" + " fandtes ikke i listen";


    }




}
