//
//  MainViewController.swift
//  FacebookApp
//
//  Created by Michael Ellison on 6/18/14.
//  Copyright (c) 2014 MichaelWEllison. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    // MARK: Properties
    
    @IBOutlet var timPostView: UIView

    @IBOutlet var mainImageButton: UIButton
    @IBOutlet var timPostButton: UIButton

    
    
    // MARK: View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTimPostView()
        configureHerPostview()
        configureMainImageButton()
        
        self.navigationController.navigationBar.barTintColor = UIColor(red: 0.23, green: 0.35, blue: 0.60, alpha: 1)
        
    }
    
    
    // MARK: Configuration
    
    func configureTimPostView() {
        
        /* the code below is equivalent to:
        self.timPostView.backgroundColor = [UIColor whiteColor];
        */
        timPostView.backgroundColor = UIColor.whiteColor()
        timPostView.layer.cornerRadius = 3
        
        // due to layer, convert UIColor to type CGColor
        timPostView.layer.borderColor = UIColor.blackColor().CGColor
    }
    
    
    func configureHerPostview() {
        
        var herPostView:UIView = UIView(frame: CGRectMake(20, 468, 280, 50))
        herPostView.backgroundColor = UIColor.whiteColor()
        herPostView.layer.cornerRadius = 3
        
        var herImage = UIImage(named:"HerImage")
        var herImageView = UIImageView(frame: CGRectMake(5, 5, 38, 38))
        
        var herNameLabel = UILabel(frame: CGRectMake(50, 4, 95, 21))
        var herTimeLabel = UILabel(frame: CGRectMake(50, 25, 121, 21))
        
        herNameLabel.text = "Her"
        herNameLabel.adjustsFontSizeToFitWidth = true
        herTimeLabel.text = "Sunday at 4:55pm"
        herTimeLabel.font = UIFont.systemFontOfSize(12.0)
        herTimeLabel.textColor = UIColor.lightGrayColor()
        
        herImageView.image = herImage
        
        herPostView.addSubview(herTimeLabel)
        herPostView.addSubview(herNameLabel)
        herPostView.addSubview(herImageView)
        self.view.addSubview(herPostView)
        
    }
    
    func configureMainImageButton() {
        
        mainImageButton.addTarget(self, action: "mainImageClicked:", forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    
    func configureTimPostButton() {
        
        timPostButton.addTarget(self, action: "timPostButtonClicked:", forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    func timPostButtonClicked (sender:UIButton) {
        
    }
    
    func mainImageClicked (sender:UIButton){

        println("Image Button Clicked")
    }
    
    override func viewWillAppear(animated: Bool) {
        
    //    println("View Did Appear")
    }
    
    override func viewDidAppear(animated: Bool) {

     //   println("View did appear")
    }
    
    override func viewWillDisappear(animated: Bool) {
        
    //    println("View Will Disappear")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

