//
//  Pino.swift
//  Agenda
//
//  Created by Victor Uriarte on 03/05/21.
//  Copyright © 2021 Alura. All rights reserved.
//

import UIKit
import MapKit

class Pino: NSObject, MKAnnotation {
    
    var title: String?
    var icon: UIImage?
    var color: UIColor?
    var coordinate: CLLocationCoordinate2D
    
    init(coordenada: CLLocationCoordinate2D) {
        self.coordinate = coordenada
        
    }
    

}
