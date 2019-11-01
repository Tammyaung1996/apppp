package com.nagarro.adminPanel.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nagarro.adminPanel.dao.UserListDao;
import com.nagarro.adminPanel.model.CustomerDetails;

@Service
public class UserListServicesImpl implements UserListServices {

	@Autowired
	UserListDao userListDao;
	
	public List<CustomerDetails> fetchAllUsers(){
		
		List<CustomerDetails> listOfAllUsers = userListDao.fetchAllUsers();
		
		return listOfAllUsers;
		
		
	}
	
}