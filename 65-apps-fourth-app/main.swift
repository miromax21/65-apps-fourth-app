//
//  main.swift
//  65-app-fourth-app
//
//  Created by Princess Max on 17.02.2019.
//  Copyright © 2019 Princess Max. All rights reserved.
//

import Foundation

print("Hello, World!")
class App{
    func checkLogin(login:String) {
//let logintest = Validation.shared.isLogin(login: login)
        if let logintest = Validation.shared.isLogin(login: login), logintest != login {
            print(logintest)
            return
        }
    }
}
print("enter the user name")
if let username = readLine(){
    App().checkLogin(login: username)
}
RunLoop.main.run()

