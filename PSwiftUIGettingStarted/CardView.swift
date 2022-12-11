//
//  CardView.swift
//  PSwiftUIGettingStarted
//
//  Created by Franciscus Valentinus Ongkosianbhadra on 25/11/22.
//

import SwiftUI

struct CardView: View {
    
    @State var user: User
    
    var body: some View {
        ZStack{
            Rectangle()
                .fill(Color("CardBackground"))
                .frame(width: 300, height: 200)
                .cornerRadius(20)
                .shadow(radius: 10)
            
            HStack {
                VStack(alignment: .leading){
                    Text("\(user.firstName) \(user.lastName)")
                        .font(.title)
                    Text("\(user.title)")
                        .italic()
                    Spacer()
                    ImageLabelView(imageName: "envelope.fill", text: $user.email)
                    ImageLabelView(imageName: "link", text: $user.companyUrl)
                    ImageLabelView(imageName: "location.fill", text: $user.address)
                }.padding()
                    .foregroundColor(.white)
                Spacer()
            }
        }.frame(width: 300, height: 200)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(user: User(firstName: "Nermal", lastName: "Vero", title: "Software Engineer", email: "nvero@yahoo.com", companyUrl: "vero123.com", address: "8822 Royal Road", visit: Visit(views: 50, events: 60, badges: 7, actions: 80, duration: 90)))
    }
}
