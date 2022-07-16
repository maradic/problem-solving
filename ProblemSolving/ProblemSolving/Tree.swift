//
//  Tree.swift
//  ProblemSolving
//
//  Created by Marinko Radic on 16.07.2022..
//

import Foundation

struct Tree {
    
}

class Node<T: CustomStringConvertible> {
    // Properties
    var data: T
    private (set) var children = [Node]()
    var parent: Node?
        
    // Init
    init(_ data: T) {
        self.data = data
    }
    
    init(_ data: T, @NodeBuilder builder: () -> [Node]) {
        self.data = data
        self.children = builder()
    }
    
    func add(child: Node) {
        child.parent = self
        self.children.append(child)
    }
    
    func treeLines() -> [String] {
        return [self.data.description] + self.children.flatMap{$0.treeLines()}.map{"    "+$0}
    }
    
    func printTree() {
        let text = treeLines().joined(separator: "\n")
        print(text)
    }
}

@resultBuilder
struct NodeBuilder {
    static func buildBlock<T>(_ children: Node<T>...) -> [Node<T>] {
         children
    }
}
