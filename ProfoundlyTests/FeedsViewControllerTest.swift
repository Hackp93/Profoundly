//
//  FeedsViewControllerTest.swift
//  ProfoundlyTests
//
//  Created by Manu Singh on 24/04/19.
//  Copyright © 2019 NearGroup. All rights reserved.
//

import UIKit
import XCTest
@testable import Profoundly

class FeedsViewControllerTest: XCTestCase {

    let feedStoryboard = UIStoryboard(name: "Feed", bundle: nil)
    
    func testIsInitialViewControllerSet(){
        XCTAssert(feedStoryboard.instantiateInitialViewController() is FeedViewController)
    }
    
    func testIsOutletsSet(){
        let feedController = feedStoryboard.instantiateInitialViewController() as? FeedViewController
        feedController?.loadViewIfNeeded()
        XCTAssert(feedController?.tableView != nil)
    }
    
    func testIsTableViewDataSourceAndDelegateImplemented(){
        let feedController = feedStoryboard.instantiateInitialViewController() as? FeedViewController
        
        XCTAssert(((feedController?.conforms(to: UITableViewDataSource.self))!))
        XCTAssert(((feedController?.conforms(to: UITableViewDelegate.self))!))
        
    }
    
    func testTableViewCellOutletsSet(){
        let feedController = feedStoryboard.instantiateInitialViewController() as? FeedViewController
        feedController?.loadViewIfNeeded()
        let cell = feedController?.tableView.dequeueReusableCell(withIdentifier: "cell1")
        XCTAssert(cell?.textLabel != nil)
    }
    
    func testIsTableViewDataSourceAndDelegateSet(){
        let feedController = feedStoryboard.instantiateInitialViewController() as? FeedViewController
        feedController?.loadViewIfNeeded()
        XCTAssert(feedController?.tableView.delegate is FeedViewController)
        XCTAssert(feedController?.tableView.dataSource is FeedViewController)
    }
    
}
