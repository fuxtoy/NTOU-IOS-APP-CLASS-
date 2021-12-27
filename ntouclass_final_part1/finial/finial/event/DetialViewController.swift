//
//  DetialViewController.swift
//  finial
//
//  Created by timchen on 2021/12/16.
//

import UIKit
import MapKit
import SwiftUI
import URLImage
class DetialViewController: UIViewController {
    
    var latitude=0.0
    
    var longitude=0.0
    
    var eventData:EventInfo?
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var Map: MKMapView!
    @IBOutlet weak var StartTime: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var EndDate: UILabel!
    @IBOutlet weak var address: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if let eventData=eventData{
            
            //latitude=Double(eventData.Latitude)!
            //longitude=Double(eventData.Longitude)!
           // latitude = eventData.Latitude!
            //longitude = eventData.Longitude!
            
            
            name.text=eventData.Caption
            address.text=eventData.Address
            StartTime.text="\(eventData.StartDate)"
            EndDate.text = "\(eventData.EndDate)"
            image.downloaded(from: "\(String(describing: eventData.ImageFile))")
            //test: image.downloaded(from: "https://cdn.arstechnica.net/wp-content/uploads/2018/06/macOS-Mojave-Dynamic-Wallpaper-transition.jpg")            //image.image = AsyncImage(url: URL(string: eventData.ImageFile!))
           // if let url = URL(string: eventData.ImageFile!)
            //{
                //if let imageToLoad = url{
                    
                   // image.image = UIImage(named: imageToLoad)
            //    }

          //  }

        
        

        
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

}
extension UIImageView {
    func downloaded(from url: URL, contentMode mode: ContentMode = .scaleAspectFit) {
        contentMode = mode
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard
                let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
                let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
                let data = data, error == nil,
                let image = UIImage(data: data)
                else { return }
            DispatchQueue.main.async() { [weak self] in
                self?.image = image
            }
        }.resume()
    }
    func downloaded(from link: String, contentMode mode: ContentMode = .scaleAspectFit) {
        guard let url = URL(string: link) else { return }
        downloaded(from: url, contentMode: mode)
    }
}
