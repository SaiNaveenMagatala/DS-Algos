import UIKit

// Single Linkedlist with no repetations

class Node {
    let value: Int
    var next: Node?
    
    init(value: Int, next: Node?) {
        self.value = value
        self.next = next
    }
}

class LinkedList {
    var head: Node?
    
    init(head: Node) {
        self.head = head
    }
    
    func printList() {
        var temp = head
        while temp != nil {
            print(temp?.value ?? "")
            temp = temp?.next
        }
    }
    
    func insertLast(value: Int) {
        var temp = head
        while temp?.next != nil {
            temp = temp?.next
        }
        temp?.next = Node(value: value, next: nil)
    }
    
    func insertAfter(value: Int, _ element: Int) {
        var temp = head
        while temp != nil && temp?.value != value {
            temp = temp?.next
        }
        let later = temp?.next
        temp?.next = Node(value: element, next: later)
        
    }
    
    func delete(value: Int) {
        if head?.value == value {
            head = head?.next
            return
        }
        var temp = head
        while temp?.next != nil && temp?.next?.value != value {
            temp = temp?.next
        }
        temp?.next = temp?.next?.next
    }
    
    func deleteLast() {
        if head?.next == nil {
            head = nil
            return
        }
        var temp = head
        var prev: Node?
        while temp?.next != nil {
            prev = temp
            temp = temp?.next
        }
        prev?.next = temp?.next
    }
    
    func deleteFirst() {
        if head != nil {
            head = head?.next
        }
    }
}

let node3 = Node(value: 3, next: nil)
let node2 = Node(value: 2, next: node3)
let node1 = Node(value: 1, next: node2)

let list = LinkedList(head: Node(value: 0, next: node1))
// 0 -> 1 -> 2 -> 3

list.insertLast(value: 4)
// 0 -> 1 -> 2 -> 3 -> 4

list.delete(value: 2)
//0 -> 1 -> 3 -> 4

list.deleteFirst()
//1 -> 3 -> 4

list.deleteLast()
//1 -> 3

list.insertAfter(value: 1, 5)
//1 -> 5 -> 3

list.printList()

