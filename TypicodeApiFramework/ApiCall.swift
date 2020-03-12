//
//  ApiCall.swift
//  TypicodeApiFramework
//
//  Created by Tolga Atmaca on 12.03.2020.
//  Copyright © 2020 Tolga Atmaca. All rights reserved.
//
import Alamofire
import ObjectMapper

public class ApiCall {
    
    static func genericCall<T:Mappable>(_ type: T.Type, URL: String, completion: @escaping (ApiResponse) -> Void) {
        
        let apiResponse = ApiResponse()

        ApiHelper.Instance.call(url: URL) { response in
            switch (response.result) {
            case .success:
                apiResponse.responseList = Mapper<T>().mapArray(JSONArray: response.result.value as! [[String : Any]])
                apiResponse.status = .success
                completion(apiResponse)
            case .failure( let error):
                apiResponse.error = error.localizedDescription
                apiResponse.status = .failure
                print("Error on request \(error)")
                completion(apiResponse)
            }
        }
    }
    
    public static func getUsers( completion: @escaping (ApiResponse) -> Void) {
        self.genericCall(User.self, URL: Commons.URL_USERS) { apiResponse in
            completion(apiResponse)
        }
    }
    
    public static func getPosts( completion: @escaping (ApiResponse) -> Void) {
        self.genericCall(Post.self, URL: Commons.URL_POSTS) { apiResponse in
            completion(apiResponse)
        }
    }
        
    public static func getComments(postId: Int?, completion: @escaping (ApiResponse) -> Void) {
        self.genericCall(Comment.self, URL: Commons.URL_COMMENTS) { apiResponse in
            let resp = apiResponse.responseList as! [Comment]
            print("Count: \(resp.count)")
            apiResponse.responseList = resp.filter{$0.postId == postId}
            print("Post's Comment Count: \(apiResponse.responseList.count)")
            completion(apiResponse)
        }
    }
    
    public static func getAlbums( completion: @escaping (ApiResponse) -> Void) {
        self.genericCall(Album.self, URL: Commons.URL_ALBUMS) { apiResponse in
            completion(apiResponse)
        }
    }
    
    public static func getPhotos( completion: @escaping (ApiResponse) -> Void) {
        self.genericCall(Photo.self, URL: Commons.URL_PHOTOS) { apiResponse in
            completion(apiResponse)
        }
    }
        
}
