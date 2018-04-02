//
//  stepView.swift
//  Cük rendering testing
//
//  Created by Charles Mirabile on 3/31/18.
//  Copyright © 2018 Charles Mirabile. All rights reserved.
//

import UIKit
class StepView:UIView{
    var step:Step! = nil
    var expanded:Bool = false
    override func draw(_ rect: CGRect) {
        let p = UIBezierPath(roundedRect: rect, byRoundingCorners: .allCorners, cornerRadii: CGSize(width: rect.height/5, height: rect.height/5))
        UIColor.purple.setFill()
        p.fill()
    }
    func setup(s:Step){
        step = s
        let label = UILabel(frame: CGRect.zero)
        label.textColor = UIColor.white
        label.backgroundColor = UIColor.clear
        label.text = s.action
        let size = label.intrinsicContentSize
        label.frame = CGRect(origin: CGPoint(x:10,y:10), size: size)
        self.frame = CGRect(origin:self.frame.origin,size:CGSize(width:size.width+20,height:size.height+20))
        self.addSubview(label)
    }
}
