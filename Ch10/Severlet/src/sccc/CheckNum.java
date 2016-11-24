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
			show = "��ողµ�������"+"<font color='green'>"+num+"</font>"+"�µ�̫С��~~";
		}else if(num > random){
			
			show = "��ողµ�������"+"<font color='green'>"+num+"</font>"+"��µ�̫����~~";
			
		}else{
			
			show = "��ողµ�������"+"<font color='green'>"+num+"</font><br>"+"��ϲ,���������Ů����һ��~~";
		}
		
		request.setAttribute("random", random);	
		request.setAttribute("num", num);	
		request.setAttribute("show", show);	
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("number.jsp");
		
		dispatcher.forward(request, response);
		
		}

	}



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

           //�Ҳ�������������Ǵ���Post�ĵط�
		

	}

}
