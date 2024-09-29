//
//  Cat.swift
//  SwiftUINavigation
//
//  Created by Dilara Akdeniz on 26.07.2023.
//

import Foundation

struct Cat: Identifiable, Hashable {
    var id = UUID()
    let name : String
}

let cats : [Cat] = [Cat(name: "Bo"), Cat(name: "Ba"), Cat(name: "Whiskas")]
