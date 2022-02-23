
import SwiftUI



struct ContentView: View {
    
    
 

    let generator = UINotificationFeedbackGenerator()
    
    
    
    
    @State var switchShadow: Bool = true
    
    
    
    var body: some View {
        
        

        ZStack {
            
            Rectangle()
                .ignoresSafeArea()
                .foregroundColor(switchShadow ? .black : .yellow)  //
            
           
            
            VStack {
           
                Button {
                    
                    self.generator.notificationOccurred(.success)
                    
                    switchShadow.toggle()
                                         
                    
                } label: {
                    Circle()
                        .fill(switchShadow ? Color.white : Color.black)
                        .frame(width: 90, height: 90)
                    
                        .shadow(color: switchShadow ? .white : .black, radius: 10)
                    
                        .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color(hue: 1.0, saturation: 0.888, brightness: 0.74))
                        
                            .shadow(color: Color(hue: 1.0, saturation: 0.888, brightness: 0.74), radius: 10)
                        
                        )
                }
 
            }
        }
    }
}


// архив с нужными цветами и примененное к нему свойство рандом   назначение цвета


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
