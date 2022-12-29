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
        NavigationStack{
            VStack{

                Text("432324")
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
            .navigationBarTitle("My Schedule", displayMode:.inline)
            .toolbar{
                Button(action: {
//                    loadData()
//                    postData()
                    print(array)
                }, label: {
                    Text("Complete")
                })
            }
        }
    }
    
    
//    func postData(){
//        guard let url = URL(string: postUrl) else {return}
//
//        let UserName = "홍길동"
//        let TimeTable = array
//        let GroupID = "GroupID 예시"
//
//        let body: [String: Any] = ["UserName": UserName, "TimeTable": TimeTable, "GroupID":GroupID]
//
//        let firstData = try! JSONSerialization.data(withJSONObject: body)
//
//        var request = URLRequest(url: url)
//        request.httpMethod = "POST"
//        request.httpBody = firstData
//        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
//
//        URLSession.shared.dataTask(with: request) { (data,res,err) in
//            do{
//                if let data = data{
//
//                    let result = try JSONDecoder().decode(PostModel.self, from: data)
//                    print(result)
//                } else{
//                    print("No data")
//                }
//            } catch(let error){
//                print("error",error.localizedDescription)
//            }
//        }.resume()
//    }
//}
//struct Resource<T: Decodable> {
//    let url: URL
//}
//
//extension Resource {
//    func post(to url: URL, body: Data, completion: @escaping (Result<T, Error>) -> ()) {
//        var request = URLRequest(url: url)
//        request.httpMethod = "POST"
//        request.httpBody = body
//        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
//
//        URLSession.shared.dataTask(with: request) { data, response, error in
//            if let error = error {
//                completion(.failure(error))
//                return
//            }
//
//            guard let data = data else {
//                completion(.failure(error!))
//                return
//            }
//
//            do {
//                let value = try JSONDecoder().decode(T.self, from: data)
//                completion(.success(value))
//            } catch {
//                completion(.failure(error))
//            }
//        }.resume()
//    }
}
//func loadData() {
//    struct Group: Codable {
//        var name: String
//        var points: Int
//    }
//
//    let json = """
//    {
//        "name": "Durian",
//        "points": 600,
//    }
//    """.data(using: .utf8)!
//
////    guard let url = URL(string: "http://localhost:8080/api/v1/group?id=GroupID 예시") else {
////        fatalError("Invalid URL")
////    }
//
////    URLSession.shared.dataTask(with: url) { data, response, error in
////        guard let data = data, error == nil else {
////            return
////        }
//
//    let decoder = JSONDecoder()
//    let product = try! decoder.decode(Group.self, from: json)
//    print(product.name)
//}

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
