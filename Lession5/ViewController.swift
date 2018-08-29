//
//  ViewController.swift
//  Lession5
//
//  Created by le.huu.dung on 8/29/18.
//  Copyright © 2018 le.huu.dung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func navigationMovie(_ sender: Any) {
        let button = sender as! UIButton
        
        switch button.tag {
        case 101:
            let mulSectionTableView = TableviewMultipleSections.init(nibName: "TableviewMultipleSections", bundle: nil)
            self.navigationController?.pushViewController(mulSectionTableView, animated: true)
        case 102:
            let deleteTableView = TableviewDeletingRows.init(nibName: "TableviewDeletingRows", bundle: nil)
            self.navigationController?.pushViewController(deleteTableView, animated: true)
        case 103:
            let movieTableView = TableviewMovingRows.init(nibName: "TableviewMovingRows", bundle: nil)
            self.navigationController?.pushViewController(movieTableView, animated: true)
        case 104:
            let swipeTableView = TableviewSwipeActions.init(nibName: "TableviewSwipeActions", bundle: nil)
            self.navigationController?.pushViewController(swipeTableView, animated: true)
        default:
            break
        }
    }
}

