//
//  ContentView.swift
//  WeSplit
//
//  Created by 彭雪松 on 2021/1/19.
//

import SwiftUI

//struct ContentView: View {
////    @State private var tapCount = 0
////    @State private var name = ""
//    var body: some View {
////        NavigationView {
////            Form {
////                Section {
////                    Text("Hello, world!")
////                        .padding()
////                }
////            }
////            .navigationBarTitle("SwiftUI")
////        }
////        Button("Tap count: \(tapCount)"){
////            self.tapCount += 1
////        }
////        Form {
////            // 因此，当您在属性名称之前看到美元符号时，请记住，它会创建双向绑定：既读取属性值，又写入属性值。
////            TextField("Enter your name", text: $name)
////            Text("Your name is \(name)")
////        }
//        Form {
////            ForEach(0 ..< 100) { number in
////                Text("Row \(number)")
////            }
//            ForEach(0 ..< 100) {
//                Text("Row \($0)")
//            }
//        }
//    }
//}

struct ContentView: View {
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = 0
    
    var body: some View {
        VStack {
            Picker("Select your student", selection: $selectedStudent) {
                ForEach(0 ..< students.count) {
                    Text(self.students[$0])
                }
            }
            Text("You chose: Student # \(students[selectedStudent])")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
