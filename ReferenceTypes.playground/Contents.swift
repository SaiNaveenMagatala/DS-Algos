import UIKit

print("//Demonstrating reference types//")

class Node {
    var value: Int
    init(value: Int) {
        self.value = value
    }
}

class Demonstrate {

    func mutate() {
        let nodeA = Node(value: 10)      // Creating nodeA
        let nodeB = nodeA                // Assigning nodeA reference to nodeB
        let nodeC = nodeB                // Assigning nodeB reference to nodeC
        nodeC.value = 30                 // modifying value on nodeC
        
        print("After modifying value on nodeC")
        print("nodeA", nodeA.value)
        print("nodeB", nodeB.value)
        print("nodeC", nodeC.value)
        // This will modify the value of all the three nodes as they are connected by reference.
    }
    
    func assign() {
        let nodeA = Node(value: 10)                   // Creating nodeA
        let nodeB = nodeA                             // Assigning nodeA reference to nodeB
        var nodeC = nodeB                             // Assigning nodeB reference to nodeC
        nodeC = Node(value: 30)                       // Assigning nodeC to a new Value
        
        print("\nAfter assigning nodeC to a new Node")
        print("nodeA", nodeA.value)
        print("nodeB", nodeB.value)
        print("nodeC", nodeC.value)
        // This will assign nodeC to a new Node but will not modify the nodes A, B as
        // now nodeC points a whole new memory location
        
        nodeC.value = 50
        // this will break the links between nodes A, B and c
        print("\nAfter modifying value on a new nodeC")
        print("nodeA", nodeA.value)
        print("nodeB", nodeB.value)
        print("nodeC", nodeC.value)
    }
}

Demonstrate().mutate()
Demonstrate().assign()
