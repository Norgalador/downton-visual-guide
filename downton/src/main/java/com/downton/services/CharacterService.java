package com.downton.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.downton.repositories.CharacterRepository;
import com.downton.models.Character;

@Service
public class CharacterService {
	
	@Autowired
	private CharacterRepository characterRepo;
	
	//list all comments
	public List<Character> all(){
		return characterRepo.findAll();
	}
	
}
