//
//  DataHeaderFooter.swift
//  SwiftDataTables
//
//  Created by Pavan Kataria on 22/02/2017.
//  Copyright © 2017 Pavan Kataria. All rights reserved.
//

import UIKit

class DataHeaderFooter: UICollectionReusableView {

    //MARK: - Properties
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var sortingImageView: UIImageView!

    //MARK: - Events
    var didTapEvent: (() -> Void)? = nil

    //MARK: - Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        let tapGesture = UITapGestureRecognizer.init(target: self, action: #selector(DataHeaderFooter.didTapView))
        self.addGestureRecognizer(tapGesture)
    }
    
    func setupView(viewModel: DataHeaderFooterViewModel) {
        self.titleLabel.text = viewModel.data
        self.titleLabel.textColor = UIColor.white
        self.sortingImageView.image = viewModel.imageForSortingElement
        self.backgroundColor = UIColor(red:0.11, green:0.20, blue:0.73, alpha:1.00)
    }
    
    @objc func didTapView(){
        self.didTapEvent?()
    }
}
