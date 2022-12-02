import SwiftUI

struct ContentView: View {
    
    @State var firstNumber = ""
    @State var secondNumber = ""
    
    var body: some View {
        VStack {
            Text("\(Int(firstNumber)! + Int(secondNumber)!)")
            
            TextField("First Number", text: $firstNumber)
        
            TextField("Second Numbeer", text: $secondNumber)
        }
    }
    
}
