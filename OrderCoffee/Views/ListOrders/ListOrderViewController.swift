//
//  ListOrderViewController.swift
//  OrderCoffee
//
//  Created by Phan Ngoc Luan on 5/16/22.
//  Copyright © 2022 Phan Ngoc Luan. All rights reserved.
//

import UIKit

class ListOrderViewController: UIViewController {

    //outlet của tableview
    @IBOutlet weak var tableView: UITableView!
    //tạo mảng chứa dữ liệu đơn hàng kiểu Order
    var orders: [Order] = [
        .init(id: "id1", coffee:
             .init(id:"id01", name:"name1", desc:"ahgashfa", image:"https://upload.wikimedia.org/wikipedia/commons/b/b6/Image_created_with_a_mobile_phone.png")),
        .init(id: "id2", coffee:
            .init(id:"id01", name:"name1", desc:"ahgashfa", image:"https://upload.wikimedia.org/wikipedia/commons/b/b6/Image_created_with_a_mobile_phone.png")),
        .init(id: "id3", coffee:
            .init(id:"id01", name:"name1", desc:"ahgashfa", image:"https://upload.wikimedia.org/wikipedia/commons/b/b6/Image_created_with_a_mobile_phone.png")),
        .init(id: "id4", coffee:
            .init(id:"id01", name:"name1", desc:"ahgashfa", image:"https://upload.wikimedia.org/wikipedia/commons/b/b6/Image_created_with_a_mobile_phone.png"))
    ]
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Orders"
        registerCells()
    
    }
    private func registerCells(){
        tableView.register(UINib(nibName: CoffeeListTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: CoffeeListTableViewCell.identifier)
    }

}

//extension hiển thị các collectionViewCell và dữ liệu đơn hàng
extension ListOrderViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return orders.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CoffeeListTableViewCell.identifier) as! CoffeeListTableViewCell
        cell.setup(order: orders[indexPath.row])
        return cell
    }
    
    //xử lý khi click vào coffee => dẫn đến trang chi tiết của coffee đó
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = CoffeeDetailViewController.instantiateDetail()
        controller.coffee = orders[indexPath.row].coffee
        navigationController?.pushViewController(controller, animated: true)
    }
}
