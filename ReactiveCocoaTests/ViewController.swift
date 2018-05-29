//
//  ViewController.swift
//  ReactiveCocoaTests
//
//  Created by Pedro Alonso on 5/29/18.
//  Copyright © 2018 Pedro Alonso. All rights reserved.
//

import UIKit
import ReactiveCocoa
import ReactiveSwift
import Result

class ViewController: UIViewController {

    
    @IBOutlet weak var lbTextInputs: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textArea: UITextView!
    @IBOutlet weak var btnReactive: UIButton!
    @IBOutlet weak var lbButton: UILabel!
    @IBOutlet weak var segmentedController: UISegmentedControl!
    @IBOutlet weak var lbSegmented: UILabel!
    @IBOutlet weak var swReactive: UISwitch!
    @IBOutlet weak var lbSwitch: UILabel!
    @IBOutlet weak var activityController: UIActivityIndicatorView!
    @IBOutlet weak var sldReactive: UISlider!
    @IBOutlet weak var prgssReactive: UIProgressView!
    @IBOutlet weak var stpReactive: UIStepper!
    @IBOutlet weak var lbStepper: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        self.lbTextInputs.reactive.text <~ self.lbTextInputs.reactive.text
        
         self.textField.reactive.continuousTextValues.map
            {
                print($0 ?? "", "count: \($0!.count)")
                self.lbTextInputs.text = "\($0 ?? "") count: \($0!.count)"
                return $0 ?? 0
            }.observeValues {
                print($0 , "count: ")
        }
        
        self.textArea.reactive.continuousTextValues.map({
            print($0, "Count: ", $0?.count ?? "")
            self.lbTextInputs.text = "\($0 ?? "") count: \($0!.count)"
            return $0 ?? "-1"
        }).observeValues {
            print($0)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

