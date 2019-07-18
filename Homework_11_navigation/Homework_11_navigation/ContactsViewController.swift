//
//  ContactsViewController.swift
//  Homework_11_navigation
//
//  Created by Роман Родителев on 7/3/19.
//  Copyright © 2019 Роман Родителев. All rights reserved.
//

import UIKit

class ContactsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func unwindToMainScreen(_ segue: UIStoryboardSegue) {
        _ = segue.source
    }
    
    @IBAction func exitToContacts(_ segue: UIStoryboardSegue) {
        if segue.source is AdditionalViewController {
            print("Ok")
        } else if segue.source is ContactsViewController {
            print("Ok, it's contacts")
            performSegue(withIdentifier: "exitToContactsID", sender: nil)
        }
    }

}
