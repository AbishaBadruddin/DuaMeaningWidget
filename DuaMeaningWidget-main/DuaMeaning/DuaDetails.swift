//
//  DuaDetails.swift
//  DuaMeaning
//
//  Created by Shain Dholakiya on 3/19/21.
//

import Foundation

public struct DuaDetails {
    public let part: String
    public let arabic: String
    public let meaning: String
//    public let url: URL?
    
    init(part: String, arabic: String, meaning: String) {
        self.part = part
        self.arabic = arabic
        self.meaning = meaning
//        self.url = URL(string: "dua://\(arabic.filter { !$0.isWhitespace })")
    }
}

// MARK: - Identifiable
extension DuaDetails: Identifiable {
    public var id: String {
        arabic
    }
}
