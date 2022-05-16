//
//  CategoryCollectionViewCell.swift
//  OrderCoffee
//
//  Created by Phan Ngoc Luan on 5/15/22.
//  Copyright © 2022 Phan Ngoc Luan. All rights reserved.
//

import UIKit
import Kingfisher

class CategoryCollectionViewCell: UICollectionViewCell {
    //định danh cho collection View Cell thuộc danh mục
    static let identifier = String(describing: CategoryCollectionViewCell.self)
    @IBOutlet weak var categoryImageView: UIImageView!
    
    @IBOutlet weak var categoryTitleLbl: UILabel!
     //gán dữ liệu danh mục món ăn cho các component
    func setup(category: CoffeeCategory) {
        categoryTitleLbl.text = category.name
        categoryImageView.kf.setImage(with: category.image?.asUrl)
    }
}
