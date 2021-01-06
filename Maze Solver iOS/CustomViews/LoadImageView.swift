//
//  DisplayImageView.swift
//  Maze Solver iOS
//
//  Created by Luke Adam Hawinkels on 6/01/21.
//

import SwiftUI

struct DisplayImageView: View {
    @State private var imageLoaded = false;
    @State private var showingImagePicker = false;
    @State private var image: Image?
    @State private var inputImage: UIImage?

    var body: some View {
        //A stack of required views for when an image is to be loaded
        VStack {
            ZStack {
                Rectangle().fill(Color.white);
                
                if (image != nil) {
                    image?
                        .resizable()
                        .scaledToFit()
                } else {
                    Text("Tap to select a maze")
                        .foregroundColor(.black)
                        .font(.headline)
                }
            }
            .onTapGesture {
                self.showingImagePicker = true;
            }
            
            .padding([.horizontal, .bottom])
            .navigationTitle("Maze Solver")
            .sheet(isPresented: $showingImagePicker, onDismiss: loadImage) {
                ImagePicker(image: self.$inputImage)
            }
        }
    }
    
    /**
        Load the imput image when the user exits the picker
     */
    func loadImage() {
        guard let inputImage = inputImage else { return }
        image = Image(uiImage: inputImage);
    }
}

struct DisplayImageView_Previews: PreviewProvider {
    static var previews: some View {
        DisplayImageView();
    }
}
