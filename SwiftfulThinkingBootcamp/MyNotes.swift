//
//  MyNotes.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mac on 07/08/2024.
//

import SwiftUI
import UIKit

struct Note : Identifiable{
    
    var id: String = UUID().uuidString
    let date: String
    let description: String
    let attachment: String
}

struct MyNotes: View {
    
    var fullText: String = "This is some editable text..."
    @State private var searchText: String = ""
    
    let notes: [Note] = [
        Note(date: "August 5, 2024", description: "This is the description of the first note.", attachment: "attachment1.jpeg"),
        Note(date: "August 6, 2024", description: "This is the description of the second note.", attachment: "attachment2.jpeg"),
        Note(date: "August 7, 2024", description: "This is the description of the third note.", attachment: "attachment3.jpeg"),
        Note(date: "August 8, 2024", description: "This is the description of the fourth note.", attachment: ""),
        Note(date: "August 9, 2024", description: "This is the description of the fifth note.", attachment: "attachment5.jpeg"),
        Note(date: "August 10, 2024", description: "This is the description of the sixth note.", attachment: ""),
        Note(date: "August 9, 2024", description: "This is the description of the seventh note.", attachment: "attachment7.jpeg")
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
                
                TextField("Search Notes", text: $searchText)
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
                    NoteComponent(note: note)
                }

            }
            .padding()
            
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .topLeading)
        .background(Color(red: 244/255, green: 248/255, blue: 250/255))
    
    }
}


#Preview {
    MyNotes()
}
