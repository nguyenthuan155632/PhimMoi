//
//  ViewController.swift
//  PhimMoi
//
//  Created by vensera on 6/23/17.
//  Copyright © 2017 vensera. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableViewMenu: UITableView!
    
    @IBOutlet weak var tableViewContainer: UITableView!
    
    @IBOutlet weak var headerMenuView: UIView!
    
    @IBOutlet weak var headerContainerView: UIView!
    
    @IBOutlet weak var lblMenu: UILabel!
    
    @IBOutlet weak var lblContainer: UILabel!
    
    let categoryMenu:Array<String> = ["Chọn lọc", "Thể loại"]
    
    var valueToPass:String?
    
    let listMenu:Array<Array<String>> = [["Phim đề cử", "Phim chiếu rạp", "Phim lẻ", "Phim bộ"], ["Phim hành động", "Phim viễn tưởng", "Phim chiến tranh", "Phim hình sự", "Phim phiêu lưu", "Phim hài hước", "Phim võ thuật", "Phim kinh dị", "Phim gay cấn", "Phim siêu nhiên", "Phim cổ trang", "Phim thần thoại", "Phim tâm lý", "Phim tài liệu", "Phim tình cảm", "Phim drama", "Phim thể thao - âm nhạc", "Phim gia đình", "Phim hoạt hình"]]
    
    let data:Array<String> = ["Phim đề cử", "Phim chiếu rạp", "Phim lẻ", "Phim bộ"]
    
    // let films:Array<Array<String>> = [["Long châu truyền kỳ", "Chàng mù báo thù", "Học tỷ ma cà rồng", "Kẻ trộm giấc mơ"], ["Kong: Đảo đầu lâu", "Xì trum 3: Ngôi làng kỳ bí", "Vệ binh dải ngân hà 2", "Quái vật không gian"], ["Khúc ca tình yêu", "Tình ngây thơ", "Vợ người giữ thú"], ["Chị em song sinh", "Ngôi sao khoai tây", "Nghịch tập chi tinh đồ thôi xán", "Giấc mơ làm siêu sao"]]
    
    var films:[Array<Array<Array<String>>>] = []
    
    let sectionMenuImage = [#imageLiteral(resourceName: "film-Icon"), #imageLiteral(resourceName: "data-film-1")]
    
    let sectionContainerImage = [#imageLiteral(resourceName: "film-Icon-2"), #imageLiteral(resourceName: "data-film-2"), #imageLiteral(resourceName: "data-film-3"), #imageLiteral(resourceName: "data-film-4")]
    
    var mainColor:UIColor = UIColor.init(red: 12/255, green: 27/255, blue: 54/255, alpha: 1)
    var bgColor:UIColor = UIColor.init(red: 6/255, green: 21/255, blue: 43/255, alpha: 1)
    var redColor:UIColor = UIColor.init(red: 228/255, green: 62/255, blue: 38/255, alpha: 1)
    var orangeColor:UIColor = UIColor.init(red: 231/255, green: 90/255, blue: 70/255, alpha: 1)

    override func viewDidLoad() {
        super.viewDidLoad()
    
        tableViewMenu.dataSource = self
        tableViewMenu.delegate = self
        tableViewMenu.backgroundColor = bgColor
        
        tableViewContainer.dataSource = self
        tableViewContainer.delegate = self
        tableViewContainer.backgroundColor = UIColor.white
        
        // Setup Header Menu
        setupHeaderMenu()
        
        // Add swipe guesture action to View (Open/Close Menu)
        swipeGuesture()
        
        // Get Films
        let instanceFilms = Films(url: "xxx")
        
        let filmType1:Array<Array<String>> = instanceFilms.getFilms(type: 1)
        let fs1 = instanceFilms.chunkArray(arr: filmType1, chunkSize: 2)
        
        let filmType2:Array<Array<String>> = instanceFilms.getFilms(type: 2)
        let fs2 = instanceFilms.chunkArray(arr: filmType2, chunkSize: 2)
        
        let filmType3:Array<Array<String>> = instanceFilms.getFilms(type: 3)
        let fs3 = instanceFilms.chunkArray(arr: filmType3, chunkSize: 2)
        
        let filmType4:Array<Array<String>> = instanceFilms.getFilms(type: 4)
        let fs4 = instanceFilms.chunkArray(arr: filmType4, chunkSize: 2)
        
        films = [fs1, fs2, fs3, fs4]
    }
    
    override func viewDidLayoutSubviews() {
        tableViewMenu.frame.origin.x = -(view.frame.width / 1.5)
        tableViewContainer.frame.origin.x = 0
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func btnMenu(_ sender: Any) {
        if(tableViewMenu.frame.origin.x < 0) {
            openMenu()
        } else {
            closeMenu()
        }
    }
    
    func setupHeaderMenu() {
        navigationController?.navigationBar.barTintColor = redColor
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName:UIColor.white]
        headerMenuView.backgroundColor = orangeColor
        lblMenu.textColor = UIColor.white
    }
    
    func openMenu() {
        UITableView.animate(withDuration: 0.3, animations: {
            self.tableViewMenu.frame.origin.x = 0
            self.tableViewContainer.frame.origin.x = self.view.frame.width / 1.5
        })
    }
    
    func closeMenu() {
        UITableView.animate(withDuration: 0.3, animations: {
            self.tableViewMenu.frame.origin.x = -(self.view.frame.width / 1.5)
            self.tableViewContainer.frame.origin.x = 0
        })
    }
    
    func navToDetailFilmType(_ sender:UITapGestureRecognizer) {            valueToPass = sender.view!.restorationIdentifier!
        self.performSegue(withIdentifier: "detailFilmType", sender: self)
    }
    
    func navToDetailFilm(_ sender:UITapGestureRecognizer) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let detailFilmPage = storyBoard.instantiateViewController(withIdentifier: "filmViewController") as! FilmViewController
        detailFilmPage.data = sender.view!.restorationIdentifier!
        if(detailFilmPage.data != "NA") {
            self.navigationController?.pushViewController(detailFilmPage, animated: true)
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        if(tableView.tag == 0) {
            return categoryMenu.count
        } else {
            return data.count
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(tableView.tag == 0) {
            return listMenu[section].count
        } else {
            return films[section].count
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let vw = UIView()
        
        vw.restorationIdentifier = data[section]
        
        let label = UILabel()
        let image:UIImageView
        
        if(tableView.tag == 0) {
            label.text = categoryMenu[section]
            image = UIImageView(image: sectionMenuImage[section])
        }
        else {
            label.text = data[section]
            image = UIImageView(image: sectionContainerImage[section])
            vw.backgroundColor = bgColor
            let detailImage:UIImageView = UIImageView(frame: CGRect(x: tableViewContainer.frame.width - 30, y: 13, width: 20, height: 20))
            detailImage.image = #imageLiteral(resourceName: "arrow")
            vw.addSubview(detailImage)
            
            // TapGuesture
            let tapGuesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.navToDetailFilmType))
            vw.addGestureRecognizer(tapGuesture)
        }
        
        image.frame = CGRect(x: 15, y: 5, width: 35, height: 35)
        label.frame = CGRect(x: 55, y: 0, width: 200, height: 45)
        label.textColor = UIColor.white
        
        vw.addSubview(label)
        vw.addSubview(image)
        
        return vw
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 45
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if(tableView.tag == 1) {
            return 300
        }
        return 45
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if(tableView.tag == 0) {
            let cell = tableViewMenu.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath)
            
            cell.textLabel?.text = "        " + listMenu[indexPath.section][indexPath.row]
            cell.backgroundColor = bgColor
            cell.textLabel?.textColor = UIColor.white
            
            let cellImg:UIImageView = UIImageView(frame: CGRect(x: 15, y: 7, width: 30, height: 30))
            cellImg.image = #imageLiteral(resourceName: "title-film")
            cell.addSubview(cellImg)
            
            let vw = UIView()
            vw.backgroundColor = orangeColor
            cell.selectedBackgroundView = vw
            
            return cell
        } else {
        let cell = tableViewContainer.dequeueReusableCell(withIdentifier: "containerCell", for: indexPath) as! ContainerTableViewCell
            
//            if(films[indexPath.section][indexPath.row].count == 2) {
//                let url1 = NSURL(string: films[indexPath.section][indexPath.row][0][4])
//                let url2 = NSURL(string: films[indexPath.section][indexPath.row][1][4])
//                let data1 = NSData(contentsOf: url1! as URL)
//                let data2 = NSData(contentsOf: url2! as URL)
//                if data1 != nil {
//                    cell.imgCol1.image = UIImage(data: data1! as Data)
//                }
//                if data2 != nil {
//                    cell.imgCol2.image = UIImage(data: data2! as Data)
//                }
                
            cell.imgCol1.image = UIImage(named: films[indexPath.section][indexPath.row][0][4])
            cell.imgCol2.image = UIImage(named: films[indexPath.section][indexPath.row][1][4])
                
            cell.imgCol1.restorationIdentifier = films[indexPath.section][indexPath.row][0][4]
            cell.imgCol2.restorationIdentifier = films[indexPath.section][indexPath.row][1][4]
                
            cell.viewCol1.layer.masksToBounds = true
            cell.viewCol2.layer.masksToBounds = true
            cell.viewCol1.layer.cornerRadius = 10
            cell.viewCol2.layer.cornerRadius = 10
                
            cell.imgCol1.layer.masksToBounds = true
            cell.imgCol2.layer.masksToBounds = true
            cell.imgCol1.layer.cornerRadius = 10
            cell.imgCol2.layer.cornerRadius = 10
                
                
            // Film Quatily Label
            cell.lblFilmQuality1.text = films[indexPath.section][indexPath.row][0][5]
            cell.lblFilmQuality2.text = films[indexPath.section][indexPath.row][1][5]
        
            cell.lblTitleVi1.text = films[indexPath.section][indexPath.row][0][0]
            cell.lblTitleVi2.text = films[indexPath.section][indexPath.row][1][0]
            cell.lblTitleEn1.text = films[indexPath.section][indexPath.row][0][1]
            cell.lblTitleEn2.text = films[indexPath.section][indexPath.row][1][1]
            cell.lblDuration1.text = films[indexPath.section][indexPath.row][0][2]
            cell.lblDuration2.text = films[indexPath.section][indexPath.row][1][2]
                
            // TapGuesture
            let tapGuesture1 = UITapGestureRecognizer(target: self, action: #selector(ViewController.navToDetailFilm))
            let tapGuesture2 = UITapGestureRecognizer(target: self, action: #selector(ViewController.navToDetailFilm))
            cell.imgCol1.addGestureRecognizer(tapGuesture1)
            cell.imgCol2.addGestureRecognizer(tapGuesture2)
                
            cell.selectionStyle = .none
                
            cell.viewCover2.backgroundColor = UIColor.init(red: 0, green: 0, blue: 0, alpha: 0.8)
                
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if(tableView.tag == 0) {
            let indexPath = tableView.indexPathForSelectedRow
            let curCell = tableView.cellForRow(at: indexPath!)!
            valueToPass = curCell.textLabel?.text?.trimmingCharacters(in: .whitespacesAndNewlines)
            self.performSegue(withIdentifier: "detailFilmType", sender: self)
        }
        else {
            closeMenu()
            // self.performSegue(withIdentifier: "detailFilmType", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "detailFilmType") {
            let detailFilmType = segue.destination as! DetailFilmType
            detailFilmType.receivedData = valueToPass!
        }
    }
    
    // Swipe Guesture
    func swipeGuesture() {
        let right = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.openMenu))
        right.direction = .right
        view.addGestureRecognizer(right)
        
        let left = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.closeMenu))
        left.direction = .left
        view.addGestureRecognizer(left)
    }

}


