package org.acme.NMB_App.service;

import java.util.List;

import org.acme.NMB_App.domain.Customer;
import org.acme.NMB_App.repository.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service	 
public class CustomerService {
	
	@Autowired
    private CustomerRepository repo;
	
	public List<Customer> listAll() {
        return repo.findAll();
    }
     
    public void save(Customer std) {
        repo.save(std);
    }
     
    public Customer get(long id) {
        return repo.findById(id).get();
    }
     
    public void delete(long id) {
        repo.deleteById(id);
    }


}
