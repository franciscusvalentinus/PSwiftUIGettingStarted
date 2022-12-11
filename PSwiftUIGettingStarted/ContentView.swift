//
//  ContentView.swift
//  PSwiftUIGettingStarted
//
//  Created by Franciscus Valentinus Ongkosianbhadra on 24/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack{
                    ForEach(User.users) { user in
                        NavigationLink(destination: VisitorInfoView(user: user)){
                            CardView(user: user)
                                .padding(.vertical)
                        }
                        
                    }
                }
            }
        }
        .navigationBarTitle("Quick Card")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
