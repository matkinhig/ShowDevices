//
//  ViewController.swift
//  ShowDevices
//
//  Created by Nguyễn Lực on 7/19/19.
//  Copyright © 2019 Nguyễn Lực. All rights reserved.
//

import UIKit

class MainController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    
    
    var categories = ["iPhone","iPad","Macbook"]
    var images = ["iPhone.png","iPad.png","Macbook.png"]
    
    //uielement
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //MARK:
    
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //mark: viet tiep cac ham cua uicollectionview
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "viewCell", for: indexPath) as! CollectionViewCell
        cell.imageView.image = UIImage(named: images[indexPath.row])
        cell.txtTenSP.text = categories[indexPath.row]
        return cell
    }

}

