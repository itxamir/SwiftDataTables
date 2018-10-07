//
//  DataCell.swift
//  SwiftDataTables
//
//  Created by Pavan Kataria on 22/02/2017.
//  Copyright © 2017 Pavan Kataria. All rights reserved.
//

import UIKit

class DataCell: UICollectionViewCell {

    //MARK: - Properties
    @IBOutlet var dataLabel: UILabel!
    
    //MARK: - Lifecycle
    func setup(_ viewModel: DataCellViewModel) {
        self.dataLabel.font = UIFont(name: "BurbankBigCondensed-Medium", size: 22.0)
        self.dataLabel.textColor = UIColor.white
        self.dataLabel.text = viewModel.data.stringRepresentation
//        self.contentView.backgroundColor = .white
    }
}
