package br.com.tolive.bean;

import java.util.Calendar;

public class Evolution {

	private int idEvolution;
	private double height;
	private double weight;
	private Calendar dateImc;

	public Evolution() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Evolution(int idEvolution, double height, double weight, Calendar dateImc) {
		super();
		this.idEvolution = idEvolution;
		this.height = height;
		this.weight = weight;
		this.dateImc = dateImc;
	}

	public int getIdEvolution() {
		return idEvolution;
	}

	public void setIdEvolution(int idEvolution) {
		this.idEvolution = idEvolution;
	}

	public double getHeight() {
		return height;
	}

	public void setHeight(double height) {
		this.height = height;
	}

	public double getWeight() {
		return weight;
	}

	public void setWeight(double weight) {
		this.weight = weight;
	}

	public Calendar getDateImc() {
		return dateImc;
	}

	public void setDateImc(Calendar dateImc) {
		this.dateImc = dateImc;
	}

}
