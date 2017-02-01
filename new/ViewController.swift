//
//  ViewController.swift
//  new
//
//  Created by Arun kumar Sah on 1/27/17.
//  Copyright © 2017 Arun kumar Sah. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {

    
    var collView: UICollectionView?
    var name = [String]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for i in 1...100{
            name.append("cute girl\(i)")
        }
        
        
        
        let flowLayout:UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        
        collView = UICollectionView(frame: view.frame, collectionViewLayout: flowLayout)
        collView?.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
        collView?.delegate = self
        collView?.dataSource = self
        collView?.backgroundColor = .blue
        self.view.addSubview(collView!)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension ViewController{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return 50
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath as IndexPath) as! CustomCollectionViewCell
        
        cell.textLabel.text = name[indexPath.row]
        cell.textLabel.textColor = .white
        cell.imageView.image = UIImage(named: "cirulargirl")
        return cell
    }
    
}

extension ViewController : UICollectionViewDelegateFlowLayout, detailsViewControllerDelegate{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        
        if (indexPath.row%2 == 0){
        return CGSize(width: 100, height: 100)
        }else
        {
            return CGSize(width: 200, height: 200)
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets
    {
        
        //return UIEdgeInsetsMake(20, 10, 10, 10) //top,left,bottom,right
        return UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        var detail = detailsViewController()
        detail.delegate = self
        
        print(name[indexPath.row])
    
    }
    func getdetail()-> String {
        return "dhsfkjhaskldhfkjhakjsdhf"
    }
}
