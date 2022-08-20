package com.downton.repositories;

import org.springframework.data.repository.CrudRepository;

import com.downton.models.User;

public interface UserRepository extends CrudRepository<User, Long>{
	User findByEmail(String email);
}
