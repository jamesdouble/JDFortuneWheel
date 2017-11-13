//
//  JDFortuneWheel.swift
//  JDFortuneWheel
//
//  Created by 郭介騵 on 2017/11/12.
//  Copyright © 2017年 james12345. All rights reserved.
//

import UIKit

enum WheelType{
    case Simple
}
public protocol JDFortuneWheelDataSource{
    func ItemImageInWheel(forIndex index:Int)->UIImage
    func shouldPointToItemIndex(inwheel:JDFortuneWheel)->Int
    func WheelDidPointToItem(AtIndex index:Int)
}

public class JDFortuneWheel:UIView
{
    var theWheel:IconDraw?
    var type:WheelType = .Simple
    public var datasource:JDFortuneWheelDataSource?{
        didSet{
            for i in 0..<8{
                theWheel?.ItemArray.append(datasource?.ItemImageInWheel(forIndex: i))
            }
            self.theWheel?.setNeedsDisplay()
        }
    }
    
    init(frame:CGRect,type:WheelType = .Simple) {
        super.init(frame: frame)
        commoninit()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commoninit()
    }
    
    func commoninit(){
        theWheel = JDFortuneWheelOne(frame: CGRect(origin: CGPoint.zero, size: self.frame.size))
        self.addSubview(theWheel!)
    }
    
    override public func draw(_ rect: CGRect) {
        super.draw(rect)
        theWheel?.draw(rect)
    }
    
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        StartSpin()
    }

    public func StartSpin(){
        if let data = self.datasource{
            let PointToItemIndex = data.shouldPointToItemIndex(inwheel: self)
            theWheel?.fingerView.spin(toIndex: PointToItemIndex) {
                data.WheelDidPointToItem(AtIndex: PointToItemIndex)
            }
        }
        else{
            
        }
    }
    
    public func stopSpin(){
        theWheel?.fingerView.stopSpin()
    }

}


