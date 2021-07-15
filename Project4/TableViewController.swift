//
//  TableViewController.swift
//  Project4
//
//  Created by user on 15/07/21.
//

import UIKit

class TableViewController: UITableViewController {
    
    //MARK: - Attributes
    
    var websiteArray = ["www.apple.com", "www.hackingwithswift.com"]

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Project 4 - Simple Browser"
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return websiteArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = websiteArray[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let vc = storyboard?.instantiateViewController(identifier: "WebSite") as? ViewController {
            vc.passedWebsite = websiteArray[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
    }

}
