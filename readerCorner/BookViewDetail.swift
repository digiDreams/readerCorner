//
//  BookViewDetail.swift
//  readerCorner
//
//  Created by Apprenant 16 on 02/01/2023.
//

import SwiftUI

struct BookViewDetail: View {
    let alignments: [TextAlignment] = [.leading, .center, .trailing]
    @State private var alignment = TextAlignment.leading
    var body: some View {
        VStack{
        Text("Titre livre")
                .font(.largeTitle)
                .bold()
                .padding(.bottom)
        Text("by Auteur")
                .font(.title2)
                .padding(.bottom)
        Text("Book Year")
                .italic()
                .padding(.bottom)
        Text("Catégorie")
                .padding()
                .italic()
        Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
            .multilineTextAlignment(alignment)
            .padding()
        }
    }
}

struct BookViewDetail_Previews: PreviewProvider {
    static var previews: some View {
        BookViewDetail()
    }
}
