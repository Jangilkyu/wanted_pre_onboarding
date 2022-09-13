//
//  LimitedDictionary.swift
//  WeatherInfoApp
//
//  Created by jangilkyu on 2022/09/13.
//

import Foundation

struct LimitedDictionary<T: Hashable, U> {
  private let limit: UInt
  private var dictionary = [T: U]()
  
  init(limit: UInt) {
    self.limit = limit
  }
  
  subscript(key: T) -> U? {
    get {
      return dictionary[key]
    }
    set {
      let keys = dictionary.keys
      if keys.count < limit || keys.contains(key) {
        dictionary[key] = newValue
      }
    }
  }
}
