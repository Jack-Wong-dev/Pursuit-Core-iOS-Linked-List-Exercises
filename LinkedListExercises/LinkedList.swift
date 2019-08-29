//
//  LinkedList.swift
//  LinkedListExercises
//
//  Created by C4Q  on 10/24/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import Foundation

public class Node<T> {
    var key: T
    var next: Node?
    init(key: T) {
        self.key = key
    }
}

public class LinkedList<T: Equatable> {
    var head: Node<T>?
    func printAllKeys() {
        var currentNode = head
        while currentNode != nil {
            print(currentNode!.key)
            currentNode = currentNode?.next
        }
    }
    
    //    var count: Int {return 0}
    var count: Int {
        var currentNode = head
        var counter = 0
        
        while currentNode != nil{
            counter += 1
            currentNode = currentNode?.next
        }
        return counter
    }
    
    //    func append(element newKey: T) {}
    func append(element newKey: T) {
        guard self.count != 0 else {
            self.head = Node(key: newKey)
            return
        }
        getNode(at: count - 1)?.next = Node(key: newKey)
    }
    
    
    //    func getNode<T>(at index: Int) -> Node<T>? {return nil}
    func getNode(at index: Int) -> Node<T>? {
        guard index >= 0 else {
            return nil
        }
        var current: (node: Node?, index: Int) = (self.head, 0)
        while current.index != index {
            if current.node == nil {
                return nil
            }
            current.node = current.node?.next
            current.index += 1
        }
        return current.node
    }
    
    
    //    func contains<T>(element targetKey: T) -> Bool {return false}
    func contains(element targetKey: T) -> Bool {
        var currentNode = head
        while currentNode != nil{
            if currentNode!.key == targetKey{
                return true
            }
            currentNode = currentNode?.next
        }
        return false
    }
    
    //    func equals<T>(otherList: LinkedList<T>) -> Bool {return true}
    func equals(otherList: LinkedList<T>) -> Bool {
        guard self.count == otherList.count else{
            return false
        }
        var otherCurrentNode = otherList.head
        var thisCurrentNode = self.head
        
        while thisCurrentNode != nil{
            if thisCurrentNode!.key != otherCurrentNode!.key{
                return false
            }
            otherCurrentNode = otherCurrentNode!.next
            thisCurrentNode = thisCurrentNode!.next
        }
        return true
    }
    
    
    //    func toArr<T>() -> [T] {return Array<T>()}
    func toArr() -> [T] {
        var arr = [T]()
        var currentNode = self.head
        while currentNode != nil{
            arr.append(currentNode!.key)
            currentNode = currentNode?.next
        }
        return arr
    }
    
    //NOT PART OF THE LAB
    func reverse() {
        //          var reverseLL = LinkedList<T>()
        
        var prev : Node<T>?
        var currentNode = head
        var next = currentNode?.next
        
        while currentNode != nil{
            next = currentNode?.next
            currentNode?.next = prev
            prev = currentNode
            currentNode = next
        }
        head = prev
    }
    
    
    func reversed()-> LinkedList<T> {
        var reversedLL = LinkedList<T>()
        reversedLL = self
        var prev : Node<T>?
        var currentNode = reversedLL.head
        var next = currentNode?.next
        
        while currentNode != nil{
            next = currentNode?.next
            currentNode?.next = prev
            prev = currentNode
            currentNode = next
        }
        
        reversedLL.head = prev
        
        return reversedLL
    }
    
    
    func removeAll() {
        head = nil
    }
    
    //Challenge Questions
    func removeDuplicatesFromSortedList() {
        
        var keys: Array<T> = Array<T>()
        
        var currentNode = self.head
        var previousNode: Node<T>?
        
        while currentNode != nil {
            if keys.contains(currentNode!.key) {
                previousNode?.next = currentNode!.next
            } else {
                keys.append(currentNode!.key)
                previousNode = currentNode
            }
            currentNode = currentNode!.next
        }
    }
    
    //    static func mergeSortedLists<T>(listOne: LinkedList<T>, listTwo: LinkedList<T>) -> LinkedList<T> {
    //        return LinkedList<T>()
    //    }
    //
    static func mergeSortedLists<T>(listOne: LinkedList<T>, listTwo: LinkedList<T>) -> LinkedList<T> {
        
        
        return LinkedList<T>()
    }
    
    
    
    
    
    
    
}

