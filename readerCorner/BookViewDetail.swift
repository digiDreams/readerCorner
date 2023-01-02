////
////  BookViewDetail.swift
////  readerCorner
////
////  Created by Apprenant 16 on 02/01/2023.
////
//
//import SwiftUI
//
//struct BookViewDetail: View {
//    
//    @Environment(\.managedObjectContext) private var viewContext
//    
//    let alignments: [TextAlignment] = [.leading, .center, .trailing]
//    @State private var alignment = TextAlignment.leading
//    
//    var book: Book
//    var body: some View {
//        ScrollView{
//            VStack{
//                Text("\(book.title!)")
//                    .font(.largeTitle)
//                    .bold()
//                    .padding(.bottom)
//                Text("\(book.author!)")
//                    .font(.title2)
//                    .padding(.bottom)
//                Text("\(String(book.year))")
//                    .italic()
//                    .padding(.bottom)
//                Text("\(String(book.category))")
//                    .padding()
//                    .italic()
//                /* Text("\(book.resume!)")
//                 .multilineTextAlignment(alignment)
//                 .padding()
//                 */
//                
//            }
//        }
//    }
//}
//
//struct BookViewDetail_Previews: PreviewProvider {
//    static var previews: some View {
//        BookViewDetail(book: Book).environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
//    }
//}
