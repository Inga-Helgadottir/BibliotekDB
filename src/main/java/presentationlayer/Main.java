package presentationlayer;

import DBAccess.KundeMapper;
import FunctionLayer.Kunde;

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


        //nyKunde("Alexander","Mathildeparken 23", "3400");

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


    public static String opdatere(int idKunde, String navn, String adresse, String postNr) {

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



}
