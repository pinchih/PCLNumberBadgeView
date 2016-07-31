//
//  PCLNumberBadgeView.swift
//  PCLNumberBadgeView
//
//  Created by Pin-Chih on 7/25/16.
//  Copyright © 2016 Pin-Chih. All rights reserved.
//

import UIKit

public protocol PCLNumberBadgeViewDataSource {
    
    func imageForPriorityImage(BadgeView:PCLNumberBadgeView) -> UIImage
    func textForBadge(BadgeView:PCLNumberBadgeView) -> String
    func widthAndHeightForTextLabel(BadgeView:PCLNumberBadgeView) -> Float
    func backgroundColorForBadge(BadgeView:PCLNumberBadgeView) -> UIColor!
    func locationForBadge(BadgeView:PCLNumberBadgeView) -> Int!
    
}

extension Int {
    var degreesToRadians: Double { return Double(self) * M_PI / 180 }
    var radiansToDegrees: Double { return Double(self) * 180 / M_PI }
}

public class PCLNumberBadgeView: UIView{
    
    
    public var priorityImage : UIImageView!
    public var dayLabel : UILabel!
    
    
    public var PCLEventElementViewDataSource : PCLNumberBadgeViewDataSource!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    public func reloadTabBarView() {
        setup()
    }
    
    public func reloadView() {
        setup()
    }
    
    public func setup(){
        
        priorityImage = UIImageView(frame: CGRectMake(0, 0, self.frame.width, self.frame.height))
        priorityImage.layer.cornerRadius = self.frame.width/2
        priorityImage.layer.masksToBounds = true
        priorityImage.image = PCLEventElementViewDataSource.imageForPriorityImage(self)

        
        dayLabel = UILabel()
        dayLabel.text = PCLEventElementViewDataSource.textForBadge(self)
        dayLabel.backgroundColor = UIColor.redColor()
        dayLabel.textAlignment = .Center
        dayLabel.textColor = UIColor.whiteColor()
        dayLabel.layer.masksToBounds = true
        
        let degree = self.PCLEventElementViewDataSource.locationForBadge(self)
        
        let location = buttonPosition(degree)
        
        let width = self.PCLEventElementViewDataSource.widthAndHeightForTextLabel(self)
        
        dayLabel.frame = CGRectMake(0, 0, CGFloat(width),CGFloat(width))
        dayLabel.layer.cornerRadius = self.dayLabel.frame.width/2
        dayLabel.center = CGPointMake(location.0, location.1)
        
        self.addSubview(priorityImage)
        self.addSubview(dayLabel)
    }
    
    private func buttonPosition(degree:Int) -> (CGFloat,CGFloat){
        
        let R = self.frame.width/2
        
        let x  = R + R * CGFloat(cos(degree.degreesToRadians))
        
        let y  = R - R * CGFloat(sin(degree.degreesToRadians))
        
        return (x,y)
        
    }
    
}


