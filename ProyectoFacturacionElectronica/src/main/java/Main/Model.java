package Main;

import Main.Usuario;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class Model {

    public static List<Usuario> obtenerUsuarios() {
        List<Usuario> usuarios = new ArrayList<>();

        try {
            URL url = new URL("https://sheet.best/api/sheets/3eb258a7-de8d-4f1e-9e53-7d3ca31ae8a7");
            HttpURLConnection cn = (HttpURLConnection) url.openConnection();

            cn.setRequestMethod("GET");

            InputStream strm = cn.getInputStream();
            byte[] arrStream = strm.readAllBytes();

            String cntJson = new String(arrStream);

            JSONArray json = new JSONArray(cntJson);

            for (Object obj : json) {
                String correo = ((JSONObject) obj).getString("correo");
                int nit = ((JSONObject) obj).getInt("nit");
                String pass = ((JSONObject) obj).getString("pass");
                String apikey = ((JSONObject) obj).getString("apiKey");
                int fecha = ((JSONObject) obj).getInt("fecha");

                Usuario usuario = new Usuario(correo,nit, pass, apikey, fecha);
                usuarios.add(usuario);
            }

            cn.disconnect();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return usuarios;
    }

}
