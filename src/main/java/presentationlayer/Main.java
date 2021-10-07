package presentationlayer;

import DBAccess.BogMapper;
import DBAccess.KundeMapper;
import DBAccess.LaanMapper;
import FunctionLayer.Bog;
import FunctionLayer.Kunde;
import FunctionLayer.Laan;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.List;

import static DBAccess.BogMapper.opretBog;
import static DBAccess.LaanMapper.*;

public class Main {

    public static void main(String[] args)  {
        /* Kunder CRUD
            nyKunde("lone","nøjsomhedsvej 12", "2800");
            udskrivKunder();
            opdatereKunde(409, "Lone","nøjsomhedsvej 12", "2800");
            fjernKunde("lone");
        */

        /* Bøger CRUD
            nyBog("Alexander Medina","Mathildeparken", "Gyldendal", Timestamp.valueOf("2020-12-16"));
            udskrivBoger();
            opdatereBog(6, "Alexander Medina","Mathildeparkens", "Gyldendal", Timestamp.valueOf("2020-12-16"));
            fjernBog("Mathildeparkens");
        */

        /* Lån bogId max 5 - min 1, kundeId max 406 - min 1
            udskrivLaan();
            nytLaan(5, 99);
            udskrivLaan();
            bogId max 5
            kundeId max 406

        */
//        udskrivLaan();
//        udfyldLaan(5, 406, 5);
//        udskrivLaan();
//        udskrivLaanMedBogTitle();
        hentNavnePaaLaan();
    }

    //Kunde-----------------------------------------------------
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

    //Bog-------------------------------------------------------
    public static String fjernBog(String title) {

        return BogMapper.deleteBog(title);
    }

    public static String opdatereBog(int idBogTabel, String Forfatter , String Title, String Forlag, Date Udgivelsesdato) {
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

    public static void nyBog(String forfatter, String title, String forlag, Date udgivelsesdato)  {

        Bog bog = new Bog(forfatter, title, forlag, udgivelsesdato);

        BogMapper.opretBog(bog);
    }

    //Lån-------------------------------------------------------
    public static void nytLaan(int idBog, int idKunde)  {

        Laan laan = new Laan(idBog, idKunde);

        LaanMapper.opretLaan(laan);
    }

    public static void udskrivLaan() {

        List<Laan> laaneList = HentLaan();

        for (Laan l : laaneList ) {

            System.out.println("TransactionID: " + l.getTransaktionsId() + ", BogId: " + l.getIdBog() + ", KundeId: " + l.getIdKunde());

        }
    }

    public static void udfyldLaan(int antalBoger, int antalKunder, int howMany){
        for (int i = 0; i < howMany; i++) {
            int randBog = (int)(Math.random()*(antalBoger-1+1)+1);
            int randKunde = (int)(Math.random()*(antalKunder-1+1)+1);
            nytLaan(randBog, randKunde);
        }
    }

    public static List<Laan> hentLaan () {
        return LaanMapper.HentLaan();
    }

    public static void udskrivLaanMedBogTitle() {
        hentLaanMedBogTitle();
    }
}
