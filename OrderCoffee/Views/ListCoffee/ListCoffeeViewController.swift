//
//  ListCoffeeViewController.swift
//  OrderCoffee
//
//  Created by Phan Ngoc Luan on 5/16/22.
//  Copyright © 2022 Phan Ngoc Luan. All rights reserved.
//

import UIKit

class ListCoffeeViewController: UIViewController {
    
    //outlet tableview
    @IBOutlet weak var tableView: UITableView!
    //tạo biến category
    var category: CoffeeCategory!
    //tạo mảng chứa dữ liệu các loai cf
    var coffees: [Coffee] = [
        .init(id:"id01", name:"abc", desc:"asdfreratrdgadfgdfgdhfgjsdkajsghdfjushfjkhsdjkfhsdjfhjdshfeuurshjfhdsjfhuweyrufydhjchjsheruyuwhfjdshfj", image:"https://upload.wikimedia.org/wikipedia/commons/b/b6/Image_created_with_a_mobile_phone.png"),
        .init(id:"id01", name:"name1", desc:"ahgashfa", image:"https://upload.wikimedia.org/wikipedia/commons/b/b6/Image_created_with_a_mobile_phone.png"),
        .init(id:"id01", name:"name1", desc:"ahgashfa", image:"https://upload.wikimedia.org/wikipedia/commons/b/b6/Image_created_with_a_mobile_phone.png"),
        .init(id:"id01", name:"name1", desc:"ahgashfa", image:"https://upload.wikimedia.org/wikipedia/commons/b/b6/Image_created_with_a_mobile_phone.png"),
        .init(id:"id01", name:"name1", desc:"ahgashfa", image:"https://upload.wikimedia.org/wikipedia/commons/b/b6/Image_created_with_a_mobile_phone.png")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = category.name
        registerCells()
    }
    private func registerCells(){
        tableView.register(UINib(nibName: CoffeeListTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: CoffeeListTableViewCell.identifier)
    }

}


//extension hiển thị collectionViewCell và dữ liệu của listCoffee
extension ListCoffeeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return coffees.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CoffeeListTableViewCell.identifier) as! CoffeeListTableViewCell
        cell.setup(coffee : coffees[indexPath.row])
        return cell
        
    }
    
    //xử lý khi click vào cell dish bất kì => dẫn đến trang chi tiết của mon cf đó
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = CoffeeDetailViewController.instantiateDetail()
        controller.coffee = coffees[indexPath.row]
        navigationController?.pushViewController(controller, animated: true)
    }
}
