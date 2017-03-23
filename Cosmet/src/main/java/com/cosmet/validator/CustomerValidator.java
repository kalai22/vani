package com.cosmet.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.cosmet.model.Customer;

@Component
public class CustomerValidator implements Validator {
	
	public boolean supports(Class<?> v){
		return Customer.class.isAssignableFrom(v);
	}
	
	public void validate(Object command,Errors errors){
		Customer cu=(Customer) command;
		
		/*if(!cu.getPassword().equals(cu.getRepassword()))
			errors.rejectValue("repassword", "password.notmatch");*/
	}

	
	public String nameCheck(Object value)
	{
		Customer c=(Customer)value;
		String s=c.getFirstname();
		String s1=c.getLastname();
		if(s.contains("!")||s.contains("*")||s.contains("#")||s.contains("@")||s.contains("$")||s.contains("&"))
			//throw new Exception("Name cannot contain special characters...");
			return "Name cannot contain special characters...";
		else
			return "Name is valid";
	}
	
}
