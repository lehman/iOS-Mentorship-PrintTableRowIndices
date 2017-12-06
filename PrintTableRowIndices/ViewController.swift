//
//  ViewController.swift
//  PrintTableRowIndices
//
//  Created by Louise Lehman on 11/3/17.
//  Copyright © 2017 Louise Lehman. All rights reserved.
//

import UIKit

class IndexViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // MARK: Properties
    var indexTableView = UITableView()
    var detailViewController = DetailViewController()
    let cellIdentifier = "reuseIdentifier"
    //var numIndices: Int = 10
    
    // MARK: UIViewController
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
    }
    
    // MARK: UITableViewDataSource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
        //return numIndices
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        /*
        let cellIdentifier = "IndexTableViewCell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? IndexTableViewCell else {
            fatalError("The dequeued cell is not an instance of IndexTableViewCell")
        }
        cell.indexLabel.text = String(indexPath.row)
        */
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        cell.textLabel?.text = String(indexPath.row)
        cell.textLabel?.textAlignment = NSTextAlignment.center
        return cell
    }
    
    // MARK: UITableViewDelegate
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print("Index Path: " + String(indexPath.row))
        detailViewController.numberLabel.text = String(indexPath.row)
        present(detailViewController, animated: true, completion: nil)
    }
    
    // MARK: Basic Functionality
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //indexTableView.frame = self.view.bounds
        self.view.addSubview(indexTableView)
        indexTableView.delegate = self
        indexTableView.dataSource = self
        indexTableView.rowHeight = 90
        indexTableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            indexTableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            indexTableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            indexTableView.topAnchor.constraint(equalTo: self.view.topAnchor),
            indexTableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
            ])
        
        indexTableView.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

