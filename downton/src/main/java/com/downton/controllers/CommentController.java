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
	private CommentService comments;
	
	@Autowired
	private UserService users;
	
	@Autowired
	private RoomService rooms;
	
		// Add a comment
		
		@PostMapping("/addcomment/room4")
		public String create4(HttpSession session, Model model, @Valid @ModelAttribute("comments") Comment comment, BindingResult result) {
			if (result.hasErrors()) {
				return "room.jsp";
		    }
					comments.create(comment);
		            return "redirect:/room/4";   
		}
		@PostMapping("/addcomment/room1")
		public String create1(HttpSession session, Model model, @Valid @ModelAttribute("comments") Comment comment, BindingResult result) {
			if (result.hasErrors()) {
				return "room.jsp";
		    }
					comments.create(comment);
		            return "redirect:/room/1";   
		}
		
		@PostMapping("/addcomment/room2")
		public String create2(HttpSession session, Model model, @Valid @ModelAttribute("comments") Comment comment, BindingResult result) {
			if (result.hasErrors()) {
				return "room.jsp";
		    }
					comments.create(comment);
		            return "redirect:/room/2";   
		}
		
		@PostMapping("/addcomment/room3")
		public String create3(HttpSession session, Model model, @Valid @ModelAttribute("comments") Comment comment, BindingResult result) {
			if (result.hasErrors()) {
				return "room.jsp";
		    }
					comments.create(comment);
		            return "redirect:/room/3";   
		}
		
		
		// Edit a comment (rough idea)
		@GetMapping("/comment/edit/{id}")
		public String editComment4(@PathVariable Long id, HttpSession session, @ModelAttribute("editComment") Comment comment, Model model) {
			if(session.getAttribute("loggedInUser")!= null) {
				return "dashboard.jsp";
			}
			else {
				Comment editComment = comments.getOne(id);
				model.addAttribute("editComment", editComment);
				return "edit.jsp";
			}
		}

		@PutMapping("/edit/room4/{id}")
		public String update4(HttpSession session, @PathVariable("id") Long id, @Valid @ModelAttribute("comments") Comment comment, BindingResult result, Model model) {
			if (session.getAttribute("loggedUser") == null) {
				return "redirect:/logout";
				} else if (result.hasErrors()) {
				return "room.jsp";
			}
			comments.update(comment);
			return "redirect:/room/4";
		}
		
		@PutMapping("/edit/room3/{id}")
		public String update3(HttpSession session, @PathVariable("id") Long id, @Valid @ModelAttribute("comments") Comment comment, BindingResult result, Model model) {
			if (session.getAttribute("loggedUser") == null) {
				return "redirect:/logout";
				} else if (result.hasErrors()) {
				return "diningroom.jsp";
			}
			comments.update(comment);
			return "redirect:/room/3";
		}
		
		@PutMapping("/edit/room2/{id}")
		public String update2(HttpSession session, @PathVariable("id") Long id, @Valid @ModelAttribute("comments") Comment comment, BindingResult result, Model model) {
			if (session.getAttribute("loggedUser") == null) {
				return "redirect:/logout";
				} else if (result.hasErrors()) {
				return "greathall.jsp";
			}
			comments.update(comment);
			return "redirect:/room/2";
		}
		@PutMapping("/edit/room1/{id}")
		public String update1(HttpSession session, @PathVariable("id") Long id, @Valid @ModelAttribute("comments") Comment comment, BindingResult result, Model model) {
			if (session.getAttribute("loggedUser") == null) {
				return "redirect:/logout";
				} else if (result.hasErrors()) {
				return "library.jsp";
			}
			comments.update(comment);

			return "redirect/room/1";
		}
		
		// Delete a comment
		
		@RequestMapping(value="/delete/{id}")
		public String destroy4(@PathVariable("id") Long id, HttpSession session, User user) {
			if (session.getAttribute("loggedUser") == null) {
				return "redirect:/logout";
				}
			else if ((session.getAttribute("loggedUser")).equals(comments.getOne(id).getUser().getId())) { 
					comments.delete(id);
					return "redirect:/room/4";
				}
			System.out.println(session.getAttribute("loggedUser"));
			System.out.println(comments.getOne(id).getUser());
				return "redirect:/room/4";
		}
		
		@RequestMapping(value="/delete/room1/{id}")
		public String destroy1(@PathVariable("id") Long id, HttpSession session, User user) {
			if (session.getAttribute("loggedUser") == null) {
				return "redirect:/logout";
				}
			else if ((session.getAttribute("loggedUser")).equals(comments.getOne(id).getUser().getId())) { 
					comments.delete(id);
					return "redirect:/room/1";
				}
			System.out.println(session.getAttribute("loggedUser"));
			System.out.println(comments.getOne(id).getUser());
				return "redirect:/room/1";
		}
		
		@RequestMapping(value="/delete/room2/{id}")
		public String destroy2(@PathVariable("id") Long id, HttpSession session, User user) {
			if (session.getAttribute("loggedUser") == null) {
				return "redirect:/logout";
				}
			else if ((session.getAttribute("loggedUser")).equals(comments.getOne(id).getUser().getId())) { 
					comments.delete(id);
					return "redirect:/room/2";
				}
			System.out.println(session.getAttribute("loggedUser"));
			System.out.println(comments.getOne(id).getUser());
				return "redirect:/room/2";
		}

		@RequestMapping(value="/delete/room3/{id}")
		public String destroy3(@PathVariable("id") Long id, HttpSession session, User user) {
			if (session.getAttribute("loggedUser") == null) {
				return "redirect:/logout";
				}
			else if ((session.getAttribute("loggedUser")).equals(comments.getOne(id).getUser().getId())) { 
					comments.delete(id);
					return "redirect:/room/3";
				}
			System.out.println(session.getAttribute("loggedUser"));
			System.out.println(comments.getOne(id).getUser());
				return "redirect:/room/3";
		}
		
		
		
		
}
