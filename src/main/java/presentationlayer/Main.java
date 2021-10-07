package presentationlayer;

import DBAccess.BogMapper;
import DBAccess.KundeMapper;
import FunctionLayer.Bog;
import FunctionLayer.Kunde;

import java.sql.Timestamp;
import java.util.List;

import static DBAccess.BogMapper.opretBog;

public class Main {


    public static void main(String[] args)  {
//        udskrivKunder();
//        System.out.println(fjernKunde("Alexander"));
//        //nyKunde("lone","nøjsomhedsvej 12", "2800");
//
//       // udskrivKunder();
//
//        System.out.println(fjernKunde("lone"));
//
//
//
//        opdatere(401, "Jørgen", "Vedkæret 23, ", "2820");
//
//        udskrivKunder();


        nyKunde("Alexander","Mathildeparken 23", "3400");

//        udskrivKunder();
//
//       fjernKunde("jørgen");

//        nyKunde("Alexander", "matilteparken 23", "3400");
//        udskrivKunder();
//        opdatere(406, "Jørgen", "Herninghovedgade 11", "2820");

//        udskrivKunder();
//        String forfatter, String title, String forlag, Timestamp udgivelsesdato
        //opretBog("Ana Mitchell", "some book name", "Gyldendal", "2020-03-16 09:44:52");
    }


    public static String fjernKunde(String navn) {


        return KundeMapper.deleteKunde( navn );


    }

    // todo lav en fjernkunde som tager et kunde id som input. Det kunne jo være der var flere kunder med samme navn.


    public static String opdatereKunde(int idKunde, String navn, String adresse, String postNr) {

       return KundeMapper.updateKunde(idKunde,navn,adresse, postNr);

    }

    // todo lav en udskriv kunde metode. Metoden skal tage et kunde id som imput, og udskrive stamoplysningerne

    public static void udskrivKunder() {

        List<Kunde> kundeList = hentKunder();

        for (Kunde k : kundeList ) {

            System.out.println( k.getIdKunde() + " " +  k.getKundeNavn());

        }
    }

    public static List<Kunde> hentKunder () {

        return KundeMapper.HentKunder();
    }

    public static void nyKunde(String navn, String adresse, String postnr )  {

        Kunde kunde = new Kunde(navn,adresse,postnr);

        KundeMapper.opretKunde(kunde);

    }


    public static String fjernBog(String title) {

        return BogMapper.deleteBog(title);
    }

    public static String opdatereBog(int idBogTabel, String Forfatter , String Title, String Forlag, Timestamp Udgivelsesdato) {
        return BogMapper.updateBog(idBogTabel, Forfatter , Title, Forlag, Udgivelsesdato);

    }

    public static void udskrivBoger() {

        List<Bog> bogList = hentBoger();

        for (Bog b : bogList ) {

            System.out.println( b.getIdBog() + " " + b.getTitle());

        }
    }

    public static List<Bog> hentBoger () {

        return BogMapper.HentBoger();
    }

    public static void nyBog(String forfatter, String title, String forlag, Timestamp udgivelsesdato )  {

        Bog bog = new Bog(forfatter, title, forlag, udgivelsesdato);

        BogMapper.opretBog(bog);
    }

}
