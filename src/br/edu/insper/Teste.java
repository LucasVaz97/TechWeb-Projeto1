package br.edu.insper;

import java.sql.SQLException;

public class Teste {
	public static void main(String [] args) {
		DAO dao = new DAO();
		Usuarios user = new Usuarios();
		user.setUser("fredi");
		user.setPassword("gueifredi");
		try {
			System.out.println("mr sleeeky penis");
			dao.getLista();
			System.out.println("mr sleeeky penis2");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
