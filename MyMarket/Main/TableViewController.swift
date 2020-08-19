//
//  ViewController.swift
//  MyMarket
//
//  Created by 张岩 on 2020/8/15.
//  Copyright © 2020 Apple Inc. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var priceTxt: UITextField!
    @IBOutlet weak var numTxt: UITextField!
    
    
    
    var viewModel: TableViewModel?
    var selectedProduct : Product?

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        viewModel = TableViewModel()
        title = "Products"
        
        /*add calculate function
        let calcBtn = UIButton (frame: CGRect(x: 0, y: 0,width: view.frame.size.width,height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(TableViewController.calculate), for: .touchUpInside)
        priceLabel.inputAccessoryView = calcBtn*/
        
    }
    
    
    
    
   /* @objc func calculate(){
        
    }*/
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailViewController = segue.destination as? DetailViewController else {
            return
        }
        detailViewController.viewModel.product = selectedProduct
    }


}

extension TableViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let viewModel = viewModel else{
            return 0
        }
        return viewModel.getNumberOfRows()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "productcell") as? TableViewCell else{
            return UITableViewCell()
        }
        let product = viewModel?.productAt(indexPath: indexPath)
        cell.configure(product: product)
        return cell
    }

    
    
}

extension TableViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedProduct = viewModel?.productAt(indexPath: indexPath)
        performSegue(withIdentifier: "detailSegue", sender: nil)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
  
        
    
    
}
