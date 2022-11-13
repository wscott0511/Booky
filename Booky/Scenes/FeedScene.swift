//
//  FeedScene.swift
//  Booky
//
//  Created by Ryan Scott on 11/12/22.
//

import SwiftUI

struct FeedScene: View {
    
    @State var newPostButtonRevealed: Bool = false
    
    private func newPostButtonTapped()
    {
        newPostButtonRevealed = true
    }
    
    var body: some View {
        NavigationStack
        {
            VStack
            {
                ScrollView(.vertical) {
                    ForEach(1..<11) { item in
                        FeedCellView(userImage: Image(systemName: "person"),
                                     username: "Username \(item)",
                                     bookTitle: "Book title \(item)",
                                     bookAuthor: "Book Author \(item)",
                                     bookReview: "Book review \(item)")
                    }
                }
            }
            .navigationTitle("Book Feed")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading)
                {
                    Button(action: {
                        print("Profile image tapped")
                    }) {
                        Image(systemName: "person")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing)
                {
                    Button(action: {
                        newPostButtonTapped()
                        
                    }) {
                        Image(systemName: "plus")
                    }
                    .fullScreenCover(isPresented: $newPostButtonRevealed, content: {
                        NewPostView()
                    })
                }
            }
        }
    }
}

struct FeedScene_Previews: PreviewProvider {
    static var previews: some View {
        FeedScene()
    }
}
