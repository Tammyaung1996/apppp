package com.nagarro.adminPanel.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nagarro.adminPanel.dao.UserRegistrationDao;
import com.nagarro.adminPanel.model.CustomerDetails;

@Service
public class UserRegistrationServicesImpl implements UserRegistrationServices {

	@Autowired
	UserRegistrationDao userRegistrationDao;

	public String registerUser(CustomerDetails userInformation) {

		String newCustomerID = userRegistrationDao.registerUserInDB(userInformation);

		return newCustomerID;
	}

}