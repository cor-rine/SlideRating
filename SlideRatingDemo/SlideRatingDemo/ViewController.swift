//
//  ViewController.swift
//  SlideRatingDemo
//
//  Created by Corrine Toracchio on 3/3/17.
//  Copyright © 2017 Corrine Toracchio. All rights reserved.
//

import UIKit
import SlideRating

class ViewController: UIViewController {
    
    @IBOutlet weak var threeHeartsSlideRating: SlideRatingView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        threeHeartsSlideRating.init(frame: self.bounds, withNumberOfStars: UInt8(3), withRatingType: SlideRatingOptions.half)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

