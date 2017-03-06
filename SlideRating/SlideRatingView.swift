//
//  SlideRatingView.swift
//  SlideRatingView
//
//  Created by Corrine Toracchio on 2/26/17.
//  Copyright © 2017 Corrine Toracchio. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
public class SlideRatingView: UIView {
    
    private var numberOfStars: UInt8 = 0
    private var currentRating: Float = 0.0
    private var ratingStartValue: Float = 0.0
    
    private var spacing: Float = 0.0
    private var stars: [Star] = [Star]()
    private var ratingType: SlideRatingOptions = .half
    private var defaultImage: DefaultImageOptions = DefaultImageOptions.star
    
    
    // Constructors
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    convenience init(frame: CGRect, withNumberOfStars: UInt8, withRatingType: SlideRatingOptions) {
        self.init(frame: frame)
        self.numberOfStars = withNumberOfStars
        self.ratingType = withRatingType
        
        self.setupStars()
    }
    
    convenience init(frame: CGRect, withNumberOfStars: UInt8, withRatingType: SlideRatingOptions, withRatingStartValue: Float) {
        self.init(frame: frame)
        self.numberOfStars = withNumberOfStars
        self.ratingType = withRatingType
        self.ratingStartValue = withRatingStartValue
        
        self.setupStars()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("This class does not support NSCoding")
    }
    
    public func setStarImage(withImage: UIImage) {
        
    }
    
    public func setStarImage(withImage: UIImage, withSpacing: Float) {
        
    }
    
    public func setStarImageSpacing(withSpacing: Float) {
        
    }
    
    override public func draw(_ rect: CGRect) {
        StyleKit.drawHeart(frame: self.bounds, resizing: .aspectFit)
    }
    
    
    // Private helper method to seup the stars
    private func setupStars() {
        var rating = self.ratingStartValue;
        
        print("setting up stars")
        
        for i in 0..<self.numberOfStars {
            
            let starRating = (rating - (1.0) > 0.0) ? 1.0 : rating;
            var star: Star
            
            switch self.ratingType {
            case SlideRatingOptions.full:
                star = FullStar(withRating: starRating)
            
            case SlideRatingOptions.half:
                star = HalfStar(withRating: starRating)
            
            case SlideRatingOptions.accurate:
                star = AccurateStar(withRating: starRating)

            default:
                star = AccurateStar(withRating: starRating)
            }
            
            self.stars.insert(star, at: Int(i))
            rating -= 1.0
        }
        
        self.draw(self.bounds)
    }
    
}


public struct DefaultImageOptions: OptionSet {
    public let rawValue: Int
    
    public init(rawValue: Int) {
        self.rawValue = rawValue
    }
    
    public static let heart = DefaultImageOptions(rawValue: 1)
    public static let star = DefaultImageOptions(rawValue: 2)
}


public struct SlideRatingOptions: OptionSet {
    public let rawValue: Int
    
    public init(rawValue: Int) {
        self.rawValue = rawValue
    }
    
    public static let full = SlideRatingOptions(rawValue: 1)
    public static let half = SlideRatingOptions(rawValue: 2)
    public static let accurate = SlideRatingOptions(rawValue: 3)
}
