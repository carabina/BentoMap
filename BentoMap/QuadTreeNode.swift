//
//  QuadTreeNode.swift
//  BentoMap
//
//  Created by Michael Skiba on 2/17/16.
//  Copyright © 2016 Raizlabs. All rights reserved.
//

import Foundation
import MapKit

public protocol MapPointProvider {

    var mapPoint: MKMapPoint { get }

}

extension MKMapPoint: MapPointProvider {

    public var mapPoint: MKMapPoint { return self }

}

public struct QuadTreeNode<NodeData>: MapPointProvider {

    public var mapPoint: MKMapPoint
    public var content: NodeData

    public init(mapPoint: MKMapPoint, content: NodeData) {
        self.mapPoint = mapPoint
        self.content = content
    }

}
