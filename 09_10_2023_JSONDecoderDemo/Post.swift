//
//  Post.swift
//  09_10_2023_JSONDecoderDemo
//
//  Created by Vishal Jagtap on 29/12/23.
//

import Foundation
struct Post : Codable{
    var userId : Int
    var id : Int
    var title : String
    var body : String
}
