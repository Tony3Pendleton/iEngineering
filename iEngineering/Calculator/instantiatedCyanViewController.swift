//
//  instantiatedCyanViewController.swift
//  StackOverFlowQuestionPageViewEmbedByContainer
//
//  Created by Anthony Pendleton on 9/22/18.
//  Copyright © 2018 Jawbone. All rights reserved.
//

import UIKit
import Foundation


class instantiatedCyanViewController: UIViewController {

    @IBOutlet weak var tag1_Button: UIButton! // tag1_Button
    @IBOutlet weak var tag2_Button: UIButton! // tag2_Button
    @IBOutlet weak var tag3_Button: UIButton! // tag3_Button
    @IBOutlet weak var tag4_Button: UIButton! // tag4_Button
    
    @IBOutlet weak var tag5_Button: UIButton! // tag5_Button
    @IBOutlet weak var tag6_Button: UIButton! // tag6_Button
    @IBOutlet weak var tag7_Button: UIButton! // tag7_Button
    @IBOutlet weak var tag8_Button: UIButton! // tag8_Button
    
    @IBOutlet weak var tag9_Button: UIButton! // tag9_Button
    @IBOutlet weak var tag10_Button: UIButton! // tag10_Button
    @IBOutlet weak var tag11_Button: UIButton! // tag11_Button
    @IBOutlet weak var tag12_Button: UIButton! // tag12_Button
    
    @IBOutlet weak var tag13_Button: UIButton! // tag13_Button
    @IBOutlet weak var tag14_Button: UIButton! // tag14_Button
    @IBOutlet weak var tag15_Button: UIButton! // tag15_Button
    @IBOutlet weak var tag16_Button: UIButton! // tag16_Button
    
    
    var activeLandscape: Bool? = true
    var cornerRadius_forButtons: Double = 0
    var buttonIsSelected = false
    var fontConstant = CGFloat()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        



      
        
//        if UIDevice.current.orientation == UIDeviceOrientation.landscapeLeft{
//            activeLandscape = true
//            cornerRadius_forButtons = Double(tag1_Button.bounds.height / 2.0)
//        }
//        else if UIDevice.current.orientation == UIDeviceOrientation.landscapeRight{
//            activeLandscape = true
//            cornerRadius_forButtons = Double(tag1_Button.bounds.height / 2.0)
//
//        } else {
//            //PORTRAIT
//            activeLandscape = false
//            cornerRadius_forButtons = Double(tag1_Button.bounds.height / 2.0)
//
//        }
//
        
        
        
//        if activeLandscape == false || activeLandscape == true {
            // NEED NEED NEEDDDDDDDDDDDD start 1
            
            
            let screenSize = UIScreen.main.bounds
            print("screenSize: \(screenSize)")
            print("screenSizeWidth: \(screenSize.width)") // this is really the height
            print("screenSizeHeight: \(screenSize.height)") // this is really the width
            
            let screenSizeHeightIfReallyPortrait = screenSize.width
            let screenSizeWidthIfReallyPortrait = screenSize.height
            
            if (screenSizeHeightIfReallyPortrait == 896.0 && screenSizeWidthIfReallyPortrait == 414.0) || (screenSizeHeightIfReallyPortrait == 414.0 && screenSizeWidthIfReallyPortrait == 896.0) {
                //            Phone XS Max
                //            414 x 896 - note: i found this via code, print statement
                fontConstant = 1.5
                
            } else if (screenSizeHeightIfReallyPortrait == 812.0 && screenSizeWidthIfReallyPortrait == 375.0) || (screenSizeHeightIfReallyPortrait == 375.0 && screenSizeWidthIfReallyPortrait == 812.0) {
                //            Phone X
                //            375 x 812
                fontConstant = 1.3
                
            } else if (screenSizeHeightIfReallyPortrait == 736.0 && screenSizeWidthIfReallyPortrait == 414.0) || (screenSizeHeightIfReallyPortrait == 414.0 && screenSizeWidthIfReallyPortrait == 736.0) {
                //            iPhone 8 Plus, iPhone 7 Plus, iPhone 6s Plus???
                //            414 x 736
                fontConstant = 1.5
                
            } else if (screenSizeHeightIfReallyPortrait == 667.0 && screenSizeWidthIfReallyPortrait == 375.0) || (screenSizeHeightIfReallyPortrait == 375.0 && screenSizeWidthIfReallyPortrait == 667.0) {
                //            iPhone 8 | iPhone 6 Plus | iPhone 7 | iPhone 6s | iPhone 6
                //            375 x 667
                fontConstant = 1.3
                
            }  else if (screenSizeHeightIfReallyPortrait == 568.0 && screenSizeWidthIfReallyPortrait == 320.0) || (screenSizeHeightIfReallyPortrait == 320.0 && screenSizeWidthIfReallyPortrait == 568.0) {
                //            iPhone SE | iPhone 5s
                //            320 x 568
                fontConstant = 1.1
                
            } else if (screenSizeHeightIfReallyPortrait == 1366.0 && screenSizeWidthIfReallyPortrait == 1024.0) || (screenSizeHeightIfReallyPortrait == 1024.0 && screenSizeWidthIfReallyPortrait == 1366.0) {
                //            iPad Pro 12.9-inch (2nd generation) | iPad Pro (12.9-inch)
                //            1024 x 1366
                fontConstant = 2.2
                print("I am here")
                
            } else if (screenSizeHeightIfReallyPortrait == 834.0 && screenSizeWidthIfReallyPortrait == 1112.0) || (screenSizeHeightIfReallyPortrait == 1112.0 && screenSizeWidthIfReallyPortrait == 834.0) {
                //            iPad Pro 10.5-inch
                //            1112 x 834
                fontConstant = 1.8
                
            }  else if (screenSizeHeightIfReallyPortrait == 1024.0 && screenSizeWidthIfReallyPortrait == 768.0) || (screenSizeHeightIfReallyPortrait == 768.0 && screenSizeWidthIfReallyPortrait == 1024.0) {
                //            iPad Pro (9.7-inch) |  iPad Air 2 | iPad Mini 4 | iPad etc
                //            768 x 1024
                fontConstant = 1.7
                
            } else {
                fontConstant = 1
            }
            
            //// https://developer.apple.com/library/archive/documentation/DeviceInformation/Reference/iOSDeviceCompatibility/Displays/Displays.html
            //// NOTE: width x height
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            // NEED NEED NEEDDDDDDDDDDDD start 5
            
            
            
            
            //
            
            //
            
            //
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //
            
            //
            //
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
     //       print("cornerRadius_forButtons in Cyan View: \(cornerRadius_forButtons)")
            
            
            
            
            //********************************************************start
            //// IMPORTANT: Setting button alignment on tag1_Button makes messes up the cornerRadius calculation big time! Not sure why! The text looks aligned pretty well still for this button so I am going to leave it how it is, all the other ones align nicely with the code below... UPDATE: Found out setTitle needs to be called last - This worked, but still not entirely sure what the order of things being specified need to be
        
        
        
        
        
        
        
        
            tag1_Button.titleLabel?.textAlignment = .center
            tag1_Button.contentHorizontalAlignment = .center
            //   tag1_Button.titleLabel?.minimumScaleFactor = 0.1
            tag1_Button.titleLabel?.numberOfLines = 3
            //    tag1_Button.titleLabel?.lineBreakMode = .byWordWrapping
            //            tag1_Button.titleLabel?.adjustsFontSizeToFitWidth = true
            
   //         tag1_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            // tag1_Button.setTitle("A = πr²\n[Circle]", for: .normal)
            let str_tag1_Button = NSMutableAttributedString(string: "Area\n(r)\n[Circle]")
            // create the attributed colour
            //   let attributedStringColor = [];
            str_tag1_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 4)) //range of text to change font size
            str_tag1_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(5, 3)) //range of text to change font size
            str_tag1_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 8 * fontConstant), range: NSMakeRange(9, 8))
            str_tag1_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 17))
            tag1_Button.setAttributedTitle(str_tag1_Button, for: .normal)
            
            //let str = NSMutableAttributedString(string: "First line\nSecond Line")
            
            //tag1_Button.sizeToFit() // i think adjusts the button size, to fit the text, it is causing a lot of issues with messing up corner radius. just FYI
            
            
            
            
            //            button.titleLabel?.numberOfLines = 0
            //            button.titleLabel?.lineBreakMode = .byWordWrapping
            //            button.setTitle("Foo\nBar", for: .normal)
            //            button.titleLabel?.textAlignment = .center
            //
            //            button.addTarget(self, action: #selector(rightBarButtonTapped), for: .allEvents)
            //            navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)
            //
            
            
            
            tag2_Button.titleLabel?.textAlignment = .center
            tag2_Button.contentHorizontalAlignment = .center
            //   tag2_Button.titleLabel?.minimumScaleFactor = 0.1
            tag2_Button.titleLabel?.numberOfLines = 3
            // tag2_Button.titleLabel?.adjustsFontSizeToFitWidth = true
   //         tag2_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            //    tag2_Button.setTitle("C = 2πr [Circle]", for: .normal)
            let str_tag2_Button = NSMutableAttributedString(string: "Circumf.\n(r)\n[Circle]")
            // create the attributed colour
            //   let attributedStringColor = [];
            str_tag2_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 8)) //range of text to change font size
            str_tag2_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(9, 3)) //range of text to change font size
            
            str_tag2_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 8 * fontConstant), range: NSMakeRange(13, 8))
            str_tag2_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 19))
            tag2_Button.setAttributedTitle(str_tag2_Button, for: .normal)
            
            
            
            
            
            
            
            tag3_Button.titleLabel?.textAlignment = .center
            tag3_Button.contentHorizontalAlignment = .center
            //  tag3_Button.titleLabel?.minimumScaleFactor = 0.1
            tag3_Button.titleLabel?.numberOfLines = 3
            // tag3_Button.titleLabel?.adjustsFontSizeToFitWidth = true
  //          tag3_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            //   tag3_Button.setTitle("r = d/2 [Circle]", for: .normal)
            let str_tag3_Button = NSMutableAttributedString(string: "Radius\n(d)\n[Circle]")
            // create the attributed colour
            //   let attributedStringColor = [];
            str_tag3_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 6)) //range of text to change font size
            str_tag3_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(7, 3)) //range of text to change font size
            
            str_tag3_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 8 * fontConstant), range: NSMakeRange(11, 8))
            str_tag3_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 17))
            tag3_Button.setAttributedTitle(str_tag3_Button, for: .normal)
            
            
            
            
            tag4_Button.titleLabel?.textAlignment = .center
            tag4_Button.contentHorizontalAlignment = .center
            // tag4_Button.titleLabel?.minimumScaleFactor = 0.1
            tag4_Button.titleLabel?.numberOfLines = 3
            //  tag4_Button.titleLabel?.adjustsFontSizeToFitWidth = true
   //         tag4_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            //  tag4_Button.setTitle("r = √(A/π) [Circle]", for: .normal)
            let str_tag4_Button = NSMutableAttributedString(string: "Radius\n(A)\n[Circle]")
            // create the attributed colour
            //   let attributedStringColor = [];
            str_tag4_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 6)) //range of text to change font size
            str_tag4_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(7, 3)) //range of text to change font size
            
            str_tag4_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 8 * fontConstant), range: NSMakeRange(11, 8))
            str_tag4_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 17))
            tag4_Button.setAttributedTitle(str_tag4_Button, for: .normal)
            
            
            
            
            
            tag5_Button.titleLabel?.textAlignment = .center
            tag5_Button.contentHorizontalAlignment = .center
            //  tag5_Button.titleLabel?.minimumScaleFactor = 0.1
            tag5_Button.titleLabel?.numberOfLines = 3
            // tag5_Button.titleLabel?.adjustsFontSizeToFitWidth = true
     //       tag5_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            
            let str_tag5_Button = NSMutableAttributedString(string: "Volume\n(r)\n[Sphere]")
            // create the attributed colour
            //   let attributedStringColor = [];
            str_tag5_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 6)) //range of text to change font size
            str_tag5_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(7, 3)) //range of text to change font size
            str_tag5_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 8 * fontConstant), range: NSMakeRange(11, 8))
            str_tag5_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 17))
            tag5_Button.setAttributedTitle(str_tag5_Button, for: .normal)
            
            
            
            tag6_Button.titleLabel?.textAlignment = .center
            tag6_Button.contentHorizontalAlignment = .center
            //  tag6_Button.titleLabel?.minimumScaleFactor = 0.1
            tag6_Button.titleLabel?.numberOfLines = 3
            //  tag6_Button.titleLabel?.adjustsFontSizeToFitWidth = true
     //       tag6_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag6_Button = NSMutableAttributedString(string: "Area\n(r)\n[Sphere]")
            // create the attributed colour
            //   let attributedStringColor = [];
            
            
            str_tag6_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 4)) //range of text to change font size
            str_tag6_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(5, 3)) //range of text to change font size
            
            str_tag6_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 8 * fontConstant), range: NSMakeRange(9, 8))
            str_tag6_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 15))
            tag6_Button.setAttributedTitle(str_tag6_Button, for: .normal)
            
            
            tag7_Button.titleLabel?.textAlignment = .center
            tag7_Button.contentHorizontalAlignment = .center
            //  tag7_Button.titleLabel?.minimumScaleFactor = 0.1
            tag7_Button.titleLabel?.numberOfLines = 3
            //    tag7_Button.titleLabel?.adjustsFontSizeToFitWidth = true
    //        tag7_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            //tag7_Button.setTitle("r = ∛(V/1.25π) [Sphere]", for: .normal)
            let str_tag7_Button = NSMutableAttributedString(string: "Radius\n(V)\n[Sphere]")
            // create the attributed colour
            //   let attributedStringColor = [];
            str_tag7_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 6)) //range of text to change font size
            str_tag7_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(7, 3)) //range of text to change font size
            
            str_tag7_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 8 * fontConstant), range: NSMakeRange(11, 8))
            str_tag7_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 17))
            tag7_Button.setAttributedTitle(str_tag7_Button, for: .normal)
            
            
            
            
            
            
            tag8_Button.titleLabel?.textAlignment = .center
            tag8_Button.contentHorizontalAlignment = .center
            //   tag8_Button.titleLabel?.minimumScaleFactor = 0.1
            tag8_Button.titleLabel?.numberOfLines = 3
            //tag8_Button.titleLabel?.adjustsFontSizeToFitWidth = true
     //       tag8_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            //      tag8_Button.setTitle("r = √(A/4π) [Sphere]", for: .normal)
            let str_tag8_Button = NSMutableAttributedString(string: "Radius\n(A)\n[Sphere]")
            // create the attributed colour
            //   let attributedStringColor = [];
            str_tag8_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 6)) //range of text to change font size
            str_tag8_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(7, 3)) //range of text to change font size
            
            str_tag8_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 8 * fontConstant), range: NSMakeRange(11, 8))
            str_tag8_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 17))
            tag8_Button.setAttributedTitle(str_tag8_Button, for: .normal)
            
            
            
            
            tag9_Button.titleLabel?.textAlignment = .center
            tag9_Button.contentHorizontalAlignment = .center
            //  tag9_Button.titleLabel?.minimumScaleFactor = 0.1
            tag9_Button.titleLabel?.numberOfLines = 3
            //  tag9_Button.titleLabel?.adjustsFontSizeToFitWidth = true
      //      tag9_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag9_Button = NSMutableAttributedString(string: "Volume\n(h,r)\n[Cylinder]")
            // create the attributed colour
            //   let attributedStringColor = [];
            str_tag9_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 6)) //range of text to change font size
            str_tag9_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(7, 5)) //range of text to change font size
            
            str_tag9_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 8 * fontConstant), range: NSMakeRange(13, 10))
            str_tag9_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 21))
            tag9_Button.setAttributedTitle(str_tag9_Button, for: .normal)
            
            
            
            
            
            
            
            
            
            tag10_Button.titleLabel?.textAlignment = .center
            tag10_Button.contentHorizontalAlignment = .center
            //     tag10_Button.titleLabel?.minimumScaleFactor = 0.8
            tag10_Button.titleLabel?.numberOfLines = 3
            //  tag10_Button.titleLabel?.adjustsFontSizeToFitWidth = true
      //      tag10_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag10_Button = NSMutableAttributedString(string: "Area\n(h,r)\n[Cylinder]")
            str_tag10_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 4)) //range of text to change font size
            str_tag10_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(5, 5)) //range of text to change font size
            
            str_tag10_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 8 * fontConstant), range: NSMakeRange(11, 10))
            str_tag10_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 19))
            tag10_Button.setAttributedTitle(str_tag10_Button, for: .normal)
            
            
            
            
            tag11_Button.titleLabel?.textAlignment = .center
            tag11_Button.contentHorizontalAlignment = .center
            // tag11_Button.titleLabel?.minimumScaleFactor = 0.1
            tag11_Button.titleLabel?.numberOfLines = 3
            //   tag11_Button.titleLabel?.adjustsFontSizeToFitWidth = true
       //     tag11_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag11_Button = NSMutableAttributedString(string: "Radius\n(A,h)\n[Cylinder]")
            str_tag11_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 6)) //range of text to change font size
            str_tag11_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(7, 5)) //range of text to change font size
            str_tag11_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 8 * fontConstant), range: NSMakeRange(13, 10)) //range of text to change font size
            str_tag11_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 21))
            tag11_Button.setAttributedTitle(str_tag11_Button, for: .normal)
            
            
            
            
            
            
            tag12_Button.titleLabel?.textAlignment = .center
            tag12_Button.contentHorizontalAlignment = .center
            // tag12_Button.titleLabel?.minimumScaleFactor = 0.1
            tag12_Button.titleLabel?.numberOfLines = 3
            //    tag12_Button.titleLabel?.adjustsFontSizeToFitWidth = true
        //    tag12_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag12_Button = NSMutableAttributedString(string: "Height\n(A,r)\n[Cylinder]")
            str_tag12_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 6)) //range of text to change font size
            str_tag12_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(7, 5)) //range of text to change font size
             str_tag12_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 8 * fontConstant), range: NSMakeRange(13, 10)) //range of text to change font size
            str_tag12_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 21))
            tag12_Button.setAttributedTitle(str_tag12_Button, for: .normal)
            
            
            
            
            tag13_Button.titleLabel?.textAlignment = .center
            tag13_Button.contentHorizontalAlignment = .center
            //tag13_Button.titleLabel?.minimumScaleFactor = 0.1
            tag13_Button.titleLabel?.numberOfLines = 3
            //   tag13_Button.titleLabel?.adjustsFontSizeToFitWidth = true
       //     tag13_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            //  tag13_Button.setTitle("A = ab/2 [R. Triangle]", for: .normal)
            let str_tag13_Button = NSMutableAttributedString(string: "Area\n(a,b)\n[R. Triangle]")
            str_tag13_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 4)) //range of text to change font size
            str_tag13_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(5, 5)) //range of text to change font size
            str_tag13_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 8 * fontConstant), range: NSMakeRange(11, 13)) //range of text to change font size
            str_tag13_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 22))
            tag13_Button.setAttributedTitle(str_tag13_Button, for: .normal)
            
            
            
            
            tag14_Button.titleLabel?.textAlignment = .center
            tag14_Button.contentHorizontalAlignment = .center
            //  tag14_Button.titleLabel?.minimumScaleFactor = 0.1
            tag14_Button.titleLabel?.numberOfLines = 3
            //  tag14_Button.titleLabel?.adjustsFontSizeToFitWidth = true
      //      tag14_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag14_Button = NSMutableAttributedString(string: "Hypot. (c)\n(a,b)\n[R. Triangle]")
            str_tag14_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 10)) //range of text to change font size
            str_tag14_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(11, 5)) //range of text to change font size
             str_tag14_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 8 * fontConstant), range: NSMakeRange(17, 13)) //range of text to change font size
            str_tag14_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 28))
            tag14_Button.setAttributedTitle(str_tag14_Button, for: .normal)
            
            
            
            tag15_Button.titleLabel?.textAlignment = .center
            tag15_Button.contentHorizontalAlignment = .center
            //tag15_Button.titleLabel?.minimumScaleFactor = 0.1
            tag15_Button.titleLabel?.numberOfLines = 3
            //  tag15_Button.titleLabel?.adjustsFontSizeToFitWidth = true
      //      tag15_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag15_Button = NSMutableAttributedString(string: "Side (a)\n(b,c)\n[R. Triangle]")
            str_tag15_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 8)) //range of text to change font size
            str_tag15_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(9, 5)) //range of text to change font size
            str_tag15_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 8 * fontConstant), range: NSMakeRange(15, 13))
            str_tag15_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 26))
            tag15_Button.setAttributedTitle(str_tag15_Button, for: .normal)
            
            
            
            tag16_Button.titleLabel?.textAlignment = .center
            tag16_Button.contentHorizontalAlignment = .center
            //tag16_Button.titleLabel?.minimumScaleFactor = 0.1
            //   tag16_Button.titleLabel?.adjustsFontSizeToFitWidth = true
            tag16_Button.titleLabel?.numberOfLines = 3
          //  tag16_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag16_Button = NSMutableAttributedString(string: "Area\n(a)\n[Eq. Triangle]")
            // create the attributed colour
            //   let attributedStringColor = [];
            str_tag16_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 4)) //range of text to change font size
            str_tag16_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(5, 3)) //range of text to change font size
            
            str_tag16_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 8 * fontConstant), range: NSMakeRange(9, 14))
            str_tag16_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 21))
            tag16_Button.setAttributedTitle(str_tag16_Button, for: .normal)
            
            
            //********************************************************end
            
            
            
            
      //  }
        
    
        
   
        
        
        
        
        
        
        
        
        
        
        
        
        
        
       
        
        
       
        
        
      
        
        
        
        
       
        
        
        
       
        
        
    
        
        
        
        
        
        
       
        
        
        
        
        
       
        
        
        
       
        
        
        
        
        
        
        
      
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func geometrySystemButtons(_ sender: UIButton) {
        sender.flash() // button animation
        
        // 1 = tag1_Button
        // 2 = tag2_Button
        // 3 = tag3_Button
        // 4 = tag4_Button
        // 5 = tag5_Button
        // 6 = tag6_Button
        // 7 = tag7_Button
        // 8 = tag8_Button
        // 9 = tag9_Button
        // 10 = tag10_Button
        // 11 = tag11_Button
        // 12 = tag11_Button
        // 13 = tag13_Button
        // 14 = tag14_Button
        // 15 = tag15_Button
        // 16 = tag16_Button

        if sender.tag == 1 {
            let name = Notification.Name(rawValue: AreaOfCircleGivenRadius_func_NotificationKey)
            NotificationCenter.default.post(name: name, object: nil)
            
        } else if sender.tag == 2 {
            let name = Notification.Name(rawValue: circumferenceOfCircleGivenRadius_func_NotificationKey)
            NotificationCenter.default.post(name: name, object: nil)
            
        } else if sender.tag == 3 {
            let name = Notification.Name(rawValue: radiusOfCircleGivenDiameter_func_NotificationKey)
            NotificationCenter.default.post(name: name, object: nil)

        } else if sender.tag == 4 {
            let name = Notification.Name(rawValue: radiusOfCircleGivenArea_func_NotificationKey)
            NotificationCenter.default.post(name: name, object: nil)

        } else if sender.tag == 5 {
            let name = Notification.Name(rawValue: volumeOfSphereGivenRadius_func_NotificationKey)
            NotificationCenter.default.post(name: name, object: nil)

        } else if sender.tag == 6 {
            let name = Notification.Name(rawValue: areaOfSphereGivenRadius_func_NotificationKey)
            NotificationCenter.default.post(name: name, object: nil)

        } else if sender.tag == 7 {
            let name = Notification.Name(rawValue: radiusOfSphereGivenVolume_func_NotificationKey)
            NotificationCenter.default.post(name: name, object: nil)
            
        } else if sender.tag == 8 {
            let name = Notification.Name(rawValue: radiusOfSphereGivenArea_func_NotificationKey)
            NotificationCenter.default.post(name: name, object: nil)
            
        } else if sender.tag == 9 {
            let name = Notification.Name(rawValue: volumeOfCylinderGivenRadiusAndHeight_func_NotificationKey)
            NotificationCenter.default.post(name: name, object: nil)
            
            buttonIsSelected = !buttonIsSelected
            update_tag9_Button()
            
        } else if sender.tag == 10 {
            let name = Notification.Name(rawValue: areaOfCylinderGivenRadiusAndHeight_func_NotificationKey)
            NotificationCenter.default.post(name: name, object: nil)
            
            buttonIsSelected = !buttonIsSelected
            update_tag10_Button()
            
        } else if sender.tag == 11 {
            let name = Notification.Name(rawValue: radiusOfCylinderGivenAreaAndHeight_func_NotificationKey)
            NotificationCenter.default.post(name: name, object: nil)
            
            buttonIsSelected = !buttonIsSelected
            update_tag11_Button()
            
        } else if sender.tag == 12 {
            
            let name = Notification.Name(rawValue: heightOfCylinderGivenAreaAndRadius_func_NotificationKey)
            NotificationCenter.default.post(name: name, object: nil)
            
            buttonIsSelected = !buttonIsSelected
            update_tag12_Button()
            
        }  else if sender.tag == 13 {
            
            let name = Notification.Name(rawValue: areaofTriangleGivenHeightAndBase_func_NotificationKey)
            NotificationCenter.default.post(name: name, object: nil)
            
            buttonIsSelected = !buttonIsSelected
            update_tag13_Button()
            
        }  else if sender.tag == 14 {
            
            let name = Notification.Name(rawValue: hypotenuseofRightTriangleGivenSides_func_NotificationKey)
            NotificationCenter.default.post(name: name, object: nil)
           
            buttonIsSelected = !buttonIsSelected
            update_tag14_Button()
            
        }  else if sender.tag == 15 {
            
            let name = Notification.Name(rawValue: sideOfRightTriangleGivenHypotenuseAndKnownSide_func_NotificationKey)
            NotificationCenter.default.post(name: name, object: nil)
            
            buttonIsSelected = !buttonIsSelected
            update_tag15_Button()
            
        } else if sender.tag == 16 {
            
            let name = Notification.Name(rawValue: areaOfEquilateralTriangleGivenLength_func_NotificationKey)
            NotificationCenter.default.post(name: name, object: nil)
            
            
        
        }
        
        
        
        
        
        
        
        
        
        
    }
    
    
   // override func layoutifneeeded
    
    
//    override func viewWillLayoutSubviews() {
        
    func update_tag9_Button() {
        
        if buttonIsSelected {
            
            tag9_Button.titleLabel?.textAlignment = .center
            tag9_Button.contentHorizontalAlignment = .center
            tag9_Button.titleLabel?.numberOfLines = 3
           
            let str_tag9_Button = NSMutableAttributedString(string: "Volume\n(h,r)\n[Cylinder]")
           
            str_tag9_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 6)) //range of text to change font size
            str_tag9_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(7, 5)) //range of text to change font size
            
            str_tag9_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 8 * fontConstant), range: NSMakeRange(12, 11))
            str_tag9_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0), range: NSMakeRange(0, 23))
            
            tag9_Button.setAttributedTitle(str_tag9_Button, for: .normal)
            tag9_Button.backgroundColor = UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0)
            

        } else {
            
            tag9_Button.titleLabel?.textAlignment = .center
            tag9_Button.contentHorizontalAlignment = .center
            tag9_Button.titleLabel?.numberOfLines = 3
            
            let str_tag9_Button = NSMutableAttributedString(string: "Volume\n(h,r)\n[Cylinder]")
            
            str_tag9_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 6)) //range of text to change font size
            str_tag9_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(7, 5)) //range of text to change font size
            
            str_tag9_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 8 * fontConstant), range: NSMakeRange(12, 11))
            str_tag9_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 23))
            
            tag9_Button.setAttributedTitle(str_tag9_Button, for: .normal)
            tag9_Button.backgroundColor = UIColor(red: 94/255.0, green: 94/255.0, blue: 94/255.0, alpha: 1.0)
            
        }
    }
    
    
    func update_tag10_Button() {
        
        if buttonIsSelected {
            
            tag10_Button.titleLabel?.textAlignment = .center
            tag10_Button.contentHorizontalAlignment = .center
            tag10_Button.titleLabel?.numberOfLines = 3
            
            let str_tag10_Button = NSMutableAttributedString(string: "Area\n(h,r)\n[Cylinder]")
            str_tag10_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 4)) //range of text to change font size
            str_tag10_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(5, 5)) //range of text to change font size
            str_tag10_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 8 * fontConstant), range: NSMakeRange(10, 11))
            str_tag10_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0), range: NSMakeRange(0, 21))
            
            tag10_Button.setAttributedTitle(str_tag10_Button, for: .normal)
            tag10_Button.backgroundColor = UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0)
            
            
        } else {
            
            tag10_Button.titleLabel?.textAlignment = .center
            tag10_Button.contentHorizontalAlignment = .center
            tag10_Button.titleLabel?.numberOfLines = 3
            
            let str_tag10_Button = NSMutableAttributedString(string: "Area\n(h,r)\n[Cylinder]")
            str_tag10_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 4)) //range of text to change font size
            str_tag10_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(5, 5)) //range of text to change font size
            str_tag10_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 8 * fontConstant), range: NSMakeRange(10, 11))
            str_tag10_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 21))
            
            tag10_Button.setAttributedTitle(str_tag10_Button, for: .normal)
            tag10_Button.backgroundColor = UIColor(red: 94/255.0, green: 94/255.0, blue: 94/255.0, alpha: 1.0)
            
        }
    }
    
    func update_tag11_Button() {
        
        if buttonIsSelected {
            
            tag11_Button.titleLabel?.textAlignment = .center
            tag11_Button.contentHorizontalAlignment = .center
            tag11_Button.titleLabel?.numberOfLines = 3
            
            let str_tag11_Button = NSMutableAttributedString(string: "Radius\n(A,h)\n[Cylinder]")
            str_tag11_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 6)) //range of text to change font size
            str_tag11_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(7, 5)) //range of text to change font size
            str_tag11_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 8 * fontConstant), range: NSMakeRange(12, 11)) //range of text to change font size
            str_tag11_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0), range: NSMakeRange(0, 23))
            
            tag11_Button.setAttributedTitle(str_tag11_Button, for: .normal)
            tag11_Button.backgroundColor = UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0)
            
            
        } else {
            
            tag11_Button.titleLabel?.textAlignment = .center
            tag11_Button.contentHorizontalAlignment = .center
            tag11_Button.titleLabel?.numberOfLines = 3
            
            let str_tag11_Button = NSMutableAttributedString(string: "Radius\n(A,h)\n[Cylinder]")
            str_tag11_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 6)) //range of text to change font size
            str_tag11_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(7, 5)) //range of text to change font size
            str_tag11_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 8 * fontConstant), range: NSMakeRange(12, 11)) //range of text to change font size
            str_tag11_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 23))
            
            tag11_Button.setAttributedTitle(str_tag11_Button, for: .normal)
            tag11_Button.backgroundColor = UIColor(red: 94/255.0, green: 94/255.0, blue: 94/255.0, alpha: 1.0)
            
        }
    }
    
    func update_tag12_Button() {
        
        if buttonIsSelected {
            
            tag12_Button.titleLabel?.textAlignment = .center
            tag12_Button.contentHorizontalAlignment = .center
            tag12_Button.titleLabel?.numberOfLines = 3
            
            let str_tag12_Button = NSMutableAttributedString(string: "Height\n(A,r)\n[Cylinder]")
            str_tag12_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 6)) //range of text to change font size
            str_tag12_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(7, 5)) //range of text to change font size
            str_tag12_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 8 * fontConstant), range: NSMakeRange(12, 11)) //range of text to change font size
            str_tag12_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0), range: NSMakeRange(0, 23))
            
            tag12_Button.setAttributedTitle(str_tag12_Button, for: .normal)
            tag12_Button.backgroundColor = UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0)
            
            
        } else {
            
            tag12_Button.titleLabel?.textAlignment = .center
            tag12_Button.contentHorizontalAlignment = .center
            tag12_Button.titleLabel?.numberOfLines = 3
            
            let str_tag12_Button = NSMutableAttributedString(string: "Height\n(A,r)\n[Cylinder]")
            str_tag12_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 6)) //range of text to change font size
            str_tag12_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(7, 5)) //range of text to change font size
            str_tag12_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 8 * fontConstant), range: NSMakeRange(12, 11)) //range of text to change font size
            str_tag12_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 23))
            
            tag12_Button.setAttributedTitle(str_tag12_Button, for: .normal)
            tag12_Button.backgroundColor = UIColor(red: 94/255.0, green: 94/255.0, blue: 94/255.0, alpha: 1.0)
            
        }
    }
    
    func update_tag13_Button() {
        
        if buttonIsSelected {
            
            tag13_Button.titleLabel?.textAlignment = .center
            tag13_Button.contentHorizontalAlignment = .center
            tag13_Button.titleLabel?.numberOfLines = 3
            
            let str_tag13_Button = NSMutableAttributedString(string: "Area\n(a,b)\n[R. Triangle]")
            str_tag13_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 4)) //range of text to change font size
            str_tag13_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(5, 5)) //range of text to change font size
            str_tag13_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 8 * fontConstant), range: NSMakeRange(10, 14)) //range of text to change font size
            str_tag13_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0), range: NSMakeRange(0, 24))
            
            tag13_Button.setAttributedTitle(str_tag13_Button, for: .normal)
            tag13_Button.backgroundColor = UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0)
            
            
        } else {
            
            tag13_Button.titleLabel?.textAlignment = .center
            tag13_Button.contentHorizontalAlignment = .center
            tag13_Button.titleLabel?.numberOfLines = 3
            
            let str_tag13_Button = NSMutableAttributedString(string: "Area\n(a,b)\n[R. Triangle]")
            str_tag13_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 4)) //range of text to change font size
            str_tag13_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(5, 5)) //range of text to change font size
            str_tag13_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 8 * fontConstant), range: NSMakeRange(10, 14)) //range of text to change font size
            str_tag13_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 24))
            
            tag13_Button.setAttributedTitle(str_tag13_Button, for: .normal)
            tag13_Button.backgroundColor = UIColor(red: 94/255.0, green: 94/255.0, blue: 94/255.0, alpha: 1.0)
            
        }
    }
    
    func update_tag14_Button() {
        
        if buttonIsSelected {
            
            tag14_Button.titleLabel?.textAlignment = .center
            tag14_Button.contentHorizontalAlignment = .center
            tag14_Button.titleLabel?.numberOfLines = 3
            
            let str_tag14_Button = NSMutableAttributedString(string: "Hypot. (c)\n(a,b)\n[R. Triangle]")
            str_tag14_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 10)) //range of text to change font size
            str_tag14_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(11, 5)) //range of text to change font size
            str_tag14_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 8 * fontConstant), range: NSMakeRange(16, 14)) //range of text to change font size
            str_tag14_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0), range: NSMakeRange(0, 30))
            
            tag14_Button.setAttributedTitle(str_tag14_Button, for: .normal)
            tag14_Button.backgroundColor = UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0)
            
            
        } else {
            
            tag14_Button.titleLabel?.textAlignment = .center
            tag14_Button.contentHorizontalAlignment = .center
            tag14_Button.titleLabel?.numberOfLines = 3
            
            let str_tag14_Button = NSMutableAttributedString(string: "Hypot. (c)\n(a,b)\n[R. Triangle]")
            str_tag14_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 10)) //range of text to change font size
            str_tag14_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(11, 5)) //range of text to change font size
            str_tag14_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 8 * fontConstant), range: NSMakeRange(16, 14)) //range of text to change font size
            str_tag14_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 30))
            
            tag14_Button.setAttributedTitle(str_tag14_Button, for: .normal)
            tag14_Button.backgroundColor = UIColor(red: 94/255.0, green: 94/255.0, blue: 94/255.0, alpha: 1.0)
            
        }
    }
    
    func update_tag15_Button() {
        
        if buttonIsSelected {
            
            tag15_Button.titleLabel?.textAlignment = .center
            tag15_Button.contentHorizontalAlignment = .center
            tag15_Button.titleLabel?.numberOfLines = 3
            
            let str_tag15_Button = NSMutableAttributedString(string: "Side (a)\n(b,c)\n[R. Triangle]")
            str_tag15_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 8)) //range of text to change font size
            str_tag15_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(9, 5)) //range of text to change font size
            str_tag15_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 8 * fontConstant), range: NSMakeRange(14, 14))
            str_tag15_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0), range: NSMakeRange(0, 28))
            
            tag15_Button.setAttributedTitle(str_tag15_Button, for: .normal)
            tag15_Button.backgroundColor = UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0)
            
            
        } else {
            
            tag15_Button.titleLabel?.textAlignment = .center
            tag15_Button.contentHorizontalAlignment = .center
            tag15_Button.titleLabel?.numberOfLines = 3
            
            let str_tag15_Button = NSMutableAttributedString(string: "Side (a)\n(b,c)\n[R. Triangle]")
            str_tag15_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 8)) //range of text to change font size
            str_tag15_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(9, 5)) //range of text to change font size
            str_tag15_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 8 * fontConstant), range: NSMakeRange(14, 14))
            str_tag15_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 28))
            
            tag15_Button.setAttributedTitle(str_tag15_Button, for: .normal)
            tag15_Button.backgroundColor = UIColor(red: 94/255.0, green: 94/255.0, blue: 94/255.0, alpha: 1.0)
            
        }
    }
    
    
    
    override func viewWillLayoutSubviews() {
        
        
        
        ///////////// VERY IMPORTANT /////////////
        // https://stackoverflow.com/questions/33590272/how-do-i-disable-landscape-orientation-on-an-ipad-app?rq=1
        // I DISABLED ROTATION FOR iPAD because corner radius is being wonky for iPad devices.
        
        
        
        //        Its work perfectly. Dont need to write code for it.
        //
        //            First select project and then go in first tab "General".
        //
        //            Now select "Devices" option in Deployment info section is iPad and in that down select Device              orientation .. In which remove checkmark from landscape Left, Right option
        //
        //            After done select it back device as universal and set device orientation as portrait..mode and remove    check mark from landscape mode.
        //
        //            Now run your app in iPad and check that things. I hope it will be resolved.
        
        ///////////// VERY IMPORTANT /////////////
        
        
        
        
        
        
        
        
        
        print("tag1_Button.bounds in viewWillLayoutSubviews in myCalculatorViewController: \(tag1_Button.bounds)")
        print("tag1_Button.bounds.height in viewWillLayoutSubviews in myCalculatorViewController: \(tag1_Button.bounds.height)")
        print("tag1_Button.bounds.height / 2 in viewWillLayoutSubviews in myCalculatorViewController: \(Double(tag1_Button.bounds.height / 2))")
        
        // NEED NEED NEEDDDDDDDDDDDD start 5
        
        if UIDevice.current.orientation == UIDeviceOrientation.landscapeLeft{
            //  activeLandscape = true
            cornerRadius_forButtons = Double(tag1_Button.bounds.height / 2.0)
        }
        else if UIDevice.current.orientation == UIDeviceOrientation.landscapeRight{
            // activeLandscape = true
            cornerRadius_forButtons = Double(tag1_Button.bounds.height / 2.0)
            
        } else {
            //PORTRAIT
            //  activeLandscape = false
            cornerRadius_forButtons = Double(tag1_Button.bounds.height / 2.0)
            
        }
        
        
        
        
        
//        tag1_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//        
//        
//        tag2_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//        //
//        tag3_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//        //
//        tag4_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//        //
//        
//        tag5_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//        tag6_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//        tag7_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//        
//        tag8_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//        
//        tag9_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//        //
//        tag10_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//        //
//        //
//        tag11_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//        
//        
//        tag12_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//        
//        
//        
//        tag13_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//        
//        tag14_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//        
//        tag15_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//        
//        tag16_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
       
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
}






