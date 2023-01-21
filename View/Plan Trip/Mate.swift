import SwiftUI

struct Mate: View {
    let array = ["Jordi", "Christian", "Yoga", "Zakki", "Vargo"]
    @State private var number: String = ""
    @State private var isShowingDetailView = false
    let exampleColor : Color = Color(red: 255/255, green: 90/255, blue: 95/255)
    var body: some View {
        NavigationView{
        ZStack{
            Text("Invite your travelmate").bold().padding(.bottom,700)
            Text("Plan with your friends: yur changes sync in").padding(.bottom,610).foregroundColor(.gray)
             Text("real-time, keeping everyone in the loop").padding(.bottom,550).foregroundColor(.gray)
            HStack{
            Text("Travelmate").bold()
                TextField("Search by name or email", text: $number)}.padding(.bottom,400).textContentType(.oneTimeCode)
                .keyboardType(.numberPad).padding()
            NavigationLink("", destination: TabBarView().navigationBarBackButtonHidden(true), isActive: $isShowingDetailView)
            Button(action: { self.isShowingDetailView = true}, label: {
              Text("Send Invitation")
                .padding()
                .foregroundColor(.white)
                .background(exampleColor)
                .cornerRadius(10)
                
            }).padding(.top,400)
                .disabled(number.isEmpty)
            VStack{
                NavigationLink("", destination: TabBarView().navigationBarBackButtonHidden(true), isActive: $isShowingDetailView)
                Button(action: { self.isShowingDetailView = true}, label: {
                  Text("Maybe Later")
                    .padding()
                    .foregroundColor(.gray)
                    .background(.white)
                    .cornerRadius(10)
                    
                }).padding(.top,500)
                    
            }
    }
            
}
}
}
struct Mate1_Previews: PreviewProvider {
    static var previews: some View {
        Mate()
         
    }
}
