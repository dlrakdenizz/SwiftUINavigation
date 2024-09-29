//
//  Dog.swift
//  SwiftUINavigation
//
//  Created by Dilara Akdeniz on 26.07.2023.
//

import Foundation

//Hashable, Swift dilinde kullanılan bir protokoldür ve bir nesnenin eşsiz bir hash değerine sahip olmasını sağlar. Bu hash değeri, nesnelerin hızlı karşılaştırılması ve veri yapılarında verimli bir şekilde saklanabilmesi için kullanılır. Özellikle set ve dictionary gibi veri yapılarında, öğeleri benzersiz bir şekilde tanımlamak için Hashable protokolüne uyumlu nesneler gereklidir.
struct Dog: Identifiable, Hashable {
    var id = UUID()
    let name : String
}

let dogs : [Dog] = [Dog(name: "Barley"), Dog(name: "Lucky"),Dog(name: "Jack")]
