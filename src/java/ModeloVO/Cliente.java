package ModeloVO;

public class Cliente {
    int id;
    String dni;
    String nom;
    String corr;
    String es;

    public Cliente() {
    }

    public Cliente(int id, String dni, String nom, String corr, String es) {
        this.id = id;
        this.dni = dni;
        this.nom = nom;
        this.corr = corr;
        this.es = es;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getCor() {
        return corr;
    }

    public void setCor(String corr) {
        this.corr = corr;
    }

    public String getEs() {
        return es;
    }

    public void setEs(String es) {
        this.es = es;
    }
    
    
}
