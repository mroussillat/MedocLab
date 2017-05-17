package view;

import java.awt.BorderLayout;
import java.awt.FlowLayout;

import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;

import controller.Ctrl;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import javax.swing.JLabel;
import javax.swing.JTextField;
import javax.swing.JComboBox;
import javax.swing.SwingConstants;
/**
 * Classe définissant la vue de modification d'un médicament
 * @author xavier
 *
 */
public class MedicineChange extends JDialog implements MyView{

	private static final long serialVersionUID = 1L;
	private final JPanel contentPanel = new JPanel();
	private JButton btnValider;
	public static JButton btnAnnuler;
	private static JTextField txtNom;
	private static JComboBox<String> cbxFormes;
	private static JComboBox<String> cbxEffets;
	private static JComboBox<String> cbxModeAdmin;
	private static JTextField txtBrevet;
	/**
	 * Méthode statique permettant d'obtenir le contenu du champ texte nom
	 * @return le contenu du champ texte nom
	 */
	public static String getTxtName(){
		return txtNom.getText();
	}
	/**
	 * Méthode statique permettant d'obtenir la sélection de la liste déroulante forme
	 * @return la selection de la liste déroulante forme
	 */
	public static String getTxtForm(){
		return (String) cbxFormes.getSelectedItem();
	}
	
	/**
	 * Méthode statique permettant d'obtenir la sélection de la liste déroulante effet
	 * @return la selection de la liste déroulante effet
	 */
	public static String getTxtEffet(){
		return (String) cbxEffets.getSelectedItem();
	}
	
	
	/**
	 * Méthode statique permettant d'obtenir la sélection de la liste déroulante modeAdmin
	 * @return la selection de la liste déroulante modeAdmin
	 */
	public static String getTxtModeAdmin(){
		return (String) cbxModeAdmin.getSelectedItem();
	}
	
	
	/**
	 * Méthode statique permettant d'obtenir le contenu du champ texte date brevet
	 * @return le contenu du champ texte date brevet
	 */
	public static String getTxtPatentDate(){
		if(txtBrevet.getText().equals(""))
			return null;
		return txtBrevet.getText();
	}
	
	/**
	 * Create the dialog.
	 * @param forms les formes à intégrer dans la liste déroulante
	 * @param medicine le détail du médicament à modifier
	 */
	public MedicineChange(String[] forms, String[] effets, String[] modeAdmin, String[] medicine) {
		setTitle("M\u00E9dicament - Modifier");
		setModal(true);
		setBounds(100, 100, 450, 300);
		getContentPane().setLayout(new BorderLayout());
		contentPanel.setBorder(new EmptyBorder(5, 5, 5, 5));
		getContentPane().add(contentPanel, BorderLayout.CENTER);
		contentPanel.setLayout(null);
		
		JLabel lblNom = new JLabel("Nom :");
		lblNom.setHorizontalAlignment(SwingConstants.RIGHT);
		lblNom.setBounds(83, 45, 50, 14);
		contentPanel.add(lblNom);
		
		txtNom = new JTextField();
		txtNom.setEnabled(false);
		txtNom.setBounds(140, 42, 192, 20);
		contentPanel.add(txtNom);
		txtNom.setColumns(10);
		txtNom.setText(medicine[0]);
		
		JLabel lblForme = new JLabel("Forme :");
		lblForme.setHorizontalAlignment(SwingConstants.RIGHT);
		lblForme.setBounds(63, 127, 70, 14);
		contentPanel.add(lblForme);
		
		cbxFormes = new JComboBox<String>(forms);
		cbxFormes.setBounds(140, 124, 192, 20);
		contentPanel.add(cbxFormes);
		cbxFormes.setSelectedItem(medicine[1]);
		
		
		JLabel lblEffet = new JLabel("Effet indésirable :");
		lblEffet.setHorizontalAlignment(SwingConstants.RIGHT);
		lblEffet.setBounds(63, 160, 70, 14);
		contentPanel.add(lblEffet);
		
		cbxEffets = new JComboBox<String>(effets);
		cbxEffets.setBounds(140, 160, 192, 20);
		contentPanel.add(cbxEffets);
		cbxEffets.setSelectedItem(medicine[2]);
		
		
		JLabel lblModeAdmin = new JLabel("Mode d'administration :");
		lblModeAdmin.setHorizontalAlignment(SwingConstants.RIGHT);
		lblModeAdmin.setBounds(63, 180, 70, 14);
		contentPanel.add(lblModeAdmin);
		
		cbxModeAdmin = new JComboBox<String>(modeAdmin);
		cbxModeAdmin.setBounds(140, 180, 192, 20);
		contentPanel.add(cbxModeAdmin);
		cbxModeAdmin.setSelectedItem(medicine[3]);
		
		
		JLabel lblDateBrevet = new JLabel("Date brevet :");
		lblDateBrevet.setHorizontalAlignment(SwingConstants.RIGHT);
		lblDateBrevet.setBounds(53, 86, 80, 14);
		contentPanel.add(lblDateBrevet);
		
		txtBrevet = new JTextField();
		txtBrevet.setBounds(140, 83, 192, 20);
		contentPanel.add(txtBrevet);
		txtBrevet.setColumns(10);
		txtBrevet.setText(medicine[4]);
		{
			JPanel buttonPane = new JPanel();
			buttonPane.setLayout(new FlowLayout(FlowLayout.RIGHT));
			getContentPane().add(buttonPane, BorderLayout.SOUTH);
			{
				btnValider = new JButton("Valider");
				buttonPane.add(btnValider);
				getRootPane().setDefaultButton(btnValider);
			}
			{
				btnAnnuler = new JButton("Annuler");
				btnAnnuler.addActionListener(new ActionListener() {
					public void actionPerformed(ActionEvent arg0) {
						dispose();
					}
				});
				buttonPane.add(btnAnnuler);
			}
		}
	}


	@Override
	public void assignListener(Ctrl ctrl) {
		this.btnValider.setActionCommand("MedicineChange_valider");
		this.btnValider.addActionListener(ctrl);
	}
}
