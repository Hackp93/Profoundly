//
//  EmptyTabTests.swift
//  ProfoundlyTests
//
//  Created by Manu Singh on 24/04/19.
//  Copyright © 2019 NearGroup. All rights reserved.
//

import UIKit
import XCTest
@testable import Profoundly

class EmptyTabTests: XCTestCase {

    let emptyTabStoryboard = UIStoryboard(name: "EmptyTabController", bundle: nil)
    
    func testIsInitialViewControllerSet(){
        let initialController = emptyTabStoryboard.instantiateInitialViewController()
        XCTAssert(initialController != nil)
    }
    
    func testIsInitialViewControllerEmptyTabController(){
        XCTAssert(emptyTabStoryboard.instantiateInitialViewController() is EmptyTabViewController)
    }
    
    func testIsEmptyTabBarAddingCorrectly(){
        let controller = UIViewController()
        controller.showEmptyTab()
        XCTAssert(controller.children.first is EmptyTabViewController)
        XCTAssert(!controller.view.subviews.isEmpty)
        
    }
    
    func testAreOutletsSetCorrectly(){
        let emptyTabController = emptyTabStoryboard.instantiateInitialViewController() as? EmptyTabViewController
        emptyTabController?.loadViewIfNeeded()
        XCTAssert(emptyTabController?.textLabel != nil)
    }
    
}
