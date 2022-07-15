package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.registerDAO;
import scopedata.Account;


@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = null;
		request.setCharacterEncoding("UTF-8");
		String action = request.getParameter("action");
		if(action == null) {
			path = "WEB-INF/jsp/u_entry_1.jsp";
		}else if(action.equals("return")) {
			path ="WEB-INF/jsp/u_login.jsp";

		}else if(action.equals("re")) {
			HttpSession session = request.getSession();
			Account account = (Account)session.getAttribute("Register");
			registerDAO rg = new registerDAO();
			int f = rg.execute(account);
			if(f == 0) path ="WEB-INF/jsp/u_entry_1.jsp";
			else       path ="WEB-INF/jsp/u_entry_3.jsp";
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		String name = request.getParameter("name");

		HttpSession session = request.getSession();
		Account account = new Account(id,pass,name);
		session.setAttribute("Register", account);

		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/jsp/u_entry_2.jsp");
		dispatcher.forward(request, response);
	}
}
	/*
	package servlet;

	import java.io.IOException;

	import javax.servlet.RequestDispatcher;
	import javax.servlet.ServletException;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;
	import javax.servlet.http.HttpSession;

	import DAO.registerDAO;
	import data.User;

	public class u_entry_2 {
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String path = null;
			request.setCharacterEncoding("UTF-8");
			String action = request.getParameter("action");
			if(action == null) {  //利用者ログインからの「ユーザ登録」ボタン時
				path = "WEB-INF/jsp/u_entry_1.jsp";
			}else if(action.equals("go")){//確認画面からの「登録する」クリック時
				HttpSession session = request.getSession();
				User user = (User)session.getAttribute("RigisterUser");
				registerDAO rg = new registerDAO();
				int f =rg.execute(user);
				if(f==0)
					path ="WEB-INF/jsp/u_entry_result.jsp";
			}
			RequestDispatcher dispatcher =
					request.getRequestDispatcher(path);
			dispatcher.forward(request, response);
		}

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			//入力画面から「次へ」が押されたとき
			request.setCharacterEncoding("UTF-8");
			String name   = request.getParameter("name");
			String id = request.getParameter("id");
			String pass = request.getParameter("pass");

			HttpSession session = request.getSession(); //セッションスコープ取得
			User user = new User(name,id,pass);
			session.setAttribute("RigisterUser", user);

			RequestDispatcher dispatcher =
					request.getRequestDispatcher("WEB-INF/jsp/u_entry_2.jsp");
			dispatcher.forward(request, response);
		}

	}*/
