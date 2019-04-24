//
//  EmptyTabViewController.swift
//  Profoundly
//
//  Created by Manu Singh on 24/04/19.
//  Copyright © 2019 NearGroup. All rights reserved.
//

import UIKit

class EmptyTabViewController: UIViewController {

    @IBOutlet weak var textLabel : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension UIViewController {
    
    func showEmptyTab(){
        let storyboard = UIStoryboard(name: "EmptyTabController", bundle: nil)
        let emptyTabController = storyboard.instantiateInitialViewController()
        addChild(emptyTabController!)
        view.addSubview(emptyTabController!.view)
        emptyTabController!.view.frame = view.bounds
        emptyTabController?.didMove(toParent: self)
    }
    
}
