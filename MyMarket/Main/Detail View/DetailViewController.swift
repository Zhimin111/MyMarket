//
//  DetailViewController.swift
//  MyMarket
//
//  Created by 张岩 on 2020/8/15.
//  Copyright © 2020 Apple Inc. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    
    @IBOutlet weak var imageLabel: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    @IBOutlet weak var forthLabel: UILabel!
    @IBOutlet weak var fifthLabel: UILabel!
    
    
    var viewModel = DetailViewModel()

    override func viewDidLoad() {
           super.viewDidLoad()
            configure()
          
       }
    private func configure() {
        
        title = viewModel.product?.title
        
        imageLabel.image = UIImage(named: viewModel.getImageName() ?? "banana")
        
        titleLabel.text = viewModel.getTitle()
        firstLabel.text = viewModel.getFirst()
        secondLabel.text = viewModel.getSecond()
        thirdLabel.text = viewModel.getThird()
        forthLabel.text = viewModel.getForth()
        fifthLabel.text = viewModel.getFifth()
        
    }
    
}
