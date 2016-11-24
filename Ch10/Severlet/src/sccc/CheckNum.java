package sccc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CheckNum
 */
@WebServlet("/CheckNum")
public class CheckNum extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckNum() {
        super();
        
    }



	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String randomStr = request.getParameter("random");
		String numStr = request.getParameter("num");
		
		if(numStr==null || numStr.equals("")){
			
			response.sendRedirect("number.jsp");
		
		}else{
			
		int random = Integer.parseInt(randomStr);
		
		int num = Integer.parseInt(numStr);
		
		String show = "";
		
		if(num < random){
			show = "你刚刚猜的数字是"+"<font color='green'>"+num+"</font>"+"猜的太小了~~";
		}else if(num > random){
			
			show = "你刚刚猜的数字是"+"<font color='green'>"+num+"</font>"+"你猜的太大了~~";
			
		}else{
			
			show = "你刚刚猜的数字是"+"<font color='green'>"+num+"</font><br>"+"恭喜,获得限量版女朋友一个~~";
		}
		
		request.setAttribute("random", random);	
		request.setAttribute("num", num);	
		request.setAttribute("show", show);	
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("number.jsp");
		
		dispatcher.forward(request, response);
		
		}

	}



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

           //我不会告诉你这里是处理Post的地方
		

	}

}
