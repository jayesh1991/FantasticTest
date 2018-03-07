//
//  FantasticView.swift
//  FantasticView
//
//  Created by Imma Web Pvt Ltd on 07/03/18.
//  Copyright © 2018 Test. All rights reserved.
//

import Foundation
import UIKit


class FantasticView: UIView {
    
    let colors : [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]
    var colorCounter = 0

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        let scheduledColorChanged = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) { (timer) in  //1
            UIView.animate(withDuration: 2.0) {  //2
                self.layer.backgroundColor = self.colors[self.colorCounter % 6].cgColor  //3
                self.colorCounter+=1  //4
            }
        }
        scheduledColorChanged.fire()  //5
        
    }
    
    
     required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
     
        
        
    }
    
    
    
}
