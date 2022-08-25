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

import com.downton.models.Comment;
import com.downton.models.Room;
import com.downton.services.CommentService;
import com.downton.services.RoomService;
import com.downton.services.UserService;
import com.downton.models.User;

@Controller
public class RoomController {
	
	@Autowired
	private RoomService rooms;
	
	@Autowired
	private CommentService comments;
	
	@Autowired
	private UserService users;
	
	@PostMapping("/room/create")
	public String createRoom(@Valid @ModelAttribute("newRoom") Room room, BindingResult result) {
		if(result.hasErrors()) {
			return "dashboard.jsp";
		}
		else {
			rooms.create(room);
			return "redirect:/dashboard";
		}
	}
	
	@GetMapping("/room/4")
	public String viewKitchen(HttpSession session, Model model, @ModelAttribute("comments") Comment comment, Room room) {
		Long id = (long) 4;
		User user = users.findById((Long)session.getAttribute("loggedUser"));
		model.addAttribute("user", user);
		model.addAttribute("room", rooms.getOne(id));
		model.addAttribute("allComments", comments.all());
		return "room.jsp"; //library.jsp
	}
	
//	@GetMapping("/room/2")
//	public String viewGreatHall( Model model, @ModelAttribute("newComment") Comment comment, Room room) {
//		model.addAttribute("room", rooms.getOne(id));
//		model.addAttribute("newComment", comments.create(comment));
//		model.addAttribute("allComments", comments.all());
//		return "room.jsp"; //greathall.jsp
//	}
//	
//	@GetMapping("/room/3")
//	public String viewDiningRoom(@PathVariable Long id, Model model, @ModelAttribute("newComment") Comment comment, Room room) {
//		model.addAttribute("room", rooms.getOne(id));
//		model.addAttribute("newComment", comments.create(comment));
//		model.addAttribute("allComments", comments.all());
//		return "room.jsp"; //diningroom.jsp
//	}
//	
//	@GetMapping("/room/1")
//	public String viewLibrary(@PathVariable Long id, Model model, @ModelAttribute("newComment") Comment comment, Room room) {
//		model.addAttribute("room", rooms.getOne(id));
//		model.addAttribute("newComment", comments.create(comment));
//		model.addAttribute("allComments", comments.all());
//		return "room.jsp"; //kitchen.jsp
//	}
	
	@PutMapping("/room/update/{id}")
	public String updateRoom(@PathVariable Long id, @Valid @ModelAttribute("editRoom") Room room) {
		rooms.update(room);
		return "redirect:/dashboard";
	}
	

}
