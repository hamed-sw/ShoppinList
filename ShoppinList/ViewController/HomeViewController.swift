//
//  HomeViewController.swift
//  ShoppinList
//
//  Created by Hamed Amiry on 01.03.2021.
//

import UIKit
import Kingfisher

class HomeViewController: UIViewController, HomeViewModelDelegae{
    func update() {
        DispatchQueue.main.async {
            self.tabelview.reloadData()

        }
    }
    
  
    
    

    // Outlet
    @IBOutlet weak var tabelview: UITableView!
    
    
    //Variable
    
    lazy var viewModel = HomeViewModel()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ddd()
        self.viewModel.delegate = self
        tabelview.delegate = self
        tabelview.dataSource = self
        registerCell()
    }
    func ddd() {
        viewModel.productSearch()
        
        
    }
    private func registerCell() {
        tabelview.register(UINib(nibName: IdentifierCell.HomeTableViewCell, bundle: nil), forCellReuseIdentifier: IdentifierCell.HomeTableViewCell)
    }

}

// MARK:

extension HomeViewController: UITableViewDelegate,UITableViewDataSource{
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.getTotalNumberOfProducts() ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var newCell = HomeTableViewCell()
        if let cell = tableView.dequeueReusableCell(withIdentifier: IdentifierCell.HomeTableViewCell) as? HomeTableViewCell {
            cell.productNameLabel.text = viewModel.getProuductName(at: indexPath.row)
            cell.productPriceLabel.text = String(viewModel.getPrductPrice(at: indexPath.row)!)
            if let urlString = viewModel.getProductImage(at: indexPath.row){
                cell.productImage.kf.setImage(with: URL(string: urlString))
            }
        
            newCell = cell
        }
        return newCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    
    
    
}
