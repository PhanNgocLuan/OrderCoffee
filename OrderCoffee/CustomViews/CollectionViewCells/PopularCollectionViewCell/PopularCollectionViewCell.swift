//
//  PopularCollectionViewCell.swift
//  OrderCoffee
//
//  Created by Phan Ngoc Luan on 5/16/22.
//  Copyright © 2022 Phan Ngoc Luan. All rights reserved.
//

import UIKit

class PopularCollectionViewCell: UICollectionViewCell {
    //định danh cho collection View Cell thuộc popular
    static let identifier = String(describing: PopularCollectionViewCell.self)
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var coffeeImageView: UIImageView!
    @IBOutlet weak var descLbl: UILabel!

    //gán dữ liệu danh mục món ăn cho các component
    func setup(coffee: Coffee){
        titleLbl.text = coffee.name
        coffeeImageView.kf.setImage(with: coffee.image?.asUrl)
        descLbl.text = coffee.desc
    }
}
