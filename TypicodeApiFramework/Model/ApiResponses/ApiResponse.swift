//
//  CommentResponse.swift
//  TypicodeApiFramework
//
//  Created by Tolga Atmaca on 12.03.2020.
//  Copyright © 2020 Tolga Atmaca. All rights reserved.
//

public class ApiResponse {
    public var responseList: [Any?] = []
    public var status: Commons.ApiResponse = .failure
    public var error: String = ""
}
