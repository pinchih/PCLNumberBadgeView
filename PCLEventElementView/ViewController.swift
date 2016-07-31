//
//  ViewController.swift
//  PCLNumberBadgeView
//
//  Created by Pin-Chih on 7/25/16.
//  Copyright © 2016 Pin-Chih. All rights reserved.
//

import UIKit

class ViewController: UIViewController,PCLNumberBadgeViewDataSource{

    
    //@IBOutlet weak var PCLView : PCLEventElementView!
    var myView : PCLNumberBadgeView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myView = PCLNumberBadgeView(frame: CGRectMake(100, 100, 150, 150))
        myView.PCLEventElementViewDataSource = self
        
        myView.setup()
        self.view.addSubview(myView)
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
  
    func imageForPriorityImage(BadgeView: PCLNumberBadgeView) -> UIImage {
        return UIImage(named: "Oliver.jpg")!
    }
    
    
    
    func textForBadge(BadgeView: PCLNumberBadgeView) -> String {
        return "Love"
    }
    
    func widthAndHeightForTextLabel(BadgeView: PCLNumberBadgeView) -> Float {
        return 50.0
    }
    
    
    func backgroundColorForBadge(BadgeView: PCLNumberBadgeView) -> UIColor! {
        return UIColor.blackColor()
    }
    
    func locationForBadge(BadgeView: PCLNumberBadgeView) -> Int! {
        return 45
    }

}

