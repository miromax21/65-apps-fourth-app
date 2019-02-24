//
//  main.swift
//  65-app-fourth-app
//
//  Created by Princess Max on 17.02.2019.
//  Copyright © 2019 Princess Max. All rights reserved.
//

import Foundation
extension String{
    func isValid(rexeg:String) -> Bool {
        let stringTest = NSPredicate(format:"SELF MATCHES %@", rexeg)
        return stringTest.evaluate(with: self)
    }
}

enum RegExEnum: String {
    case login = "^[A-Za-z]([A-Za-z0-9@/.-]{2,31})$"
    case userName = "^[A-Za-z]([A-Za-z0-9/.-]+)$"
    case email = "([^@]?)+[^@/.-]@[^@/.-]([^@]?)+([^@/.-]?)"
}
enum AlertMessagesEnum: String{
    case login = "🚫 You are able to use lowercase Latin characters with '.' and '-'; also the '@', but just once, if you use an email address as login. The first character must be a letter!"
}

public class Validation{
    public static let shared = Validation()
    public func isLogin(login:String) -> String!{
        let isValid = login.isValid(rexeg: RegExEnum.login.rawValue)
                 &&  (login.isValid(rexeg: RegExEnum.userName.rawValue) || login.isValid(rexeg: RegExEnum.email.rawValue))
        let rval = isValid ? login : AlertMessagesEnum.login.rawValue
        return rval
    }
}
