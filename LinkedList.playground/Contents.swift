import UIKit

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
    
    func insert(value: Int) {
        var temp = head
        while temp?.next != nil {
            temp = temp?.next
        }
        temp?.next = Node(value: value, next: nil)
    }
}

let node3 = Node(value: 3, next: nil)
let node2 = Node(value: 2, next: node3)
let node1 = Node(value: 1, next: node2)

let list = LinkedList(head: Node(value: 0, next: node1))
//list.printList()

list.insert(value: 4)

list.printList()
