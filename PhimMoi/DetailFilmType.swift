//
//  DetailFilmType.swift
//  PhimMoi
//
//  Created by vensera on 6/25/17.
//  Copyright © 2017 vensera. All rights reserved.
//

import UIKit

class DetailFilmType: UIViewController {
    
    
    @IBOutlet weak var lblFilmType: UILabel!
    
    var receivedData:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(receivedData)
        lblFilmType.text = receivedData
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
