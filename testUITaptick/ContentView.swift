// Tap heart
// anti stress

import SwiftUI


struct ContentView: View {
    
    
    let generator = UINotificationFeedbackGenerator()
    
    @State var switchShadow: Bool = true
    
    @State var isAnimated: Bool = false
    
    
    /*
     
     добавить пружинную анимацию к сердцу   по нажатию   / быстрое сжатие и расширение - биение
     
     
     извлечь фунцкиональность из тела
     
     
     
     на будущее
     архив с нужными цветами и примененное к нему свойство рандом   назначение цвета
     
     */
    
    
    var body: some View {
        
        
        
        ZStack {
            
            Rectangle()
                .ignoresSafeArea()
                .foregroundColor(switchShadow ? .black : .yellow)
            
            
            
            Button {
                
                self.generator.notificationOccurred(.success)
                switchShadow.toggle()
                isAnimated.toggle()
                
            } label: {
                
                
                
                Circle()
                    .fill(switchShadow ? Color.white : Color.black)
                    .frame(width: 150, height: 150)
                
                    .shadow(color: switchShadow ? .white : .black, radius: 10)
                
                    .overlay(
                        Image(systemName: "heart.fill")
                            .resizable()
                            .frame(width: isAnimated ? 65 : 45, height: isAnimated ? 55 : 35)
                            //.aspectRatio(contentMode: .fit)
                            //.padding(40)
                            .foregroundColor(Color(hue: 1.0, saturation: 0.888, brightness: 0.74))
                        
                            .shadow(color: Color(hue: 1.0, saturation: 0.888, brightness: 0.74), radius: 10)
                            .animation(.spring(
                                response: 0.5,
                                dampingFraction: 0.7,
                                blendDuration: 1),
                                       value: isAnimated)
                        
                    )
            }
        }
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
