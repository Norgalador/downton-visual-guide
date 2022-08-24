package com.downton.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.downton.models.Room;
import com.downton.models.Character;
import com.downton.services.CharacterService;
import com.downton.services.RoomService;

@RequestMapping("/api")
@RestController
public class DataController {
	
	@Autowired
	private RoomService rooms;
	@Autowired
	private CharacterService characters;
	
	@PostMapping("/rooms/create")
	public Room createRooms(@Valid @RequestParam(value="name")String name, @RequestParam(value="image", required=false)  String image) {
		Room newRoom = new Room(name, image);
		return rooms.create(newRoom);
	}
	
	@GetMapping ("/rooms/view")
	public List< Room> viewRooms( ) {
		return rooms.findAll();
	}

	@PutMapping("/rooms/update/{id}")
	public Room updateRooms(@PathVariable Long id, @Valid @RequestParam(value="name")String name, @RequestParam(value="image", required=false)  String image) {
		Room updateRoom = rooms.getOne(id);
		updateRoom.setName(name);
		updateRoom.setImage(image);
		return rooms.update(updateRoom);
	}
	
	@PostMapping("/characters/create")
	public Character createCharacters(@Valid @RequestParam(value="name")String name) {
		Character newCharacter = new Character(name);
		return characters.create(newCharacter);
	}
	@PutMapping("/characters/update/{id}")
	public Character updateCharacters( @PathVariable Long id, @RequestParam(value="name")String name) {
		Character updateCharacter = characters.getOne(id);
		updateCharacter.setName(name);
		return characters.update(updateCharacter);
	}
	
	@DeleteMapping("/room/delete/{id}")
	public String deleteRoom(@PathVariable Long id) {
		rooms.delete(id);
		return "delete successful";
	}
	
}
