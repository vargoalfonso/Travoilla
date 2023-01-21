import SwiftUI

struct Scene1: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 1.0
    let exampleColor : Color = Color(red: 255/255, green: 90/255, blue: 95/255)
    var body: some View {
        if isActive {
           OnBoardingView()
        } else {
            ZStack {
                Color("Salmon")
                    .ignoresSafeArea()
                VStack {
                    HStack (spacing: 10){
                        Image("Logo")
                            .resizable()
                            .frame(width: 95, height: 82)
                        Text("Travoila!")
                            .font(.system(size: 48, weight: .medium))
                            .foregroundColor(.white)
                        
                    }
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear {
                        withAnimation(.easeIn(duration: 1.5)) {
                            self.size = 0.9
                            self.opacity = 1.0
                        }
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    self.isActive = true
                }
            }
        }
    }
    
    struct Scene1_Previews: PreviewProvider {
        static var previews: some View {
            Scene1()
        }
    }
}
