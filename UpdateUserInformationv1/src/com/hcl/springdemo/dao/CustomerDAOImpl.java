package com.hcl.springdemo.dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.hcl.springdemo.entity.Customer;

@Repository
public class CustomerDAOImpl implements CustomerDAO {
	// inject Session Factory

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Customer> getCustomers() {

		// 1-get session
		// 2-create query
		// 3-execute query
		// 4-return the list of customers
		//1
		Session currentSession = sessionFactory.getCurrentSession();
		//2
		Query<Customer> theQuery= currentSession.createQuery("from Customer",Customer.class);
		//3
		List<Customer> customers = theQuery.getResultList();
		//4
		return customers;

	}

	@Override
	public void saveCustomer(Customer thecustomer) {
		//1-get hibernate session
		//2-create query(save)
		
		Session currentSession=sessionFactory.getCurrentSession();
		
		currentSession.saveOrUpdate(thecustomer);
	
		
	}

	@Override
	public Customer getCustomer(int customerid) {
		
		Session currentSession=sessionFactory.getCurrentSession();
		Customer customerfromDB = currentSession.get(Customer.class, customerid);
		
		return customerfromDB;
	}
	
	



	
	
	

}
