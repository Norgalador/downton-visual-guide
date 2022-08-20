package com.downton.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.downton.models.Comment;

public interface CommentRepository extends CrudRepository<Comment, Long> {
	List<Comment>findAll();
}
