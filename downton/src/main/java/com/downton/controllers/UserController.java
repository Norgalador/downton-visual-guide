package com.downton.controllers;

// IMPORTS

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import com.downton.models.LoginUser;
import com.downton.models.User;
import com.downton.services.CharacterService;
import com.downton.services.CommentService;
import com.downton.services.RoomService;
import com.downton.services.UserService;


@Controller 
public class UserController {

//Connecting 'user', 'comment', 'room' and 'character' business logic

@Autowired
private UserService users;

@Autowired
private CharacterService characters;

@Autowired
private CommentService comments;

@Autowired
private RoomService rooms;

// Home & cancel

@GetMapping("/")
public String index(Model model) {
		model.addAttribute("newUser", new User());
	    model.addAttribute("newLogin", new LoginUser());
	    return "index.jsp";
}

@GetMapping("/cancel")
public String cancel(Model model) {
	    return "index.jsp";
}

// Login page route
		 
@PostMapping("/login")
public String loginUser(@Valid @ModelAttribute("newLogin") LoginUser loginUser, BindingResult result, HttpSession session, @ModelAttribute("newUser") User user) {
	users.authenticateUser(loginUser, result);
	if(result.hasErrors()) {
		return "index.jsp";
	}
	User loggedUser=users.findByEmail(loginUser.getEmail());
	session.setAttribute("loggedUser", loggedUser.getId());
	return "redirect:/main";
}

// Logout

@GetMapping("/logout")
public String logoutUser(HttpSession session) {
	session.invalidate();
	return "redirect:/";
}

// Registration page

@GetMapping("/registration")
public String register(Model model) {
		model.addAttribute("newUser", new User());
	    model.addAttribute("newLogin", new LoginUser());
	    return "register.jsp";
}

// Registration action

@PostMapping("/register")
public String registerUser(@Valid @ModelAttribute("newUser") User user, BindingResult result, HttpSession session, @ModelAttribute("newLogin") LoginUser loginUser) {
users.validate(user, result);
	if(result.hasErrors()) {
	    return "register.jsp";
}
	users.registerUser(user);
	session.setAttribute("loggedUser", user.getId());
	return "redirect:/dashboard";
}

// Dashboard (main) page route
		    
@GetMapping("/main")
public String main (HttpSession session, Model model) {
	if (session.getAttribute("userId") == null) {
	return "redirect:/";
	}
	model.addAttribute("user", users.findById((Long)session.getAttribute("loggedUser")));
	model.addAttribute("comments", comments.all());
	model.addAttribute("rooms", rooms.findAll());
// 	We need to set up character service
//	model.addAttribute("characters", characters.all());

	return "dashboard.jsp";
}


}