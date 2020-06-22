//
//  ViewController.swift
//  TableViewExperiements
//
//  Created by Mikhail Bhuta on 5/23/20.
//  Copyright © 2020 Dirtcube Interactive. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    static let profileViewModel = ProfileViewModel()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.registerReusableCells()
        self.tableView.dataSource = ViewController.profileViewModel
        
    }

    func registerReusableCells() {
        let bundle = Bundle.main
//        tableView.register(NameAndPictureCell.self, forCellReuseIdentifier: NameAndPictureCell.reuseID)
//        tableView.register(AboutCell.self, forCellReuseIdentifier: AboutCell.reuseID)
//        tableView.register(EmailCell.self, forCellReuseIdentifier: EmailCell.reuseID)
//        tableView.register(FriendCell.self, forCellReuseIdentifier: FriendCell.reuseID)
//        tableView.register(AttributeCell.self, forCellReuseIdentifier: AttributeCell.reuseID)
        
        tableView.register(UINib(nibName: NameAndPictureCell.reuseID, bundle: bundle),
                           forCellReuseIdentifier: NameAndPictureCell.reuseID)
        tableView.register(UINib(nibName: AboutCell.reuseID, bundle: bundle),
                           forCellReuseIdentifier: AboutCell.reuseID)
        tableView.register(UINib(nibName: EmailCell.reuseID, bundle: bundle),
                           forCellReuseIdentifier: EmailCell.reuseID)
        tableView.register(UINib(nibName: FriendCell.reuseID, bundle: bundle),
                           forCellReuseIdentifier: FriendCell.reuseID)
        tableView.register(UINib(nibName: AttributeCell.reuseID, bundle: bundle),
                           forCellReuseIdentifier: AttributeCell.reuseID)
    }

}

