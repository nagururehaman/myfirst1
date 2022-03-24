//
//  ViewController.swift
//  StudentApp
//
//  Created by Naguru Abdur,Rehaman on 3/24/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var sIdOutlet: UITextField!
    
    var studentFound = Student()

    
    var isStudent = false
    
    var studentArray = students
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func loginButtonAction(_ sender: Any) {
        
        //value of the textField
               let enteredID = sIdOutlet.text!
               
               //Loop the array to find the student
               for student in studentArray {
                   if enteredID == student.sid{
                       //student found and store the student in a global variable.
                       studentFound = student
                       //boolean flag as true,since we found a student.
                       isStudent = true
                       
    }
    
    }
}

        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                let transition = segue.identifier
                if transition == "studentSegue"{
                    //Create a destination of type studentInfoViewController
                    let destination = segue.destination as! StudentInfoViewController
                    
                    //if student is exists in the array, we will assign the studentObj in the destination with "studentFound"
                    if isStudent {
                        destination.studentObj = studentFound
                    }else{
                        //if the given sid is not in the array, then the student is a guest!!
                        //we set the boolean in the destination as true!!
                        destination.guestUser = true
                    }
                    
                    
                }
            }
            
        }

