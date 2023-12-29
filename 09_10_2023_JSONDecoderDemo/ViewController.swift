//
//  ViewController.swift
//  09_10_2023_JSONDecoderDemo
//
//  Created by Vishal Jagtap on 29/12/23.
//

import UIKit

class ViewController: UIViewController {

    var url : URL?
    var urlRequest : URLRequest?
    var jsonDecoder : JSONDecoder?
    var posts : [Post] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        jsonParsingUsingDecoder()
    }
    
    func jsonParsingUsingDecoder(){
        url = URL(string: "https://jsonplaceholder.typicode.com/posts")
        urlRequest = URLRequest(url: url!)
        var dataTask = URLSession.shared.dataTask(with: urlRequest!) { data, response, error in
        
            self.jsonDecoder = JSONDecoder()
            self.posts = try! self.jsonDecoder!.decode([Post].self, from: data!)
            print(self.posts)
        }
        dataTask.resume()
    }
}
