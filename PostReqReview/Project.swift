//
//  Project.swift
//  PostReqReview
//
//  Created by C4Q on 4/27/20.
//  Copyright © 2020 Iram Fattah. All rights reserved.
//

import Foundation

struct AirtableResponse: Codable {
    let projectWrappers: [ProjectWrapper]

    enum CodingKeys: String, CodingKey {
        case projectWrappers = "records"
    }
}

struct ProjectWrapper: Codable {
    let project: Project

    enum CodingKeys: String, CodingKey {
        case project = "fields"
    }
}

struct Project: Codable {
    let dueDate: String
    let name: String

    enum CodingKeys: String, CodingKey {
        case dueDate = "Due date"
        case name = "Name"
    }
}
