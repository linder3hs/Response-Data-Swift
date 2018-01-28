//
//  ViewController.swift
//  DataJson
//
//  Created by Linder Hassinger on 1/27/18.
//  Copyright © 2018 Linder Hassinger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //Para que cargue ni bien abra la app
        let dwn = ApiResponse()
        dwn.downloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

