//
//  DeatilViewController-coffee.swift
//  finial
//
//  Created by timchen on 2021/12/18.
//

import UIKit
import MapKit
class DeatilViewController_coffee: UIViewController {

    @IBAction func sharetext(_ sender: Any) {
        let text = address
        
        // set up activity view controller
        let textToShare = [ text ]
        let activityViewController = UIActivityViewController(activityItems: textToShare as [Any], applicationActivities: nil)
        activityViewController.popoverPresentationController?.sourceView = self.view // so that iPads won't crash
        
        // exclude some activity types from the list (optional)
        activityViewController.excludedActivityTypes = [ UIActivity.ActivityType.airDrop, UIActivity.ActivityType.postToFacebook ]
        
        // present the view controller
        self.present(activityViewController, animated: true, completion: nil)
            
    }
    @IBOutlet weak var mapview: MKMapView!
    @IBOutlet weak var address: UILabel!
    @IBOutlet weak var opentime: UILabel!
    @IBOutlet weak var limittime: UILabel!
    @IBOutlet weak var name: UILabel!
    var latitude=0.0
    
    var longitude=0.0
    
    var cafeData:CoffeeInfo?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if let cafeData=cafeData{
            
            latitude=Double(cafeData.latitude)!
            longitude=Double(cafeData.longitude)!
            
            
            name.text=cafeData.name
            address.text=cafeData.address
            opentime.text="\(cafeData.open_time)"
            limittime.text="\(cafeData.limited_time)"
        }
        
        settingcafeAnnotation()
        
        print(latitude)
        print(longitude)
        
        
    }
    
    
    func settingcafeAnnotation() {
        let studioAnnotation = MKPointAnnotation()
        studioAnnotation.coordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        // ?????????????????????
        studioAnnotation.title = cafeData?.name
        // ????????????????????????????????????????????????
        studioAnnotation.subtitle = cafeData?.address
        mapview.setCenter(studioAnnotation.coordinate, animated: true)
        // ??????????????????????????????????????????????????????????????????????????????MKCoordinateRegion???
        mapview.setRegion(MKCoordinateRegion(center: studioAnnotation.coordinate, latitudinalMeters: 100, longitudinalMeters: 100), animated: true)
        mapview.addAnnotation(studioAnnotation)
    }
    
    func map(){
        
        if let cafeData=cafeData{
                   
                   latitude=Double(cafeData.latitude)!
                   longitude=Double(cafeData.longitude)!
                   
                   name.text=cafeData.name
                   address.text=cafeData.address
                   opentime.text="\(cafeData.open_time)"
                   
               }
        
        print(latitude)
        print(longitude)
        
        let targetLocation=CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        //???????????????MKPlacemark
        let targetPlacemark=MKPlacemark(coordinate: targetLocation)
        
        let targetItem=MKMapItem(placemark: targetPlacemark)
        
        let userMapItem=MKMapItem.forCurrentLocation()
        
        print(userMapItem)
        let routes=[userMapItem,targetItem]
        MKMapItem.openMaps(with: routes, launchOptions: [MKLaunchOptionsDirectionsModeKey : MKLaunchOptionsDirectionsModeDriving])
        
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
