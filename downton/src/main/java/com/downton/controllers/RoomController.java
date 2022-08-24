package com.downton.controllers;

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

@Controller
public class RoomController {
	@Autowired
	private RoomService rooms;
	@Autowired
	private CommentService comments;
	
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
	
	@GetMapping("/room/{id}")
	public String viewRoom(@PathVariable Long id, Model model, @ModelAttribute("newComment") Comment comment, Room room) {
		model.addAttribute("room", rooms.getOne(id));
		model.addAttribute("newComment", comments.create(comment));
		model.addAttribute("allComments", comments.all());
		return "room.jsp";
	}
	
	@PutMapping("/room/update/{id}")
	public String updateRoom(@PathVariable Long id, @Valid @ModelAttribute("editRoom") Room room) {
		rooms.update(room);
		return "redirect:/dashboard";
	}
	

}
