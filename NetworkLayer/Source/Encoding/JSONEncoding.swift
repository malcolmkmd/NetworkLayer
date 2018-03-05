//
//  JSONEncoding.swift
//  NetworkLayer
//
//  Created by Malcolm Kumwenda on 2018/03/05.
//  Copyright © 2018 Malcolm Kumwenda. All rights reserved.
//

import Foundation

public struct JSONEncoding: ParameterEncoding {
    public func encode(urlRequest: inout URLRequest, with parameters: Parameters?) throws {
        guard let parameters = parameters else { throw NetworkError.parametersNil }
        do {
            let jsonAsData = try JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted)
            if urlRequest.value(forHTTPHeaderField: "Content-Type") == nil {
                urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
            }
            urlRequest.httpBody = jsonAsData
        }catch {
            throw NetworkError.encodingFailed
        }
    }
}
