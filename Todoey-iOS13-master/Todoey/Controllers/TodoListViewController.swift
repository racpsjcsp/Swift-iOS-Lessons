//
//  ViewController.swift
//  Todoey
//
//  Created by Philipp Muellauer on 02/12/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {
    
    var itemArray = [Item]()
    
    //persistencia de dados
    let defaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //carregando o app utilizando os dados salvos em UserDefaults (variavel defaults)
//        if let item = defaults.array(forKey: "TodoListArray") as? [String] {
//            itemArray = item
//        }
        
        let newItem = Item()
        newItem.title = "Find Mike"
        itemArray.append(newItem)
        
        let newItem2 = Item()
        newItem2.title = "Buying things"
        itemArray.append(newItem2)
        
        let newItem3 = Item()
        newItem3.title = "Sleep"
        itemArray.append(newItem3)
        
    }

    
    //MARK: - Tableview Datasource Methods
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        let item = itemArray[indexPath.row]
        
        cell.textLabel?.text = item.title
                
        cell.accessoryType = item.done ? .checkmark : .none
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }

    
    //MARK: - Tableview Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = itemArray[indexPath.row]
        
        item.done = !item.done
//        item.done == true ? false : true
        
        tableView.reloadData()        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    //MARK: - Add new items
    
    
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        var textField = UITextField()
        let alert = UIAlertController(title: "Adicione novo item", message: "", preferredStyle: .alert)
        let action = UIAlertAction(title: "Adicionar item", style: .default) { (action) in
            //o que vai acontecer qdo o usuario clicar no add button alert
            if textField.text != "" {
                let newItem = Item()
                newItem.title = textField.text!
                self.itemArray.append(newItem)
                
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

