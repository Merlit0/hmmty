//
//  managerStudent.swift
//  chooseStudent
//
//  Created by ICMMAC08-5617 on 27/09/22.
//

import Foundation

class managerStudent{
    var escola: [Student] = []
    
    func addNewStudent (nome:String,serie:String,nota:String){
        escola.append(Student(nome:nome, serie: serie, nota:nota))
        print(escola)
    }
    
    func listStudent(posicao: Int) -> Student {
        return escola[posicao]
    }
    
}




