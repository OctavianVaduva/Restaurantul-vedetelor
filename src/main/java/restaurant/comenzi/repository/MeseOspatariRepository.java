package restaurant.comenzi.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import restaurant.comenzi.entity.MeseOspatari;

public interface MeseOspatariRepository
        extends JpaRepository<MeseOspatari, Integer> {
    
}
