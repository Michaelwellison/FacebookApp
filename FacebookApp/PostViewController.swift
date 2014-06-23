//
//  PostViewController.swift
//  FacebookApp
//
//  Created by Michael Ellison on 6/23/14.
//  Copyright (c) 2014 MichaelWEllison. All rights reserved.
//

import UIKit

class PostViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Properties
    
    @IBOutlet var textField: UITextField
    
    @IBOutlet var mainImageButton: UIButton
    
    //MARK: View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTextField()
        configureMainImageButton()
        self.navigationController.navigationBar.barTintColor = UIColor(red: 0.23, green: 0.35, blue: 0.60, alpha: 1)
    
    }
 
    
    //MARK: Configuration
    
    func configureTextField() {
        textField.autocorrectionType = .Yes
        textField.returnKeyType = .Done
    }
    
    func configureMainImageButton() {
        
        mainImageButton.addTarget(self, action: "mainImageClicked:", forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    func mainImageClicked (sender:UIButton){
        
        println("Image Button Clicked")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: UITextFieldDelegate
    
    
    func textFieldDidBeginEditing(textField:UITextField) {
        
        println("textFieldShouldBeginEditing")
        
    }
    

}
