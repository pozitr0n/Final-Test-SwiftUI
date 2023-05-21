//
//  ContentView.swift
//  FinalTest_SwiftUI
//
//  Created by Raman Kozar on 19/05/2023.
//

import SwiftUI

struct SectionsForFillingColor: Identifiable {

    var id: Int
    let color: Color

}

struct ContentView: View {
    
    var arrayOfSections: [SectionsForFillingColor] = []
    
    let header1 = "American cars"
    let header2 = "German cars"
    let header3 = "French cars"
    let header4 = "Italian cars"
    
    var body: some View {
        
        Form {
            
            Section(header: Text(header1)) {
                Text("Linkoln")
                Text("Chevrolet")
                Text("GMC")
                Text("Cadillac")
            }
            .foregroundColor(arrayOfSections[0].color)

            Section(header: Text(header2)) {
                Text("Opel")
                Text("Audi")
                Text("BMW")
                Text("Mercedes-Benz")
            }
            .foregroundColor(arrayOfSections[1].color)
            
            Section(header: Text(header3)) {
                Text("Peugeot")
                Text("Renaut")
                Text("Citroen")
                Text("Bugatti")
            }
            .foregroundColor(arrayOfSections[2].color)
            
            Section(header: Text(header4)) {
                Text("Ferrari")
                Text("Fiat")
                Text("Alfa Romeo")
                Text("Lamborghini")
            }
            .foregroundColor(arrayOfSections[3].color)
            
        }
        
    }
    
}

let _arrayOfSections: [SectionsForFillingColor] = [
    SectionsForFillingColor(id: 0, color: .red),
    SectionsForFillingColor(id: 1, color: .blue),
    SectionsForFillingColor(id: 2, color: .green),
    SectionsForFillingColor(id: 3, color: .yellow)
]

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView(arrayOfSections: _arrayOfSections)
        
    }
}
