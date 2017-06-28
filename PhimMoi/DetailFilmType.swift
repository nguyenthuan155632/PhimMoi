//
//  DetailFilmType.swift
//  PhimMoi
//
//  Created by vensera on 6/25/17.
//  Copyright © 2017 vensera. All rights reserved.
//

import UIKit

class DetailFilmType: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var colView: UICollectionView!
    
    @IBOutlet weak var lblDetailFilmTypeTitle: UILabel!
    
    var receivedData:String = ""
    
    var films:Array<Array<String>> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblDetailFilmTypeTitle.text = receivedData.uppercased()
        
        colView.dataSource = self
        colView.delegate = self
        
        // Get Films
        let instanceFilms = Films(url: "xxx")
        films = instanceFilms.filmList()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return films.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "detailFilmTypeCell", for: indexPath as IndexPath) as! DetailFilmTypeCell
        
        cell.layer.masksToBounds = true
        cell.layer.cornerRadius = 10
        
        cell.imgFilm.layer.masksToBounds = true
        cell.imgFilm.layer.cornerRadius = 10
        
        cell.lblFilmQuality.text = films[indexPath.row][5]
        
        cell.lblTitleVi.text = films[indexPath.row][0]
        
        cell.lblTitleEn.text = films[indexPath.row][1]
        
        cell.lblDuration.text = films[indexPath.row][2]
        
        cell.lblSource.text = "Nguồn: Phim Mới"
            
        cell.imgFilm.image = UIImage(named: films[indexPath.row][4])
        
        cell.imgFilm.restorationIdentifier = String(indexPath.row)
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(DetailFilmType.tapImage))
        cell.imgFilm.addGestureRecognizer(tap)
        
        return cell
    }
    
    func tapImage(_ sender:UITapGestureRecognizer) {
        let restorationId = Int(sender.view!.restorationIdentifier!)
        print(restorationId!)
        films.append(films[restorationId!])
        colView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (collectionView.bounds.width / 2) - 15
        return CGSize(width: width, height: 280)
    }

}
