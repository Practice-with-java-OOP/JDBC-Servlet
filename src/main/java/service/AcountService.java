package service;

import models.Acount;

import java.sql.SQLException;
import java.util.List;

public interface AcountService {
    List<Acount> findAllAcount() throws ClassNotFoundException, SQLException;

    void saveAcount(Acount acount) throws ClassNotFoundException, SQLException;
    void updateAcount (int id) throws ClassNotFoundException, SQLException;
}
