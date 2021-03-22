//
//  DuaPart.swift
//  DuaMeaning
//
//  Created by Shain Dholakiya on 3/21/21.
//

import Foundation

public struct DuaPart {
    public let part: String
    
    init(part: String) {
        self.part = part
    }
}

// MARK: - Identifiable
extension DuaPart: Identifiable {
    public var id: String {
        part
    }
}
