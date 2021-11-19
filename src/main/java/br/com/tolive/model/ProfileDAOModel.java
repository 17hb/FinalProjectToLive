package br.com.tolive.model;

import java.util.List;
import br.com.tolive.bean.Profile;

public interface ProfileDAOModel {

    void register(Profile profile);

    void update(Profile profile);

    void remove(int idProfile);

    Profile search(int idProfile);

    List<Profile> getAll();
}
