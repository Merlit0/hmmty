//
//  addStudentViewController.swift
//  chooseStudent
//
//  Created by ICMMAC09-BF7F on 07/10/22.
//

import UIKit

class addStudentViewController: UIViewController {

    @IBOutlet weak var tfNome: UITextField!
    @IBOutlet weak var tfSerie: UITextField!
    @IBOutlet weak var tfNota: UITextField!
    
    var manager = managerStudent()
    
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
