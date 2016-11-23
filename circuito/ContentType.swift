//
//  ContentType.swift
//  circuito
//
//  Created by MacBook on 11/22/16.
//  Copyright © 2016 Hector Rincon. All rights reserved.
//

import Foundation

enum ContentType: String {
    case Mapa = "content_map"
    case Paradas = "content_films"
}

prefix func ! (value: ContentType) -> ContentType {
    switch value {
    case .Mapa:
        return .Paradas
    case .Paradas:
        return .Mapa
    }
}
