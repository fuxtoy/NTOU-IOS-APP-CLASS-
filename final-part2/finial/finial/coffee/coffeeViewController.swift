//
//  coffeeViewController.swift
//  finial
//
//  Created by timchen on 2021/12/18.
//

import UIKit
import SwiftUI
class coffeeViewController: UIViewController {
    @State private var showalert = false
    @State private var alerttitle = ""
    @IBOutlet weak var tableview: UITableView!
    @IBOutlet weak var textField: UITextField!
    var cafes=[CoffeeInfo]()
    
    var pickerView=UIPickerView()
    
    let cities=["taipei","yilan","taoyuan","hsinchu","miaoli","taichung","changhua","Nantou","Yunlin","Chiayi","Tainan","Kaohsiung","Pingtung"]
    
    
    let apiUrlString="https://cafenomad.tw/api/v1.2/cafes"
    override func viewDidLoad() {
        super.viewDidLoad()
        //textField.inputView=pickerView
        textField.textAlignment = .center
        textField.placeholder="Select a City"
        let nib=UINib(nibName:"coffeeTableViewCell", bundle: nil)
        tableview.delegate=self
        tableview.dataSource=self
        tableview.register(nib,forCellReuseIdentifier:"coffeeTableViewCell")
        
    }
    
    
    
    

    @IBAction func searchCity(_ sender: Any) {
        
        if let searchText=textField.text {
            print("search load ")
            let urlString="\(apiUrlString)/\(searchText)"//查詢城市的URL
            
            if let url=URL(string: urlString){
                URLSession.shared.dataTask(with: url) { (data, response, error) in
                    
                    let decoder=JSONDecoder() 
                    
                    if let data=data,let cafeResult=try?decoder.decode([CoffeeInfo].self, from: data){
                        self.cafes=cafeResult
                        print(cafeResult)
                        print(self.cafes.count)
                        
                        DispatchQueue.main.async {
                            self.tableview.reloadData()//Tableview更新抓到的資料
                        }
                    }
                    else{
                        self.showalert = true
                        self.alerttitle = "資料無法下載（請檢查網路連線）"
                    }
                
                }.resume()
            }
        }
        
    }
}
//由text輸入的放到網址內搜尋並更新table view
extension coffeeViewController:UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cafes.count //回傳列數
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell=tableView.dequeueReusableCell(withIdentifier:"coffeeTableViewCell", for: indexPath) as! coffeeTableViewCell
        
        let cafeInfo=cafes[indexPath.row]
        
        cell.name.text=cafeInfo.name
        
        cell.address.text=cafeInfo.address
       
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        performSegue(withIdentifier: "showDetailcoffee", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="showDetailcoffee"{
            if let indexpath=tableview.indexPathForSelectedRow {
                let vc=segue.destination as! DeatilViewController_coffee
                vc.cafeData=cafes[indexpath.row]
            }
        }
    }
}
extension coffeeViewController:UIPickerViewDelegate,UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return cities.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return cities[row] //顯示有哪些city
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //將pickerView選的資料放入textfield中
        textField.text=cities[row]
        //結束選擇
        textField.resignFirstResponder()
        
    }
    
    
}


//顯示
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


