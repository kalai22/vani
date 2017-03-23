package com.cosmet.service;

import com.cosmet.model.Customer;

public interface CustomerService {
void saveCustomer(Customer customer);
public Customer getCustomerByUsername(String username);
}
