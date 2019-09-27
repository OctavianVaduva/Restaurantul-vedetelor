package restaurant.comenzi.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import restaurant.comenzi.entity.Produs;

public interface ProdusRepository
        extends JpaRepository<Produs, Integer> {

}
