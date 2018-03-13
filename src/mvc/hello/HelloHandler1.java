package mvc.hello;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.command.CommandHandler;

public class HelloHandler1 implements CommandHandler{

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setAttribute("hello", "hello1111 æ»≥Á«œººø‰!");
		req.setAttribute("name", req.getParameter("name"));
		
		return "/WEB-INF/view/hello.jsp";
	}
	

}
