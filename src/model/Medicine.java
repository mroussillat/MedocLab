package model;

import java.util.ArrayList;
import java.util.GregorianCalendar;
/**
 * Classe d'objet metier MEDICAMENT
 * @author xavier
 *
 */
public class Medicine {
	/**
	 * Le nom du m�dicament
	 */
	private String name;
	/**
	 * Forme pharmaceutique du m�dicament
	 */
	private Form itsForm;
	/**
	 * /**
	 * Effet ind�sirable du m�dicament
	 */
	private Effet lEffet;
	/**
	 * Date d'obtention du brevet pharmaceutique
	 */
	private GregorianCalendar patentDate;
	/**
	 * Liste statique de tous les m�dicaments
	 */
	public static ArrayList<Medicine> allTheMedicines = new ArrayList<Medicine>();
	
	/**
	 * Construcuteur de la classe Medicament
	 * @param name nom du nouveau m�dicament
	 * @param itsForm forme pharmaceutique du nouveau m�dicament
	 * @param patentDate date d'obtention du brevet du nouveau m�dicament
	 */
	public Medicine(String name, Form itsForm, Effet lEffet, GregorianCalendar patentDate) {
		super();
		this.name = name;
		this.itsForm = itsForm;
		this.lEffet = lEffet;
		this.patentDate = patentDate;
		allTheMedicines.add(this);
	}

	/**
	 * Accesseur en lecture sur le nom du m�dicament
	 * @return le nom du m�dicament
	 */
	public String getName() {
		return name;
	}

	/**
	 * Accesseur en lecture sur la forme du m�dicament
	 * @return la forme du m�dicament
	 */
	public Form getItsForm() {
		return itsForm;
	}

	/**
	/**
	 * Accesseur en lecture sur l'effet ind�sirable du m�dicament
	 * @return l'effet du m�dicament
	 */
	public Effet getEffet() {
		return lEffet;
	}

	/**
	 * Accesseur en lecture sur la date d'obtention du brevet du m�dicament
	 * @return la date d'obtention du brevet du m�dicament
	 */
	public GregorianCalendar getPatentDate() {
		return patentDate;
	}
	
	/**
	 * M�thode permettant de rechercher parmi tous les m�dicaments
	 * celui ayant un nom correspondant � celui pass� en param�tre
	 * @param name le nom � rechercher
	 * @return le Medicament correspondant
	 */
	public static Medicine getMedicineByName(String name) {
		Medicine found = null;
		for(Medicine m : Medicine.allTheMedicines){
			if(m.getName().equals(name))
				found=m;
		}
		return found;
	}

	/**
	 * Accesseur en �criture sur la forme du m�dicament
	 * @param itsForm la nouvelle forme du m�dicament
	 */
	public void setItsForm(Form itsForm) {
		this.itsForm = itsForm;
	}

	
	/**
	 * Accesseur en �criture sur l'effet du m�dicament
	 * @param itsForm le nouvel effet du m�dicament
	 */
	public void setEffet(Effet lEffet) {
		this.lEffet = lEffet;
	}
	
	/**
	 * Accesseur en �criture sur la date d'obtention du brevet du m�dicament
	 * @param patentDate la nouvelle date d'obtention du brevet du m�dicament
	 */
	public void setPatentDate(GregorianCalendar patentDate) {
		this.patentDate = patentDate;
	}

	
}
