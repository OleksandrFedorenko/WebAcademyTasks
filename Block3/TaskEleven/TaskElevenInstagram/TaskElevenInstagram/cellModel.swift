//
//  cellModel.swift
//  TaskElevenInstagram
//
//  Created by Олександр Федоренко on 17.05.2023.
//

import Foundation

struct Post {
    
    let nickname: String
    let avatarImageName: String
    let postImageName: String
    let viewsCount: Int
    let description: String
    let countOfComments: Int
    let postedAt: String
}

struct Posts {
    
    static let list:[Post] = [Post(nickname: "be_my_summer", avatarImageName: "avatar",             postImageName: "car", viewsCount: 523, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.", countOfComments: 39, postedAt: "3 minutes ago"),
                              Post(nickname: "be_my_summer", avatarImageName: "avatar", postImageName: "field", viewsCount: 423, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s. ", countOfComments: 29, postedAt: "2 minutes ago"),
                              Post(nickname: "be_my_summer", avatarImageName: "avatar", postImageName: "lion", viewsCount: 323, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.", countOfComments: 19, postedAt: "1 minutes ago")]
}
