//
//  Commons.swift
//  TypicodeApiFramework
//
//  Created by Tolga Atmaca on 12.03.2020.
//  Copyright © 2020 Tolga Atmaca. All rights reserved.
//

public class Commons {
    
    static let URL_SERVER = "https://jsonplaceholder.typicode.com"
    static let URL_USERS = URL_SERVER + "/users"
    static let URL_POSTS = URL_SERVER + "/posts"
    static let URL_COMMENTS = URL_SERVER + "/comments"
    static let URL_ALBUMS = URL_SERVER + "/albums"
    static let URL_PHOTOS = URL_SERVER + "/photos"
    
    
    public enum ApiResponse: Int {
        case failure = 0, success
    }
}
