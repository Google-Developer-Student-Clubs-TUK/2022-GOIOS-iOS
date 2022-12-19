//
//  ScheduleUIView.swift
//  GOiOS
//
//  Created by /Chynmn/M1 pro—̳͟͞͞♡ on 2022/12/11.
//

import SwiftUI

struct ScheduleUIView: View {
    @State private var array: [Int] = Array(repeating: 0, count: 105)
    
    
    var columns: [GridItem] = [
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
            Text("Group Code")
                .font(.title)
            Spacer()
            HStack {
                Text("Unavailable")
                Rectangle()
                    .fill(Color(UIColor.lightGray))
                      .frame(width: 40, height: 40)
                      .border(Color.black, width: 1)
                Spacer()
                Text("available")
                Rectangle()
                      .fill(Color.green)
                      .frame(width: 40, height: 40)
                      .border(Color.black, width: 1)
            }
            .font(.title3)
            Spacer()
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
            .padding(.leading,35)
            
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
                            
                            .frame(height: 37)
                            .border(Color.black, width: 1)
                            .if(array[index]==1){view in
                                view.foregroundColor(.green)
                            }
                        
                            .foregroundColor(Color(UIColor.lightGray))
                            .onTapGesture {
                                if(self.array[index]==1){
                                    self.array[index] = 0
                                }
                                else{
                                    self.array[index] = 1
                                }
                            }
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
        ScheduleUIView()
    }
}

extension View {
    @ViewBuilder func `if`<Content: View>(_ condition: Bool, transform: (Self) -> Content) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }
}
