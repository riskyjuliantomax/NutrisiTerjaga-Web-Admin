/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Admin;

/**
 *
 * @author USER
 */
public class AdminNutrisiTerjaga {
    String user, pass,namaproduk,satuanproduk,lokasi_gambarproduk,
            deskripsiproduk;
    int hargaproduk,jenisproduk,stokproduk;

    //get
    public String getUser() {
        return user;
    }

    public String getPass() {
        return pass;
    }

    public String getNamaproduk() {
        return namaproduk;
    }

    public String getSatuanproduk() {
        return satuanproduk;
    }

    public String getLokasi_gambarproduk() {
        return lokasi_gambarproduk;
    }

    public String getDeskripsiproduk() {
        return deskripsiproduk;
    }

    public int getHargaproduk() {
        return hargaproduk;
    }

    public int getJenisproduk() {
        return jenisproduk;
    }

    public int getStokproduk() {
        return stokproduk;
    }
    

    //set
    public void setUser(String user) {
        this.user = user;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public void setNamaproduk(String namaproduk) {
        this.namaproduk = namaproduk;
    }

    public void setSatuanproduk(String satuanproduk) {
        this.satuanproduk = satuanproduk;
    }

    public void setLokasi_gambarproduk(String lokasi_gambarproduk) {
        this.lokasi_gambarproduk = lokasi_gambarproduk;
    }

    public void setDeskripsiproduk(String deskripsiproduk) {
        this.deskripsiproduk = deskripsiproduk;
    }

    public void setHargaproduk(int hargaproduk) {
        this.hargaproduk = hargaproduk;
    }

    public void setJenisproduk(int jenisproduk) {
        this.jenisproduk = jenisproduk;
    }

    public void setStokproduk(int stokproduk) {
        this.stokproduk = stokproduk;
    }
    
}
