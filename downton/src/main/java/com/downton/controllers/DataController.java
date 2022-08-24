package com.downton.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.downton.models.Room;
import com.downton.services.RoomService;

@RequestMapping("/api")
@RestController
public class DataController {
	
	@Autowired
	private RoomService rooms;
	
	@PostMapping("/rooms/create")
	public Room createRooms(@Valid @RequestParam(value="name")String name) {
		Room newRoom = new Room(name);
		return rooms.create(newRoom);
	}

	@PutMapping("/rooms/update/{id}")
	public Room updateRooms( @PathVariable Long id, @RequestParam(value="name")String name) {
		Room updateRoom = rooms.getOne(id);
		updateRoom.setName("name");
		return rooms.update(updateRoom);
	}
}
