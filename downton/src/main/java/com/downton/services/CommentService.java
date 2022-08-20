package com.downton.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.downton.models.Comment;
import com.downton.repositories.CommentRepository;

@Service
public class CommentService {
	@Autowired
	private CommentRepository commentRepo;
	
	//list all comments
	public List<Comment> all(){
		return commentRepo.findAll();
	}
	
	//new comment
	public Comment create(Comment comment) {
		return commentRepo.save(comment);
	}
	
	//get one by id
	public Comment getOne(Long id) {
		return commentRepo.findById(id).orElse(null);
	}
	
	//update comment
	public Comment update(Comment comment) {
		return commentRepo.save(comment);
	}
	//delete comment
	public void delete(Long id) {
		commentRepo.deleteById(id);
	}
}
