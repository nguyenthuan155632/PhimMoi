//
//  ContainerTableViewCell.swift
//  PhimMoi
//
//  Created by vensera on 6/25/17.
//  Copyright © 2017 vensera. All rights reserved.
//

import UIKit

class ContainerTableViewCell: UITableViewCell {

    @IBOutlet weak var imgCol1: UIImageView!
    
    @IBOutlet weak var imgCol2: UIImageView!
    
    @IBOutlet weak var viewCol1: UIView!
    
    @IBOutlet weak var viewCol2: UIView!
    
    @IBOutlet weak var viewCover1: UIView!
    
    @IBOutlet weak var viewCover2: UIView!
    
    @IBOutlet weak var imgFilmQuality1: UIImageView!
    
    @IBOutlet weak var imgFilmQuality2: UIImageView!
    
    @IBOutlet weak var lblFilmQuality1: UILabel!
    
    @IBOutlet weak var lblFilmQuality2: UILabel!
    
    @IBOutlet weak var lblTitleVi1: UILabel!
    
    @IBOutlet weak var lblTitleVi2: UILabel!
    
    @IBOutlet weak var lblTitleEn1: UILabel!
    
    @IBOutlet weak var lblTitleEn2: UILabel!
    
    @IBOutlet weak var lblDuration1: UILabel!
    
    @IBOutlet weak var lblDuration2: UILabel!
    
    @IBOutlet weak var lblSource1: UILabel!
    
    @IBOutlet weak var lblSource2: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
