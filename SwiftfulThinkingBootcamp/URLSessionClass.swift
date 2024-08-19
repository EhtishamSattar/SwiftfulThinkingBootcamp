//
//  URLSessionClass.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mac on 16/08/2024.
//

import Foundation


class URLSessionClass : ObservableObject {
    
    @Published var data: String = "Loading..."
    @Published var dataUploaded : Bool = false
    @Published var responseFromUpload : String = "Nothing Uploaded Yet"
    
    
    func fetchData(id: Int) {
        // var request = URLRequest(url: url)
        // request.httpMethod = "POST"
        
//        let task = URLSession.shared.uploadTask(with: request, from: dataToUpload) { data, response, error in
//        //            // Handle the response or error
//        //        }
        
        if let url = URL(string: "https://jsonplaceholder.typicode.com/posts/\(id)") {
            let task = Foundation.URLSession.shared.dataTask(with: url) { data, response, error in
                if let error = error {
                    // Handle the error
                    DispatchQueue.main.async {
                        self.data = "Error: \(error.localizedDescription)"
                    }
                } else if let data = data, let dataString = String(data: data, encoding: .utf8) {
                    // Process the data
                    DispatchQueue.main.async {
                        self.data = "Data received: \(dataString)"
                        print(dataString)
                    }
                }
            }
            task.resume()
        }
    }
    
    func postData(id: Int) {
        if let url = URL(string: "https://jsonplaceholder.typicode.com/posts") {
            var request = URLRequest(url: url)
            request.httpMethod = "POST"
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
            
            let body: [String: Any] = ["title": "foo", "body": "bar", "id": id]
            request.httpBody = try? JSONSerialization.data(withJSONObject: body, options: [])
            
            let task = URLSession.shared.dataTask(with: request) { data, response, error in
                if let error = error {
                    // Handle the error
                    DispatchQueue.main.async {
                        self.data = "Error: \(error.localizedDescription)"
                    }
                } else if let data = data, let dataString = String(data: data, encoding: .utf8) {
                    // Process the data
                    DispatchQueue.main.async {
                        self.data = "Data received: \(dataString)"
                        print(dataString)
                    }
                }
            }
            task.resume()
        }
    }

    func putData(id: Int) {
        if let url = URL(string: "https://jsonplaceholder.typicode.com/posts/\(id)") {
            var request = URLRequest(url: url)
            request.httpMethod = "PUT"
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
            
            let body: [String: Any] = ["id": id , "title": "Updated foo", "body": "Updated bar", "userId": 200]
            request.httpBody = try? JSONSerialization.data(withJSONObject: body, options: [])
            
            let task = URLSession.shared.dataTask(with: request) { data, response, error in
                if let error = error {
                    // Handle the error
                    DispatchQueue.main.async {
                        self.data = "Error: \(error.localizedDescription)"
                    }
                } else if let data = data, let dataString = String(data: data, encoding: .utf8) {
                    // Process the data
                    DispatchQueue.main.async {
                        self.data = "Data received: \(dataString)"
                        print(dataString)
                    }
                }
            }
            task.resume()
        }
    }

    func deleteData(id: Int) {
        if let url = URL(string: "https://jsonplaceholder.typicode.com/posts/\(id)") {
            var request = URLRequest(url: url)
            request.httpMethod = "DELETE"
            
            let task = URLSession.shared.dataTask(with: request) { data, response, error in
                if let error = error {
                    // Handle the error
                    DispatchQueue.main.async {
                        self.data = "Error: \(error.localizedDescription)"
                    }
                } else if let data = data, let dataString = String(data: data, encoding: .utf8) {
                    // Process the data
                    DispatchQueue.main.async {
                        self.data = "Data received: \(dataString)"
                        print(dataString)
                    }
                }
            }
            task.resume()
        }
    }
}
