//
//  String.swift
//  OrderCoffee
//
//  Created by Phan Ngoc Luan on 5/15/22.
//  Copyright © 2022 Phan Ngoc Luan. All rights reserved.
//

import Foundation
import UIKit
//extension chuyển string thành 1 url (Kingfisher library)
extension String{
    var asUrl: URL?{
        return URL(string: self)
    }
}
