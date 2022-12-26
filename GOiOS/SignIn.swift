//
//  SignIn.swift
//  GOiOS
//
//  Created by /Chynmn/M1 pro—̳͟͞͞♡ on 2022/12/25.
//

import Foundation

func setItemKeyChain(userId: String, rft: String){
    let previousQuery: [CFString: Any] = [kSecClass: kSecClassIdentity, kSecAttrAccount: userId]
    
    let updateQuery: [CFString: Any] = [kSecValueData: rft]
    let status = SecItemUpdate(previousQuery as CFDictionary, updateQuery as CFDictionary)
    
    if status == errSecSuccess {
        print("Update!")
    } else {
        print("Update fail")
    }
}
