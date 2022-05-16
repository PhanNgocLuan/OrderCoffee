//
//  CoffeeListTableViewCell.swift
//  OrderCoffee
//
//  Created by Phan Ngoc Luan on 5/16/22.
//  Copyright © 2022 Phan Ngoc Luan. All rights reserved.
//

import UIKit

class CoffeeListTableViewCell: UITableViewCell {
    //tạo định danh cho danh sách cf thuộc danh mục cf
    static let identifier = String(describing: CoffeeListTableViewCell.self)
    @IBOutlet weak var CfImageView: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var descLbl: UILabel!
    //gán dữ liệu cf cho các component thuộc danh sách cf theo danh mục
    func setup(coffee: Coffee){
        CfImageView.kf.setImage(with: coffee.image?.asUrl)
        titleLbl.text = coffee.name
        descLbl.text = coffee.desc
    }
    //gán dữ liệu cf và tên người đặt cho các component thuộc đơn hàng
    func setup(order: Order){
        CfImageView.kf.setImage(with: order.coffee?.image?.asUrl)
        titleLbl.text = order.coffee?.name
        descLbl.text = order.coffee?.desc
    }
}
