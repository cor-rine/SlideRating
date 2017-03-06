//
//  HalfStar.swift
//  SlideRating
//
//  Created by Corrine Toracchio on 2/28/17.
//  Copyright © 2017 Corrine Toracchio. All rights reserved.
//

import Foundation


struct HalfStar: Star {
    internal var rating: Float
    
    init(withRating: Float) {
        self.rating = withRating
    }

}
