package model;

import java.util.ArrayList;
/**
 * Classe d'objet metier EFFET
 * @author mathieu
 * 
 */
public class Effet {
	/**
	 * Identifiant de l'effet
	 */
	private int id;
	/**
	 * Nom de l'effet
	 */
	private String name;
	/**
	 * Liste statique de toutes les effets
	 */
	public static ArrayList<Effet> lesEffets = new ArrayList<Effet>();
	
	/**
	 * Constructeur de la classe effets
	 * @param id identifiant du nouvel effet
	 * @param name nom du nouvel effet
	 */
	public Effet(int id, String name) {
		super();
		this.id = id;
		this.name = name;
		lesEffets.add(this);
	}
	/**
	 * Accesseur en lecture sur l'identifiant de l'effet
	 * @return l'identifiant de l'effet
	 */
	public int getId(){
		return id;
	}
	
	/**
	 * Accesseur en lecture sur le nom de 'effet
	 * @return le nom de l'effet
	 */
	public String getName() {
		return name;
	}
	/**
	 * Méthode permettant de rechercher parmi tous les effets
	 * celui ayant un identifiant correspondant à celui passé en paramètre
	 * @param id l'identifiant à recherché
	 * @return l'Effet correspondant
	 */
	public static Effet getEffetById(int id){
		Effet found = null;
		for(Effet f : Effet.lesEffets){
			if(f.getId()==id)
				found=f;
		}
		return found;
	}
	/**
	 * Méthode permettant de rechercher parmi tous les effets
	 * celui ayant un nom correspondant à celui passé en paramètre
	 * @param name le nom à recherché
	 * @return l'Effet correspondant
	 */
	public static Effet getEffetByName(String name) {
		Effet found = null;
		for(Effet f : Effet.lesEffets){
			if(f.getName().equals(name))
				found=f;
		}
		return found;
	}

}
