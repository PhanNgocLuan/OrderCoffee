//
//  CardView.swift
//  OrderCoffee
//
//  Created by Phan Ngoc Luan on 5/16/22.
//  Copyright © 2022 Phan Ngoc Luan. All rights reserved.
//

import UIKit
//hàm thêm shadow + chỉnh sửa ui cho các collectionViewcell
class CardView: UIView{
    override init(frame: CGRect) {
        super .init(frame: frame)
    }
    //khởi tạo
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initialSetuo()
    }
    //thiết lập các thuộc tính bo góc + đổ bóng
    private func initialSetuo(){
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = .zero
        layer.cornerRadius = 10
        layer.shadowOpacity = 0.1
        cornerRadius = 10
    }
}
