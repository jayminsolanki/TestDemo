//
//  SecondViewController.swift
//  TESTDelegate
//
//  Created by Bhavesh Chaudhari on 05/02/20.
//  Copyright © 2020 ByteCrest. All rights reserved.
//

import UIKit



protocol myProtocol: class {
    func passValue(value: String)
}

class SecondViewController: UIViewController {

    @IBOutlet var textfield1: UITextField!
    var myvalue: String?
    weak var delegate: myProtocol!

    override func viewDidLoad() {
        super.viewDidLoad()

        guard let value = myvalue  else {
            return
        }

        textfield1.text = value

    }


    @IBAction func buttonClick2(sender: UIButton) {

        delegate.passValue(value: textfield1.text!)
        self.dismiss(animated: true, completion: nil)
    }


}
