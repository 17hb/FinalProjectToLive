package br.com.tolive.bean;

import java.util.Calendar;

public class Profile {

    private int idProfile;
    private Calendar BirthDate;
    private String BloodType;
    private String Allergy;
    //lembrete remédios controlados//
    private String Notes;
    //convenio médico//
    private String HospAssoc;
    //Contato de Emergencia//
    private String EmergCtct;

    public Profile() {
        super();
        // TODO Auto-generated constructor stub
    }

    public Profile(int idProfile, Calendar BirthDate, String BloodType , String Allergy, String Notes, String HospAssoc, String EmergCtct) {
        super();
        this.idProfile = idProfile;
        this.BirthDate = BirthDate;
        this.BloodType = BloodType;
        this.Allergy = Allergy;
        this.Notes = Notes;
        this.HospAssoc = HospAssoc;
        this.EmergCtct = EmergCtct;
    }

    public int getidProfile() {
        return idProfile;
    }

    public void setidProfile(int idProfile) {
        this.idProfile = idProfile;
    }

    public Calendar getBirthDate() {
        return BirthDate;
    }

    public void setBirthDate(Calendar BirthDate) {
        this.BirthDate = BirthDate;
    }

    public String getBloodType() {
        return BloodType;
    }

    public void setBloodType(String BloodType) {
        this.BloodType = BloodType;
    }

    public String getAllergy() {
        return Allergy;
    }

    public void setAllergy(String Allergy) {
        this.Allergy = Allergy;
    }
    public String getNotes() {
        return Notes;
    }

    public void setNotes(String Notes) {
        this.Notes = Notes;
    }
    public String getHospAssoc() {
        return HospAssoc;
    }

    public void setHospAssoc(String HospAssoc) {
        this.HospAssoc = HospAssoc;
    }
    public String getEmergCtct() {
        return EmergCtct;
    }

    public void setEmergCtct(String EmergCtct) {
        this.EmergCtct = EmergCtct;
    }

}
