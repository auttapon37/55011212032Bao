//
//  data.swift
//  customTableView
//
//  Created by iStudents on 2/27/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class data: NSObject {
    func getData() -> Array<balloon> {
        var tempArray = Array<balloon>()
        
        let b1 = balloon(bImage: UIImage(named: "balloon1.png"), bName: "balloon1" )
        tempArray.append(b1)
        let b2 = balloon(bImage: UIImage(named: "balloon2.png"), bName: "balloon2" )
        tempArray.append(b2)
        let b3 = balloon(bImage: UIImage(named: "balloon3.png"), bName: "balloon3" )
        tempArray.append(b3)
        let b4 = balloon(bImage: UIImage(named: "balloon4.png"), bName: "balloon4" )
        tempArray.append(b4)
        let b5 = balloon(bImage: UIImage(named: "balloon5.png"), bName: "balloon5" )
        tempArray.append(b5)
        return tempArray
    }
}
