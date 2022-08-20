package com.downton.repositories;

import org.springframework.data.repository.CrudRepository;
import com.downton.models.Room;
import java.util.List;

public interface RoomRepository extends CrudRepository<Room, Long> {
	List<Room>findAll();

}
