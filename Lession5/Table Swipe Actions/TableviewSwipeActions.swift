//
//  TableviewSwipeActions.swift
//  Lession5
//
//  Created by le.huu.dung on 8/29/18.
//  Copyright © 2018 le.huu.dung. All rights reserved.
//

import UIKit

class TableviewSwipeActions: UIViewController {
    var content: [String] = ["maytinh", "dien thoai", "ipad","iphone"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}

extension TableviewSwipeActions: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return content.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = content[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deteleAction = UIContextualAction.init(style: .destructive, title: "Add") { (action, view, handler) in
            print("Add Action Tapped")
        }
        deteleAction.backgroundColor = UIColor.green
        let configuration = UISwipeActionsConfiguration(actions: [deteleAction])
        return configuration
    }
}
