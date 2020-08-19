//
//  ViewController.swift
//  Market
//
//  Created by 张岩 on 2020/8/12.
//  Copyright © 2020 Apple Inc. All rights reserved.
//

import UIKit

class MainTableViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
  
    
    var viewModel: TableViewModel?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        viewModel = TableViewModel()
        
    }


}

extension MainTableViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let viewModel = viewModel else{
            return 0
        }
        return viewModel.getNumberOfRows()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Productcell") as? MainTableViewCell else{
            return UITableViewCell()
        }
        let product = viewModel?.productAt(indexPath: indexPath)
        cell.configure(product: product)
        return cell
    }

    
    
}

extension MainTableViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
  
        
    
    
}
