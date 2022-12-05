//
//  ContentView.swift
//  GOiOS
//
//  Created by /Chynmn/M1 pro—̳͟͞͞♡ on 2022/12/01.
//

import SwiftUI

struct ContentView: View {
    let columns: [GridItem] = [
        GridItem(.fixed(40), spacing: 5, alignment: nil),
        GridItem(.fixed(40), spacing: 5, alignment: nil),
        GridItem(.fixed(40), spacing: 5, alignment: nil),
        GridItem(.fixed(40), spacing: 5, alignment: nil),
        GridItem(.fixed(40), spacing: 5, alignment: nil),
        GridItem(.fixed(40), spacing: 5, alignment: nil),
        GridItem(.fixed(40), spacing: 5, alignment: nil)
    ]
    
    var body: some View {
        VStack{
            HStack {
                Text("Unavailable")
                Rectangle()
                      .fill(Color.red)
                      .frame(width: 40, height: 40)
                
                Spacer()
                Text("available")
                Rectangle()
                      .fill(Color.blue)
                      .frame(width: 40, height: 40)
            }
            .font(.title3)
            Spacer()
            HStack(alignment: .center, spacing:13){
                Text("Mon")
                Text("Tue")
                Text("Wed")
                Text("Thu")
                Text("Fri")
                Text("Sat")
                Text("Sun")
            }
            .font(.title3)
            .padding(.leading,50)
            HStack{
                VStack(alignment: .center, spacing:25){
                    Group{
                        Text("09:00")
                        Text("10:00")
                        Text("11:00")
                        Text("12:00")
                        Text("01:00")
                        Text("02:00")
                        Text("03:00")
                        Text("04:00")
                        Text("05:00")
                        Text("06:00")
                    }
                    Group{
                        Text("07:00")
                        Text("08:00")
                        Text("09:00")
                        Text("10:00")
                        Text("11:00")
                        Text("12:00")
                    }
                }.font(.system(size: 10))
                LazyVGrid(columns: columns,spacing: 0) {
                    ForEach(0..<105) { index in
                        Rectangle()
                            .fill(Color.white)
                            .frame(height: 37)
                            .border(Color.black, width: 1)
                    }
                    
                }
            }
            
            Spacer()
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
