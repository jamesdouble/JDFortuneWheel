//
//  DynamicView.swift
//  JDFortuneWheel
//
//  Created by 郭介騵 on 2017/11/12.
//  Copyright © 2017年 james12345. All rights reserved.
//

import UIKit

extension UIView {
    func rotate360Degrees(duration: CFTimeInterval = 3,toIndex:Int,completion:@escaping ()->()) {
        CATransaction.begin()
        let rotateAnimation = CABasicAnimation(keyPath: "transform.rotation")
        rotateAnimation.timingFunction = CAMediaTimingFunction.init(name: kCAMediaTimingFunctionEaseOut)
        rotateAnimation.fromValue = 0.0
        rotateAnimation.isRemovedOnCompletion = false
        let halfdegree = Double.pi * (2 * Double(toIndex) + 1)/8
        let degree:Double = Double.pi * 20 + halfdegree
        rotateAnimation.toValue = CGFloat(degree)
        rotateAnimation.isRemovedOnCompletion = false
        rotateAnimation.duration = duration
        CATransaction.setCompletionBlock {
            self.layer.transform = CATransform3DMakeRotation(CGFloat(halfdegree), 0, 0, 1.0)
            completion()
        }
        self.layer.add(rotateAnimation, forKey: nil)
        CATransaction.commit()
    }
}

class FingerView:UIView{
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit(){
        self.backgroundColor = UIColor.clear
        self.layer.drawsAsynchronously = true
    }
    
    func spin(toIndex:Int,completion:@escaping ()->()){
        self.layer.transform = CATransform3DIdentity
        self.rotate360Degrees(toIndex: toIndex) {
             completion()
        }
    }
    
    func stopSpin(){
        self.layer.removeAllAnimations()
    }
    
    override func draw(_ rect: CGRect) {
        let size = rect.size
        if(UIGraphicsGetCurrentContext() == nil){
            UIGraphicsBeginImageContext(size)
        }
        guard let context = UIGraphicsGetCurrentContext() else{
            fatalError()
        }
        context.scaleBy(x: size.width / 196, y: size.height / 196)
        
        let fillColor3 = UIColor(red: 0.996, green: 0.996, blue: 0.996, alpha: 1.000)
        let fillColor5 = UIColor(red: 0.918, green: 0.110, blue: 0.153, alpha: 1.000)
        
        //// Shape 15 Drawing
        let shape15Path = UIBezierPath()
        shape15Path.move(to: CGPoint(x: 104.51, y: 90.86))
        shape15Path.addCurve(to: CGPoint(x: 107.95, y: 98.35), controlPoint1: CGPoint(x: 106.64, y: 92.78), controlPoint2: CGPoint(x: 107.95, y: 95.51))
        shape15Path.addCurve(to: CGPoint(x: 97.83, y: 108.47), controlPoint1: CGPoint(x: 107.95, y: 103.92), controlPoint2: CGPoint(x: 103.39, y: 108.47))
        shape15Path.addCurve(to: CGPoint(x: 87.8, y: 98.35), controlPoint1: CGPoint(x: 92.26, y: 108.47), controlPoint2: CGPoint(x: 87.8, y: 103.92))
        shape15Path.addCurve(to: CGPoint(x: 91.15, y: 90.86), controlPoint1: CGPoint(x: 87.8, y: 95.51), controlPoint2: CGPoint(x: 89.02, y: 92.78))
        shape15Path.addLine(to: CGPoint(x: 95.5, y: 53.1))
        shape15Path.addCurve(to: CGPoint(x: 100.16, y: 53.1), controlPoint1: CGPoint(x: 95.9, y: 49.55), controlPoint2: CGPoint(x: 99.75, y: 49.55))
        shape15Path.addLine(to: CGPoint(x: 104.51, y: 90.86))
        shape15Path.close()
        shape15Path.usesEvenOddFillRule = true
        fillColor3.setFill()
        shape15Path.fill()
        
        
        //// Shape 16 Drawing
        let shape16Path = UIBezierPath()
        shape16Path.move(to: CGPoint(x: 97.83, y: 53.1))
        shape16Path.addLine(to: CGPoint(x: 102.38, y: 92.07))
        shape16Path.addCurve(to: CGPoint(x: 105.62, y: 98.35), controlPoint1: CGPoint(x: 104.31, y: 93.49), controlPoint2: CGPoint(x: 105.62, y: 95.82))
        shape16Path.addCurve(to: CGPoint(x: 97.83, y: 106.14), controlPoint1: CGPoint(x: 105.62, y: 102.7), controlPoint2: CGPoint(x: 102.18, y: 106.14))
        shape16Path.addCurve(to: CGPoint(x: 90.03, y: 98.35), controlPoint1: CGPoint(x: 93.58, y: 106.14), controlPoint2: CGPoint(x: 90.03, y: 102.7))
        shape16Path.addCurve(to: CGPoint(x: 93.27, y: 92.07), controlPoint1: CGPoint(x: 90.03, y: 95.82), controlPoint2: CGPoint(x: 91.35, y: 93.49))
        shape16Path.addLine(to: CGPoint(x: 97.83, y: 53.1))
        shape16Path.close()
        shape16Path.usesEvenOddFillRule = true
        fillColor5.setFill()
        shape16Path.fill()
        
        //// Shape 17 Drawing
        let shape17Path = UIBezierPath()
        shape17Path.move(to: CGPoint(x: 97.83, y: 94.3))
        shape17Path.addCurve(to: CGPoint(x: 101.98, y: 98.35), controlPoint1: CGPoint(x: 100.05, y: 94.3), controlPoint2: CGPoint(x: 101.98, y: 96.12))
        shape17Path.addCurve(to: CGPoint(x: 97.83, y: 102.5), controlPoint1: CGPoint(x: 101.98, y: 100.68), controlPoint2: CGPoint(x: 100.05, y: 102.5))
        shape17Path.addCurve(to: CGPoint(x: 93.78, y: 98.35), controlPoint1: CGPoint(x: 95.6, y: 102.5), controlPoint2: CGPoint(x: 93.78, y: 100.68))
        shape17Path.addCurve(to: CGPoint(x: 97.83, y: 94.3), controlPoint1: CGPoint(x: 93.78, y: 96.12), controlPoint2: CGPoint(x: 95.6, y: 94.3))
        shape17Path.addLine(to: CGPoint(x: 97.83, y: 94.3))
        shape17Path.close()
        shape17Path.usesEvenOddFillRule = true
        fillColor3.setFill()
        shape17Path.fill()
        
        
    }
}
