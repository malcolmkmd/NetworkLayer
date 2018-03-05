//
//  HTTPTask.swift
//  NetworkLayer
//
//  Created by Malcolm Kumwenda on 2018/03/05.
//  Copyright © 2018 Malcolm Kumwenda. All rights reserved.
//

import Foundation

public enum HTTPTask {
    case request
    case requestWithParameters(bodyParameters: Parameters, bodyEncoding: ParameterEncoding, urlParameters: Parameters)
}
