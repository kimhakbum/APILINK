//
//  BookListTableViewController.swift
//  MyBook
//
//  Created by ktds 14 on 2017. 8. 17..
//  Copyright © 2017년 ktds 14. All rights reserved.
//

import UIKit

class BookListTableViewController: UITableViewController {

 
    
    @IBAction func getMoreData(_ sender: Any) {
        
        self.getData(pageNum: self.lastPageNum + 1)
        
        
        self.tableView.reloadData()
        
        
    }
   
    
    var arts:[Art] = Array()
    let maxQty = 10
    let keyStr = "69766f477168626b313033504954486a"
    var lastPageNum = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.getData(pageNum: 0)


    }
    
    func getData(pageNum:Int)
    {
        let startIdx = pageNum * maxQty
        let endIdx = startIdx + maxQty - 1
        
        let urlStr = "http://openapi.seoul.go.kr:8088/\(keyStr)/json/SemaPsgudInfo/\(startIdx)/\(endIdx)/"
        
        let serverURL:URL! = URL(string: urlStr)
        
        let serverData = try! Data(contentsOf: serverURL)
        
        
   
        let log = NSString(data: serverData, encoding: String.Encoding.utf8.rawValue)
        
        
        do{
            let dict = try JSONSerialization.jsonObject(with: serverData, options: []) as! NSDictionary
            
            let semaPsgudInfo = dict["SemaPsgudInfo"] as! NSDictionary
            let results = semaPsgudInfo["row"] as! NSArray
            
            for result in results {
                
                let resultDict = result as! NSDictionary
                
                let art = Art(title: (resultDict["PRDCT_NM_KOREAN"] as? String)!, artist: (resultDict["WRITR_NM"] as? String)!, thumbImageURL: (resultDict["THUMB_IMAGE"] as? String)!)
                
                arts.append(art)
                
            }
            
            
            print(dict)
            
            
        
        
        }catch {
           print("error")
        }
        
        // print(log)
        
    }
    
    
    func getThunbImage(withURL imageURL:String) -> UIImage {
        
        let url:URL = URL(string: imageURL)!
        let imgData = try! Data(contentsOf: url)
        
        
        let image = UIImage(data: imgData)
        
        
        return image!
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 1
//    }
//
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        
        
        
        
        
        
        return arts.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        cell.textLabel?.text = arts[indexPath.row].title
        cell.detailTextLabel?.text = arts[indexPath.row].artist
        
        //cell.imageView?.image = self.getThunbImage(withURL: arts[indexPath.row].thumbImageURL!)
        
        
        if let thumbImage = arts[indexPath.row].tumbImage{
            
            cell.imageView?.image = thumbImage
            
            
        }else {
            if let thumbImageURL = arts[indexPath.row].thumbImageURL {
                
                DispatchQueue.global(qos: .userInitiated).async(execute: {
                  
                    self.arts[indexPath.row].tumbImage = self.getThunbImage(withURL: thumbImageURL)
                    
                    guard let thumbImage = self.arts[indexPath.row].tumbImage else {
                        return
                    }
                    
                    DispatchQueue.main.async {
                        cell.imageView?.image = thumbImage
                    }
                    
                })
            }
        }
        
        return cell
        
    }
    
//     MARK: - Navigation
//
//     In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destinationViewController.
//        // Pass the selected object to the new view controller.
//         }
    
 }
