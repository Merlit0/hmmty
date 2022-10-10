//
//  mainViewController.swift
//  chooseStudent
//
//  Created by ICMMAC09-BF7F on 07/10/22.
//

import UIKit

class mainViewController: UIViewController {
    
    var manager = managerStudent()
    let MAIN = UIStoryboard(name: "Main", bundle: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func btShowAddStudent(_ sender: Any) {
        let ADD_STUDENT:addStudentViewController = MAIN.instantiateViewController(withIdentifier: "addStudent") as! addStudentViewController
        ADD_STUDENT.manager = manager
        self.present(ADD_STUDENT, animated: true)
        performSegue(withIdentifier: "segueAddStudent", sender: nil)
    }
    
    @IBAction func btShowListStudents(_ sender: Any) {
    }
    
    @IBAction func returnMainView(segue: UIStoryboardSegue){}
    
}
