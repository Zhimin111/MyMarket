//
//  TableViewCell.swift
//  Market
//
//  Created by 张岩 on 2020/8/12.
//  Copyright © 2020 Apple Inc. All rights reserved.
//

import UIKit

class MainTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    var viewModel: TableViewCellViewModel?
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        viewModel = TableViewCellViewModel()
    }

    func configure(product: Product?) {
        guard let product = product else{
            return
        }
        titleLabel.text = viewModel?.getTitle(product: product)
        priceLabel.text = product.price
        detailLabel.text = product.detail
    }

}
