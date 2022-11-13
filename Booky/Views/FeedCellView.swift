//
//  FeedCellView.swift
//  Booky
//
//  Created by Ryan Scott on 11/12/22.
//

import SwiftUI

struct FeedCellView: View {
    
    public var userImage: Image
    
    public var username: String
    public var bookTitle: String
    public var bookAuthor: String
    public var bookReview: String
    
    var body: some View {
        VStack
        {
            HStack(alignment: .top, spacing: 24)
            {
                ZStack
                {
                    Circle()
                        .frame(width: 44, height: 44)
                        .foregroundColor(Color(.systemGroupedBackground))
                    
                    userImage
                }
                
                VStack(alignment: .leading)
                {
                    Text(username)
                        .font(.system(size: 18))
                    
                    Text(bookTitle)
                        .font(.system(size: 14))
                    
                    Text(bookAuthor)
                        .font(.system(size: 12))
                    
                    Text(bookReview)
                        .font(.system(size: 14))
                }
                
                Spacer()
            }
            .padding([.horizontal, .vertical])
        }
    }
}

struct FeedCellView_Previews: PreviewProvider {
    static var previews: some View {
        FeedCellView(userImage: Image(systemName: "person"), username: "Username", bookTitle: "Book title", bookAuthor: "Book Author", bookReview: "Short book review short book review short book review")
    }
}
