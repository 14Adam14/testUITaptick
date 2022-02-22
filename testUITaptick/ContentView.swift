
import SwiftUI




struct ContentView: View {
    
    
    
    @State var isStartingState: Bool = false

    let generator = UINotificationFeedbackGenerator()
    
    
    
    
    
    var body: some View {
        
        VStack {
            Button("button") {
            
                self.generator.notificationOccurred(.success)
            }
       
            Text("start le")
          
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.blue)
            // if isStartingState true to Color.red  inache  Color.blue
            
            
                    .frame(
                        
                        width: 200,
                        height: 400
   
                    )
            
           
            
            Spacer()
            
        }
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
