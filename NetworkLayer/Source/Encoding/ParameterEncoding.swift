//
//  ParameterEncoding.swift
//  NetworkLayer
//
//  Created by Malcolm Kumwenda on 2018/03/05.
//  Copyright © 2018 Malcolm Kumwenda. All rights reserved.
//

import Foundation

public typealias Parameters = [String:Any]

public protocol ParameterEncoding {
    func encode( urlRequest: inout URLRequest, with parameters: Parameters?) throws
}
