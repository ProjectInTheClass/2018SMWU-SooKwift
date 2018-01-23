//
//  CategoryViewController.swift
//  Sookwift
//
//  Created by Abraham Park on 1/23/18.
//  Copyright © 2018 ebadaq.com. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController, UITableViewDataSource, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var tableView:UITableView!
    
    let arrayCategory = ["커피","티","탄산", "맥주", "소주", "양주"]
    var arrayDrink:[Drink] = []
    
    let modelDrink = DrinkModel()
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrayDrink.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")!
        
        let drink = self.arrayDrink[indexPath.row]
        
        cell.textLabel?.text = drink.name
        cell.detailTextLabel?.text = drink.type
        
        return cell
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.arrayCategory.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        
        let label = cell.viewWithTag(1) as! UILabel
        
        label.text = self.arrayCategory[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.title = self.arrayCategory[indexPath.row]
        
        print(self.arrayCategory[indexPath.row])
        
        self.arrayDrink = self.modelDrink.filteredDrink(type: self.arrayCategory[indexPath.row])
        self.tableView.reloadData()
    }
}




















