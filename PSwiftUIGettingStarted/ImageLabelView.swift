//
//  ImageLabelView.swift
//  PSwiftUIGettingStarted
//
//  Created by Franciscus Valentinus Ongkosianbhadra on 24/11/22.
//

import SwiftUI

struct ImageLabelView: View {
    
    var imageName: String
    @Binding var text: String
    var body: some View {
        HStack{
            Image(systemName: imageName)
                .foregroundColor(.orange)
            Text(text)
        }
    }
}

struct ImageLabelView_Previews: PreviewProvider {
    static var previews: some View {
        ImageLabelView(imageName: "envelope.fill", text: .constant("mobileunder10@gmail.com"))
    }
}
