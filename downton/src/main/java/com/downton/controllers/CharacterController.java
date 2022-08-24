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

import com.downton.services.CharacterService;
import com.downton.models.Character;

@Controller
public class CharacterController {
	@Autowired
	private CharacterService characters;
	
	@PostMapping("/character/create")
	public String createCharacter(@Valid @ModelAttribute("newCharacter") Character character, BindingResult result) {
		if(result.hasErrors()) {
			return "dashboard.jsp";
		}
		else {
			characters.create(character);
			return "redirect:/dashboard";
		}
	}
	@GetMapping("/character/{id}")
	public String viewCharacter(@PathVariable Long id, Model model, Character character) {
		model.addAttribute("newCharacter", characters.getOne(id));
		return "character.jsp";
	}
}
