//
//  BookListTableViewController.swift
//  MyBook
//
//  Created by ktds 14 on 2017. 8. 17..
//  Copyright © 2017년 ktds 14. All rights reserved.
//

import UIKit

class BookListTableViewController: UITableViewController, AddBookDelegate {

 
    
    
    var books:[Book] = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        
        
        let book1 = Book(title: "살인자의 기억법", writer: "김영하", publisher: " 문학동네", coverImage: UIImage(named: "1")!
            , price: 9000, description: "김영하의 장편소설 『살인자의 기억법』. 《너의 목소리가 들려》 이후 일 년 반 만에 펴낸 장편소설로 알츠하이머에 걸려 점점 사라져가는 기억과 사투를 벌이는 은퇴한 연쇄살인범의 이야기를 담고 있다. 올해로 데뷔한 지 19년, 독보적인 스타일로 여전히 가장 젊은 작가라 불리는 저자의 이번 소설에서 아무렇지 않게 툭툭 던지는 잠언들, 돌발적인 유머와 위트, 마지막 결말의 반전까지 정교하고 치밀하게 설계된 모든 것들을 만나볼 수 있다.", url:"http://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&ejkGb=KOR&linkClass=0101&barcode=9788954622035")
        
        
        let book2 = Book(title: "82년생 김지영", writer: "조남주", publisher: "민음사", coverImage: UIImage(named: "2")!
            , price: 11700, description: "문학성과 다양성, 참신성을 기치로 한국문학의 미래를 이끌어 갈 신예들의 작품을 엄선한 「오늘의 젊은 작가」의 열세 번째 작품 『82년생 김지영』. 서민들의 일상 속 비극을 사실적이면서 공감대 높은 스토리로 표현하는 데 재능을 보이는 작가 조남주는 이번 작품에서 1982년생 '김지영 씨'의 기억을 바탕으로 한 고백을 한 축으로, 고백을 뒷받침하는 각종 통계자료와 기사들을 또 다른 축으로 삼아 30대를 살고 있는 한국 여성들의 보편적인 일상을 완벽하게 재현한다.", url:"http://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&ejkGb=KOR&linkClass=0101&barcode=9788937473135")
        
        let book3 = Book(title: "오직 두 사람", writer: "김영하", publisher: "문학동네", coverImage: UIImage(named: "3")!
            , price: 11700, description: "《무슨 일이 일어났는지 아무도》 이후 7년 만에 펴낸 김영하의 소설집 『오직 두 사람』. 다채로운 스펙트럼으로 한국문학의 지평을 확장해온, 이른바 ‘김영하 스타일’이 총망라된 작품집이다. 무언가를 상실한 사람들, 그리고 상실 이후의 삶을 살아가는 이들의 이야기를 담은 일곱 편의 작품이 담겨 있다. 한 인간 내면의 복합적인 감정부터 다종다양한 관계의 모순, 더 나아가 소위 신의 뜻이라 비유되는 알 수 없는 상황에 처한 인간의 고뇌까지 담아낸 이야기를 만나볼 수 있다.",url:"http://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&ejkGb=KOR&linkClass=0101&barcode=9788954645614")
        
        
        let book4 = Book(title: "바깥은 여름", writer: "김애란", publisher: " 문학동네", coverImage: UIImage(named: "4")!
            , price: 11700, description: "김애란이 돌아왔다. 작가생활 15년간 끊임없이 자신을 경신해오며, 지금 우리가 발 딛고 서 있는 곳의 이야기를 우리의 언어로 들었을 때 느끼게 되는 친밀감과 반가움, 그 각별한 체험을 선사해온 저자가 《비행운》 이후 5년 만에 펴내는 신작 소설집 『바깥은 여름』. 제37회 이상문학상 수상작 《침묵의 미래》, 제8회 젊은작가상 수상작 《어디로 가고 싶으신가요》를 포함한 일곱 편의 작품들을 만나볼 수 있다.",url:"http://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&ejkGb=KOR&linkClass=0101&barcode=9788954646079")
        
        let book5 = Book(title: "iPhone SDK 2", writer: nil, publisher: nil, coverImage: nil, price: nil, description: nil, url: nil)
        
   
       
        
        self.books.append(book1)
        self.books.append(book2)
        self.books.append(book3)
        self.books.append(book4)
        self.books.append(book5)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return books.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...
//        
//        cell.textLabel?.text = "Hello, World"
//        
//        cell.detailTextLabel?.text = "Hello, World"
//        cell.imageView?.image = UIImage(named: "images")

        
//        cell.textLabel?.text = books[indexPath.row]
        
        
//        if let bookCell = cell  as? UITableViewCell
//        {
//            
//        }
        
        
        
        
        let book = self.books[indexPath.row]
        
      
        cell.textLabel?.text = book.title
        cell.detailTextLabel?.text = book.writer
        cell.imageView?.image = book.coverImage
        
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        
        if segue.identifier == "addvc" {
            
            
            if let addVC = segue.destination as? AddBookViewController {
                
                addVC.delegate = self
            }
            
            
        }else if segue.identifier == "detailvc" {
        
        
            let cell = sender as? UITableViewCell
        
            let vc = segue.destination as? BookDetailViewController
        
        
            guard let selectCell = cell, let detailVC = vc else {
                return
            }
        
            if let idx = self.tableView.indexPath(for: selectCell) {
                detailVC.book = self.books[idx.row]
            }
        
            if let selCell = cell {
                let cellIdx = self.tableView.indexPath(for: selCell)
         
            }
        
        }
    }
    
    
    func sendNewBook(book: Book) {
        
        self.books.append(book)
        self.tableView.reloadData()
    }

}
