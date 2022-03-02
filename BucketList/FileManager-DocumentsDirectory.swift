//
//  FileManager-DocumentsDirectory.swift
//  BucketList
//
//  Created by Mitch Andrade on 2/27/22.
//

import Foundation

extension FileManager {
    static var documentsDirectory: URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
}
