//
//  main.swift
//  DataStruct_list
//
//  Created by yuanwei on 16/12/30.
//  Copyright © 2016年 YuanWei. All rights reserved.
//

import Foundation

let array = "a,b,c,d,e,f,g".components(separatedBy: ",")

func squeueList(){
    
    let sequcenceList: SequenceList = SequenceList(capacity: 10)
    
    for item in array {
        sequcenceList.addItem(item)
    }
    sequcenceList.consoleArray()
    
    let insertResult = sequcenceList.insert("z", index: 0)
    let removeResult = sequcenceList.delete(1)
    let modifyResult = sequcenceList.modify(3, item: "m")
    
    if insertResult && removeResult && (modifyResult != nil) {
        sequcenceList.consoleArray()
    }
}

squeueList()
