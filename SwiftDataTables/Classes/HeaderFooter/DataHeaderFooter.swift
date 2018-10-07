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
        self.backgroundColor = #colorLiteral(red: 0.1123891547, green: 0.1973366141, blue: 0.4300764501, alpha: 1)
    }
    
    func setupView(viewModel: DataHeaderFooterViewModel) {
        self.titleLabel.textColor = UIColor.white
        self.titleLabel.text = viewModel.data
        self.sortingImageView.image = viewModel.imageForSortingElement
    }
    
    @objc func didTapView(){
        self.didTapEvent?()
    }
}
