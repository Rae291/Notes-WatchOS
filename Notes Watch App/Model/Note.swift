//
//  Note.swift
//  Notes Watch App
//
//  Created by APPLE on 08/12/22.
//

import Foundation

struct Note: Identifiable, Codable {
    let id: UUID
    let text: String
}
