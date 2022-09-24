
package ModeloVO;

public class Peluquero {
    int id;
    String nom;
    String tel;
    String dire;
    String user;
    String estado;
    String iduser;

    public Peluquero() {
    }

    public Peluquero(int id, String nom, String tel, String dire, String user, String estado,String iduser) {
        this.id = id;
        this.nom = nom;
        this.tel = tel;
        this.dire = dire;
        this.user = user;
        this.estado = estado;
        this.iduser = iduser;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getDire() {
        return dire;
    }

    public void setDire(String dire) {
        this.dire = dire;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getIduser() {
        return iduser;
    }

    public void setIduser(String iduser) {
        this.iduser = iduser;
    }

    

    
}
