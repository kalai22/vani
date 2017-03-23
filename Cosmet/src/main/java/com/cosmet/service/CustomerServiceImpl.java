package com.cosmet.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cosmet.dao.CustomerDao;
import com.cosmet.model.Customer;
@Service
public class CustomerServiceImpl implements CustomerService{
	@Autowired
private CustomerDao customerDao;
	public void saveCustomer(Customer customer) {
		customerDao.saveCustomer(customer);
	}
	public Customer getCustomerByUsername(String username){
		return customerDao.getCustomerByUsername(username);
	}
}