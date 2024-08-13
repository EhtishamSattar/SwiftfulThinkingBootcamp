//
//  MyNotesEdit.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mac on 07/08/2024.
//

import SwiftUI

struct Note2 : Identifiable{
    
    var id: String = UUID().uuidString
    let date: String
    let description: String
    let attachment: String
}


struct MyNotesEdit: View {
        var fullText: String = "This is some editable text..."
        @State private var searchText2: String = ""
        
        let NoteCardColor = UIColor(red: 236/255, green: 237/255, blue: 249/255, alpha: 1)
        
        let array = ["" , "", "" , ""]
        
        let notes: [Note2] = [
            Note2(date: "August 5, 2024", description: "This is the description of the first note.", attachment: "attachment1.jpeg"),
            Note2(date: "August 6, 2024", description: "This is the description of the second note.", attachment: "attachment2.jpeg"),
            Note2(date: "August 7, 2024", description: "This is the description of the third note.", attachment: "attachment3.jpeg"),
            Note2(date: "August 8, 2024", description: "This is the description of the fourth note.", attachment: ""),
            Note2(date: "August 9, 2024", description: "This is the description of the fifth note.", attachment: "attachment5.jpeg"),
            Note2(date: "August 10, 2024", description: "This is the description of the sixth note.", attachment: ""),
            Note2(date: "August 9, 2024", description: "This is the description of the seventh note.", attachment: "attachment7.jpeg")
        ]
        
        
        var body: some View {
        
            VStack{
                Text("My Notes")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 50, alignment: .leading)
                    .padding(.horizontal)
                    .foregroundColor(Color(red: 7/255, green: 7/255, blue: 7/255))
                    .font(.title2)
                    .bold()
                
                
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.black)
                        .bold()
                    
                    TextField("Search Notes", text: $searchText2)
                        .padding(.vertical, 10)
                        .foregroundColor(Color(red: 107/255, green: 107/255, blue: 109/255))
                }
                .padding(.horizontal)
                .background(Color.white)
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(red: 136/255, green: 138/255, blue: 142/255)
                                , lineWidth: 1)
                )
                .padding(.horizontal, 15)
                .padding(.bottom, 10)
                
                Button(action: {
                    
                    print("Button tapped!")
                }) {
                    Text("Add Note")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, maxHeight: 20)
                        .padding()
                        .background(Color(red: 19/255, green: 68/255, blue: 185/255))
                        .cornerRadius(10)
                }
                .padding(.horizontal)
                
                // Populating Notes data over a a view
                ScrollView{
                    ForEach(self.notes){ note in
                        VStack {
                                    HStack {
                                        VStack(alignment: .leading) {
                                            Text(note.date)
                                                .padding(.horizontal)
                                                .font(.caption)
                                                .foregroundColor(Color(red: 107/255, green: 107/255, blue: 109/255))
                                            
                                            Text(note.description)
                                                .lineLimit(1)
                                                .padding(.horizontal)
                                                .foregroundColor(Color(red: 7/255, green: 7/255, blue: 7/255))
                                                .bold()
                                                .font(.title2)
                                            
                                            if !note.attachment.isEmpty {
                                                HStack {
                                                    Image(systemName: "paperclip")
                                                        .bold()
                                                    Text(note.attachment)
                                                        .foregroundColor(Color(red: 116/255, green: 116/255, blue: 118/255))
                                                        .bold()
                                                        .font(.title3)
                                                }
                                                .padding(.leading, 15)
                                            }
                                        }
                                        Spacer()
                                        Image(systemName: "pencil.and.outline")
                                            .font(.title3)
                                            .foregroundColor(.black)
                                            .frame(width: 50, height: 50)
                                            .padding(.horizontal, 1)
                                            .bold()
                                    }
                                    .padding(.all, 12)
                        }
                        .background(Color(red: 237/255, green: 238/255, blue: 249/255))
                        .cornerRadius(20)
                        
                        Spacer(minLength:20)
                    }

                }
                .padding()
                
            }
            .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .topLeading)
            .background(Color(red: 244/255, green: 248/255, blue: 250/255))
        
        }
    
}

#Preview {
    MyNotesEdit()
}
