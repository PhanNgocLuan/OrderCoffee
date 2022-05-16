//
//  CoffeeDetailViewController.swift
//  OrderCoffee
//
//  Created by Phan Ngoc Luan on 5/16/22.
//  Copyright © 2022 Phan Ngoc Luan. All rights reserved.
//

import UIKit

class CoffeeDetailViewController: UIViewController {


//ánh xạ các component của detailScreen
    @IBOutlet weak var CfImageView: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var desclbl: UILabel!
    var coffee: Coffee!
    override func viewDidLoad() {
        super.viewDidLoad()
        //gọi hàm
        populateView()

        // Do any additional setup after loading the view.
    }
    
    //hàm gán dữ liệu dish từ các collectionViewCell dược click cho các outlet của detail screen
    private func populateView(){
        CfImageView.kf.setImage(with: coffee.image?.asUrl)
        titleLbl.text = coffee.name
        desclbl.text = coffee.desc
    }

   
    @IBAction func placeOrderBtnClicked(_ sender: UIButton) {
    }
}
