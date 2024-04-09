package Main;

import Main.Model;
import Main.Usuario;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UsuariosServlet")
public class UsuariosServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

    // Obtener la lista de usuarios del modelo
    List<Usuario> usuarios = Model.obtenerUsuarios();
    
    // Verificar si la lista de usuarios está vacía e imprimir en la consola
    if (usuarios.isEmpty()) {
        System.out.println("La lista de usuarios está vacía.");
    } else {
        System.out.println("La lista de usuarios NO está vacía. Cantidad de usuarios: " + usuarios.size());
    }

    // Poner la lista de usuarios en el alcance de solicitud
    request.setAttribute("usuarios", usuarios);

    // Redirigir a la vista JSP para mostrar los usuarios
    request.getRequestDispatcher("/VHTokens.jsp").forward(request, response);
}

}

