package model;

import java.util.ArrayList;
/**
 * Classe d'objet metier ModeAdmin
 * @author mathieu
 * 
 */


public class ModeAdmin {
	/**
	 * Identifiant du mode d'administration
	 */
	private int id;
	
	
	/**
	 * Nom du mode d'administration
	 */
	private String name;
	
	
	/**
	 * Liste statique de toutes les modes d'administration
	 */
	public static ArrayList<ModeAdmin> lesModeAdmin = new ArrayList<ModeAdmin>();
	
	
	/**
	 * Constructeur de la classe ModeAdmin
	 * @param id identifiant du nouveau ModeAdmin
	 * @param name nom du nouveau ModeAdmin
	 */
	public ModeAdmin(int id, String name) {
		super();
		this.id = id;
		this.name = name;
		lesModeAdmin.add(this);
	}
	
	
	/**
	 * Accesseur en lecture sur l'identifiant du mode d'administration
	 * @return l'identifiant du mode d'administration
	 */
	public int getId(){
		return id;
	}
	
	
	/**
	 * Accesseur en lecture sur le nom du mode d'administration
	 * @return le nom du mode d'administration
	 */
	public String getName() {
		return name;
	}
	
	
	/**
	 * M�thode permettant de rechercher parmi tous les modes d'administration
	 * celui ayant un identifiant correspondant � celui pass� en param�tre
	 * @param id l'identifiant � recherch�
	 * @return le ModeAdmin correspondant
	 */
	public static ModeAdmin getModeAdminById(int id){
		ModeAdmin found = null;
		for(ModeAdmin f : ModeAdmin.lesModeAdmin){
			if(f.getId()==id)
				found=f;
		}
		return found;
	}
	
	
	/**
	 * M�thode permettant de rechercher parmi tous les modes d'administration
	 * celui ayant un nom correspondant � celui pass� en param�tre
	 * @param name le nom � recherch�
	 * @return le ModeAdmin correspondant
	 */
	public static ModeAdmin getModeAdminByName(String name) {
		ModeAdmin found = null;
		for(ModeAdmin f : ModeAdmin.lesModeAdmin){
			if(f.getName().equals(name))
				found=f;
		}
		return found;
	}

}
