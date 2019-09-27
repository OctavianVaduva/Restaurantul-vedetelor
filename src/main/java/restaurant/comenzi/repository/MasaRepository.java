package restaurant.comenzi.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import restaurant.comenzi.entity.Masa;

public interface MasaRepository
        extends JpaRepository<Masa, Integer> {

}
