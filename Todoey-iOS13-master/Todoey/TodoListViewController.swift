//
//  ViewController.swift
//  Todoey
//
//  Created by Philipp Muellauer on 02/12/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {
    
    var itemArray = ["Estudar", "Trabalhar", "Comer", "Dormir"]
    
    //persistencia de dados
    let defaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //carregando o app utilizando os dados salvos em UserDefaults (variavel defaults)
        if let item = defaults.array(forKey: "TodoListArray") as? [String] {
            itemArray = item
        }
    }

    
    //MARK: - Tableview Datasource Methods
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }

    
    //MARK: - Tableview Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //        print(itemArray[indexPath.row])
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
            
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    //MARK: - Add new items
    
    
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        var textField = UITextField()
        let alert = UIAlertController(title: "Adicione novo item", message: "", preferredStyle: .alert)
        let action = UIAlertAction(title: "Adicionar item", style: .default) { (action) in
            //o que vai acontecer qdo o usuario clicar no add button alert
            if textField.text != "" {
                self.itemArray.append(textField.text!)
                
                //userDefaults é salvo no arquivo plist
                self.defaults.set(self.itemArray, forKey: "TodoListArray")
                self.tableView.reloadData()
                
            }
        }
        
        alert.addTextField { (alertTextField) in
            alertTextField.placeholder = "Novo item"
            textField = alertTextField
        }
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    
}

