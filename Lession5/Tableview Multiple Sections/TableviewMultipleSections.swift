//
//  TableviewMultipleSections.swift
//  Lession5
//
//  Created by le.huu.dung on 8/29/18.
//  Copyright © 2018 le.huu.dung. All rights reserved.
//

import UIKit

class TableviewMultipleSections: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var myDict: [String: [String]] = ["hoaqua": ["tao","xoa","nhan"],
                                      "hangxemay": ["honda", "toyota", "kia"],
                                      "maytinh": ["macbook", "laptop"]]
    var titleSection = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        for item in myDict.keys {
            print("item: \(item)")
            self.titleSection.append(item)
        }
        self.tableView.reloadData()
    }
}


extension TableviewMultipleSections: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return titleSection.count
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return myDict[titleSection[section]]!.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return titleSection[section]
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell.init()
        let myContent: [String] = myDict[titleSection[indexPath.section]]!
        cell.textLabel?.text = myContent[indexPath.row]
        return cell
    }
}
