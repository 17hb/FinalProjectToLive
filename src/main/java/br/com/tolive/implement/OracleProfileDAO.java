package br.com.tolive.implement;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import br.com.tolive.bean.Profile;
import br.com.tolive.model.ProfileDAOModel;
import br.com.tolive.singleton.ConnectionManager;

public class OracleProfileDAO implements ProfileDAOModel {

    private Connection connection;

    @Override
    public void register(Profile profile) {
        PreparedStatement stmt = null;

        try {
            connection = ConnectionManager.getInstance().getConnection();
            String sql = "INSERT INTO PROFLILE" + " (id_profile, dt_birthDate, ds_bloodType, ds_allergy, ds_notes, ds_hospAssoc, ds_emergctct)"
                    + "VALUES (SQ_PROFILE.NEXTVAL, ?, ?, ?, ?, ?, ?)";

            stmt = connection.prepareStatement(sql);

            java.sql.Date date = new java.sql.Date(profile.getBirthDate().getTimeInMillis());
            stmt.setDate(1, date);
            stmt.setString(2, profile.getBloodType());
            stmt.setString(3, profile.getAllergy());
            stmt.setString(4, profile.getNotes());
            stmt.setString(5, profile.getHospAssoc());
            stmt.setString(6, profile.getEmergCtct());

            stmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                stmt.close();
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    public void update(Profile profile) {
        PreparedStatement stmt = null;

        try {
            connection = ConnectionManager.getInstance().getConnection();
            String sql = "UPDATE PROFILE SET dt_birthDate = ?, ds_bloodType = ?, ds_allergy = ?, ds_notes = ?, ds_hospAssoc = ?, ds_emergctct = ? WHERE id_profile = ?";
            stmt = connection.prepareStatement(sql);

            java.sql.Date date = new java.sql.Date(profile.getBirthDate().getTimeInMillis());
            stmt.setDate(1, date);
            stmt.setString(2, profile.getBloodType());
            stmt.setString(3, profile.getAllergy());
            stmt.setString(4, profile.getNotes());
            stmt.setString(5, profile.getHospAssoc());
            stmt.setString(6, profile.getEmergCtct());

            stmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                stmt.close();
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    public void remove(int idProfile) {
        PreparedStatement stmt = null;

        try {
            connection = ConnectionManager.getInstance().getConnection();
            stmt = connection.prepareStatement("DELETE FROM PROFILE WHERE id_profile = ?");
            stmt.setInt(1, idProfile);

            stmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                stmt.close();
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

    }

    @Override
    public List<Profile> getAll() {

        List<Profile> profileList = new ArrayList<>();
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            connection = ConnectionManager.getInstance().getConnection();
            stmt = connection.prepareStatement("SELECT * FROM PROFILE");
            rs = stmt.executeQuery();

            // MOSTRAR REGISTROS
            while (rs.next()) {
                int idProfile = rs.getInt("id_profile");
                //ajustar com emerson//
                java.sql.Date birthDate = rs.getDate("date_imc");
                Calendar BirthDate = Calendar.getInstance();
                BirthDate.setTimeInMillis(birthDate.getTime());
                String BloodType = rs.getString("ds_bloodtype");
                String Allergy = rs.getString("ds_allergy");
                String Notes = rs.getString("ds_notes");
                String HospAssoc = rs.getString("ds_hospAssoc");
                String EmergCtct = rs.getString("ds_emergCtct");


                Profile profile = new Profile(idProfile, BirthDate, BloodType , Allergy, Notes, HospAssoc, EmergCtct );
                profileList.add(profile);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                stmt.close();
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return profileList;
    }

    @Override
    public Profile search(int idProfile) {
        Profile profile = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            connection = ConnectionManager.getInstance().getConnection();
            stmt = connection.prepareStatement("SELECT * FROM PROFILE WHERE id_profile = ?");
            stmt.setInt(1, idProfile);
            rs = stmt.executeQuery();

            if (rs.next()) {
                int idProfiles = rs.getInt("id_profile");
                //ajustar com emerson//
                java.sql.Date birthDate = rs.getDate("date_imc");
                Calendar BirthDate = Calendar.getInstance();
                BirthDate.setTimeInMillis(birthDate.getTime());
                String BloodType = rs.getString("ds_bloodtype");
                String Allergy = rs.getString("ds_allergy");
                String Notes = rs.getString("ds_notes");
                String HospAssoc = rs.getString("ds_hospAssoc");
                String EmergCtct = rs.getString("ds_emergCtct");

                profile = new Profile(idProfiles, BirthDate, BloodType , Allergy, Notes, HospAssoc, EmergCtct );
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                stmt.close();
                rs.close();
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return profile;
    }
}
