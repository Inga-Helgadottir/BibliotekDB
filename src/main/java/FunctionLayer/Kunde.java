package FunctionLayer;

public class Kunde {

    private int idKunde;
    private String kundeNavn;
    private String adresse;
    private String postNr;

    //create
    public Kunde(String kundeNavn, String adresse, String postNr) {
        this.kundeNavn = kundeNavn;
        this.adresse = adresse;
        this.postNr = postNr;
    }

    //read
    public Kunde(int idKunde, String kundeNavn, String adresse, String postNr) {
        this.idKunde = idKunde;
        this.kundeNavn = kundeNavn;
        this.adresse = adresse;
        this.postNr = postNr;
    }

    public int getIdKunde() {
        return idKunde;
    }

    public void setIdKunde(int idKunde) {
        this.idKunde = idKunde;
    }

    public String getKundeNavn() {
        return kundeNavn;
    }

    public void setKundeNavn(String kundeNavn) {
        this.kundeNavn = kundeNavn;
    }

    public String getAdresse() {
        return adresse;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

    public String getPostNr() {
        return postNr;
    }

    public void setPostNr(String postNr) {
        this.postNr = postNr;
    }

}
