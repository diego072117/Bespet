/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloVO;

/**
 *
 * @author Edwin
 */
public class MascotaVO {

    public MascotaVO(String id_Mascota, String Nombre, String Edad, String Tipo, String Raza, String Estado, String id_cliente) {
        this.id_Mascota = id_Mascota;
        this.Nombre = Nombre;
        this.Edad = Edad;
        this.Tipo = Tipo;
        this.Raza = Raza;
        this.Estado = Estado;
        this.id_cliente = id_cliente;
    }
    private String id_Mascota, Nombre, Edad, Tipo, Raza, Estado, id_cliente;

    public MascotaVO() {
    }

    public String getId_Mascota() {
        return id_Mascota;
    }

    public void setId_Mascota(String id_Mascota) {
        this.id_Mascota = id_Mascota;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getEdad() {
        return Edad;
    }

    public void setEdad(String Edad) {
        this.Edad = Edad;
    }

    public String getTipo() {
        return Tipo;
    }

    public void setTipo(String Tipo) {
        this.Tipo = Tipo;
    }

    public String getRaza() {
        return Raza;
    }

    public void setRaza(String Raza) {
        this.Raza = Raza;
    }

    public String getEstado() {
        return Estado;
    }

    public void setEstado(String Estado) {
        this.Estado = Estado;
    }

    public String getId_cliente() {
        return id_cliente;
    }

    public void setId_cliente(String id_cliente) {
        this.id_cliente = id_cliente;
    }

    
}