//
//  ViewController.swift
//  ACP-SPM-integration
//
//  Created by Petr Korolev on 13.02.2020.
//  Copyright © 2020 Petr Korolev. All rights reserved.
//

import UIKit
import CoreActionSheetPicker

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func acp_call(_ sender: Any) {
        ActionSheetStringPicker.show(withTitle: "Picker from navigation bar",
                                            rows: ["One", "Two", "A lot"],
                                            initialSelection: 1,
                                            doneBlock: { picker, value, index in
                                               print("picker = \(String(describing: picker))")
                                               print("value = \(value)")
                                               print("index = \(String(describing: index))")
                                               return
                                            },
                                            cancel: { picker in
                                               return
                                            },
                                            origin: sender)
           }
    }
    

