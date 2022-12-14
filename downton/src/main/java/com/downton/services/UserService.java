package com.downton.services;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.Errors;

import com.downton.models.LoginUser;
import com.downton.models.User;
import com.downton.repositories.UserRepository;

@Service
public class UserService {
	@Autowired
	private UserRepository userRepo;
	
	// validation - check for duplicate email and password mismatch
		public void validate(User user, Errors errors) {
			//password matching
			if(!user.getPassword().equals(user.getConfirm())) {
				errors.rejectValue("password", "mismatch", "Password does not match");
				System.out.println("error 1");
				//check for duplicate email
			if(userRepo.findByEmail(user.getEmail())!=null) {
				errors.rejectValue("email", "unique", "Email is already taken");
				System.out.println("error 2");
			}
		}
	}
		// hash user's password and add to database
		public User registerUser(User newUser){
			String hashedPass = BCrypt.hashpw(newUser.getPassword(), BCrypt.gensalt());
			newUser.setPassword(hashedPass);
			userRepo.save(newUser);
			return null;	
		}
		//find user by email
		public User findByEmail(String email) {
			return userRepo.findByEmail(email);
		}
		//find user by id
		public User findById(Long id) {
			return userRepo.findById(id).orElse(null);
		}
		//Authenticate user
		public boolean authenticateUser(LoginUser newLogin, Errors errors) {
			//first find by email
			User user = userRepo.findByEmail(newLogin.getEmail());
			if(user==null) {
				errors.rejectValue("email", "missingEmail", "email not found");
				return false;
			}else {
				if(!BCrypt.checkpw(newLogin.getPassword(), user.getPassword())) {
				    errors.rejectValue("password", "Matches", "Invalid Password!");
				    return false;
				}
			}		
			// if user is found check if the passwords match, return true, else, return false
			return true;
		}
}
