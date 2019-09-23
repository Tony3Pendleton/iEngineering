//
//  instantiatedMagentaViewController.swift
//  StackOverFlowQuestionPageViewEmbedByContainer
//
//  Created by Anthony Pendleton on 9/22/18.
//  Copyright © 2018 Jawbone. All rights reserved.
//

import UIKit



class instantiatedMagentaViewController: UIViewController {

    ////////// TAG IDs //////////
    
    
    
    // mc = 1
    // m+ = 2
    // m- = 3
    // mx = 4
    // m÷ = 5
    // mr = 6
    // sin = 7 = sin^-1(x)
    // cos = 8 = cos^-1(x)
    // tan = 9 = tan^-1(x)
    // 1/x = 10
    // x! = 11
    // 10^x = 12 = 2^x
    // sinh = 13 = sin^-1(h)
    // cosh = 14 = cos^-1(h)
    // tanh = 15 = tan^-1(h)
    // 2√x = 16
    // 3√x = 17
    // y√x = 18
    // ln = 19 = logy(x)
    // log10 = 20 = log2
    // e^x = 21 = y^x
    // x^2 = 22
    // x^3 = 23
    // x^y = 24
    // 2nd = 25
    // Deg = 26 = Rad
    // Rand = 27
    // EE = 28
    // π = 29
    // e = 30
    
    
    
    
    
    /////////////////////////////
    
    @IBOutlet var tag1_Button: UIButton!   // mClearButton
    @IBOutlet var tag2_Button: UIButton!   // mPlusButton
    @IBOutlet var tag3_Button: UIButton!  // mMinusButton
    @IBOutlet var tag4_Button: UIButton! // tag3_Button
    
    @IBOutlet var tag5_Button: UIButton! // tag4_Button
    @IBOutlet var tag6_Button: UIButton!      // mRecallButton
    
    @IBOutlet var tag7_Button: UIButton!   // sinANDsinInverseButton
    var tag7button_initialTitleActive = false
    
    @IBOutlet var tag8_Button: UIButton! // cosANDcosInverseButton
    var tag8button_initialTitleActive = false
    
    @IBOutlet var tag9_Button: UIButton! // tanANDtanInverseButton
    var tag9button_initialTitleActive = false
    
    @IBOutlet var tag10_Button: UIButton! // oneOverX_Button

    @IBOutlet var tag11_Button: UIButton! // xFactorialButton
    
    @IBOutlet var tag12_Button: UIButton! // ten raised to the x
    var tag12button_initialTitleActive = false
    
    
    @IBOutlet var tag13_Button: UIButton! // sinhANDsinhInverseButton
    var tag13button_initialTitleActive = false
    
    @IBOutlet var tag14_Button: UIButton! // coshANDcoshInverseButton
    var tag14button_initialTitleActive = false
    
    @IBOutlet var tag15_Button: UIButton! // tanhANDtanhInverseButton
    var tag15button_initialTitleActive = false
    
    @IBOutlet var tag16_Button: UIButton!  // twoSqrtX_Button
    
    @IBOutlet var tag17_Button: UIButton! // threeSqrtX_Button
    
    @IBOutlet var tag18_Button: UIButton! // ySqrtX_Button
    var tag18button_initialTitleActive = false
 
    
    @IBOutlet var tag19_Button: UIButton! // lnX_AND_logBaseyX
    var tag19button_initialTitleActive = false

    
    
    @IBOutlet var tag20_Button: UIButton! // logTenX_AND_logTwoX
    var tag20button_initialTitleActive = false

    
    
    @IBOutlet var tag21_Button: UIButton! // eRaisedToX_AND_yRaisedToX
    var tag21button_initialTitleActive = false
    
    @IBOutlet var tag22_Button: UIButton! // xToThePowerOfTwo_Button
  @IBOutlet var tag23_Button: UIButton! // xToThePowerOfThree_Button
    
    
 
    
    @IBOutlet weak var tag24_Button: UIButton! // xRaisedToYButton
    
    @IBOutlet var tag25_Button: UIButton! // secondButton
    var tag25button_initialTitleActive = false
    
     @IBOutlet var tag26_Button: UIButton! // deg_Button
    var tag26button_initialTitleActive = false
    
      @IBOutlet var tag27_Button: UIButton! // rand_Button
    
       @IBOutlet var tag28_Button: UIButton! // EE_Button
    var tag28button_initialTitleActive = false
    
    @IBOutlet var tag29_Button: UIButton! // pi_Button
    
    @IBOutlet var tag30_Button: UIButton! // e_Button
    
    
    
    //-----
    
 
    

    
    
    
//    @IBOutlet var leftParanthesisButton: UIButton!
//
//    @IBOutlet var rightParanthesisButton: UIButton!
    
    
    

    
    
  
    
   
    
  
    

    

    
    
    
    
    
    
    
    //----
    var buttonIsSelected = false
    
    var activeLandscape: Bool? = true
    var cornerRadius_forButtons: Double = 0
    var fontConstant = CGFloat()
    var fontConstantForSubAndSuperScripts = CGFloat()
    
    
    
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    func createObservers() {
        
        // ........... start
        UIDevice.current.beginGeneratingDeviceOrientationNotifications()
        NotificationCenter.default.addObserver(self, selector: #selector(deviceOrientationDidChange), name: NSNotification.Name.UIDeviceOrientationDidChange, object: nil)
        
        let didRotate: (Notification) -> Void = { notification in
            switch UIDevice.current.orientation {
            case .landscapeLeft, .landscapeRight:
                print("landscape ---> under didRotate in magentaView")
            case .portrait, .portraitUpsideDown:
                print("Portrait --> under didRotate in magentaView")
            default:
                print("other")
            }
        }
       
        NotificationCenter.default.addObserver(forName: .UIDeviceOrientationDidChange, object: nil, queue: .main, using: didRotate)
        
        
        // ............ end
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        print("tag1_Button.bounds in viewDidLoad: \(tag1_Button.bounds)")
            createObservers()
       
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
//
//
//
//
//
//
//
//
//        if activeLandscape == false || activeLandscape == true {
//            // NEED NEED NEEDDDDDDDDDDDD start 1
        
            
            
        //    print("cornerRadius_forButtons in Magenta View: \(cornerRadius_forButtons)")
            
            
            
            
            
//            // NEED NEED NEEDDDDDDDDDDDD start 5
//            tag1_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//
//
//            tag2_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            //
//            tag3_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            //
//            tag4_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            //
//
//            tag5_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag6_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag7_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//
//            tag8_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//
//            tag9_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            //
//            tag10_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            //
//            //
//            tag11_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//
//
//            tag12_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//
//
//
//            tag13_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//
//            tag14_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//
//            tag15_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//
//            tag16_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//
//            tag17_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//
//            tag18_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//
//
//
//
//
//
//
//            tag19_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//
//            tag20_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//
//            tag21_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//
//            tag22_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//
//            tag23_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//
//            tag24_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//
//            tag25_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//
//            tag26_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//
//            tag27_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//
//            tag28_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//
//            tag29_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//
//            tag30_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//
            
            
            
            
            
            
            
            
            
            
            
            
            // Update corner radius here
            let screenSize = UIScreen.main.bounds
            print("screenSize: \(screenSize)")
            print("screenSizeWidth: \(screenSize.width)") // this is really the height
            print("screenSizeHeight: \(screenSize.height)") // this is really the width
            
            let screenSizeHeightIfReallyPortrait = screenSize.width
            let screenSizeWidthIfReallyPortrait = screenSize.height
            
            if (screenSizeHeightIfReallyPortrait == 896.0 && screenSizeWidthIfReallyPortrait == 414.0) || (screenSizeHeightIfReallyPortrait == 414.0 && screenSizeWidthIfReallyPortrait == 896.0) {
                //            Phone XS Max
                //            414 x 896 - note: i found this via code, print statement
                fontConstant = 1.8
                fontConstantForSubAndSuperScripts = 1.3
                
            } else if (screenSizeHeightIfReallyPortrait == 812.0 && screenSizeWidthIfReallyPortrait == 375.0) || (screenSizeHeightIfReallyPortrait == 375.0 && screenSizeWidthIfReallyPortrait == 812.0) {
                //            iPhone X
                //            375 x 812
                fontConstant = 1.6
                fontConstantForSubAndSuperScripts = 1
                
                
            } else if (screenSizeHeightIfReallyPortrait == 736.0 && screenSizeWidthIfReallyPortrait == 414.0) || (screenSizeHeightIfReallyPortrait == 414.0 && screenSizeWidthIfReallyPortrait == 736.0)  {
                //            iPhone 8 Plus, iPhone 7 Plus, iPhone 6s Plus???
                //            414 x 736
                fontConstant = 1.7
                fontConstantForSubAndSuperScripts = 1.2
                
                
            } else if (screenSizeHeightIfReallyPortrait == 667.0 && screenSizeWidthIfReallyPortrait == 375.0) || (screenSizeHeightIfReallyPortrait == 375.0 && screenSizeWidthIfReallyPortrait == 667.0) {
                //            iPhone 8 |  iPhone 6 Plus | iPhone 7 | iPhone 6s | iphone 6
                //            375 x 667
                fontConstant = 1.7
                fontConstantForSubAndSuperScripts = 1.1
                
                
            }   else if (screenSizeHeightIfReallyPortrait == 568.0 && screenSizeWidthIfReallyPortrait == 320.0) || (screenSizeHeightIfReallyPortrait == 320.0 && screenSizeWidthIfReallyPortrait == 568.0) {
                //            iPhone SE | iPhone 5s
                //            320 x 568
                fontConstant = 1.4
                fontConstantForSubAndSuperScripts = 1
                
                
            } else if (screenSizeHeightIfReallyPortrait == 1366.0 && screenSizeWidthIfReallyPortrait == 1024.0) || (screenSizeHeightIfReallyPortrait == 1024.0 && screenSizeWidthIfReallyPortrait == 1366.0) {
                //            iPad Pro 12.9-inch (2nd generation) | iPad Pro (12.9-inch)
                //            1024 x 1366
                fontConstant = 3.1
                fontConstantForSubAndSuperScripts = 2
                
                
            } else if (screenSizeHeightIfReallyPortrait == 834.0 && screenSizeWidthIfReallyPortrait == 1112.0) || (screenSizeHeightIfReallyPortrait == 1112.0 && screenSizeWidthIfReallyPortrait == 834.0) {
                //            iPad Pro 10.5-inch
                //            1112 x 834
                fontConstant = 2.6
                fontConstantForSubAndSuperScripts = 1.7
                
                
            } else if (screenSizeHeightIfReallyPortrait == 1024.0 && screenSizeWidthIfReallyPortrait == 768.0) || (screenSizeHeightIfReallyPortrait == 768.0 && screenSizeWidthIfReallyPortrait == 1024.0) {
                //            iPad Pro (9.7-inch) | iPad Air 2 | iPad Mini 4
                //            768 x 1024
                fontConstant = 2.5
                fontConstantForSubAndSuperScripts = 1.6
                
                
            } else {
                fontConstant = 1
                fontConstantForSubAndSuperScripts = 1
                
            }
            
            
            
            let fontSub:UIFont? = UIFont(name: "Helvetica", size: 6 * fontConstant) // DONT FORGET ABOUT THIS IF COPYING CODE DOWN BELOW
            let fontSuper:UIFont? = UIFont(name: "Helvetica", size: 6 * fontConstant) // DONT FORGET ABOUT THIS IF COPYING CODE DOWN BELOW
            
            tag1_Button.titleLabel?.textAlignment = .center
            tag1_Button.contentHorizontalAlignment = .center
            tag1_Button.titleLabel?.numberOfLines = 1
//            tag1_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag1_Button = NSMutableAttributedString(string: "mc")
            str_tag1_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 2)) //range of text to change font size
            str_tag1_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 2))
            tag1_Button.setAttributedTitle(str_tag1_Button, for: .normal)
            
            tag2_Button.titleLabel?.textAlignment = .center
            tag2_Button.contentHorizontalAlignment = .center
            tag2_Button.titleLabel?.numberOfLines = 1
//            tag2_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag2_Button = NSMutableAttributedString(string: "m+")
            str_tag2_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 2)) //range of text to change font size
            str_tag2_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 2))
            tag2_Button.setAttributedTitle(str_tag2_Button, for: .normal)
            
            
            
            tag3_Button.titleLabel?.textAlignment = .center
            tag3_Button.contentHorizontalAlignment = .center
            tag3_Button.titleLabel?.numberOfLines = 1
//            tag3_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag3_Button = NSMutableAttributedString(string: "m-")
            str_tag3_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 2)) //range of text to change font size
            str_tag3_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 2))
            tag3_Button.setAttributedTitle(str_tag3_Button, for: .normal)
            
            
            
            tag4_Button.titleLabel?.textAlignment = .center
            tag4_Button.contentHorizontalAlignment = .center
            tag4_Button.titleLabel?.numberOfLines = 1
//            tag4_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag4_Button = NSMutableAttributedString(string: "mx")
            str_tag4_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 2)) //range of text to change font size
            str_tag4_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 2))
            tag4_Button.setAttributedTitle(str_tag4_Button, for: .normal)
            
            
            tag5_Button.titleLabel?.textAlignment = .center
            tag5_Button.contentHorizontalAlignment = .center
            tag5_Button.titleLabel?.numberOfLines = 1
//            tag5_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag5_Button = NSMutableAttributedString(string: "m÷")
            str_tag5_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 2)) //range of text to change font size
            str_tag5_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 2))
            tag5_Button.setAttributedTitle(str_tag5_Button, for: .normal)
            
            tag6_Button.titleLabel?.textAlignment = .center
            tag6_Button.contentHorizontalAlignment = .center
            tag6_Button.titleLabel?.numberOfLines = 1
//            tag6_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag6_Button = NSMutableAttributedString(string: "mr")
            str_tag6_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 2)) //range of text to change font size
            str_tag6_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 2))
            tag6_Button.setAttributedTitle(str_tag6_Button, for: .normal)
            
            
            // let myString = "sin"
            tag7_Button.titleLabel?.textAlignment = .center
            tag7_Button.contentHorizontalAlignment = .center
            tag7_Button.titleLabel?.numberOfLines = 1
//            tag7_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag7_Button = NSMutableAttributedString(string: "sin")
            str_tag7_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 3)) //range of text to change font size
            str_tag7_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 3))
            tag7_Button.setAttributedTitle(str_tag7_Button, for: .normal)
            
            
            
            
            
            tag8_Button.titleLabel?.textAlignment = .center
            tag8_Button.contentHorizontalAlignment = .center
            tag8_Button.titleLabel?.numberOfLines = 1
//            tag8_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag8_Button = NSMutableAttributedString(string: "cos")
            str_tag8_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 3)) //range of text to change font size
            str_tag8_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 3))
            tag8_Button.setAttributedTitle(str_tag8_Button, for: .normal)
            
            tag9_Button.titleLabel?.textAlignment = .center
            tag9_Button.contentHorizontalAlignment = .center
            tag9_Button.titleLabel?.numberOfLines = 1
//            tag9_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag9_Button = NSMutableAttributedString(string: "tan")
            str_tag9_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 3)) //range of text to change font size
            str_tag9_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 3))
            tag9_Button.setAttributedTitle(str_tag9_Button, for: .normal)
            
            tag10_Button.titleLabel?.textAlignment = .center
            tag10_Button.contentHorizontalAlignment = .center
            tag10_Button.titleLabel?.numberOfLines = 1
//            tag10_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag10_Button = NSMutableAttributedString(string: "1/x")
            str_tag10_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 3)) //range of text to change font size
            str_tag10_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 3))
            tag10_Button.setAttributedTitle(str_tag10_Button, for: .normal)
            
            tag11_Button.titleLabel?.textAlignment = .center
            tag11_Button.contentHorizontalAlignment = .center
            tag11_Button.titleLabel?.numberOfLines = 1
//            tag11_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag11_Button = NSMutableAttributedString(string: "x!")
            str_tag11_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 2)) //range of text to change font size
            str_tag11_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 2))
            tag11_Button.setAttributedTitle(str_tag11_Button, for: .normal)
            
            tag12_Button.titleLabel?.textAlignment = .center
            tag12_Button.contentHorizontalAlignment = .center
            tag12_Button.titleLabel?.numberOfLines = 1
//            tag12_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag12_Button = NSMutableAttributedString(string: "10x")
            str_tag12_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 2)) //range of text to change font size
            str_tag12_Button.addAttributes([.font:fontSuper!, .baselineOffset:5 * fontConstantForSubAndSuperScripts], range: NSRange(location:2,length:1))
            str_tag12_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 3))
            tag12_Button.setAttributedTitle(str_tag12_Button, for: .normal)
            
            tag13_Button.titleLabel?.textAlignment = .center
            tag13_Button.contentHorizontalAlignment = .center
            tag13_Button.titleLabel?.numberOfLines = 1
//            tag13_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag13_Button = NSMutableAttributedString(string: "sinh")
            str_tag13_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 4)) //range of text to change font size
            str_tag13_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 4))
            tag13_Button.setAttributedTitle(str_tag13_Button, for: .normal)
            
            tag14_Button.titleLabel?.textAlignment = .center
            tag14_Button.contentHorizontalAlignment = .center
            tag14_Button.titleLabel?.numberOfLines = 1
//            tag14_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag14_Button = NSMutableAttributedString(string: "cosh")
            str_tag14_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 4)) //range of text to change font size
            str_tag14_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 4))
            tag14_Button.setAttributedTitle(str_tag14_Button, for: .normal)
            
            tag15_Button.titleLabel?.textAlignment = .center
            tag15_Button.contentHorizontalAlignment = .center
            tag15_Button.titleLabel?.numberOfLines = 1
//            tag15_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag15_Button = NSMutableAttributedString(string: "tanh")
            str_tag15_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 4)) //range of text to change font size
            str_tag15_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 4))
            tag15_Button.setAttributedTitle(str_tag15_Button, for: .normal)
            
            tag16_Button.titleLabel?.textAlignment = .center
            tag16_Button.contentHorizontalAlignment = .center
            tag16_Button.titleLabel?.numberOfLines = 1
//            tag16_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag16_Button = NSMutableAttributedString(string: "2√x")
            
            str_tag16_Button.addAttributes([.font:fontSuper!, .baselineOffset:5 * fontConstantForSubAndSuperScripts], range: NSRange(location:0,length:1))
            str_tag16_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(1, 2)) //range of text to change font size
            
            
            str_tag16_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 3))
            tag16_Button.setAttributedTitle(str_tag16_Button, for: .normal)
            
            tag17_Button.titleLabel?.textAlignment = .center
            tag17_Button.contentHorizontalAlignment = .center
            tag17_Button.titleLabel?.numberOfLines = 1
//            tag17_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag17_Button = NSMutableAttributedString(string: "3√x")
            
            str_tag17_Button.addAttributes([.font:fontSuper!, .baselineOffset: 5 * fontConstantForSubAndSuperScripts], range: NSRange(location:0,length:1))
            str_tag17_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(1, 2)) //range of text to change font size
            
            
            str_tag17_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 3))
            tag17_Button.setAttributedTitle(str_tag17_Button, for: .normal)
            
            tag18_Button.titleLabel?.textAlignment = .center
            tag18_Button.contentHorizontalAlignment = .center
            tag18_Button.titleLabel?.numberOfLines = 1
//            tag18_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag18_Button = NSMutableAttributedString(string: "y√x")
            
            str_tag18_Button.addAttributes([.font:fontSuper!, .baselineOffset:5 * fontConstantForSubAndSuperScripts], range: NSRange(location:0,length:1))
            str_tag18_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(1, 2)) //range of text to change font size
            
            str_tag18_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 3))
            tag18_Button.setAttributedTitle(str_tag18_Button, for: .normal)
            
            
            tag19_Button.titleLabel?.textAlignment = .center
            tag19_Button.contentHorizontalAlignment = .center
            tag19_Button.titleLabel?.numberOfLines = 1
//            tag19_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag19_Button = NSMutableAttributedString(string: "ln")
            str_tag19_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 2)) //range of text to change font size
            str_tag19_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 2))
            tag19_Button.setAttributedTitle(str_tag19_Button, for: .normal)
            
            tag20_Button.titleLabel?.textAlignment = .center
            tag20_Button.contentHorizontalAlignment = .center
            tag20_Button.titleLabel?.numberOfLines = 1
//            tag20_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag20_Button = NSMutableAttributedString(string: "log10")
            str_tag20_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 3)) //range of text to change font size
            str_tag20_Button.addAttributes([.font:fontSub!, .baselineOffset: -5 * fontConstantForSubAndSuperScripts], range: NSRange(location:3,length:2))
            str_tag20_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 5))
            tag20_Button.setAttributedTitle(str_tag20_Button, for: .normal)
            
            tag21_Button.titleLabel?.textAlignment = .center
            tag21_Button.contentHorizontalAlignment = .center
            tag21_Button.titleLabel?.numberOfLines = 1
//            tag21_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag21_Button = NSMutableAttributedString(string: "ex")
            str_tag21_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 1)) //range of text to change font size
            str_tag21_Button.addAttributes([.font:fontSuper!, .baselineOffset: 5 * fontConstantForSubAndSuperScripts], range: NSRange(location:1,length:1))
            
            
            str_tag21_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 2))
            tag21_Button.setAttributedTitle(str_tag21_Button, for: .normal)
            
            tag22_Button.titleLabel?.textAlignment = .center
            tag22_Button.contentHorizontalAlignment = .center
            tag22_Button.titleLabel?.numberOfLines = 1
//            tag22_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag22_Button = NSMutableAttributedString(string: "x2")
            str_tag22_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 1)) //range of text to change font size
            str_tag22_Button.addAttributes([.font:fontSuper!, .baselineOffset: 5 * fontConstantForSubAndSuperScripts], range: NSRange(location:1,length:1))
            str_tag22_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 2))
            tag22_Button.setAttributedTitle(str_tag22_Button, for: .normal)
            
            tag23_Button.titleLabel?.textAlignment = .center
            tag23_Button.contentHorizontalAlignment = .center
            tag23_Button.titleLabel?.numberOfLines = 1
//            tag23_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag23_Button = NSMutableAttributedString(string: "x3")
            str_tag23_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 2)) //range of text to change font size
            str_tag23_Button.addAttributes([.font:fontSuper!, .baselineOffset: 5 * fontConstantForSubAndSuperScripts], range: NSRange(location:1,length:1))
            
            str_tag23_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 2))
            tag23_Button.setAttributedTitle(str_tag23_Button, for: .normal)
            
            tag24_Button.titleLabel?.textAlignment = .center
            tag24_Button.contentHorizontalAlignment = .center
            tag24_Button.titleLabel?.numberOfLines = 1
//            tag24_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag24_Button = NSMutableAttributedString(string: "xy")
            str_tag24_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 1)) //range of text to change font size
            str_tag24_Button.addAttributes([.font:fontSuper!, .baselineOffset: 5 * fontConstantForSubAndSuperScripts], range: NSRange(location:1,length:1))
            
            str_tag24_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 2))
            tag24_Button.setAttributedTitle(str_tag24_Button, for: .normal)
            
            
            tag25_Button.titleLabel?.textAlignment = .center
            tag25_Button.contentHorizontalAlignment = .center
            tag25_Button.titleLabel?.numberOfLines = 1
//            tag25_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag25_string = NSMutableAttributedString(string: "2nd")
            str_tag25_string.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 1)) //range of text to change font size
            str_tag25_string.addAttributes([.font:fontSuper!, .baselineOffset: 5 * fontConstantForSubAndSuperScripts], range: NSRange(location:1,length:2))
            str_tag25_string.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 3))
            tag25_Button.setAttributedTitle(str_tag25_string, for: .normal)
            tag25_Button.backgroundColor = UIColor(red: 94/255.0, green: 94/255.0, blue: 94/255.0, alpha: 1.0)
            tag25button_initialTitleActive = true
            
            
            
            tag26_Button.titleLabel?.textAlignment = .center
            tag26_Button.contentHorizontalAlignment = .center
            tag26_Button.titleLabel?.numberOfLines = 1
//            tag26_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag26_Button = NSMutableAttributedString(string: "Deg")
            str_tag26_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 3)) //range of text to change font size
            str_tag26_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 3))
            tag26_Button.setAttributedTitle(str_tag26_Button, for: .normal)
            
            tag27_Button.titleLabel?.textAlignment = .center
            tag27_Button.contentHorizontalAlignment = .center
            tag27_Button.titleLabel?.numberOfLines = 1
//            tag27_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag27_Button = NSMutableAttributedString(string: "Rand")
            str_tag27_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 4)) //range of text to change font size
            str_tag27_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 4))
            tag27_Button.setAttributedTitle(str_tag27_Button, for: .normal)
            
            tag28_Button.titleLabel?.textAlignment = .center
            tag28_Button.contentHorizontalAlignment = .center
            tag28_Button.titleLabel?.numberOfLines = 1
//            tag28_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag28_Button = NSMutableAttributedString(string: "EE")
            str_tag28_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 2)) //range of text to change font size
            str_tag28_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 2))
            tag28_Button.setAttributedTitle(str_tag28_Button, for: .normal)
            
            tag29_Button.titleLabel?.textAlignment = .center
            tag29_Button.contentHorizontalAlignment = .center
            tag29_Button.titleLabel?.numberOfLines = 1
//            tag29_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag29_Button = NSMutableAttributedString(string: "π")
            str_tag29_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 1)) //range of text to change font size
            str_tag29_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 1))
            tag29_Button.setAttributedTitle(str_tag29_Button, for: .normal)
            
            tag30_Button.titleLabel?.textAlignment = .center
            tag30_Button.contentHorizontalAlignment = .center
            tag30_Button.titleLabel?.numberOfLines = 1
//            tag30_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag30_Button = NSMutableAttributedString(string: "e")
            str_tag30_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 1)) //range of text to change font size
            str_tag30_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 1))
            tag30_Button.setAttributedTitle(str_tag30_Button, for: .normal)
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //// https://developer.apple.com/library/archive/documentation/DeviceInformation/Reference/iOSDeviceCompatibility/Displays/Displays.html
            //// NOTE: width x height
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
    //    }
        
        
    }
    
    
    @IBAction func magentaOperatorTap(_ sender: UIButton) {
        sender.flash() // button animation
        
        
        ////////// TAG IDs //////////
        
        
        
        // mc = 1
        // m+ = 2
        // m- = 3
        // mx = 4
        // m÷ = 5
        // mr = 6
        // sin = 7 = sin^-1(x)
        // cos = 8 = cos^-1(x)
        // tan = 9 = tan^-1(x)
        // 1/x = 10
        // x! = 11
        // 10^x = 12 = 2^x
        // sinh = 13 = sin^-1(h)
        // cosh = 14 = cos^-1(h)
        // tanh = 15 = tan^-1(h)
        // 2√x = 16
        // 3√x = 17
        // y√x = 18
        // ln = 19 = logy(x)
        // log10 = 20 = log2
        // e^x = 21 = y^x
        // x^2 = 22
        // x^3 = 23
        // x^y = 24
        // 2nd = 25
        // Deg = 26 = Rad
        // Rand = 27
        // EE = 28
        // π = 29
        // e = 30
        
        
        
        
        
        /////////////////////////////
        
        if sender.tag == 7
        {
            if tag7button_initialTitleActive == false {
                let name = Notification.Name(rawValue: sin_func_NotificationKey)
                NotificationCenter.default.post(name: name, object: nil)
            } else {
                let name = Notification.Name(rawValue: sinInverse_func_NotificationKey)
                NotificationCenter.default.post(name: name, object: nil)
            }
            
        } else if sender.tag == 8
        {
            if  tag8button_initialTitleActive == false {
                let name = Notification.Name(rawValue: cos_func_NotificationKey)
                NotificationCenter.default.post(name: name, object: nil)
            }else{
                let name = Notification.Name(rawValue: cosInverse_func_NotificationKey)
                NotificationCenter.default.post(name: name, object: nil)
            }
            
        }
        else if sender.tag == 9
        {
            if  tag9button_initialTitleActive == false {
                let name = Notification.Name(rawValue: tan_func_NotificationKey)
                NotificationCenter.default.post(name: name, object: nil)
            }else{
                let name = Notification.Name(rawValue: tanInverse_func_NotificationKey)
                NotificationCenter.default.post(name: name, object: nil)
            }
        }
        else if sender.tag == 13
        {
            if  tag13button_initialTitleActive == false {
                let name = Notification.Name(rawValue: sinh_func_NotificationKey)
                NotificationCenter.default.post(name: name, object: nil)
            }else{
                let name = Notification.Name(rawValue: sinhInverse_func_NotificationKey)
                NotificationCenter.default.post(name: name, object: nil)
            }
        }
        else if sender.tag == 14
        {
            if  tag14button_initialTitleActive == false {
                let name = Notification.Name(rawValue: cosh_func_NotificationKey)
                NotificationCenter.default.post(name: name, object: nil)
            }else{
                let name = Notification.Name(rawValue: coshInverse_func_NotificationKey)
                NotificationCenter.default.post(name: name, object: nil)
            }
        }
        else if sender.tag == 15
        {
            if  tag15button_initialTitleActive == false {
                let name = Notification.Name(rawValue: tanh_func_NotificationKey)
                NotificationCenter.default.post(name: name, object: nil)
            }else{
                let name = Notification.Name(rawValue: tanhInverse_func_NotificationKey)
                NotificationCenter.default.post(name: name, object: nil)
            }
        }
            
            
        else if sender.tag == 10
        {
            let name = Notification.Name(rawValue: oneOverX_func_NotificationKey)
            NotificationCenter.default.post(name: name, object: nil)
            
        }
            
            
        else if sender.tag == 12
        {
            if  tag12button_initialTitleActive == false {
                let name = Notification.Name(rawValue: tenRaisedToX_func_NotificationKey)
                NotificationCenter.default.post(name: name, object: nil)
            }else{
                let name = Notification.Name(rawValue: twoRaisedToX_func_NotificationKey)
                NotificationCenter.default.post(name: name, object: nil)
            }
        }
            
            
        else if sender.tag == 16
        {
            let name = Notification.Name(rawValue: twoSqrtX_func_NotificationKey)
            NotificationCenter.default.post(name: name, object: nil)
            
            
        }
        else if sender.tag == 17
        {
            let name = Notification.Name(rawValue: threeSqrtX_func_NotificationKey)
            NotificationCenter.default.post(name: name, object: nil)
            
            
        }
        else if sender.tag == 18
        {
            let name = Notification.Name(rawValue: ySqrtX_func_NotificationKey)
            NotificationCenter.default.post(name: name, object: nil)
            buttonIsSelected = !buttonIsSelected
            updateOnOffButton_for_ySqrtXFunction()
            
        }
            
            
            
        else if sender.tag == 19
        {
            
            print("tag19button_initialTitleActive boolean is \(tag19button_initialTitleActive)")
            if  tag19button_initialTitleActive == false {
                
                let name = Notification.Name(rawValue: ln_func_NotificationKey)
                NotificationCenter.default.post(name: name, object: nil)
            } else {
                
                let name = Notification.Name(rawValue: logyx_func_NotificationKey)
                NotificationCenter.default.post(name: name, object: nil)
                
                buttonIsSelected = !buttonIsSelected
                updateOnOffButton_for_logyx_Function()
                
            }
            
            
        }
        else if sender.tag == 20
        {
            print("tag20button_initialTitleActive boolean is \(tag20button_initialTitleActive)")
            
            if  tag20button_initialTitleActive == false {
                let name = Notification.Name(rawValue: logTen_func_NotificationKey)
                NotificationCenter.default.post(name: name, object: nil)
            } else {
                let name = Notification.Name(rawValue: logTwo_func_NotificationKey)
                NotificationCenter.default.post(name: name, object: nil)
            }
        }
            
        else if sender.tag == 21
        {
            if  tag21button_initialTitleActive == false {
                let name = Notification.Name(rawValue: eRaisedToX_func_NotificationKey)
                NotificationCenter.default.post(name: name, object: nil)
            }else{
                let name = Notification.Name(rawValue: yRaisedToX_func_NotificationKey)
                NotificationCenter.default.post(name: name, object: nil)
                buttonIsSelected = !buttonIsSelected
                updateOnOffButton_for_eRaisedToX_AND_yRaisedToX_Function()
            }
        }
            
            
            
            
            
        else if sender.tag == 1 {
            
            let name = Notification.Name(rawValue: mClear_func_NotificationKey)
            NotificationCenter.default.post(name: name, object: nil)
            
            
            let myAttributes = [NSAttributedString.Key.foregroundColor :  UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), NSAttributedString.Key.font : UIFont.systemFont(ofSize: 10 * fontConstant)]
            
            let mutableAttributedString = NSMutableAttributedString(string: "mr", attributes: myAttributes)
            
            tag6_Button.setAttributedTitle(mutableAttributedString, for: .normal)
            tag6_Button.backgroundColor = UIColor(red: 94/255.0, green: 94/255.0, blue: 94/255.0, alpha: 1.0)
            
        }
            
        else if sender.tag == 2 {
            
            let name = Notification.Name(rawValue: mPlus_func_NotificationKey)
            NotificationCenter.default.post(name: name, object: nil)
            
            
            let myAttributes = [NSAttributedString.Key.foregroundColor :  UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0), NSAttributedString.Key.font : UIFont.systemFont(ofSize: 10 * fontConstant)]
            
            let mutableAttributedString = NSMutableAttributedString(string: "mr", attributes: myAttributes)
            
            tag6_Button.setAttributedTitle(mutableAttributedString, for: .normal)
            tag6_Button.backgroundColor = UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0)
            
        } else if sender.tag == 3 {
            
            let name = Notification.Name(rawValue: mMinus_func_NotificationKey)
            NotificationCenter.default.post(name: name, object: nil)
            
            let myAttributes = [NSAttributedString.Key.foregroundColor :  UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0), NSAttributedString.Key.font : UIFont.systemFont(ofSize: 10 * fontConstant)]
            
            let mutableAttributedString = NSMutableAttributedString(string: "mr", attributes: myAttributes)
            
            tag6_Button.setAttributedTitle(mutableAttributedString, for: .normal)
            tag6_Button.backgroundColor = UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0)
            
        } else if sender.tag == 4 {
            
            
            let name = Notification.Name(rawValue: mMult_func_NotificationKey)
            NotificationCenter.default.post(name: name, object: nil)
            
            let myAttributes = [NSAttributedString.Key.foregroundColor :  UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0), NSAttributedString.Key.font : UIFont.systemFont(ofSize: 10 * fontConstant)]
            
            let mutableAttributedString = NSMutableAttributedString(string: "mr", attributes: myAttributes)
            
            tag6_Button.setAttributedTitle(mutableAttributedString, for: .normal)
            tag6_Button.backgroundColor = UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0)
            
        }   else if sender.tag == 5 {
            
            
            
            let name = Notification.Name(rawValue: mDivide_func_NotificationKey)
            NotificationCenter.default.post(name: name, object: nil)
            
            let myAttributes = [NSAttributedString.Key.foregroundColor :  UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0), NSAttributedString.Key.font : UIFont.systemFont(ofSize: 10 * fontConstant)]
            
            let mutableAttributedString = NSMutableAttributedString(string: "mr", attributes: myAttributes)
            
            tag6_Button.setAttributedTitle(mutableAttributedString, for: .normal)
            tag6_Button.backgroundColor = UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0)
            
            
            
        }  else if sender.tag == 6 {
            
            let name = Notification.Name(rawValue: mRecall_func_NotificationKey)
            NotificationCenter.default.post(name: name, object: nil)
            
            
            
        }  else if sender.tag == 26 // Deg
        {
            
            
            if tag26button_initialTitleActive == false
            {
                tag26button_initialTitleActive = true
                tag26_Button.titleLabel?.textAlignment = .center
                tag26_Button.contentHorizontalAlignment = .center
                tag26_Button.titleLabel?.numberOfLines = 1
                
                let tag26button_string = NSMutableAttributedString(string: "Rad")
                tag26button_string.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 3)) //range of text to change font size
                tag26button_string.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 3))
                tag26_Button.setAttributedTitle(tag26button_string, for: .normal)
                tag26_Button.backgroundColor = UIColor(red: 94/255.0, green: 94/255.0, blue: 94/255.0, alpha: 1.0)
                
                let name = Notification.Name(rawValue: changeRadToDegUILabel_func_NotificationKey)
                NotificationCenter.default.post(name: name, object: nil)
                
                
                
                
            } else {
                tag26button_initialTitleActive = false
                
                tag26_Button.titleLabel?.textAlignment = .center
                tag26_Button.contentHorizontalAlignment = .center
                tag26_Button.titleLabel?.numberOfLines = 1
                let tag26button_string = NSMutableAttributedString(string: "Deg")
                tag26button_string.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 3)) //range of text to change font size
                tag26button_string.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 3))
                tag26_Button.setAttributedTitle(tag26button_string, for: .normal)
                tag26_Button.backgroundColor = UIColor(red: 94/255.0, green: 94/255.0, blue: 94/255.0, alpha: 1.0)
                
                
                let name = Notification.Name(rawValue: changeDegToRadUILabel_func_NotificationKey)
                NotificationCenter.default.post(name: name, object: nil)
                
                
                
                
                
                
            }
            
        }
            
        else if sender.tag == 11 {
            let name = Notification.Name(rawValue: xFactorial_func_NotificationKey)
            NotificationCenter.default.post(name: name, object: nil)
            
            
            
        }
        else if sender.tag == 22 {
            let name = Notification.Name(rawValue: xRaisedToTwo_func_NotificationKey)
            NotificationCenter.default.post(name: name, object: nil)
            
            
        }
        else if sender.tag == 23 {
            let name = Notification.Name(rawValue: xRaisedToThree_func_NotificationKey)
            NotificationCenter.default.post(name: name, object: nil)
            
            
        }
            
        else if sender.tag == 24 {
            let name = Notification.Name(rawValue: xRaisedToY_func_NotificationKey)
            NotificationCenter.default.post(name: name, object: nil)
            buttonIsSelected = !buttonIsSelected
            updateOnOffButton_for_xRaisedToYButton()
            
        }
            
        else if sender.tag == 27 {
            let name = Notification.Name(rawValue: RAND_func_NotificationKey)
            NotificationCenter.default.post(name: name, object: nil)
            
        } else if sender.tag == 28 {
            let name = Notification.Name(rawValue: EE_func_NotificationKey)
            NotificationCenter.default.post(name: name, object: nil)
            buttonIsSelected = !buttonIsSelected
            updateOnOffButton_for_EEFunction()
            
        }  else if sender.tag == 29 {
            let name = Notification.Name(rawValue: pi_func_NotificationKey)
            NotificationCenter.default.post(name: name, object: nil)
            
        } else if sender.tag == 30 {
            let name = Notification.Name(rawValue: e_func_NotificationKey)
            NotificationCenter.default.post(name: name, object: nil)
            
        } else if sender.tag == 25 {
            
            print("tag25button_initialTitleActive: \(tag25button_initialTitleActive)")
            
            if tag25button_initialTitleActive == true {
                
                tag25button_initialTitleActive = false
                tag7button_initialTitleActive = true // sin-1
                tag8button_initialTitleActive = true // cos-1
                tag9button_initialTitleActive = true // tan-1
                tag12button_initialTitleActive = true // 2^x
                tag13button_initialTitleActive = true // sinh-1
                tag14button_initialTitleActive = true // cosh-1
                tag15button_initialTitleActive = true // tanh-1
                tag19button_initialTitleActive = true // logyx
                tag20button_initialTitleActive = true // log2x
                tag21button_initialTitleActive = true // y^x
                let fontSub:UIFont? = UIFont(name: "Helvetica", size: 7 * fontConstant) // DONT FORGET ABOUT THIS IF COPYING CODE DOWN BELOW
                let fontSuper:UIFont? = UIFont(name: "Helvetica", size: 7 * fontConstant) // DONT FORGET ABOUT THIS IF COPYING CODE DOWN BELOW
                
                
                //    let myAttributes = [NSAttributedString.Key.foregroundColor :  UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), NSAttributedString.Key.font : UIFont.systemFont(ofSize: 10 * fontConstant)]
                
                
                //
                //                let str_tag18_Button = NSMutableAttributedString(string: "ʸ√x")
                //                str_tag18_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 13 * fontConstant), range: NSMakeRange(0, 1)) //range of text to change font size
                //                str_tag18_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(1, 2)) //range of text to change font size
                //                str_tag18_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 3))
                //                tag18_Button.setAttributedTitle(str_tag18_Button, for: .normal)
                
                
                tag7_Button.titleLabel?.textAlignment = .center
                tag7_Button.contentHorizontalAlignment = .center
                tag7_Button.titleLabel?.numberOfLines = 1
                let tag7button_string = NSMutableAttributedString(string: "sin⁻¹")
                tag7button_string.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 5)) //range of text to change font size
                tag7button_string.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 5))
                tag7_Button.setAttributedTitle(tag7button_string, for: .normal)
                tag7_Button.backgroundColor = UIColor(red: 94/255.0, green: 94/255.0, blue: 94/255.0, alpha: 1.0)
                
                tag8_Button.titleLabel?.textAlignment = .center
                tag8_Button.contentHorizontalAlignment = .center
                tag8_Button.titleLabel?.numberOfLines = 1
                let tag8button_string = NSMutableAttributedString(string: "cos⁻¹")
                tag8button_string.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 5)) //range of text to change font size
                tag8button_string.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 5))
                tag8_Button.setAttributedTitle(tag8button_string, for: .normal)
                tag8_Button.backgroundColor = UIColor(red: 94/255.0, green: 94/255.0, blue: 94/255.0, alpha: 1.0)
                
                
                tag9_Button.titleLabel?.textAlignment = .center
                tag9_Button.contentHorizontalAlignment = .center
                tag9_Button.titleLabel?.numberOfLines = 1
                let tag9button_string = NSMutableAttributedString(string: "tan⁻¹")
                tag9button_string.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 5)) //range of text to change font size
                tag9button_string.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 5))
                tag9_Button.setAttributedTitle(tag9button_string, for: .normal)
                tag9_Button.backgroundColor = UIColor(red: 94/255.0, green: 94/255.0, blue: 94/255.0, alpha: 1.0)
                
                tag12_Button.titleLabel?.textAlignment = .center
                tag12_Button.contentHorizontalAlignment = .center
                tag12_Button.titleLabel?.numberOfLines = 1
                let tag12button_string = NSMutableAttributedString(string: "2ˣ")
                tag12button_string.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 1)) //range of text to change font size
                tag12button_string.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 13 * fontConstant), range: NSMakeRange(1, 1)) //range of text to change font size
                tag12button_string.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 2))
                tag12_Button.setAttributedTitle(tag12button_string, for: .normal)
                tag12_Button.backgroundColor = UIColor(red: 94/255.0, green: 94/255.0, blue: 94/255.0, alpha: 1.0)
                
                
                tag13_Button.titleLabel?.textAlignment = .center
                tag13_Button.contentHorizontalAlignment = .center
                tag13_Button.titleLabel?.numberOfLines = 1
                let tag13button_string = NSMutableAttributedString(string: "sinh-1")
                tag13button_string.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 4)) //range of text to change font size
                tag13button_string.addAttributes([.font:fontSuper!, .baselineOffset:5 * fontConstantForSubAndSuperScripts], range: NSRange(location:4,length:2))
                tag13button_string.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 6))
                tag13_Button.setAttributedTitle(tag13button_string, for: .normal)
                tag13_Button.backgroundColor = UIColor(red: 94/255.0, green: 94/255.0, blue: 94/255.0, alpha: 1.0)
                
                tag14_Button.titleLabel?.textAlignment = .center
                tag14_Button.contentHorizontalAlignment = .center
                tag14_Button.titleLabel?.numberOfLines = 1
                let tag14button_string = NSMutableAttributedString(string: "cosh-1")
                tag14button_string.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 4)) //range of text to change font size
                tag14button_string.addAttributes([.font:fontSuper!, .baselineOffset:5 * fontConstantForSubAndSuperScripts], range: NSRange(location:4,length:2))
                tag14button_string.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 6))
                tag14_Button.setAttributedTitle(tag14button_string, for: .normal)
                tag14_Button.backgroundColor = UIColor(red: 94/255.0, green: 94/255.0, blue: 94/255.0, alpha: 1.0)
                
                tag15_Button.titleLabel?.textAlignment = .center
                tag15_Button.contentHorizontalAlignment = .center
                tag15_Button.titleLabel?.numberOfLines = 1
                let tag15button_string = NSMutableAttributedString(string: "tanh-1")
                tag15button_string.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 4)) //range of text to change font size
                tag15button_string.addAttributes([.font:fontSuper!, .baselineOffset:5 * fontConstantForSubAndSuperScripts], range: NSRange(location:4,length:2))
                tag15button_string.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 6))
                tag15_Button.setAttributedTitle(tag15button_string, for: .normal)
                tag15_Button.backgroundColor = UIColor(red: 94/255.0, green: 94/255.0, blue: 94/255.0, alpha: 1.0)
                
                
                
                
                
                tag19_Button.titleLabel?.textAlignment = .center
                tag19_Button.contentHorizontalAlignment = .center
                tag19_Button.titleLabel?.numberOfLines = 1
                
                //   let attString:NSMutableAttributedString = NSMutableAttributedString(string: "6.022*1023", attributes: [.font:font!])
                
                let tag19button_string = NSMutableAttributedString(string: "logyx")
                
                //labelVarName.attributedText = attString
                tag19button_string.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 3)) //range of text to change font size
                tag19button_string.addAttributes([.font:fontSub!, .baselineOffset:-5 * fontConstantForSubAndSuperScripts], range: NSRange(location:3,length:1))
                
                tag19button_string.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(4, 1)) //range of text to change font size
                tag19button_string.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 5))
                tag19_Button.setAttributedTitle(tag19button_string, for: .normal)
                tag19_Button.backgroundColor = UIColor(red: 94/255.0, green: 94/255.0, blue: 94/255.0, alpha: 1.0)
                //
                //
                //
                tag20_Button.titleLabel?.textAlignment = .center
                tag20_Button.contentHorizontalAlignment = .center
                tag20_Button.titleLabel?.numberOfLines = 1
                let tag20button_string = NSMutableAttributedString(string: "log2")
                tag20button_string.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 3)) //range of text to change font size
                tag20button_string.addAttributes([.font:fontSub!, .baselineOffset:-5 * fontConstantForSubAndSuperScripts], range: NSRange(location:3,length:1))
                tag20button_string.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 4))
                tag20_Button.setAttributedTitle(tag20button_string, for: .normal)
                tag20_Button.backgroundColor = UIColor(red: 94/255.0, green: 94/255.0, blue: 94/255.0, alpha: 1.0)
                //
                tag21_Button.titleLabel?.textAlignment = .center
                tag21_Button.contentHorizontalAlignment = .center
                tag21_Button.titleLabel?.numberOfLines = 1
                let tag21button_string = NSMutableAttributedString(string: "yx")
                tag21button_string.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 1)) //range of text to change font size
                tag21button_string.addAttributes([.font:fontSuper!, .baselineOffset: 5 * fontConstantForSubAndSuperScripts], range: NSRange(location:1,length:1))
                tag21button_string.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 2))
                tag21_Button.setAttributedTitle(tag21button_string, for: .normal)
                tag21_Button.backgroundColor = UIColor(red: 94/255.0, green: 94/255.0, blue: 94/255.0, alpha: 1.0)
                //
                sender.titleLabel?.textAlignment = .center
                sender.contentHorizontalAlignment = .center
                sender.titleLabel?.numberOfLines = 1
                let senderButton_string = NSMutableAttributedString(string: "1st")
                senderButton_string.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 1)) //range of text to change font size
                senderButton_string.addAttributes([.font:fontSuper!, .baselineOffset: 5 * fontConstantForSubAndSuperScripts], range: NSRange(location:1,length:2))
                
                senderButton_string.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 3))
                sender.setAttributedTitle(senderButton_string, for: .normal)
                sender.backgroundColor = UIColor(red: 94/255.0, green: 94/255.0, blue: 94/255.0, alpha: 1.0)
                
                
                
                
                
                //                let tag19button_string = NSMutableAttributedString(string: "logy(X)", attributes: myAttributes)
                //                tag19_Button.setAttributedTitle(tag19button_string, for: .normal)
                //                tag19_Button.backgroundColor = UIColor(red: 94/255.0, green: 94/255.0, blue: 94/255.0, alpha: 1.0)
                //
                //                let tag20button_string = NSMutableAttributedString(string: "log₂", attributes: myAttributes)
                //                tag20_Button.setAttributedTitle(tag20button_string, for: .normal)
                //                tag20_Button.backgroundColor = UIColor(red: 94/255.0, green: 94/255.0, blue: 94/255.0, alpha: 1.0)
                //
                //                let tag21button_string = NSMutableAttributedString(string: "yˣ", attributes: myAttributes)
                //                tag21_Button.setAttributedTitle(tag21button_string, for: .normal)
                //                tag21_Button.backgroundColor = UIColor(red: 94/255.0, green: 94/255.0, blue: 94/255.0, alpha: 1.0)
                //
                //
                //                let sender_string = NSMutableAttributedString(string: "1st", attributes: myAttributes)
                //                sender.setAttributedTitle(sender_string, for: .normal)
                //                sender.backgroundColor = UIColor(red: 94/255.0, green: 94/255.0, blue: 94/255.0, alpha: 1.0)
                
                
                
                
            } else if tag25button_initialTitleActive == false {
                tag25button_initialTitleActive = true
                
                tag7button_initialTitleActive = false // sin
                tag8button_initialTitleActive = false // cos
                tag9button_initialTitleActive = false // tan
                tag12button_initialTitleActive = false // 10^x
                tag13button_initialTitleActive = false // sinh
                tag14button_initialTitleActive = false // cosh
                tag15button_initialTitleActive = false // tanh
                tag19button_initialTitleActive = false // ln
                tag20button_initialTitleActive = false // log10
                tag21button_initialTitleActive = false // e^x
                
                let fontSub:UIFont? = UIFont(name: "Helvetica", size: 7 * fontConstant)
                let fontSuper:UIFont? = UIFont(name: "Helvetica", size: 7 * fontConstant)
                
                let myAttributes = [NSAttributedString.Key.foregroundColor :  UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), NSAttributedString.Key.font : UIFont.systemFont(ofSize: 10 * fontConstant)]
                
                
                
                
                
                
                
                
                
                
                
                tag7_Button.titleLabel?.textAlignment = .center
                tag7_Button.contentHorizontalAlignment = .center
                tag7_Button.titleLabel?.numberOfLines = 1
                let tag7button_string = NSMutableAttributedString(string: "sin")
                tag7button_string.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 3)) //range of text to change font size
                tag7button_string.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 3))
                tag7_Button.setAttributedTitle(tag7button_string, for: .normal)
                tag7_Button.backgroundColor = UIColor(red: 94/255.0, green: 94/255.0, blue: 94/255.0, alpha: 1.0)
                
                tag8_Button.titleLabel?.textAlignment = .center
                tag8_Button.contentHorizontalAlignment = .center
                tag8_Button.titleLabel?.numberOfLines = 1
                let tag8button_string = NSMutableAttributedString(string: "cos")
                tag8button_string.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 3)) //range of text to change font size
                tag8button_string.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 3))
                tag8_Button.setAttributedTitle(tag8button_string, for: .normal)
                tag8_Button.backgroundColor = UIColor(red: 94/255.0, green: 94/255.0, blue: 94/255.0, alpha: 1.0)
                
                
                tag9_Button.titleLabel?.textAlignment = .center
                tag9_Button.contentHorizontalAlignment = .center
                tag9_Button.titleLabel?.numberOfLines = 1
                let tag9button_string = NSMutableAttributedString(string: "tan")
                tag9button_string.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 3)) //range of text to change font size
                tag9button_string.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 3))
                tag9_Button.setAttributedTitle(tag9button_string, for: .normal)
                tag9_Button.backgroundColor = UIColor(red: 94/255.0, green: 94/255.0, blue: 94/255.0, alpha: 1.0)
                
                tag12_Button.titleLabel?.textAlignment = .center
                tag12_Button.contentHorizontalAlignment = .center
                tag12_Button.titleLabel?.numberOfLines = 1
                let tag12button_string = NSMutableAttributedString(string: "10x")
                tag12button_string.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 2)) //range of text to change font size
                tag12button_string.addAttributes([.font:fontSuper!, .baselineOffset: 5 * fontConstantForSubAndSuperScripts], range: NSRange(location:2,length:1))
                tag12button_string.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 3))
                tag12_Button.setAttributedTitle(tag12button_string, for: .normal)
                tag12_Button.backgroundColor = UIColor(red: 94/255.0, green: 94/255.0, blue: 94/255.0, alpha: 1.0)
                
                
                tag13_Button.titleLabel?.textAlignment = .center
                tag13_Button.contentHorizontalAlignment = .center
                tag13_Button.titleLabel?.numberOfLines = 1
                let tag13button_string = NSMutableAttributedString(string: "sinh")
                tag13button_string.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 4)) //range of text to change font size
                tag13button_string.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 4))
                tag13_Button.setAttributedTitle(tag13button_string, for: .normal)
                tag13_Button.backgroundColor = UIColor(red: 94/255.0, green: 94/255.0, blue: 94/255.0, alpha: 1.0)
                
                tag14_Button.titleLabel?.textAlignment = .center
                tag14_Button.contentHorizontalAlignment = .center
                tag14_Button.titleLabel?.numberOfLines = 1
                let tag14button_string = NSMutableAttributedString(string: "cosh")
                tag14button_string.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 4)) //range of text to change font size
                tag14button_string.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 4))
                tag14_Button.setAttributedTitle(tag14button_string, for: .normal)
                tag14_Button.backgroundColor = UIColor(red: 94/255.0, green: 94/255.0, blue: 94/255.0, alpha: 1.0)
                
                tag15_Button.titleLabel?.textAlignment = .center
                tag15_Button.contentHorizontalAlignment = .center
                tag15_Button.titleLabel?.numberOfLines = 1
                let tag15button_string = NSMutableAttributedString(string: "tanh")
                tag15button_string.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 4)) //range of text to change font size
                tag15button_string.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 4))
                tag15_Button.setAttributedTitle(tag15button_string, for: .normal)
                tag15_Button.backgroundColor = UIColor(red: 94/255.0, green: 94/255.0, blue: 94/255.0, alpha: 1.0)
                
                
                tag19_Button.titleLabel?.textAlignment = .center
                tag19_Button.contentHorizontalAlignment = .center
                tag19_Button.titleLabel?.numberOfLines = 1
                
                let tag19button_string = NSMutableAttributedString(string: "ln")
                
                //labelVarName.attributedText = attString
                tag19button_string.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 2)) //range of text to change font size
                
                tag19button_string.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 2))
                
                tag19_Button.setAttributedTitle(tag19button_string, for: .normal)
                tag19_Button.backgroundColor = UIColor(red: 94/255.0, green: 94/255.0, blue: 94/255.0, alpha: 1.0)
                
                
                tag20_Button.titleLabel?.textAlignment = .center
                tag20_Button.contentHorizontalAlignment = .center
                tag20_Button.titleLabel?.numberOfLines = 1
                let tag20button_string = NSMutableAttributedString(string: "log10")
                tag20button_string.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 3)) //range of text to change font size
                tag20button_string.addAttributes([.font:fontSub!, .baselineOffset:-5 * fontConstantForSubAndSuperScripts], range: NSRange(location:3,length:2))
                
                tag20button_string.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 5))
                tag20_Button.setAttributedTitle(tag20button_string, for: .normal)
                tag20_Button.backgroundColor = UIColor(red: 94/255.0, green: 94/255.0, blue: 94/255.0, alpha: 1.0)
                
                tag21_Button.titleLabel?.textAlignment = .center
                tag21_Button.contentHorizontalAlignment = .center
                tag21_Button.titleLabel?.numberOfLines = 1
                let tag21button_string = NSMutableAttributedString(string: "ex")
                tag21button_string.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 1)) //range of text to change font size
                tag21button_string.addAttributes([.font:fontSuper!, .baselineOffset: 5 * fontConstantForSubAndSuperScripts], range: NSRange(location:1,length:1))
                tag21button_string.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 2))
                tag21_Button.setAttributedTitle(tag21button_string, for: .normal)
                tag21_Button.backgroundColor = UIColor(red: 94/255.0, green: 94/255.0, blue: 94/255.0, alpha: 1.0)
                //
                sender.titleLabel?.textAlignment = .center
                sender.contentHorizontalAlignment = .center
                sender.titleLabel?.numberOfLines = 1
                let senderButton_string = NSMutableAttributedString(string: "2nd")
                senderButton_string.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 1)) //range of text to change font size
                senderButton_string.addAttributes([.font:fontSuper!, .baselineOffset: 5 * fontConstantForSubAndSuperScripts], range: NSRange(location:1,length:2))
                
                senderButton_string.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 3))
                sender.setAttributedTitle(senderButton_string, for: .normal)
                sender.backgroundColor = UIColor(red: 94/255.0, green: 94/255.0, blue: 94/255.0, alpha: 1.0)
                
                
            }
            
            
            
            // let name = Notification.Name(rawValue: rightP_func_NotificationKey)
            
            
            //  let name = Notification.Name(rawValue: rightParenthesis_func_NotificationKey)
            //  NotificationCenter.default.post(name: name, object: nil)
            
        }
        
        
        
        
        
        
        
    }
    
    
    func updateOnOffButton_for_xRaisedToYButton() {
        
        if buttonIsSelected {
            
            tag24_Button.titleLabel?.textAlignment = .center
            tag24_Button.contentHorizontalAlignment = .center
            tag24_Button.titleLabel?.numberOfLines = 1
            //  tag18_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag24_Button = NSMutableAttributedString(string: "xʸ")
            str_tag24_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 1)) //range of text to change font size
            str_tag24_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 13 * fontConstant), range: NSMakeRange(1, 1)) //range of text to change font size
            str_tag24_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0), range: NSMakeRange(0, 2))
            tag24_Button.setAttributedTitle(str_tag24_Button, for: .normal)
            
            tag24_Button.backgroundColor = UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0)
            
            
        }
        else {
            let str_tag24_Button = NSMutableAttributedString(string: "xʸ")
            str_tag24_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 1)) //range of text to change font size
            str_tag24_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 13 * fontConstant), range: NSMakeRange(1, 1)) //range of text to change font size
            str_tag24_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 2))
            tag24_Button.setAttributedTitle(str_tag24_Button, for: .normal)
            
            tag24_Button.backgroundColor = UIColor(red: 94/255.0, green: 94/255.0, blue: 94/255.0, alpha: 1.0)
        }
    }
    
    
    
    func updateOnOffButton_for_EEFunction() {
        if buttonIsSelected {
            
            
            
            tag28_Button.titleLabel?.textAlignment = .center
            tag28_Button.contentHorizontalAlignment = .center
            tag28_Button.titleLabel?.numberOfLines = 1
            
            let str_tag28_Button = NSMutableAttributedString(string: "EE")
            str_tag28_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 2)) //range of text to change font size
            str_tag28_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0), range: NSMakeRange(0, 2))
            tag28_Button.setAttributedTitle(str_tag28_Button, for: .normal)
            tag28_Button.backgroundColor = UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0)
            
            
            
            
            
            
            //
            //
            //            tag21_Button.titleLabel?.textAlignment = .center
            //            tag21_Button.contentHorizontalAlignment = .center
            //            tag21_Button.titleLabel?.numberOfLines = 1
            //
            //            tag21_Button.setAttributedTitle(tag21button_string, for: .normal)
            //            tag21_Button.backgroundColor = UIColor(red: 94/255.0, green: 94/255.0, blue: 94/255.0, alpha: 1.0)
            
            
            
        }
        else {
            
            tag28_Button.titleLabel?.textAlignment = .center
            tag28_Button.contentHorizontalAlignment = .center
            tag28_Button.titleLabel?.numberOfLines = 1
            let str_tag28_Button = NSMutableAttributedString(string: "EE")
            str_tag28_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 2)) //range of text to change font size
            str_tag28_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 2))
            tag28_Button.setAttributedTitle(str_tag28_Button, for: .normal)
            tag28_Button.backgroundColor = UIColor(red: 94/255.0, green: 94/255.0, blue: 94/255.0, alpha: 1.0)
            
        }
    }
    
    func updateOnOffButton_for_ySqrtXFunction() {
        if buttonIsSelected {
            
            
            tag18_Button.titleLabel?.textAlignment = .center
            tag18_Button.contentHorizontalAlignment = .center
            tag18_Button.titleLabel?.numberOfLines = 1
            
            let str_tag18_Button = NSMutableAttributedString(string: "ʸ√x")
            str_tag18_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 13 * fontConstant), range: NSMakeRange(0, 1)) //range of text to change font size
            str_tag18_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(1, 2)) //range of text to change font size
            str_tag18_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0), range: NSMakeRange(0, 3))
            tag18_Button.setAttributedTitle(str_tag18_Button, for: .normal)
            
            tag18_Button.backgroundColor = UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0)
            
            
            
            
        }
        else {
            
            let str_tag18_Button = NSMutableAttributedString(string: "ʸ√x")
            str_tag18_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 13 * fontConstant), range: NSMakeRange(0, 1)) //range of text to change font size
            str_tag18_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(1, 2)) //range of text to change font size
            str_tag18_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 3))
            tag18_Button.setAttributedTitle(str_tag18_Button, for: .normal)
            
            tag18_Button.backgroundColor = UIColor(red: 94/255.0, green: 94/255.0, blue: 94/255.0, alpha: 1.0)
            
            
            
        }
    }
    
    func updateOnOffButton_for_eRaisedToX_AND_yRaisedToX_Function() {
        if buttonIsSelected {
            let fontSuper:UIFont? = UIFont(name: "Helvetica", size: 7 * fontConstant)
            
            tag21_Button.titleLabel?.textAlignment = .center
            tag21_Button.contentHorizontalAlignment = .center
            tag21_Button.titleLabel?.numberOfLines = 1
            //  tag18_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let tag21button_string = NSMutableAttributedString(string: "yx")
            tag21button_string.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 1)) //range of text to change font size
            tag21button_string.addAttributes([.font:fontSuper!, .baselineOffset: 5 * fontConstantForSubAndSuperScripts], range: NSRange(location:1,length:1))
            tag21button_string.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0), range: NSMakeRange(0, 2))
            tag21_Button.setAttributedTitle(tag21button_string, for: .normal)
            tag21_Button.backgroundColor = UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0)
            
        }
        else {
            
            let fontSuper:UIFont? = UIFont(name: "Helvetica", size: 7 * fontConstant)
            tag21_Button.titleLabel?.textAlignment = .center
            tag21_Button.contentHorizontalAlignment = .center
            tag21_Button.titleLabel?.numberOfLines = 1
            
            let tag21button_string = NSMutableAttributedString(string: "yx")
            tag21button_string.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 1)) //range of text to change font size
            tag21button_string.addAttributes([.font:fontSuper!, .baselineOffset: 5 * fontConstantForSubAndSuperScripts], range: NSRange(location:1,length:1))
            tag21button_string.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 2))
            tag21_Button.setAttributedTitle(tag21button_string, for: .normal)
            tag21_Button.backgroundColor = UIColor(red: 94/255.0, green: 94/255.0, blue: 94/255.0, alpha: 1.0)
            
        }
    }
    
    func updateOnOffButton_for_logyx_Function() {
        if buttonIsSelected {
            tag19_Button.titleLabel?.textAlignment = .center
            tag19_Button.contentHorizontalAlignment = .center
            tag19_Button.titleLabel?.numberOfLines = 1
            
            let fontSub:UIFont? = UIFont(name: "Helvetica", size: 7 * fontConstant)
            //   let attString:NSMutableAttributedString = NSMutableAttributedString(string: "6.022*1023", attributes: [.font:font!])
            
            let tag19button_string = NSMutableAttributedString(string: "logyx")
            
            //labelVarName.attributedText = attString
            tag19button_string.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 3)) //range of text to change font size
            tag19button_string.addAttributes([.font:fontSub!, .baselineOffset:-5 * fontConstantForSubAndSuperScripts], range: NSRange(location:3,length:1))
            
            tag19button_string.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(4, 1)) //range of text to change font size
            tag19button_string.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0), range: NSMakeRange(0, 5))
            tag19_Button.setAttributedTitle(tag19button_string, for: .normal)
            tag19_Button.backgroundColor = UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0)
            
            
            
        }
        else {
            
            let fontSub:UIFont? = UIFont(name: "Helvetica", size: 7 * fontConstant)
            
            
            let tag19button_string = NSMutableAttributedString(string: "logyx")
            
            
            tag19button_string.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 3)) //range of text to change font size
            tag19button_string.addAttributes([.font:fontSub!, .baselineOffset:-5 * fontConstantForSubAndSuperScripts], range: NSRange(location:3,length:1))
            
            tag19button_string.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(4, 1)) //range of text to change font size
            tag19button_string.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 5))
            tag19_Button.setAttributedTitle(tag19button_string, for: .normal)
            tag19_Button.backgroundColor = UIColor(red: 94/255.0, green: 94/255.0, blue: 94/255.0, alpha: 1.0)
            
        }
    }
    
    
    
    //
    //    tag19_Button.titleLabel?.textAlignment = .center
    //    tag19_Button.contentHorizontalAlignment = .center
    //    tag19_Button.titleLabel?.numberOfLines = 1
    //
    //    let fontSub:UIFont? = UIFont(name: "Helvetica", size: 7 * fontConstant)
    //    //   let attString:NSMutableAttributedString = NSMutableAttributedString(string: "6.022*1023", attributes: [.font:font!])
    //
    //    let tag19button_string = NSMutableAttributedString(string: "logyx")
    //
    //    //labelVarName.attributedText = attString
    //    tag19button_string.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 3)) //range of text to change font size
    //    tag19button_string.addAttributes([.font:fontSub!, .baselineOffset:-5], range: NSRange(location:3,length:1))
    //
    //    tag19button_string.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(4, 1)) //range of text to change font size
    //    tag19button_string.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 5))
    //    tag19_Button.setAttributedTitle(tag19button_string, for: .normal)
    //    tag19_Button.backgroundColor = UIColor(red: 94/255.0, green: 94/255.0, blue: 94/255.0, alpha: 1.0)
    //
    
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
        
        
        
        
        print("tag1_Button.bounds in viewWillLayoutSubviews in instantiatedMagentaViewController: \(tag1_Button.bounds)")
        print("tag1_Button.bounds.height in viewWillLayoutSubviews in instantiatedMagentaViewController: \(tag1_Button.bounds.height)")
        print("tag1_Button.bounds.height / 2 in viewWillLayoutSubviews in instantiatedMagentaViewController: \(Double(tag1_Button.bounds.height / 2))")
        
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
        
        let radius_in_viewWillLayoutSubviews = min(tag1_Button.bounds.width, tag1_Button.bounds.height) / 2
       //better way to get button dimensions
        
        
        print("radius_in_viewWillLayoutSubviews: \(radius_in_viewWillLayoutSubviews)")
        print("cornerRadius_forButtons: \(cornerRadius_forButtons)")
        
        tag1_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)


        tag2_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
        //
        tag3_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
        //
        tag4_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
        //

        tag5_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
        tag6_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
        tag7_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)

        tag8_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)

        tag9_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
        //
        tag10_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
        //
        //
        tag11_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
        tag12_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
        tag13_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)

        tag14_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)

        tag15_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)

        tag16_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)

        tag17_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)

        tag18_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)

       tag19_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)

        tag20_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)

        tag21_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)

        tag22_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)

        tag23_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)

        tag24_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)

        tag25_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)

        tag26_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)

        tag27_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)

        tag28_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)

        tag29_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)

        tag30_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
        
        
        
        
        
        
        
       // viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
       // print("tag1_Button.bounds in viewWillAppear: \(tag1_Button.bounds)")
        
        let radius_in_viewWillAppear = min(tag1_Button.bounds.width, tag1_Button.bounds.height) / 2
        print("radius_in_viewWillAppear: \(radius_in_viewWillAppear)")

      // deviceOrientationDidChange()
        
        
    }
    
    func getCornerRadius() -> CGFloat {
        let radius_in_getCornerRadius = min(tag1_Button.bounds.width, tag1_Button.bounds.height)
        return radius_in_getCornerRadius
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("tag1_Button.bounds in viewDidAppear: \(tag1_Button.bounds)")
      //  viewWillLayoutSubviews()
        
    }
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        let radius_in_viewWillTransition = min(tag1_Button.bounds.width, tag1_Button.bounds.height) / 2
        print("radius_in_viewWillTransition: \(radius_in_viewWillTransition)")

     //   viewDidLoad()
    }
    
    
    override func viewDidLayoutSubviews() {
        //viewWillLayoutSubviews()
    }
    
//      func layoutSubviews() {
//                //layoutSubviews()
//
//                let radius_in_layoutSubviews_magentaView = min(tag1_Button.bounds.width, tag1_Button.bounds.height) / 2
//           //     layer.cornerRadius = radius_in_layoutSubviews_magentaView
//
//            print("radius_in_layoutSubviews_magentaView: \(radius_in_layoutSubviews_magentaView)")
//
//
//
//
//
//            }
    
    @objc func deviceOrientationDidChange() {
        print("UIDevice.current.orientation.rawValue: \(UIDevice.current.orientation.rawValue)")
        
        
//        if UIDevice.current.orientation.rawValue == 1 {
//
//            cornerRadius_forButtons = Double(tag1_Button.bounds.height / 2.0)
//
//            print("cornerRadius_forButtons rawValue 1 location - instantiatedMagenta: \(cornerRadius_forButtons)")
//
//            tag1_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag2_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag3_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag4_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag5_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag6_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag7_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag8_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag9_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag10_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag11_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag12_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag13_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag14_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag15_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag16_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag17_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag18_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag19_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag20_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag21_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag22_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag23_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag24_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag25_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag26_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag27_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag28_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag29_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag30_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//
//
//
//        } else {
//
//            cornerRadius_forButtons = Double(tag1_Button.bounds.height / 2.0)
//            print("cornerRadius_forButtons rawValue 3 location- instantiatedMagenta: \(cornerRadius_forButtons)")
//
//            tag1_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag2_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag3_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag4_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag5_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag6_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag7_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag8_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag9_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag10_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag11_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag12_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag13_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag14_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag15_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag16_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag17_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag18_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag19_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag20_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag21_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag22_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag23_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag24_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag25_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag26_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag27_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag28_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag29_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag30_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//        }
        
        
    }
//    override func up {
//        print("tag1_Button.bounds in viewWillLoad: \(tag1_Button.bounds)")
//        //   viewDidLoad()
//    }
    // look up loadViewIfNeeded
    
    
}










