//
//  Data.swift
//  StandByMe
//
//  Created by 杨宜欣 on 15/6/2.
//  Copyright (c) 2015年 arman. All rights reserved.
//

import Foundation


class PlatForm {
    var users = [User]()
    var startDate = "2015-6-22"
    var endDate = "2015-6-26"
    var destination = "长沙"
    var cost = "3000"
    var maxNum = 25
    
}


class Moments {
    var pic = [String]()
    var comment = [String]()
}

class User {
    var ID:Int = 123456
    var name = "薄熙来"
    var icon = ".jpg"
    var WantedToGo = [String]()
    var HaveBeenTo = [String]()
    var Moment = [Moments]()
}
