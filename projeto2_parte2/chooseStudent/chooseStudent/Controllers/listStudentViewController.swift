//
//  listStudentViewController.swift
//  chooseStudent
//
//  Created by ICMMAC08-5617 on 27/09/22.
//

import UIKit

class listStudentViewController: UIViewController {
    
    @IBOutlet weak var nome: UILabel!
    @IBOutlet weak var serie: UILabel!
    @IBOutlet weak var nota: UILabel!
    
    @IBOutlet weak var btPosterior: UIButton!
    @IBOutlet weak var btAnterior: UIButton!
    
    var manager = managerStudent()
    var index = 0 //posicao do estudante
    var aluno:Student!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btAnterior.isHidden = true
        btPosterior.isHidden = true
        
        if manager.escola.count > 0 {
            nome.text = manager.escola[0].nome
            serie.text = manager.escola[0].serie
            nota.text = manager.escola[0].nota
        }

        if manager.escola.count > 1 {
            btPosterior.isHidden=false
        }
        
    }
    
    @IBAction func btPosterior(_ sender: Any) {
        index = index + 1
        aluno = manager.listStudent(posicao: index)
        nome.text = aluno.nome
        serie.text = aluno.serie
        nota.text = aluno.nota
        
        btAnterior.isHidden = false
        
        if (index+1) == manager.escola.count {
            btPosterior.isHidden = true
        }
    }
    @IBAction func btAnterior(_ sender: Any) {
       index = index - 1
        aluno = manager.listStudent(posicao: index)
        nome.text = aluno.nome
        serie.text = aluno.serie
        nota.text = aluno.nota
        
        btPosterior.isHidden = false
        
        if (index) == 0 {
            btAnterior.isHidden = true
        }
    }
    
}
