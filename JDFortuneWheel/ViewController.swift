//
//  ViewController.swift
//  JDFortuneWheel
//
//  Created by 郭介騵 on 2017/11/12.
//  Copyright © 2017年 james12345. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        wheelView.datasource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var wheelView: JDFortuneWheel!
    
}

extension ViewController :JDFortuneWheelDataSource{
    func ItemImageInWheel(forIndex index: Int) -> UIImage {
        return UIImage(named: "C8oJ60sXoAEaLVg")!
    }
    
    func shouldPointToItemIndex(inwheel: JDFortuneWheel) -> Int {
        return 4
    }
    
    func WheelDidPointToItem(AtIndex index: Int) {
        print(#function)
    }
    
    
}
