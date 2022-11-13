//
//  NewPostView.swift
//  Booky
//
//  Created by Ryan Scott on 11/13/22.
//

import SwiftUI

struct NewPostView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @State private var bookTitle: String = ""
    @State private var bookAuthor: String = ""
    @State private var bookReview: String = ""
    
    private var navTitle: String = "Add Post"
    
    private func cancelButtonPressed()
    {
        dismiss()
    }
    
    private func postButtonTapped()
    {
        print("Post button tapped in func")
    }
    
    var body: some View {
        NavigationStack
        {
            VStack
            {
                Form
                {
                    TextField("Title", text: $bookTitle)
                    
                    TextField("Author", text: $bookAuthor)
                    
                    TextEditor(text: $bookReview)
                }
            }
            .navigationTitle(navTitle)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar
            {
                ToolbarItem(placement: .navigationBarLeading)
                {
                    Button(action: {
                        cancelButtonPressed()
                    }) {
                        Text("Cancel")
                            .foregroundColor(.red)
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing)
                {
                    Button(action: {
                        postButtonTapped()
                    }) {
                        Text("Post")
                    }
                }
            }
        }
    }
}

struct NewPostView_Previews: PreviewProvider {
    static var previews: some View {
        NewPostView()
    }
}
