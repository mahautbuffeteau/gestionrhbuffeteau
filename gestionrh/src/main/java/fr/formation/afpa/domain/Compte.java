package fr.formation.afpa.domain;
// Generated 9 avr. 2021 14:27:28 by Hibernate Tools 5.2.12.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

/**
 * Compte generated by hbm2java
 */
@Entity
@Table(name = "compte_emp", catalog = "bd", uniqueConstraints = @UniqueConstraint(columnNames = "login"))
public class Compte implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id_emp;
	private String login;
	private String password;

	public Compte() {
	}


	public Compte( String login, String password) {
		this.login = login;
		this.password = password;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "id_emp", unique = true, nullable = false)
	public Integer getId() {
		return this.id_emp;
	}

	public void setId(Integer id) {
		this.id_emp = id;
	}

	@Column(name = "login", unique = true, length = 45)
	public String getLogin() {
		return this.login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	@Column(name = "password", length = 45)
	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "Compte [login=" + login + ", password=" + password + "]";
	}

	
	
}
