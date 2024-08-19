//
//  URLSession.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mac on 16/08/2024.
//

import SwiftUI
import Foundation

struct URLSessionExample: View {
    
//    @State var data: String = "Loading..."
//    @State var dataUploaded : Bool = false
//    @State var responseFromUpload : String = "Nothing Uploaded Yet"
    @StateObject var urlSessionClass : URLSessionClass = URLSessionClass()
    
    var body: some View {
        ScrollView{
            VStack(spacing: 10){
                Text(urlSessionClass.data)
                    .padding()
                Button(action: {
                    urlSessionClass.fetchData(id: 50)
                }) {
                    Text("Fetch Data")
                }
                .padding()
                
                
                Button(action: {
                    urlSessionClass.postData(id: 200)
                }) {
                    Text("Post Data")
                }
                .padding()
                
                Button(action: {
                    urlSessionClass.putData(id: 50)
                }) {
                    Text("Update Data")
                }
                .padding()
                
                Button(action: {
                    urlSessionClass.deleteData(id: 100)
                }) {
                    Text("Delete Data")
                }
                .padding()
                
            }
        }
        
    }
    
    // URLSessionDatatask for retrieving information
    
//    func fetchData() {
//        // var request = URLRequest(url: url)
//        // request.httpMethod = "POST"
//
////        let task = URLSession.shared.uploadTask(with: request, from: dataToUpload) { data, response, error in
////        //            // Handle the response or error
////        //        }
//
//        if let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1") {
//            let task = Foundation.URLSession.shared.dataTask(with: url) { data, response, error in
//                if let error = error {
//                    // Handle the error
//                    DispatchQueue.main.async {
//                        self.data = "Error: \(error.localizedDescription)"
//                    }
//                } else if let data = data, let dataString = String(data: data, encoding: .utf8) {
//                    // Process the data
//                    DispatchQueue.main.async {
//                        self.data = "Data received: \(dataString)"
//                        print(dataString)
//                    }
//                }
//            }
//            task.resume()
//        }
//    }
//
//    func postData() {
//        if let url = URL(string: "https://jsonplaceholder.typicode.com/posts") {
//            var request = URLRequest(url: url)
//            request.httpMethod = "POST"
//            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
//
//            let body: [String: Any] = ["title": "foo", "body": "bar", "id": 99]
//            request.httpBody = try? JSONSerialization.data(withJSONObject: body, options: [])
//
//            let task = URLSession.shared.dataTask(with: request) { data, response, error in
//                if let error = error {
//                    // Handle the error
//                    DispatchQueue.main.async {
//                        self.data = "Error: \(error.localizedDescription)"
//                    }
//                } else if let data = data, let dataString = String(data: data, encoding: .utf8) {
//                    // Process the data
//                    DispatchQueue.main.async {
//                        self.data = "Data received: \(dataString)"
//                        print(dataString)
//                    }
//                }
//            }
//            task.resume()
//        }
//    }
//
//    func putData() {
//        if let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1") {
//            var request = URLRequest(url: url)
//            request.httpMethod = "PUT"
//            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
//
//            let body: [String: Any] = ["id": 1, "title": "foo", "body": "bar", "userId": 1]
//            request.httpBody = try? JSONSerialization.data(withJSONObject: body, options: [])
//
//            let task = URLSession.shared.dataTask(with: request) { data, response, error in
//                if let error = error {
//                    // Handle the error
//                    DispatchQueue.main.async {
//                        self.data = "Error: \(error.localizedDescription)"
//                    }
//                } else if let data = data, let dataString = String(data: data, encoding: .utf8) {
//                    // Process the data
//                    DispatchQueue.main.async {
//                        self.data = "Data received: \(dataString)"
//                        print(dataString)
//                    }
//                }
//            }
//            task.resume()
//        }
//    }
//
//    func deleteData() {
//        if let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1") {
//            var request = URLRequest(url: url)
//            request.httpMethod = "DELETE"
//
//            let task = URLSession.shared.dataTask(with: request) { data, response, error in
//                if let error = error {
//                    // Handle the error
//                    DispatchQueue.main.async {
//                        self.data = "Error: \(error.localizedDescription)"
//                    }
//                } else if let data = data, let dataString = String(data: data, encoding: .utf8) {
//                    // Process the data
//                    DispatchQueue.main.async {
//                        self.data = "Data received: \(dataString)"
//                        print(dataString)
//                    }
//                }
//            }
//            task.resume()
//        }
//    }

    
//    func uploadData2() {
//        // Example: Uploading a file with URLSessionUploadTask
//        if let url = URL(string: "https://api.escuelajs.co/api/v1/files/upload") {
//            var request = URLRequest(url: url)
//            request.httpMethod = "POST"
//            
//            // Set the Content-Type header to match the file type you're uploading
//            request.setValue("text/plain", forHTTPHeaderField: "Content-Type")
//            
//            // Load the file data
//            let fileData = "This is the content of the file.".data(using: .utf8)!
//            
//            // Create the upload task
//            let task = URLSession.shared.uploadTask(with: request, from: fileData) { data, response, error in
//                if let error = error {
//                    print("Error: \(error.localizedDescription)")
//                    self.dataUploaded = true
//                    return
//                }
//                
//                if let data = data, let dataString = String(data: data, encoding: .utf8) {
//                    DispatchQueue.main.async {
//                        self.dataUploaded = true
//                        self.responseFromUpload = dataString
//                        print("Upload successful: \(dataString)")
//                    }
//                }
//            }
//            task.resume()
//        }
//    }

//    func uploadData() {
//        // Example: Uploading data with URLSessionUploadTask
//        if let url = URL(string: "https://api.escuelajs.co/api/v1/files/upload") {
//            var request = URLRequest(url: url)
//            request.httpMethod = "POST"
//            
//            // Create a boundary string using a UUID
//            let boundary = UUID().uuidString
//            
//            // Set the Content-Type header to multipart/form-data with the boundary
//            request.setValue("multipart/form-data; boundary=\(boundary)", forHTTPHeaderField: "Content-Type")
//            
//            // Create the body data
//            //var body = Data()
//            
//            // Add the form field
//           
//            let dataToUpload = "Hello, Server!".data(using: .utf8)
//            
//            // Create the upload task
//            let task = URLSession.shared.uploadTask(with: request, from: dataToUpload) { data, response, error in
//                if let error = error {
//                    print("Error: \(error.localizedDescription)")
//                    return
//                }
//                
//                if let data = data, let dataString = String(data: data, encoding: .utf8) {
//                    DispatchQueue.main.async {
//                        self.dataUploaded = true
//                        self.responseFromUpload = dataString
//                    }
//                }
//            }
//            task.resume()
//        }
//    }

    
}

#Preview {
    URLSessionExample()
}
