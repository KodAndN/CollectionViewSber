//
//  ButtonCell.swift
//  Sber
//
//  Created by Андрей Кодочигов on 27.12.2022.
//

import UIKit

class ButtonCell: UICollectionViewCell {
    //MARK: - IBOutlets
    @IBOutlet private var topButton: UIButton!
    @IBOutlet private var bottonButton: UIButton!

    //MARK: - Public
    func configure(topImage: UIImage?, buttonImage: UIImage?) {
        topButton.setImage(topImage, for: .normal)
        bottonButton.setImage(buttonImage, for: .normal)
    }
    
    //MARK: - View lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        topButton.layer.cornerRadius = 16
        bottonButton.layer.cornerRadius = 16
    }
}
