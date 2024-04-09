/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Main;

import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import org.json.*;

/**
 *
 * @author dany
 */
public class prueba {

    public static void mostrar() {

        try {
            URL url = new URL("https://sheet.best/api/sheets/3eb258a7-de8d-4f1e-9e53-7d3ca31ae8a7");
            HttpURLConnection cn = (HttpURLConnection) url.openConnection();
           
            cn.setRequestMethod("GET");

            InputStream strm = cn.getInputStream();
            byte[] arrStream = strm.readAllBytes();

            String cntJson = "";

            for (byte tmp : arrStream) {
                cntJson += (char) tmp;
            }

            JSONArray json = new JSONArray(cntJson);

            for (Object obj : json) {
               // System.out.println(((JSONObject) obj).get("Correo"));
                Object correo = ((JSONObject) obj).get("Correo");
                  
            }
            
               cn.disconnect();
        } catch (Exception e) {
                 e.printStackTrace();
        }

    }

    public static void main(String[] args) {
        mostrar();
    }

}
