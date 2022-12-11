//
//  VisitorInfoView.swift
//  PSwiftUIGettingStarted
//
//  Created by Franciscus Valentinus Ongkosianbhadra on 28/11/22.
//

import SwiftUI

struct VisitorInfoView: View {
    
    @State var user: User
    @State var isChartHidden = true
    @State var isChartLoaded = false
    
    var body: some View {
        VStack{
            CardView(user: user)
                .gesture(TapGesture()
                    .onEnded{
                        withAnimation(.easeInOut, {
                            self.isChartHidden.toggle()
                        })
                    }
                )
            
            if !isChartHidden{
                GeometryReader{ proxy in
                    HStack(alignment: .bottom){
                        BarView(color: Color(.green), width: proxy.size.width * 0.16, height: self.isChartLoaded ? proxy.size.height / CGFloat(self.user.visit.views) : 0.0, label: "Views")
                        BarView(color: Color(.green), width: proxy.size.width * 0.16, height: self.isChartLoaded ? proxy.size.height / CGFloat(self.user.visit.events) : 0.0, label: "Events")
                        BarView(color: Color(.green), width: proxy.size.width * 0.16, height: self.isChartLoaded ? proxy.size.height / CGFloat(self.user.visit.badges) : 0.0, label: "Badges")
                        BarView(color: Color(.green), width: proxy.size.width * 0.16, height: self.isChartLoaded ? proxy.size.height / CGFloat(self.user.visit.actions) : 0.0, label: "Actions")
                        BarView(color: Color(.green), width: proxy.size.width * 0.16, height: self.isChartLoaded ? proxy.size.height / CGFloat(self.user.visit.duration) : 0.0, label: "Duration")
                    }.frame(height: 0.5 * proxy.size.height)
                        .animation(.easeInOut(duration: 1.0))
                        .onAppear{
                            self.isChartLoaded = true
                        }
                }
                .transition(.move(edge: .bottom))
                .onDisappear{
                    self.isChartLoaded = false
                }
            }
        }
    }
}

struct VisitorInfoView_Previews: PreviewProvider {
    static var previews: some View {
        VisitorInfoView(user: User(firstName: "Nermal", lastName: "Vero", title: "Software Engineer", email: "nvero@yahoo.com", companyUrl: "vero123.com", address: "8822 Royal Road", visit: Visit(views: 50, events: 60, badges: 7, actions: 80, duration: 90)))
    }
}
