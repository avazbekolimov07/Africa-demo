//
//  ExternalWebLink.swift
//  AfricaPro
//
//  Created by 1 on 09/05/21.
//

import SwiftUI

struct ExternalWebLink: View {
    //MARK: - PROPERTIES
    
    let animal : Animal
    
    //MARK: - BODY
    var body: some View {
        
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Image(systemName: "arrow.up.right.square")
                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://wikipedia.org"))!)
                }
                .foregroundColor(.accentColor)
            }
        } //: BOX
    }
}

//MARK: - PREVIEW
struct ExternalWebLink_Previews: PreviewProvider {
    static let animals : [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        ExternalWebLink(animal: animals[0])
    }
}
