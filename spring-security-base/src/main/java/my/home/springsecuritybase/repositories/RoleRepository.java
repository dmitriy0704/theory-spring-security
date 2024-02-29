package my.home.springsecuritybase.repositories;


import my.home.springsecuritybase.entities.Role;
import my.home.springsecuritybase.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RoleRepository extends JpaRepository<Role, Long> {
}
