//
//  TableviewMovingRows.swift
//  Lession5
//
//  Created by le.huu.dung on 8/29/18.
//  Copyright © 2018 le.huu.dung. All rights reserved.
//

import UIKit

class TableviewMovingRows: UIViewController {
    var content: [String] = ["maytinh", "dien thoai", "ipad","iphone"]
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.isEditing = true
    }
    
    
}

extension TableviewMovingRows: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return content.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = content[indexPath.row]
        return cell
    }
    
   
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        var rowMove = content[sourceIndexPath.row]
        content.remove(at: sourceIndexPath.row)
        content.insert(rowMove, at: destinationIndexPath.row)
    }
    
    
}
