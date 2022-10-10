//
//  addStudentViewController.swift
//  chooseStudent
//
//  Created by ICMMAC08-5617 on 27/09/22.
//

import UIKit

class addStudentViewController: UIViewController {

    var manager = managerStudent() 
    
    @IBOutlet weak var tfNome: UITextField!
    @IBOutlet weak var tfSerie: UITextField!
    @IBOutlet weak var tfNota: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btAddStudent(_ sender: Any) {
        manager.addNewStudent(nome: tfNome.text!, serie: tfSerie.text!, nota: tfNota.text!)
        tfNome.text = ""
        tfSerie.text = ""
        tfNota.text = ""
    }
    

}
