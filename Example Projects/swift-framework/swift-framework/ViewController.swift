//
//  ViewController.swift
//  swift-framework
//
//  Created by Petr Korolev on 04/05/15.
//  Copyright (c) 2015 Petr Korolev. All rights reserved.
//

import UIKit
import CoreActionSheetPicker

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnClick(sender: AnyObject) {
        ActionSheetLocalePicker.showPickerWithTitle("Locale picker", initialSelection: NSTimeZone(), doneBlock: {
            picker, index in
            
            println("index = \(index)")
            println("picker = \(picker)")
            return
            }, cancelBlock: { ActionStringCancelBlock in return }, origin: sender.superview!)
    }

}

