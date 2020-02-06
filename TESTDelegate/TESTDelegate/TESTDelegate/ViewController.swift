//
//  ViewController.swift
//  TESTDelegate
//
//  Created by Bhavesh Chaudhari on 05/02/20.
//  Copyright © 2020 ByteCrest. All rights reserved.
//

import UIKit

class ViewController: UIViewController, myProtocol {


    @IBOutlet var textfield1: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    func passValue(value: String) {
        textfield1.text = value
    }


    @IBAction func buttonClick(sender: UIButton) {

        let viewContoller2 = self.storyboard?.instantiateViewController(identifier: "SecondViewController") as? SecondViewController
        viewContoller2?.myvalue = textfield1.text
        viewContoller2?.delegate = self
        self.present(viewContoller2!, animated: true, completion: nil)
    }

}




import Foundation

print("Hello World")


struct Cookie {
    var size:Int = 5
    var hasChocolateChips:Bool = false
}

class Bakery
{
    func makeCookie()
    {
        var cookie = Cookie()
        cookie.size = 6
        cookie.hasChocolateChips = true
    }
}

protocol BakeryDelegate {
    func cookieWasBaked(_ cookie: Cookie)
}

class Bakery1
{
    var delegate:BakeryDelegate?

    func makeCookie()
    {
        var cookie = Cookie()
        cookie.size = 6
        cookie.hasChocolateChips = true

        delegate?.cookieWasBaked(cookie)
    }
}

class CookieShop: BakeryDelegate
{
    func cookieWasBaked(_ cookie: Cookie)
    {
        print("Yay! A new cookie was baked, with size \(cookie.size)")
    }
}

let shop = CookieShop()

let bakery = Bakery()
bakery.delegate = shop

bakery.makeCookie()