import SwiftUI

struct budget: View {
    @State private var number: String = ""
    @State private var isShowingDetailView = false
    let exampleColor : Color = Color(red: 255/255, green: 90/255, blue: 95/255)
    var body: some View {
        NavigationView{
        ZStack{
            Text("Budget Estimation").bold().padding(.bottom,700)
            Text("Upgrade plan to highly experience").padding(.bottom,620)
            HStack{
            Text("Budget").bold()
                TextField("Your budget estimation", text: $number)}.padding(.bottom,450).textContentType(.oneTimeCode)
                .keyboardType(.numberPad).padding()
            NavigationLink("", destination: Mate().navigationBarBackButtonHidden(true), isActive: $isShowingDetailView)
            Button(action: { self.isShowingDetailView = true}, label: {
              Text("Next                ")
                .padding()
                .foregroundColor(.white)
                .background(exampleColor)
                .cornerRadius(10)
            }).padding(.top,400)
                .disabled(number.isEmpty)
    }
}
}
}
struct budget_Previews: PreviewProvider {
    static var previews: some View {
        budget()
            
    }
}
