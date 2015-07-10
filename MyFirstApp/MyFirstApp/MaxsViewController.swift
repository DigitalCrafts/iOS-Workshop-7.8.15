//
//  MaxsViewController.swift
//  MyFirstApp
//
//  Created by Michael McChesney on 7/8/15.
//  Copyright (c) 2015 DigitalCrafts LLC. All rights reserved.
//

import UIKit

class MaxsViewController: UIViewController {
    
    @IBOutlet weak var myTextLabel: UILabel!
    
    @IBOutlet weak var myTextField: UITextField!
    
    @IBAction func changeLabel(sender: AnyObject) {
    
        // this is where I'm changing the text label
        
        myTextLabel.text = myTextField.text

    }
    
    
    @IBAction func changeBackgroundToRed(sender: AnyObject) {
        
        // change the background to red here
        
        self.view.backgroundColor = UIColor.redColor()
        
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
