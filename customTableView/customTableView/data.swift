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
        
        let b1 = balloon(bImage: UIImage(named: "doc.JPG"), bName: "สาขาวิทยาการคอมพิวเตอร์" )
        tempArray.append(b1)
        let b2 = balloon(bImage: UIImage(named: "it.jpg"), bName: "สาขานิเทศศาสตร์" )
        tempArray.append(b2)
        let b3 = balloon(bImage: UIImage(named: "balloon3.png"), bName: "สาขาคอมพิวเตอร์อนิเมชั่นและเกมส์" )
        tempArray.append(b3)
        let b4 = balloon(bImage: UIImage(named: "balloon4.png"), bName: "สาขาภูมิสารสนเทศศาสตร์" )
        tempArray.append(b4)
        let b5 = balloon(bImage: UIImage(named: "balloon5.png"), bName: "สาขาสารสนเทศศาสตร์" )
        tempArray.append(b5)
        let b6 = balloon(bImage: UIImage(named: "balloon5.png"), bName: "สาขาเทคโนโลยีสารสนเทศและการสื่อสาร" )
        tempArray.append(b6)
        return tempArray
    }
}
