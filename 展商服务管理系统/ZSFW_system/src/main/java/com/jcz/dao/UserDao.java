package com.jcz.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.jcz.entity.User;

@Repository("userDao")
public interface UserDao {
	User findByName(String username);

	void add(User user);

	User login(User user);

	int countUser();

	List<User> listUsers(Map<String, Object> map);
}
