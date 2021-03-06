//
//  MemberDetailProviderProtocol.swift
//  ElementX
//
//  Created by Stefan Ceriu on 18/03/2022.
//  Copyright © 2022 Element. All rights reserved.
//

import Foundation

enum MemberDetailProviderError: Error {
    case invalidRoomProxy
    case failedRetrievingUserAvatarURL
    case failedRetrievingUserDisplayName
}

protocol MemberDetailProviderProtocol {
    func avatarURLForUserId(_ userId: String) -> String?
    func avatarURLForUserId(_ userId: String, completion: @escaping (Result<String?, MemberDetailProviderError>) -> Void)
    
    func displayNameForUserId(_ userId: String) -> String?
    func displayNameForUserId(_ userId: String, completion: @escaping (Result<String?, MemberDetailProviderError>) -> Void)
}
