//
//  ImagePicker.swift
//  Maze Solver iOS
//
//  Created by Luke Adam Hawinkels on 6/01/21.
//
//  Picik an image that will be used by the solver


import SwiftUI

struct ImagePicker: UIViewControllerRepresentable {
    //Tell swift to use the coordinator class for the image coordinator.
    func makeCoordinator() -> Coordinator {
        Coordinator(self);
    }
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var image: UIImage?

    func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePicker>) -> UIImagePickerController {
        let picker = UIImagePickerController();
        picker.delegate = context.coordinator;
        return picker;
    }

    func updateUIViewController(_ uiViewController: UIImagePickerController, context: UIViewControllerRepresentableContext<ImagePicker>) {
        
    }
    
    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        let parent: ImagePicker;
        
        init(_ parent: ImagePicker) {
            self.parent = parent;
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
            if let uiImage = info[.originalImage] as? UIImage {
                parent.image = uiImage
            }

            parent.presentationMode.wrappedValue.dismiss()
        }
    }
}

