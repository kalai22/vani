package com.cosmet.dao;



import com.cosmet.model.Customer;

public interface CustomerDao {
void saveCustomer(Customer customer);
Customer getCustomerByUsername(String user);
}
