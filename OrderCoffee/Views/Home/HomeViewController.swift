//
//  ViewController.swift
//  OrderCoffee
//
//  Created by Phan Ngoc Luan on 5/15/22.
//  Copyright © 2022 Phan Ngoc Luan. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    //ánh xạ các collectionView ở HomeScreen
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    @IBOutlet weak var popularCollectionView: UICollectionView!
    //tạo biến danh mục (mảng kiểu danh mục)
    var categories: [CoffeeCategory] = [
        .init(id:"id1",name:"cafe vn",image:"https://upload.wikimedia.org/wikipedia/commons/b/b6/Image_created_with_a_mobile_phone.png"),
        .init(id:"id1",name:"cafe vn",image:"https://upload.wikimedia.org/wikipedia/commons/b/b6/Image_created_with_a_mobile_phone.png"),
        .init(id:"id1",name:"cafe vn",image:"https://upload.wikimedia.org/wikipedia/commons/b/b6/Image_created_with_a_mobile_phone.png"),
        .init(id:"id1",name:"cafe vn",image:"https://upload.wikimedia.org/wikipedia/commons/b/b6/Image_created_with_a_mobile_phone.png"),
         .init(id:"id1",name:"cafe vn",image:"https://upload.wikimedia.org/wikipedia/commons/b/b6/Image_created_with_a_mobile_phone.png")
    ]
     //tạo mảng cf phổ biến kiểu Coffee
    var populars: [Coffee] = [
        .init(id:"id01", name:"abc", desc:"asdfreratrdgadfgdfgdhfgjsdkajsghdfjushfjkhsdjkfhsdjfhjdshfeuurshjfhdsjfhuweyrufydhjchjsheruyuwhfjdshfj", image:"https://upload.wikimedia.org/wikipedia/commons/b/b6/Image_created_with_a_mobile_phone.png"),
         .init(id:"id01", name:"name1", desc:"ahgashfa", image:"https://upload.wikimedia.org/wikipedia/commons/b/b6/Image_created_with_a_mobile_phone.png"),
          .init(id:"id01", name:"name1", desc:"ahgashfa", image:"https://upload.wikimedia.org/wikipedia/commons/b/b6/Image_created_with_a_mobile_phone.png"),
           .init(id:"id01", name:"name1", desc:"ahgashfa", image:"https://upload.wikimedia.org/wikipedia/commons/b/b6/Image_created_with_a_mobile_phone.png"),
            .init(id:"id01", name:"name1", desc:"ahgashfa", image:"https://upload.wikimedia.org/wikipedia/commons/b/b6/Image_created_with_a_mobile_phone.png")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCells()
        // Do any additional setup after loading the view.
    }
    
    //dăng kí cho các collection view cell trong các collectionview
    private func registerCells(){
        categoryCollectionView.register(UINib(nibName: CategoryCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
         popularCollectionView.register(UINib(nibName: PopularCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: PopularCollectionViewCell.identifier)
    }

}
extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case categoryCollectionView:
            return categories.count
        case popularCollectionView:
            return populars.count
        default: return 0
        }
        
    }
    
    
    //hiển thị các collectionViewCell cùng dữ liệu ra homeScreen
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch collectionView {
        case categoryCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as! CategoryCollectionViewCell
            cell.setup(category: categories[indexPath.row])
            return cell

        case popularCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PopularCollectionViewCell.identifier, for: indexPath) as! PopularCollectionViewCell
            cell.setup(coffee: populars[indexPath.row])
            return cell

        default: return UICollectionViewCell()
        }
    }
    
    
    
    //hàm xử lý khi click collectionViewCell bất kì
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == categoryCollectionView{
            let controller = ListCoffeeViewController.instantiateListCoffee()
            controller.category = categories[indexPath.row]
            navigationController?.pushViewController(controller, animated: true)
        }
        
        //xử lý nếu click collectionViewCell thuộc món cf phổ biến và đặc biệt => dẫn đến trang chi tiết
        else{
            let controller = CoffeeDetailViewController.instantiateDetail()
            navigationController?.pushViewController(controller, animated: true)
            if collectionView == popularCollectionView{
                controller.coffee = populars[indexPath.row]
            }
        }
    }
}
