
import java.io.IOException;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.DatabaseConnection;

@WebServlet("/CustomerLogin")
public class CustomerLogin extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //Getting all data from user/customer
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        //Creating Session
        HttpSession hs = request.getSession();
        try {
            //Creating Resultset
            ResultSet resultset = null;
            //Query to check Login Details
            resultset = DatabaseConnection.getResultFromSqlQuery("select * from tblcustomer where email='" + email + "' and password='" + password + "'");
            //Checking whether the details of user are null or not
            if (email != null && password != null) {
                if (resultset.next()) {
                    //Storing the login details in session
                    hs.setAttribute("id", resultset.getInt("id"));
                    hs.setAttribute("name", resultset.getString("name"));
                    //Redirecting response to the index.jsp
                    response.sendRedirect("index.jsp");
                } else {
                    //If wrong credentials are entered
                    String message = "You have enter wrong credentials";
                    hs.setAttribute("credential", message);
                    //Redirecting response to the customer-login.jsp
                    response.sendRedirect("customer-login.jsp");
                }
            } else {
                //If username or password is empty or null
                String message = "User name or Password is null";
                hs.setAttribute("credential", message);
                //Redirecting response to the customer-login.jsp
                response.sendRedirect("customer-login.jsp");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
