package FunctionLayer;

import java.sql.Timestamp;
import java.util.Date;

public class Bog {

    private int idBog;
    private String forfatter;
    private String title;
    private String forlag;
    private Date udgivelsesdato;

    //create
    public Bog(String forfatter, String title, String forlag, Date udgivelsesdato) {
        this.forfatter = forfatter;
        this.title = title;
        this.forlag = forlag;
        this.udgivelsesdato = udgivelsesdato;
    }

    //read
    public Bog(int idBog, String forfatter, String title, String forlag, Date udgivelsesdato) {
        this.idBog = idBog;
        this.forfatter = forfatter;
        this.title = title;
        this.forlag = forlag;
        this.udgivelsesdato = udgivelsesdato;
    }

    public int getIdBog() {
        return idBog;
    }

    public void setIdBog(int idBog) {
        this.idBog = idBog;
    }

    public String getForfatter() {
        return forfatter;
    }

    public void setForfatter(String forfatter) {
        this.forfatter = forfatter;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getForlag() {
        return forlag;
    }

    public void setForlag(String forlag) {
        this.forlag = forlag;
    }

    public Date getUdgivelsesdato() {
        return udgivelsesdato;
    }

    public void setUdgivelsesdato(Timestamp udgivelsesdato) {
        this.udgivelsesdato = udgivelsesdato;
    }
}
