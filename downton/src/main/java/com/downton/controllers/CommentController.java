package com.downton.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.downton.models.Comment;
import com.downton.models.Room;
import com.downton.models.User;
import com.downton.services.CommentService;
import com.downton.services.RoomService;
import com.downton.services.UserService;

@Controller
public class CommentController {
	
	@Autowired
	private UserService users;

	@Autowired
	private CommentService comments;
	
	@Autowired
	private RoomService rooms;
	
		// Add a comment
		
		@PostMapping("/addcomment")
		public String create(HttpSession session, Model model, @Valid @ModelAttribute("comments") Comment comment, BindingResult result) {
			if (result.hasErrors()) {
				return "room.jsp";
		    }
					comments.create(comment);
		            return "redirect:/room/4";   
		}
		
		// Delete a comment
		
		@RequestMapping(value="/delete/{id}")
		public String destroy(@PathVariable("id") Long id, HttpSession session, User user) {
			if (session.getAttribute("loggedUser") == null) {
				return "redirect:/";
				}
			else if ((session.getAttribute("loggedUser")).equals(comments.getOne(id).getUser().getId())) { 
					comments.delete(id);
					return "redirect:/room/4";
				}
			System.out.println(session.getAttribute("loggedUser"));
			System.out.println(comments.getOne(id).getUser());
				return "redirect:/room/4";
		}
}