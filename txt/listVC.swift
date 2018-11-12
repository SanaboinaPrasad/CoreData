//
//  listVC.swift
//  txt
//
//  Created by Sriram Prasad on 12/11/18.
//  Copyright © 2018 FullStackNet. All rights reserved.
//

import UIKit
class listVc: UITableViewController {
    let cellId = "cell"
    var arrdata = [Person]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(listCell.self, forCellReuseIdentifier: cellId)
       arrdata =  Databasehandler.shared.getData()
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrdata.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! listCell
        cell.textLabel?.text = arrdata[indexPath.row].name
        cell.detailTextLabel?.text = arrdata[indexPath.row].city
        return cell
    }
}


class listCell: UITableViewCell {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
