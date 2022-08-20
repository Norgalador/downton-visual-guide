package com.downton.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.downton.models.Character;


public interface CharacterRepository extends CrudRepository<Character, Long> {
	List<Character>findAll();
}
