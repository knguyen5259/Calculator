import SwiftUI

struct ContentView: View {
    
    @State var firstNumber = ""
    @State var secondNumber = ""
    
    @State var isPresented = false
    @State var answer = ""
    
    var body: some View {
        VStack(alignment: .center) {
            TextField("First Number", text: $firstNumber)
                .multilineTextAlignment(.center)
            
            TextField("Second Number", text: $secondNumber)
                .multilineTextAlignment(.center)
            
            Button {
                answer = "\(Int(firstNumber)! + Int(secondNumber)!)"
                isPresented = true
            } label: {
                Text("Calculate")
            }
        }
        .alert(isPresented: $isPresented) {
            Alert(title: Text("Answer:"), message: Text(answer), dismissButton: .default(Text("Dismiss")))
        }
    }
    
}
