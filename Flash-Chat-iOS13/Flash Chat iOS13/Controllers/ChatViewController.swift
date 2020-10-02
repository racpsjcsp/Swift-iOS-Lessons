//
//  ChatViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import Firebase

class ChatViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var messageTextfield: UITextField!
    
    var messages: [Message] = [
        Message(sender: "abc@123.com", body: "Oi..."),
        Message(sender: "xyz@456.com", body: "E ai"),
        Message(sender: "abc@123.com", body: "Como vai?")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self //extension
        tableView.delegate = self   //extension
        
        //seta o titulo do navigation bar
        title = K.appName
        
        //esconde o backbutton do navigation bar
        navigationItem.hidesBackButton = true
    }
    
    @IBAction func sendPressed(_ sender: UIButton) {
    }
    
    @IBAction func logOutPressed(_ sender: UIBarButtonItem) {
        do {
            try Auth.auth().signOut()
            
            //logout e volta para a tela inicial do app (root)
            navigationController?.popToRootViewController(animated: true)            
            
        } catch let signOutError as NSError {
            print ("Error signing out: %@", signOutError)
        }
          
    }
    
}

//responsável por popular o tableView
extension ChatViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.cellIdentifier, for: indexPath)
        cell.textLabel?.text = messages[indexPath.row].body
        return cell
    }
}

extension ChatViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}
