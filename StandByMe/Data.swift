//
//  Data.swift
//  StandByMe
//
//  Created by 杨宜欣 on 15/6/2.
//  Copyright (c) 2015年 arman. All rights reserved.
//

import Foundation


class PlatFormData{
    var data = (ID:".jpg", destination: "北京", Times:"6.1~6.6", costs:"2000", details:"continued",totalNum: 5)//以后改成字典，以ID作为key
    
    var finalData = [".jpg" : (destination: "北京", Times:"6.1~6.6", costs:"2000", totalNum: 5)]
}


class Moments{
    var scene = [String]()
    var comment = [String]()
}

class Users{
    var ID = "00000"
    var graph = ".jpg"
    var WantToGo = [String]()
    var HaveBeenTo = [String]()
    var Moment = [Moments]()
}
