//
//  TestValidation.swift
//  TestValidation
//
//  Created by Princess Max on 24.02.2019.
//  Copyright © 2019 Princess Max. All rights reserved.
//

import XCTest

class TestValidation: XCTestCase {

    func testIsLogin(){
        let goodLogins = ["mmm","m@m.m","mm-m@m.m","mm@mm","mmmmmmmmmmmmmmmmmmmmmmmmmmmmmm32"]
        let badLogins  = [""," ","m","mm","mm@","-m.@login","m.@login","m@.login","m.@.a","m.@a",
                          "m@a@login","m.@a","---@--.ru","s-@login.ru","s@-login.ru","-mmm","-m@m","@-a","mmmmmmmmmmmmmmmmmmmmmmmmmm-more32"]
        for errorChar in ["!","#","$","%","&","'","*","+","/","=","?","^","_","`","{","|","}","~"]{
            let loginWitherrorChar = "ligin \(errorChar)"
            XCTAssert(loginWitherrorChar != Validation.shared.isLogin(login: loginWitherrorChar), loginWitherrorChar)
        }
        for badLogin in badLogins{
            XCTAssert(badLogin != Validation.shared.isLogin(login: badLogin), badLogin+" can't be login")
        }
        for goodLogin in goodLogins{
            XCTAssert(goodLogin == Validation.shared.isLogin(login: goodLogin), goodLogin+" can't be login")
        }
    }

}
