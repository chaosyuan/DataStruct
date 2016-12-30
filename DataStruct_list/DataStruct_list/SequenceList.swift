//
//  SequenceList.swift
//  DataStruct_List
//
//  Created by yuanwei on 16/12/30.
//  Copyright © 2016年 YuanWei. All rights reserved.
//

import Foundation

class SequenceList {
    
    private var list : NSMutableArray
    private var count = 0;
    private var capacity = 0;
    
    // 元素个数
    var length : Int {
        get{
            return count
        }
    }
    init(capacity : Int) {
        self.capacity = capacity
        self.list = NSMutableArray(capacity:capacity)
    }
    // 顺序输出
    func consoleArray() {
        for i in 0..<count {
            print("\(i) -> \(list[i])")
        }
        print("\n")
    }
    // 根据下标索引元素
    func objectOfIndex(_ index : Int) -> String? {
        if !checkIndex(index) {
            return nil;
        }
        return list[index] as? String
    }
    // 从末尾追加元素
    func addItem(_ item : String){
        list[count] = item
        count += 1
    }
    
    // 根据下标插入值
    func insert(_ item : String,index : Int) -> Bool {
        
        if !checkIndex(index) {
            return false;
        }
        var i = count
        
        while i > index {
            list[i] =  list[i - 1]
            i -= 1
        }
        list[index] = item;
        count += 1
        return true
    }
    // 根据下标删除元素
    func delete(_ index : Int) -> Bool {
        if !checkIndex(index) {
            return false;
        }
        for i in index..<count-1 {
            list[i]  =  list[i + 1]
        }
        count -= 1
        list.removeLastObject();
        return true;
    }
    //  根据下标修改元素 返回之前的值
    func modify(_ index: Int, item: String) -> String? {
        if !checkIndex(index) {
            return nil
        }
        let oldValue = list[index]
        list[index] = item
        return oldValue as? String
    }
    
    
    //检查index是否合法
    func checkIndex(_ index : Int) -> Bool {
        if(index > count || index < 0){
            print("index非法")
            return false;
        }
        return true;
    }
}
