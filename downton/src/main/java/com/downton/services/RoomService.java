package com.downton.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.downton.models.Room;
import com.downton.repositories.RoomRepository;

@Service
public class RoomService {
	@Autowired
	private RoomRepository roomRepo;
	
	//add a room
	public void create(Room room) {
		roomRepo.save(room);
	}
	//get by id
	public Room getOne(Long id) {
		return roomRepo.findById(id).orElse(null);
	}
	//find all rooms
	public List<Room> findAll(){
		return roomRepo.findAll();
	}
	//update Room
	public Room update(Room room) {
		return roomRepo.save(room);
	}
	//delete room
	public void delete(Long id) {
		roomRepo.deleteById(id);
	}
}
