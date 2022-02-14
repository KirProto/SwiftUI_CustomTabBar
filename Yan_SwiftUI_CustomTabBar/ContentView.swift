//
//  ContentView.swift
//  Yan_SwiftUI_CustomTabBar
//
//  Created by KIR Q on 2022.02.11.
//


// heart
// house.fill
// filemenu.and.cursorarrow
// person
// magnifyingglass
// akvamarin


import SwiftUI

struct ContentView: View {
    
    @State var selected = 0
    
    var body: some View {
        VStack {
            
            Spacer()
            
            ZStack {
                
                HStack {
                    
                        Button(action: {
                            self.selected = 0
                        }) {
                            Image(systemName: "house.fill") //Home
                        } .foregroundColor(self.selected == 0 ? .black : .gray)
                        Spacer(minLength: 12)
                    
                    
                        Button(action: {
                        self.selected = 1
                        }) {
                        Image(systemName: "magnifyingglass") //Search
                            .foregroundColor(self.selected == 1 ? .black : .gray)
                        Spacer().frame(width: 120)
                        
                        
                        Button(action: {
                            self.selected = 2
                        }) {
                            Image(systemName: "person") //Person
                        } .foregroundColor(self.selected == 2 ? .black : .gray)
                        Spacer(minLength: 12)
                        
                        
                        Button(action: {
                            self.selected = 3
                        }) {
                            Image(systemName: "filemenu.and.cursorarrow") //Menu
                        } .foregroundColor(self.selected == 3 ? .black : .gray)
                    }
                        
                    
                }
                    .padding()
                    .padding(.horizontal, 22)
                    .background(CurvedShape())
                
                
                Button(action: {
                    //
                }) {
                    Image(systemName: "heart")
                        .renderingMode(.original)
                        .padding(18)
                }
                .background(Color.yellow)
                .clipShape(Circle())
                .offset(y: -32)
                .shadow(radius: 5)
                
            }
            
            
                
        } .background(Color.cyan.edgesIgnoringSafeArea(.top))
//        вместо картинки akvamarin Я сделал залику .cyan 
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


// Дуга для центральной кнопки
struct CurvedShape: View {
    var body: some View {
        Path { path in
            
            path.move(to: CGPoint(x:0, y:0))
            path.addLine(to: CGPoint(x: UIScreen.main.bounds.width, y: 0))
            path.addLine(to: CGPoint(x: UIScreen.main.bounds.width, y: 55))
            
            path.addArc(center: CGPoint(x: UIScreen.main.bounds.width / 2, y: 55), radius: 30, startAngle: .zero, endAngle: .init(degrees: 180), clockwise: true)
            path.addLine(to: CGPoint(x: 0, y: 55))
            
        } .fill(Color.white)
            .rotationEffect(.init(degrees: 180))
    }
}
