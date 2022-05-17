//
//  UIViewControllerExtension.swift
//  OrderCoffee
//
//  Created by Phan Ngoc Luan on 5/16/22.
//  Copyright © 2022 Phan Ngoc Luan. All rights reserved.
//

import UIKit
//extension khởi tạo định danh cho các View controller + dữ liệu 
extension UIViewController{
    static var identifier: String {
        return String(describing: self)
    }
    static func instantiateDetail() -> CoffeeDetailViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: identifier) as! CoffeeDetailViewController
    }
    static func instantiateListCoffee() -> ListCoffeeViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        return storyboard.instantiateViewController(withIdentifier: identifier) as! ListCoffeeViewController
    }
}
