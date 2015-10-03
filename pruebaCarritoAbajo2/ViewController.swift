//
//  ViewController.swift
//  pruebaCarritoAbajo2
//
//  Created by guitarrkurt on 13/07/15.
//  Copyright (c) 2015 guitarrkurt. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UICollectionViewDataSource {

    var arrayTable = ["1","2","3","4","5"]
    var arrayCollection = ["dog.jpg","dog.jpg","dog.jpg","dog.jpg"]
    
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    // MARK - table view data source
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return arrayTable.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        var cell = tableView.dequeueReusableCellWithIdentifier("myCell", forIndexPath: indexPath) as! MyTableViewCell
        
        cell.myImage.image = UIImage(named: "dog.jpg")
        cell.button.addTarget(self, action: "buttonAction:", forControlEvents: .TouchUpInside)
        
        return cell
    }
    func buttonAction(sender:UIButton){
        arrayCollection = ["cheese.png","dog.jpg","cheese.png","dog.jpg"]
        collectionView.reloadData()
        
    }
    //MARK - collection view data source
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return arrayCollection.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell{
        var cell = collectionView.dequeueReusableCellWithReuseIdentifier("cellColection", forIndexPath: indexPath) as! MyCollectionViewCell
        
        cell.imagen.image = UIImage(named: arrayCollection[indexPath.row])
        
        return cell
    }

}


