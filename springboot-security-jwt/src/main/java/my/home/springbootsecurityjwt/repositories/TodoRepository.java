package my.home.springbootsecurityjwt.repositories;

import my.home.springbootsecurityjwt.entities.Todo;
import org.springframework.data.repository.CrudRepository;


import java.util.List;

public interface TodoRepository extends CrudRepository<Todo, Long> {

    List<Todo> findAll();
}
