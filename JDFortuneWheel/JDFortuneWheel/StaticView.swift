//
//  StaticView.swift
//  JDFortuneWheel
//
//  Created by 郭介騵 on 2017/11/12.
//  Copyright © 2017年 james12345. All rights reserved.
//

import UIKit

public class IconDraw: UIView {
    
    var fingerView:FingerView = FingerView()
    var ItemArray:[UIImage?] = []
    
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        self.backgroundColor = UIColor.clear
        commonInit(frame)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.backgroundColor = UIColor.clear
        commonInit(frame)
    }
    
    override public func prepareForInterfaceBuilder() {
        self.backgroundColor = UIColor.clear
        commonInit(frame)
    }
    
    func commonInit(_ rect:CGRect){
        self.layer.drawsAsynchronously = true
        let PalteSize = CGSize(width: self.frame.width, height: 196 * self.frame.height / 243.73)
        let bounds = CGRect(origin: CGPoint.zero, size: PalteSize)
        fingerView = FingerView(frame: bounds)
        self.addSubview(fingerView)
    }
    
    func drawCanvas(rect:CGRect){}
    
    public override func draw(_ rect: CGRect) {
        super.draw(rect)
        self.drawCanvas(rect: rect)
    }
    
}


@IBDesignable public class JDFortuneWheelOne:IconDraw
{
    var iconcolor:CGColor!
    //// Color Declarations
    
    func CGPointMake(_ x:CGFloat,_ y:CGFloat)->CGPoint
    {
        let originWidth:CGFloat = 196
        let originHeight:CGFloat = 243
        
        let swidth = self.frame.width
        let sheight = self.frame.height
        
        let sx = x * (swidth / originWidth)
        let sy = y * (sheight / originHeight)
        
        return CGPoint(x: sx, y: sy)
    }
    
    override func drawCanvas(rect:CGRect)
    {
        let size = rect.size
        if(UIGraphicsGetCurrentContext() == nil){
            UIGraphicsBeginImageContext(size)
        }
        guard let context = UIGraphicsGetCurrentContext() else{
            fatalError()
        }
        context.scaleBy(x: size.width / 196, y: size.height / 244)
        //// Color Declarations
        let fillColor = UIColor(red: 0.953, green: 0.678, blue: 0.059, alpha: 1.000)
        let fillColor2 = UIColor(red: 0.933, green: 0.557, blue: 0.071, alpha: 1.000)
        let fillColor3 = UIColor(red: 0.996, green: 0.996, blue: 0.996, alpha: 1.000)
        let fillColor4 = UIColor(red: 0.114, green: 0.643, blue: 0.788, alpha: 1.000)
        let fillColor5 = UIColor(red: 0.918, green: 0.110, blue: 0.153, alpha: 1.000)
        let fillColor6 = UIColor(red: 0.984, green: 0.816, blue: 0.071, alpha: 1.000)
        
        //// Page-1
        //// Group 4
        //// Shape Drawing
        let shapePath = UIBezierPath()
        shapePath.move(to: CGPoint(x: 3.17, y: 229.05))
        shapePath.addLine(to: CGPoint(x: 24.33, y: 229.05))
        shapePath.addCurve(to: CGPoint(x: 30.61, y: 199.79), controlPoint1: CGPoint(x: 26.35, y: 219.33), controlPoint2: CGPoint(x: 28.48, y: 209.51))
        shapePath.addCurve(to: CGPoint(x: 38.2, y: 163.85), controlPoint1: CGPoint(x: 33.14, y: 187.74), controlPoint2: CGPoint(x: 35.67, y: 175.79))
        shapePath.addCurve(to: CGPoint(x: 43.26, y: 158.69), controlPoint1: CGPoint(x: 38.8, y: 161.01), controlPoint2: CGPoint(x: 41.03, y: 158.69))
        shapePath.addLine(to: CGPoint(x: 49.44, y: 158.69))
        shapePath.addCurve(to: CGPoint(x: 49.44, y: 159.19), controlPoint1: CGPoint(x: 49.44, y: 158.89), controlPoint2: CGPoint(x: 49.44, y: 158.99))
        shapePath.addCurve(to: CGPoint(x: 43.16, y: 191.79), controlPoint1: CGPoint(x: 47.31, y: 170.03), controlPoint2: CGPoint(x: 45.29, y: 180.96))
        shapePath.addCurve(to: CGPoint(x: 36.98, y: 224.49), controlPoint1: CGPoint(x: 41.14, y: 202.72), controlPoint2: CGPoint(x: 39.01, y: 213.56))
        shapePath.addCurve(to: CGPoint(x: 40.23, y: 229.05), controlPoint1: CGPoint(x: 36.48, y: 227.02), controlPoint2: CGPoint(x: 37.9, y: 229.05))
        shapePath.addLine(to: CGPoint(x: 155.53, y: 229.05))
        shapePath.addCurve(to: CGPoint(x: 158.77, y: 224.49), controlPoint1: CGPoint(x: 157.76, y: 229.05), controlPoint2: CGPoint(x: 159.28, y: 227.02))
        shapePath.addCurve(to: CGPoint(x: 152.6, y: 191.79), controlPoint1: CGPoint(x: 156.75, y: 213.56), controlPoint2: CGPoint(x: 154.62, y: 202.72))
        shapePath.addCurve(to: CGPoint(x: 146.32, y: 159.19), controlPoint1: CGPoint(x: 150.47, y: 180.96), controlPoint2: CGPoint(x: 148.45, y: 170.03))
        shapePath.addCurve(to: CGPoint(x: 146.22, y: 158.69), controlPoint1: CGPoint(x: 146.32, y: 158.99), controlPoint2: CGPoint(x: 146.32, y: 158.89))
        shapePath.addLine(to: CGPoint(x: 152.49, y: 158.69))
        shapePath.addCurve(to: CGPoint(x: 157.56, y: 163.85), controlPoint1: CGPoint(x: 154.62, y: 158.69), controlPoint2: CGPoint(x: 156.95, y: 161.01))
        shapePath.addCurve(to: CGPoint(x: 165.15, y: 199.79), controlPoint1: CGPoint(x: 160.09, y: 175.79), controlPoint2: CGPoint(x: 162.62, y: 187.74))
        shapePath.addCurve(to: CGPoint(x: 171.43, y: 229.05), controlPoint1: CGPoint(x: 167.28, y: 209.51), controlPoint2: CGPoint(x: 169.3, y: 219.33))
        shapePath.addLine(to: CGPoint(x: 192.59, y: 229.05))
        shapePath.addCurve(to: CGPoint(x: 194.81, y: 230.16), controlPoint1: CGPoint(x: 193.8, y: 229.05), controlPoint2: CGPoint(x: 194.81, y: 229.55))
        shapePath.addLine(to: CGPoint(x: 194.81, y: 242.71))
        shapePath.addCurve(to: CGPoint(x: 192.59, y: 243.83), controlPoint1: CGPoint(x: 194.81, y: 243.42), controlPoint2: CGPoint(x: 193.8, y: 243.83))
        shapePath.addLine(to: CGPoint(x: 3.17, y: 243.83))
        shapePath.addCurve(to: CGPoint(x: 0.94, y: 242.71), controlPoint1: CGPoint(x: 1.96, y: 243.83), controlPoint2: CGPoint(x: 0.94, y: 243.42))
        shapePath.addLine(to: CGPoint(x: 0.94, y: 230.16))
        shapePath.addCurve(to: CGPoint(x: 3.17, y: 229.05), controlPoint1: CGPoint(x: 0.94, y: 229.55), controlPoint2: CGPoint(x: 1.96, y: 229.05))
        shapePath.addLine(to: CGPoint(x: 3.17, y: 229.05))
        shapePath.close()
        shapePath.usesEvenOddFillRule = true
        fillColor.setFill()
        shapePath.fill()
        
        
        //// Shape 2 Drawing
        let shape2Path = UIBezierPath()
        shape2Path.move(to: CGPoint(x: 194.81, y: 238.06))
        shape2Path.addLine(to: CGPoint(x: 194.81, y: 242.71))
        shape2Path.addCurve(to: CGPoint(x: 192.59, y: 243.83), controlPoint1: CGPoint(x: 194.81, y: 243.42), controlPoint2: CGPoint(x: 193.8, y: 243.83))
        shape2Path.addLine(to: CGPoint(x: 3.17, y: 243.83))
        shape2Path.addCurve(to: CGPoint(x: 0.94, y: 242.71), controlPoint1: CGPoint(x: 1.96, y: 243.83), controlPoint2: CGPoint(x: 0.94, y: 243.42))
        shape2Path.addLine(to: CGPoint(x: 0.94, y: 238.06))
        shape2Path.addLine(to: CGPoint(x: 194.81, y: 238.06))
        shape2Path.close()
        shape2Path.usesEvenOddFillRule = true
        fillColor2.setFill()
        shape2Path.fill()
        
        
        //// Shape 3 Drawing
        let shape3Path = UIBezierPath()
        shape3Path.move(to: CGPoint(x: 34.65, y: 180.86))
        shape3Path.addCurve(to: CGPoint(x: 38.2, y: 163.85), controlPoint1: CGPoint(x: 35.77, y: 175.19), controlPoint2: CGPoint(x: 36.98, y: 169.52))
        shape3Path.addCurve(to: CGPoint(x: 43.26, y: 158.69), controlPoint1: CGPoint(x: 38.8, y: 161.01), controlPoint2: CGPoint(x: 41.03, y: 158.69))
        shape3Path.addLine(to: CGPoint(x: 49.44, y: 158.69))
        shape3Path.addCurve(to: CGPoint(x: 49.44, y: 159.19), controlPoint1: CGPoint(x: 49.44, y: 158.89), controlPoint2: CGPoint(x: 49.44, y: 158.99))
        shape3Path.addCurve(to: CGPoint(x: 44.07, y: 187.34), controlPoint1: CGPoint(x: 47.62, y: 168.51), controlPoint2: CGPoint(x: 45.79, y: 177.92))
        shape3Path.addCurve(to: CGPoint(x: 34.65, y: 180.86), controlPoint1: CGPoint(x: 40.73, y: 185.31), controlPoint2: CGPoint(x: 37.59, y: 183.19))
        shape3Path.addLine(to: CGPoint(x: 34.65, y: 180.86))
        shape3Path.close()
        shape3Path.move(to: CGPoint(x: 151.69, y: 187.34))
        shape3Path.addCurve(to: CGPoint(x: 146.32, y: 159.19), controlPoint1: CGPoint(x: 149.97, y: 177.92), controlPoint2: CGPoint(x: 148.14, y: 168.61))
        shape3Path.addCurve(to: CGPoint(x: 146.22, y: 158.69), controlPoint1: CGPoint(x: 146.32, y: 158.99), controlPoint2: CGPoint(x: 146.32, y: 158.89))
        shape3Path.addLine(to: CGPoint(x: 152.49, y: 158.69))
        shape3Path.addCurve(to: CGPoint(x: 157.56, y: 163.85), controlPoint1: CGPoint(x: 154.62, y: 158.69), controlPoint2: CGPoint(x: 156.95, y: 161.01))
        shape3Path.addCurve(to: CGPoint(x: 161.1, y: 180.86), controlPoint1: CGPoint(x: 158.77, y: 169.52), controlPoint2: CGPoint(x: 159.88, y: 175.19))
        shape3Path.addCurve(to: CGPoint(x: 151.69, y: 187.34), controlPoint1: CGPoint(x: 158.16, y: 183.19), controlPoint2: CGPoint(x: 154.93, y: 185.31))
        shape3Path.addLine(to: CGPoint(x: 151.69, y: 187.34))
        shape3Path.close()
        shape3Path.usesEvenOddFillRule = true
        fillColor2.setFill()
        shape3Path.fill()
        
        
        //// Shape 4 Drawing
        let shape4Path = UIBezierPath(ovalIn: CGRect(x: -0.35, y: 0.1, width: 196.5, height: 196.4))
        fillColor.setFill()
        shape4Path.fill()
        
        
        //// Shape 5 Drawing
        let shape5Path = UIBezierPath(ovalIn: CGRect(x: 4.5, y: 5.12, width: 186.7, height: 186.5))
        fillColor3.setFill()
        shape5Path.fill()
        
        
        //// Shape 6 Drawing
        let shape6Path = UIBezierPath()
        shape6Path.move(to: CGPoint(x: 162.42, y: 37.91))
        shape6Path.addCurve(to: CGPoint(x: 186.31, y: 95.52), controlPoint1: CGPoint(x: 176.59, y: 53.1), controlPoint2: CGPoint(x: 185.6, y: 73.24))
        shape6Path.addLine(to: CGPoint(x: 104.92, y: 95.52))
        shape6Path.addLine(to: CGPoint(x: 162.42, y: 37.91))
        shape6Path.close()
        shape6Path.move(to: CGPoint(x: 158.37, y: 162.94))
        shape6Path.addCurve(to: CGPoint(x: 100.76, y: 186.83), controlPoint1: CGPoint(x: 143.18, y: 177.11), controlPoint2: CGPoint(x: 123.04, y: 186.12))
        shape6Path.addLine(to: CGPoint(x: 100.76, y: 105.44))
        shape6Path.addLine(to: CGPoint(x: 158.37, y: 162.94))
        shape6Path.close()
        shape6Path.move(to: CGPoint(x: 33.34, y: 158.79))
        shape6Path.addCurve(to: CGPoint(x: 9.45, y: 101.28), controlPoint1: CGPoint(x: 19.07, y: 143.71), controlPoint2: CGPoint(x: 10.16, y: 123.56))
        shape6Path.addLine(to: CGPoint(x: 90.84, y: 101.28))
        shape6Path.addLine(to: CGPoint(x: 33.34, y: 158.79))
        shape6Path.close()
        shape6Path.move(to: CGPoint(x: 37.39, y: 33.86))
        shape6Path.addCurve(to: CGPoint(x: 94.99, y: 9.97), controlPoint1: CGPoint(x: 52.58, y: 19.59), controlPoint2: CGPoint(x: 72.72, y: 10.68))
        shape6Path.addLine(to: CGPoint(x: 94.99, y: 91.36))
        shape6Path.addLine(to: CGPoint(x: 37.39, y: 33.86))
        shape6Path.close()
        shape6Path.usesEvenOddFillRule = true
        fillColor4.setFill()
        shape6Path.fill()
        
        
        //// Shape 7 Drawing
        let shape7Path = UIBezierPath()
        shape7Path.move(to: CGPoint(x: 100.77, y: 9.97))
        shape7Path.addCurve(to: CGPoint(x: 158.37, y: 33.86), controlPoint1: CGPoint(x: 123.04, y: 10.68), controlPoint2: CGPoint(x: 143.18, y: 19.59))
        shape7Path.addLine(to: CGPoint(x: 100.77, y: 91.36))
        shape7Path.addLine(to: CGPoint(x: 100.77, y: 9.97))
        shape7Path.close()
        shape7Path.move(to: CGPoint(x: 9.45, y: 95.52))
        shape7Path.addCurve(to: CGPoint(x: 33.34, y: 37.91), controlPoint1: CGPoint(x: 10.16, y: 73.24), controlPoint2: CGPoint(x: 19.06, y: 53.1))
        shape7Path.addLine(to: CGPoint(x: 90.84, y: 95.52))
        shape7Path.addLine(to: CGPoint(x: 9.45, y: 95.52))
        shape7Path.close()
        shape7Path.move(to: CGPoint(x: 94.99, y: 186.83))
        shape7Path.addCurve(to: CGPoint(x: 37.39, y: 162.94), controlPoint1: CGPoint(x: 72.72, y: 186.12), controlPoint2: CGPoint(x: 52.57, y: 177.11))
        shape7Path.addLine(to: CGPoint(x: 94.99, y: 105.44))
        shape7Path.addLine(to: CGPoint(x: 94.99, y: 186.83))
        shape7Path.close()
        shape7Path.move(to: CGPoint(x: 186.31, y: 101.28))
        shape7Path.addCurve(to: CGPoint(x: 162.42, y: 158.79), controlPoint1: CGPoint(x: 185.6, y: 123.56), controlPoint2: CGPoint(x: 176.59, y: 143.71))
        shape7Path.addLine(to: CGPoint(x: 104.92, y: 101.28))
        shape7Path.addLine(to: CGPoint(x: 186.31, y: 101.28))
        shape7Path.addLine(to: CGPoint(x: 186.31, y: 101.28))
        shape7Path.close()
        shape7Path.usesEvenOddFillRule = true
        fillColor5.setFill()
        shape7Path.fill()
        
        
        //// Shape 8 Drawing
        let CenterPrizeFrame = CGRect(x: 27.1, y: 27.67, width: 141.5, height: 141.3)
        let shape8Path = UIBezierPath(ovalIn: CenterPrizeFrame)
        fillColor3.setFill()
        shape8Path.fill()
        
        
        //// Rectangle-path Drawing
        let rectanglepathPath = UIBezierPath(rect: CGRect(x: 27.16, y: 95.52, width: 141.33, height: 5.77))
        fillColor.setFill()
        rectanglepathPath.fill()
        
        
        //// Rectangle-path 2 Drawing
        let rectanglepath2Path = UIBezierPath(rect: CGRect(x: 94.89, y: 27.79, width: 5.87, height: 141.23))
        fillColor.setFill()
        rectanglepath2Path.fill()
        
        
        //// Shape 9 Drawing
        let shape9Path = UIBezierPath()
        shape9Path.move(to: CGPoint(x: 149.86, y: 50.46))
        shape9Path.addLine(to: CGPoint(x: 49.94, y: 150.39))
        shape9Path.addLine(to: CGPoint(x: 45.79, y: 146.24))
        shape9Path.addLine(to: CGPoint(x: 145.71, y: 46.41))
        shape9Path.addLine(to: CGPoint(x: 149.86, y: 50.46))
        shape9Path.close()
        shape9Path.usesEvenOddFillRule = true
        fillColor.setFill()
        shape9Path.fill()
        
        
        //// Shape 10 Drawing
        let shape10Path = UIBezierPath()
        shape10Path.move(to: CGPoint(x: 145.71, y: 150.39))
        shape10Path.addLine(to: CGPoint(x: 45.79, y: 50.46))
        shape10Path.addLine(to: CGPoint(x: 49.94, y: 46.41))
        shape10Path.addLine(to: CGPoint(x: 149.86, y: 146.24))
        shape10Path.addLine(to: CGPoint(x: 145.71, y: 150.39))
        shape10Path.close()
        shape10Path.usesEvenOddFillRule = true
        fillColor.setFill()
        shape10Path.fill()
        
        
        //// Shape 11 Drawing
        let shape11Path = UIBezierPath(ovalIn: CGRect(x: 71.15, y: 71.75, width: 53.3, height: 53.3))
        fillColor6.setFill()
        shape11Path.fill()
        
        
        //// Shape 12 Drawing
        let shape12Path = UIBezierPath(ovalIn: CGRect(x: 74.2, y: 74.77, width: 47.2, height: 47.2))
        fillColor3.setFill()
        shape12Path.fill()
        
        
        //// Shape 13 Drawing
        let shape13Path = UIBezierPath(ovalIn: CGRect(x: 76.35, y: 76.87, width: 42.9, height: 42.9))
        fillColor.setFill()
        shape13Path.fill()
        
        
        //// Shape 14 Drawing
        let shape14Path = UIBezierPath(ovalIn: CGRect(x: 92.9, y: 93.48, width: 9.9, height: 9.8))
        fillColor3.setFill()
        shape14Path.fill()
        
        //// Rectangle Drawing
        let imageSize = CGSize(width: 22, height: 24)
        let xArray:[CGFloat] = [40,68,106,134,134,106,68,40]
        let yArray:[CGFloat] = [103,135,135,103,69,37,37,69]
        for i in 0..<8{
            if let image = ItemArray[i]{
                let point = CGPoint(x: xArray[i], y: yArray[i])
                let rect = CGRect(origin: point, size: imageSize)
                if let cgimage = image.cgImage{
                    context.draw(cgimage, in: rect)
                }
            }
        }
        UIGraphicsEndImageContext()
    }
}
