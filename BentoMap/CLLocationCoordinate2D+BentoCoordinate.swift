//
//  CLLocationCoordinate2D+BentoCoordinate.swift
//  BentoMap
//
//  Created by Matthew Buckley on 8/27/16.
//  Copyright © 2016 Raizlabs. All rights reserved.
//

import Foundation
import CoreLocation

extension CLLocationCoordinate2D: BentoCoordinate {

    public var _x: CGFloat {
        return CGFloat(latitude)
    }

    public var _y: CGFloat {
        return CGFloat(longitude)
    }

    public init(x: CGFloat, y: CGFloat) {
        self.init(latitude: CLLocationDegrees(x), longitude: CLLocationDegrees(y))
    }

}