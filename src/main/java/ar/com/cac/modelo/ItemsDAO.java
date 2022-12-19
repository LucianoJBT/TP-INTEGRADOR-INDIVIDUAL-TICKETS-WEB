package ar.com.cac.modelo;

import java.sql.SQLException;
import java.util.List;

public interface ItemsDAO<T> {
	
	public void insert(T modelo) throws SQLException;

	public void update(T modelo) throws SQLException;

	public void delete(int id) throws SQLException;

	public T getById(int id) throws SQLException;

	public List<T> getAll() throws SQLException;

}
