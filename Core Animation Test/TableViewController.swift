//
//  TableViewController.swift
//  Core Animation Test
//
//  Created by Süeda Tufan on 11.11.26.
//

// Source: jrasmusson on 2021-01-17.


import UIKit

class TableViewController: UITableViewController {
    
    struct TableItem {
        let title: String
        let viewController: UIViewController
        
        init(_ title: String, _ viewController: UIViewController) {
            self.title = title
            self.viewController = viewController
        }
    }
    
    let viewControllers = [
        TableItem("Circles", AnimationViewController()),
        TableItem("Example 2", AnimationViewController()),
        TableItem("Example 3", AnimationViewController()),
        
    ]
    
    let cellId = "cellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews() {
        navigationItem.title = "Core Animation Intro"
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        
        cell.textLabel?.text = viewControllers[indexPath.row].title
        cell.accessoryType = UITableViewCell.AccessoryType.disclosureIndicator
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewControllers.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigationController?.pushViewController(viewControllers[indexPath.row].viewController, animated: true)
    }
}
