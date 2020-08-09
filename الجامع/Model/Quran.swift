//
//  Quran.swift
//  الجامع
//
//  Created by Mohamed on 8/9/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import Foundation




struct soura: Codable {
    let surahNumber: Int
    let verseNumber: Int
    let content: String
    private enum CodingKeys: String, CodingKey {
        case surahNumber = "surah_number"
        case verseNumber = "verse_number"
        case content
    }
}
