package restaurant.comenzi.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import restaurant.comenzi.entity.ComandaCurenta;

public interface ComandaCurentaRepository
        extends JpaRepository<ComandaCurenta, Integer> {

}
