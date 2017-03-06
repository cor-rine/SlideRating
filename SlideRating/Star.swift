//
//  Star.swift
//  SlideRating
//
//  Created by Corrine Toracchio on 2/28/17.
//  Copyright © 2017 Corrine Toracchio. All rights reserved.
//

import Foundation
import UIKit

protocol Star {
    var rating: Float { get set }
    
    init(withRating: Float)
}
