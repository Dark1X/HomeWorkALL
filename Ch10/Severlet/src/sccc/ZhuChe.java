package sccc;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.Out;

import jdk.nashorn.internal.ir.RuntimeNode.Request;

/**
 * Servlet implementation class ZhuChe
 */
@WebServlet("/ZhuChe")
public class ZhuChe extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ZhuChe() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
          

      /*
       * ��ת��
       *  response.sendRedirect("./show.jsp");
       */
     
      request.setAttribute("username","username");
      
      //������ת��
      RequestDispatcher dispatcher = request.getRequestDispatcher("show.jsp");
      
      dispatcher.forward(request, response);
       
      
	      /*
	       * ��ת����ʾ
	       * PrintWriter out = response.getWriter();
	       * out.println("<h1>" + username + "</h1>");
	       * response.getWriter().append("Name:"+username);
	       */

	      

		
		//doGet(request, response);
	}

}
