//
//  DetailViewController.swift
//  PrintTableRowIndices
//
//  Created by Louise Lehman on 11/26/17.
//  Copyright © 2017 Louise Lehman. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var detailView = UIView()
    var numberLabel = UILabel()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(detailView)
        detailView.addSubview(numberLabel)
        detailView.backgroundColor = UIColor.white
        numberLabel.textAlignment = NSTextAlignment.center
        numberLabel.font = numberLabel.font.withSize(64)
        title = "DetailView"
        detailView.translatesAutoresizingMaskIntoConstraints = false
        numberLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            detailView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            detailView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            detailView.topAnchor.constraint(equalTo: self.view.topAnchor),
            detailView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
            ])
        
        // set large font size and minimum font size to get it to auto size
        NSLayoutConstraint.activate([
            numberLabel.trailingAnchor.constraint(equalTo: detailView.trailingAnchor),
            numberLabel.leadingAnchor.constraint(equalTo: detailView.leadingAnchor),
            numberLabel.topAnchor.constraint(equalTo: detailView.topAnchor),
            numberLabel.bottomAnchor.constraint(equalTo: detailView.bottomAnchor)
            ])
    }
}
