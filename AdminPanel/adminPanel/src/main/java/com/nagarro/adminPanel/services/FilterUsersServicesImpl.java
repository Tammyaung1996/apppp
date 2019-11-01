package com.nagarro.adminPanel.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nagarro.adminPanel.dao.FilterUsersDao;
import com.nagarro.adminPanel.model.CustomerDetails;

@Service
public class FilterUsersServicesImpl implements FilterUsersServices {

	@Autowired
	FilterUsersDao filterUsersDao;

	public List<CustomerDetails> filterUsersList(String filterName, String filterContact, String filterEMail) {

		List<CustomerDetails> usersList = filterUsersDao.filterList(filterName, filterContact, filterEMail);

//		System.out.println("sol " + usersList.size());
//		for (CustomerDetails cd : usersList) {
//			System.out.println(cd.getCustomerName());
//		}
		
		return usersList;

	}

}