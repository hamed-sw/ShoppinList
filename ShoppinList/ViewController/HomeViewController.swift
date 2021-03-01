//
//  HomeViewController.swift
//  ShoppinList
//
//  Created by Hamed Amiry on 01.03.2021.
//

import UIKit

class HomeViewController: UIViewController {

    // Outlet
    @IBOutlet weak var tabelview: UITableView!
    
    
    //Variable
    var arr = ["watch2","w7","w8"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabelview.delegate = self
        tabelview.dataSource = self
        registerCell()
    }
    
    private func registerCell() {
        tabelview.register(UINib(nibName: IdentifierCell.HomeTableViewCell, bundle: nil), forCellReuseIdentifier: IdentifierCell.HomeTableViewCell)
    }

}

// MARK:

extension HomeViewController: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var newCell = HomeTableViewCell()
        if let cell = tableView.dequeueReusableCell(withIdentifier: IdentifierCell.HomeTableViewCell) as? HomeTableViewCell {
            cell.productImage.image = UIImage(named: arr[indexPath.row])
            
            newCell = cell
        }
        return newCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    
    
}
