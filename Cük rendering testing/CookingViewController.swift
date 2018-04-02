//
//  CookingViewController.swift
//  Cük rendering testing
//
//  Created by Charles Mirabile on 3/31/18.
//  Copyright © 2018 Charles Mirabile. All rights reserved.
//

import UIKit
protocol CookingViewSource{
    var recipe:Recipe {get}
    var currentTrack:Int {get}
    var currentStep:Int {get}
}
class CookingViewController : UIViewController,CookingViewSource{
    let recipe:Recipe = Recipe(name:"",description:nil,steps:[])
    let currentTrack = 0
    let currentStep = 0
    override func viewDidLoad() {
        let s = StepView(frame:CGRect(origin:CGPoint(x:80,y:200),size:CGSize.zero))
        s.setup(s: Step(action:"sdaflsdlf",ingredients:nil,objects:nil))
        view.addSubview(s)
    }
}
