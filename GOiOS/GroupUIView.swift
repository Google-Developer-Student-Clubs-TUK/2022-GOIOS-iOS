//
//  GroupUIView.swift
//  GOiOS
//
//  Created by 강기환 on 2022/12/19.
//

import SwiftUI

struct GroupUIView: View {

    private var tot: [Int] = [0, 1, 2, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 2, 4, 0, 0, 0, 0, 0, 2, 4, 0, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

    private var cnt: Int = 4
    
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
        NavigationStack{
            VStack{
                Text("432324")
                    .font(.system(size: 20))

                Spacer()
                HStack {
                    Text("0")
                    Rectangle()
                        .fill(Color(UIColor.lightGray))
                          .border(Color.black, width: 1)
                    ForEach(1..<cnt+1){ index in
                        Text(String(index))
                        Rectangle()
                            .foregroundColor(.green).opacity(Double(index)/Double(cnt))
                            .border(Color.black, width: 1)
                    }
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
                                .if(tot[index]>0){view in
                                    view.foregroundColor(.green).opacity(Double(tot[index])/Double(cnt))
                                }
                                .foregroundColor(Color(UIColor.lightGray))
                        }
                    }
                }
                
                Spacer()
                
            }
            .padding()
            .navigationBarTitle("Group Statistics", displayMode:.inline)
            .toolbar{
                NavigationLink(destination: ScheduleUIView()){
                    HStack(alignment: .lastTextBaseline){
                        Spacer()
                        Text("My Schedule")
                    }
                }
            }
        }
    }
}



struct GroupUIView_Previews: PreviewProvider {
    static var previews: some View {
        GroupUIView()
    }
}
