//
//  UIViewExtension.swift
//  OrderCoffee
//
//  Created by Phan Ngoc Luan on 5/16/22.
//  Copyright © 2022 Phan Ngoc Luan. All rights reserved.
//

import UIKit
extension UIView{
    //khởi tạo thuộc tính cornerRadius cho toàn bộ component
    @IBInspectable var cornerRadius: CGFloat{
        get {return cornerRadius }
        set {
            self.layer.cornerRadius = newValue
        }
    }
}

