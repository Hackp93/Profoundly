//
//  TabControllerAssemblyTest.swift
//  ProfoundlyTests
//
//  Created by Manu Singh on 24/04/19.
//  Copyright © 2019 NearGroup. All rights reserved.
//

import UIKit
import XCTest
@testable import Profoundly

class TabControllerAssemblyTest: XCTestCase {

    let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
    
    func testisInitialControllerSet(){
        
        let tabbarcontroller = mainStoryboard.instantiateInitialViewController()
        XCTAssert(tabbarcontroller != nil)
        
    }
    
    func testIsInitialViewControllerTabBar(){
        let tabbarcontroller = mainStoryboard.instantiateInitialViewController() as? UITabBarController
        XCTAssert(tabbarcontroller != nil)
    }
    
    func testareTabsSetCorrectly(){
        let tabbarcontroller = mainStoryboard.instantiateInitialViewController() as? UITabBarController
        
        XCTAssert(tabbarcontroller?.viewControllers?.first is FeedViewController)
        XCTAssert(tabbarcontroller?.viewControllers?[1] is FriendsViewController)
        XCTAssert(tabbarcontroller?.viewControllers?[2] is InboxViewController)
        
    }
    
}
