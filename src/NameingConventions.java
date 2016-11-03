import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by league on 11/2/16.
 */
public class NameingConventions extends HttpServlet {
    static int staticCounter = 0;
    int dynamicCounter = 0;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        java.io.PrintWriter pow = response.getWriter();
        pow.print("<html>\n" +
                "<header><title>Dude, You Got Hacked</title></header>\n" +
                "<body>\n" +
                "Hello world\n" +
                "</body>\n" +
                "</html>");
//        String req = request.getParameter("number");
//        if(req != null&& Integer.parseInt(req) > staticCounter) {
//            staticCounter = Integer.parseInt(req);
//        }
//        pow.print("MLG Web Page Visit Counter(Possibly Over 9000): ");
//        staticCounter += 1;
//        dynamicCounter += 1;
//        pow.format("%d %d", staticCounter, dynamicCounter);
    }
}
