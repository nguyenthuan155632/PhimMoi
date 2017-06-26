//
//  FilmViewController.swift
//  PhimMoi
//
//  Created by vensera on 6/25/17.
//  Copyright © 2017 vensera. All rights reserved.
//

import UIKit

class FilmViewController: UIViewController {
    
    var data: String = ""

    @IBOutlet weak var lblUrlFilm: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblUrlFilm.text = data

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
