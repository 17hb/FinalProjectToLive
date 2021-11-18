package br.com.fiap.tolive.model;

import java.util.List;
import br.com.fiap.tolive.bean.Evolution;

public interface EvolutionDAOModel {

	void register(Evolution evolution);

	void update(Evolution evolution);

	void remove(int idEvoluton);
	
	Evolution search(int idEvolution);

	List<Evolution> getAll();
}
