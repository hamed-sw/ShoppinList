//
//  FavoriteViewController.swift
//  ShoppinList
//
//  Created by Hamed Amiry on 01.03.2021.
//

import UIKit

class FavoriteViewController: UIViewController {

    // Outlet
    @IBOutlet weak var tableView: UITableView!
    
    // Variable
    var array = ["watch2"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        registerCell()
        
        
    }
    
    private func registerCell() {
        tableView.register(UINib(nibName: IdentifierCell.FavoriteTableViewCell, bundle: nil), forCellReuseIdentifier: IdentifierCell.FavoriteTableViewCell)
    }


}

// MARK:
extension FavoriteViewController: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var newCell = FavoriteTableViewCell()
        if let cell = tableView.dequeueReusableCell(withIdentifier: IdentifierCell.FavoriteTableViewCell) as? FavoriteTableViewCell{
            cell.favoriteProductImage.image = UIImage(named: array[indexPath.row])
            newCell = cell
        }
        return newCell
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    
}
