package restaurant.comenzi.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import restaurant.comenzi.entity.Comenzi;

public interface ComenziRepository
        extends JpaRepository<Comenzi, Integer> {

}
