//
//  event.data.type.swift
//  finial
//
//  Created by timchen on 2021/12/16.
//

import Foundation
import SwiftUI
struct EventInfo:Codable{
    var Caption : String
    var StartDate : Date
    var EndDate : Date
    var Address : String?
    var Longitude : Double?
    var Latitude : Double?
    var ImageFile : String?

    //let showInfo : [storeItem]
    
}

