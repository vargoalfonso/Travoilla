//
//  ProfileView.swift
//  Travoila 2.0
//
//  Created by Zakki Mudhoffar on 09/08/22.
//

import SwiftUI

struct ProfileView: View {
    
    init() {
            //Use this if NavigationBarTitle is with Large Font
            UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]

            //Use this if NavigationBarTitle is with displayMode = .inline
            UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.gray]
        }
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var btnCancel : some View { Button(action: {
            self.presentationMode.wrappedValue.dismiss()
            }) {
                HStack (spacing: 0){
                    Image(systemName: "chevron.backward")
                        .foregroundColor(.gray)
                    Text("Cancel")
                        .font(.custom("Poppins-Medium", size: 16))
                        .foregroundColor(.gray)
                }
            }
        }
    
    var btnDone : some View { Button(action: {
            self.presentationMode.wrappedValue.dismiss()
            }) {
                Text("Done")
                    .font(.custom("Poppins-Medium", size: 16))
                    .foregroundColor(Color("Salmon"))
            }
        }
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 249/255, green: 250/255, blue: 251/255)
                    .ignoresSafeArea()
                VStack{
                    Header()
                    
                    Spacer()
                }
            }
        }
        .navigationTitle("Edit Profile")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: btnCancel)
        .navigationBarItems(trailing: btnDone)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

struct Header: View {
    
    @State private var image = UIImage()
    @State private var showSheet = false
    var body: some View {
        
        VStack {
            ZStack {
                Image(uiImage: self.image)
                    .resizable()
                    .clipped()
                    .frame(width: 150, height: 150)
                    .background(Color.black.opacity(0.2))
                    .aspectRatio(contentMode: .fill)
                    .clipShape(Circle())
            }
            .frame(width: 150, height: 150)
            .padding(.bottom)
            .padding(.top, -40)
            
            Text("Change Profile Photo")
                .font(.custom("Poppins-Medium", size: 16))
                .foregroundColor(Color("Salmon"))
                .onTapGesture {
                  showSheet = true
                }
                .sheet(isPresented: $showSheet) {
                            // Pick an image from the photo library:
                    ImagePicker(sourceType: .savedPhotosAlbum, selectedImage: self.$image)

                            //  If you wish to take a photo from camera instead:
                            // ImagePicker(sourceType: .camera, selectedImage: self.$image)
                    }
            
            ZStack (alignment: .leading){
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.gray)
                    .opacity(0.3)
                    .frame(width: 350, height: 63)
                
                HStack{
                    Text("Name")
                        .font(.custom("Poppins-SemiBold", size: 15))
                        .foregroundColor(.black)
                        .padding(.trailing)
                        .frame(width: 105, height: 23, alignment: .leading)
                    
                    Text("Vargo Alfonso")
                        .font(.custom("Poppins-Regular", size: 15))
                        .foregroundColor(.black)
                }
                .padding(.leading)
            }
            .padding()
            
            Button(action: {}) {
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 200, height: 50)
                        .foregroundColor(Color("Salmon"))
                    
                    Text("Log Out")
                        .font(.custom("Poppins-SemiBold", size: 12))
                        .foregroundColor(.white)
                }
            }
            .padding(.top, 70)
        }
    }
}

struct ImagePicker: UIViewControllerRepresentable {
    @Environment(\.presentationMode) private var presentationMode
    var sourceType: UIImagePickerController.SourceType = .photoLibrary
    @Binding var selectedImage: UIImage

    func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePicker>) -> UIImagePickerController {

        let imagePicker = UIImagePickerController()
        imagePicker.allowsEditing = false
        imagePicker.sourceType = sourceType
        imagePicker.delegate = context.coordinator

        return imagePicker
    }

    func updateUIViewController(_ uiViewController: UIImagePickerController, context: UIViewControllerRepresentableContext<ImagePicker>) {

    }

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    final class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

        var parent: ImagePicker

        init(_ parent: ImagePicker) {
            self.parent = parent
        }

        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {

            if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
                parent.selectedImage = image
            }

            parent.presentationMode.wrappedValue.dismiss()
        }

    }
}
