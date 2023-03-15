//
//  ViewController.swift
//  WhatsAppTableView
//
//  Created by Reuben Simphiwe Kuse on 2023/03/14.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    lazy var userProfileInfoTableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped) 
        tableView.dataSource = self
        tableView.delegate = self
        tableView.isScrollEnabled = true
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupTableViewConstraints()
        registerCells()
    }
    
    func setupTableViewConstraints() {
        view.addSubview(userProfileInfoTableView)
        
        userProfileInfoTableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        userProfileInfoTableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        userProfileInfoTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        userProfileInfoTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
    
    func registerCells() {
        userProfileInfoTableView.register(UserProfileInfoCell.self,forCellReuseIdentifier: "UserProfileInfoCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let userCell = tableView.dequeueReusableCell(withIdentifier: "UserProfileInfoCell", for: indexPath) as! UserProfileInfoCell
        return userCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(65)
    }
    
}
