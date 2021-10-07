package FunctionLayer;

public class Laan {
    int transaktionsId;
    int idBog;
    int idKunde;
    String title;

    public Laan(int transaktionsId, int idBog, int idKunde, String title) {
        this.transaktionsId = transaktionsId;
        this.idBog = idBog;
        this.idKunde = idKunde;
        this.title = title;
    }

    public Laan(int transaktionsId, int idBog, int idKunde) {
        this.transaktionsId = transaktionsId;
        this.idBog = idBog;
        this.idKunde = idKunde;
    }

    public Laan(int idBog, int idKunde) {
        this.idBog = idBog;
        this.idKunde = idKunde;
    }

    public int getTransaktionsId() {
        return transaktionsId;
    }

    public void setTransaktionsId(int transaktionsId) {
        this.transaktionsId = transaktionsId;
    }

    public int getIdBog() {
        return idBog;
    }

    public void setIdBog(int idBog) {
        this.idBog = idBog;
    }

    public int getIdKunde() {
        return idKunde;
    }

    public void setIdKunde(int idKunde) {
        this.idKunde = idKunde;
    }
}
