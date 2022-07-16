//
//  main.swift
//  ProblemSolving
//
//  Created by Marinko Radic on 16.07.2022..
//

import Foundation

print("Trees")

let organisation = Node("BlubBlub")
let ceo = Node("Jernej")
let androidTeam = Node("Dejan")
let iosTeam = Node("Jure")
let marinac = Node("Marinac")


organisation.add(child: ceo)
ceo.add(child: androidTeam)
ceo.add(child: iosTeam)

iosTeam.add(child: marinac)

// Improved creation of the tree with builder

let organisationPRO = Node("BlubBlub") {
    Node("Jernej") {
        Node("Jure") {
            Node("Marinac")
        }
        Node("Dejan") {
            Node("Tim")
            
        }
    }
}

organisationPRO.printTree()

let root = Node("Test") {
    Node("Test1") {
        Node("Test11")
        Node("Test12")
    }
    Node("Test2") {
        Node("Test21")
        Node("Test22")
    }
}

root.printTree()

print("Trees END")
