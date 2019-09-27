package restaurant.comenzi.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import restaurant.comenzi.entity.StocProdus;

public interface StocProdusRepository
        extends JpaRepository<StocProdus, Integer> {

}
