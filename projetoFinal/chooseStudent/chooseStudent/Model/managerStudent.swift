//
//  managerStudent.swift
//  chooseStudent
//
//  Created by ICMMAC09-BF7F on 07/10/22.
//

import Foundation

class managerStudent{
    var escola: [Student] = []
    
    func addNewStudent(nome: String, serie: String, nota: String){
        escola.append(Student(nomeStudent: nome, serieStudent: serie, notaStudent: nota))
        print(escola)
    }
}
