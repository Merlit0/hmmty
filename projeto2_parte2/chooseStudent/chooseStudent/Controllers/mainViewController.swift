//
//  mainViewController.swift
//  chooseStudent
//
//  Created by ICMMAC08-5617 on 27/09/22.
//

import UIKit

class mainViewController: UIViewController {

    var manager = managerStudent()
    let MAIN_VIEW = UIStoryboard(name: "Main", bundle: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func addAluno(_ sender: Any) {
        let ADD_STUDENT: addStudentViewController =  MAIN_VIEW.instantiateViewController(withIdentifier: "addStudent") as! addStudentViewController
        ADD_STUDENT.manager = manager
        self.present(ADD_STUDENT, animated: true, completion: nil)
        performSegue(withIdentifier: "segueAddStudent", sender: nil)
    }
    
 
    @IBAction func listAluno(_ sender: Any) {
        let LIST_STUDENTS:listStudentViewController = MAIN_VIEW.instantiateViewController(withIdentifier: "listStudents") as! listStudentViewController
        LIST_STUDENTS.manager = manager
        self.present(LIST_STUDENTS, animated: true, completion: nil)
        performSegue(withIdentifier: "segueListStudents", sender: nil)
    }

    @IBAction func returnMAinVIEW(segue:UIStoryboardSegue){}


}



