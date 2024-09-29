//
//  SecondView.swift
//  SwiftUINavigation
//
//  Created by Dilara Akdeniz on 26.07.2023.
//

import SwiftUI

struct SecondView: View {
    
    @State var path : [Dog] = []
   
    var body: some View {
        //path kullanarak manuel olarak örneğin butona basıldığından şuraya geç diyebilirim.
        NavigationStack(path: $path) {
            List(dogs) { dog in
                NavigationLink(dog.name, value: dog)
            }.navigationDestination(for: Dog.self) { dog in
                VStack {
                    Text(dog.name)
                    /*
                    Button("Go Back") {
                        self.path = [] //popToRootViewController //Burada path kullanarak ilk sayfaya döndürdük.
                    }
                     */
                    
                    Button("Add to Path") {
                        path = [dogs[0], dogs[1]] 
                    }
                }
                
            }
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
