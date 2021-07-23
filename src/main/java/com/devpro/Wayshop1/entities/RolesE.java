package com.devpro.Wayshop1.entities;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;

import org.springframework.security.core.GrantedAuthority;





@Entity
@Table(name = "tbl_roles")
public class RolesE extends BaseEntity implements GrantedAuthority{
	@Column(name = "name", length = 45, nullable = false)
	private String name;
	
	@Column(name = "description", length = 45, nullable = false)
	private String description;
	
	@ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
//			,mappedBy = "roles")
	@JoinTable(name = "tbl_users_roles",
	joinColumns = @JoinColumn(name = "role_id"), inverseJoinColumns = @JoinColumn(name = "user_id"))
	private List<UsersE> users = new ArrayList<UsersE>();
	
	public void addUsers(UsersE user) {
		users.add(user);
		user.setRoles((List<RolesE>) this);
//		user.getRoles().add(this);
//		users.add(user);
	}
	public void deleteUsers(UsersE user) {
		users.remove(user);
		user.setRoles(null);
//		user.getRoles().remove(this);
//		users.remove(user);
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public List<UsersE> getUsers() {
		return users;
	}

	public void setUsers(List<UsersE> users) {
		this.users = users;
	}
	@Override
	public String getAuthority() {
		return name;
	}
	
}
