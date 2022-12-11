//
//  BarView.swift
//  PSwiftUIGettingStarted
//
//  Created by Franciscus Valentinus Ongkosianbhadra on 29/11/22.
//

import SwiftUI

struct BarView: View {
    var color = Color.clear
    var width: CGFloat = 0.0
    var height: CGFloat = 0.0
    var label: String = ""
    
    var body: some View {
        VStack{
            Spacer()
            Rectangle().fill(color).frame(width: width, height: height)
            Text(label)
                .font(.footnote)
                .rotationEffect(.degrees(-75))
                .offset(y: 20)
                .animation(nil)
        }
    }
}

struct BarView_Previews: PreviewProvider {
    static var previews: some View {
        BarView(color: Color(.green), width: 40, height: 100, label: "Events")
    }
}
