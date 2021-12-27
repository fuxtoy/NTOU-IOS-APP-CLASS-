//
//  ViewController.swift
//  finial
//
//  Created by timchen on 2021/12/16.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    var events=[EventInfo]()

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("viewDidLoad")
        let nib=UINib(nibName:"eventTableViewCell", bundle: nil)
        tableView.delegate=self
        tableView.dataSource=self
        tableView.register(nib,forCellReuseIdentifier:"eventTableViewCell")
//抓資料
        let apiUrlString="https://cultureexpress.taipei/OpenData/Event/C000003"
        
        if let url=URL(string: apiUrlString){
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                if let error = error {
                    print("error:\(error.localizedDescription)")
                }
                let decoder=JSONDecoder()
                let dateFormatter = DateFormatter()
                dateFormatter.dateFormat = "yyyy/MM/dd HH:mm:ss"
                decoder.dateDecodingStrategy = .formatted(dateFormatter)
                
    
                
                if let data=data,let eventResult=try?decoder.decode([EventInfo].self, from: data){
                    self.events=eventResult
                    print(eventResult)
                    print(self.events.count)
                    
                    DispatchQueue.main.async {
                        self.tableView.reloadData()
                    }
                }

                
            }.resume()
        }
        else{
            print("error url")
        }// Do any additional setup after loading the view.
    }
    

        
}


//顯示
extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return events.count //回傳列數
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell=tableView.dequeueReusableCell(withIdentifier:"eventTableViewCell", for: indexPath) as! eventTableViewCell
        
        let eventInfo=events[indexPath.row]
        
        
        cell.eventname.text=eventInfo.Caption
        
        //cell.eventaddress.text=eventInfo.Address

        return cell
        //傳給cell

        }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "showDetail", sender: self) //透過showDetail顯示內容
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="showDetail"{
            if let indexpath=tableView.indexPathForSelectedRow {
                let vc=segue.destination as! DetialViewController
                vc.eventData=events[indexpath.row]
            }
        }
    }
}


    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


