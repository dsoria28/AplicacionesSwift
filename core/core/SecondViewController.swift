//
//  SecondViewController.swift
//  core
//
//  Created by Yogesh Patel on 26/04/18.
//  Copyright © 2018 Yogesh Patel. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    var arrData = [Books]()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        arrData = DatabaseHelper.shareInstance.getBooksData()
    }

}

extension SecondViewController : UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) 
        if cell != nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "Cell")
        }
        //cell.textLabel?.text = arrData[indexPath.row].name
        //cell.detailTextLabel?.text = arrData[indexPath.row].city
        return cell
    }
}
