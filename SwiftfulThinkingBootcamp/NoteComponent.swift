//
//  NoteComponent.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mac on 07/08/2024.
//

import SwiftUI

struct NoteComponent: View {
    
    var note : Note
    
    init(note: Note)
    {
        self.note = note
    }
    
    var body: some View {
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



