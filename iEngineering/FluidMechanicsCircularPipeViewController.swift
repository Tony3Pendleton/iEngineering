//
//  FluidMechanicsCircularPipeSubjectViewController.swift
//  CHE Equations
//
//  Created by Anthony on 1/4/18.
//  Copyright © 2018 CHE Equations. All rights reserved.
//

import UIKit

class VelocityMaximumLaminarViewController: UIViewController {
    
    @IBOutlet var ScrollView: UIScrollView!
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // Normal|Mean|Average Velocity (m / s)
    
    
    @IBOutlet weak var myLabel1: UILabel!
    
    
    override func viewDidLoad() {
        //----makes keyboard disappear by tapping anywhere (1of3)----
        super.viewDidLoad()
        
        //Looks for single or multiple taps.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        
        //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
        //tap.cancelsTouchesInView = false
        
        view.addGestureRecognizer(tap)
        //-----------------------------------------------------------
        super.viewDidLoad()
        // -----
        let label = UILabel(frame: CGRect(x:0, y:0, width:10, height:50))
        label.backgroundColor = .white
        label.numberOfLines = 3
        label.font = UIFont(name: "HelveticaNeue", size: 15)
        label.textAlignment = .center
        label.textColor = .black
        label.text = "Velocity (Maximum) \nLaminar Flow (m / s)"
        self.navigationItem.titleView = label
        // -----
        // ########### SCROLLING (1of2)#########################
        ScrollView.contentSize.height = 2000
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name:NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name:NSNotification.Name.UIKeyboardWillHide, object: nil)
        // ################################################
        // ########### Menu (Tutorial) (3) ###############
        sideMenus()
        customizeNavBar()
        // ##############################################
        //----makes keyboard disappear by tapping anywhere (3of3)----
        dismissKeyboard()
        //-----------------------------------------------------------
        
    }
    
    // ########### SCROLLING (2of2) #########################
    @objc func keyboardWillShow(notification:NSNotification){
        //give room at the bottom of the scroll view, so it doesn't cover up anything the user needs to tap
        var userInfo = notification.userInfo!
        var keyboardFrame:CGRect = (userInfo[UIKeyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
        keyboardFrame = self.view.convert(keyboardFrame, from: nil)
        
        var contentInset:UIEdgeInsets = self.ScrollView.contentInset
        contentInset.bottom = keyboardFrame.size.height
        ScrollView.contentInset = contentInset
    }
    
    @objc func keyboardWillHide(notification:NSNotification){
        let contentInset:UIEdgeInsets = UIEdgeInsets.zero
        ScrollView.contentInset = contentInset
    }
    // ################################################
    
    @IBAction func myButton2(_ sender: Any) {
        //NOTE: When copying and pasting a viewcontroller, I think you need to redo any buttons (eg. the calculate button). Need to control+drag to class
        // buttons must be set to ACTION when you create them AMP 11182017
        
        myLabel1.isHidden = false
        
        
        let firstValue = Double(myTextField1.text!) // Normal|Mean|Average Velocity (m / s)
        
        
        
        if firstValue != nil {
            
            
            let VelocityMaximum = Double(2.0 * firstValue!)
            
            myLabel1.text = "Velocity (Maximum) for Laminar Flow = \(VelocityMaximum) m / s"
            
            self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
            
        }else{
            myLabel1.text = "Hey! Enter a number!"
            
            self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
        }
    }
    
    func sideMenus() {
        if revealViewController() != nil{
            
            menuButtonFromPengRob.target = revealViewController()
            menuButtonFromPengRob.action = #selector(SWRevealViewController.revealToggle(_:))
            revealViewController().rearViewRevealWidth = 275
            revealViewController().rightViewRevealWidth = 160
            
            
            logButtonFromPengRob.target = revealViewController()
            logButtonFromPengRob.action = #selector(SWRevealViewController.rightRevealToggle(_:))
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            
        }
    }
    
    // ------- Might be a redundant section (need too look up how to acccess func from a sidifferent class e.g. sideMenus() -------------
    func customizeNavBar() {
        navigationController?.navigationBar.tintColor = .black //UIColor(colorLiteralRed: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        navigationController?.navigationBar.barTintColor = .white //UIColor(colorLiteralRed: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        self.navigationController?.navigationBar.isTranslucent = false // changing to "true", instead of "false" fixed the invisible space under navigation bar. It made the space go away.
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        
    }
    // ------------------------------
    //----makes keyboard disappear by tapping anywhere (2of3)----
    //Calls this function when the tap is recognized.
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    // ------------------------------
    
}

/////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////

class FluidMechanicsVelocityAtAnyPointInCrossSectionLaminarViewController: UIViewController {
    
    
    @IBOutlet var ScrollView: UIScrollView!
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // Mean|Normal Velocity (m / s)
    @IBOutlet weak var myTextField2: UITextField! // Distance from centerline (+/- m)
    @IBOutlet weak var myTextField3: UITextField! // Centerline distance from bottom|top inside wall (m)
    
    
    @IBOutlet weak var myLabel1: UILabel!
    @IBOutlet weak var myLabel2: UILabel!
    
    
    override func viewDidLoad() {
        //----makes keyboard disappear by tapping anywhere (1of3)----
        super.viewDidLoad()
        
        //Looks for single or multiple taps.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        
        //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
        //tap.cancelsTouchesInView = false
        
        view.addGestureRecognizer(tap)
        //-----------------------------------------------------------
        super.viewDidLoad()
        // -----
        let label = UILabel(frame: CGRect(x:0, y:0, width:10, height:50))
        label.backgroundColor = .white
        label.numberOfLines = 3
        label.font = UIFont(name: "HelveticaNeue", size: 15)
        label.textAlignment = .center
        label.textColor = .black
        label.text = "Velocity (At Any Point\nin Circular Cross-Section)"
        self.navigationItem.titleView = label
        // -----
        // ########### SCROLLING (1of2)#########################
        ScrollView.contentSize.height = 2000
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name:NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name:NSNotification.Name.UIKeyboardWillHide, object: nil)
        // ################################################
        // ########### Menu (Tutorial) (3) ###############
        sideMenus()
        customizeNavBar()
        // ##############################################
        //----makes keyboard disappear by tapping anywhere (3of3)----
        dismissKeyboard()
        //-----------------------------------------------------------
        
    }
    
    // ########### SCROLLING (2of2) #########################
    @objc func keyboardWillShow(notification:NSNotification){
        //give room at the bottom of the scroll view, so it doesn't cover up anything the user needs to tap
        var userInfo = notification.userInfo!
        var keyboardFrame:CGRect = (userInfo[UIKeyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
        keyboardFrame = self.view.convert(keyboardFrame, from: nil)
        
        var contentInset:UIEdgeInsets = self.ScrollView.contentInset
        contentInset.bottom = keyboardFrame.size.height
        ScrollView.contentInset = contentInset
    }
    
    @objc func keyboardWillHide(notification:NSNotification){
        let contentInset:UIEdgeInsets = UIEdgeInsets.zero
        ScrollView.contentInset = contentInset
    }
    // ################################################
    
    @IBAction func myButton2(_ sender: Any) {
        //NOTE: When copying and pasting a viewcontroller, I think you need to redo any buttons (eg. the calculate button). Need to control+drag to class
        // buttons must be set to ACTION when you create them AMP 11182017
        
        myLabel1.isHidden = false
        myLabel2.isHidden = false
        
        let firstValue = Double(myTextField1.text!) // Mean|Normal Velocity (m / s)
        let secondValue = Double(myTextField2.text!) // Distance from centerline (m)
        let thirdValue = Double(myTextField3.text!) // Centerline distance from bottom|top inside wall (m)
        
        
        
        if firstValue != nil && secondValue != nil && thirdValue != nil {
            
            
            let VelocityMaximum = Double(1.5 * firstValue!)
            
            
            let VelocityTheoreticalConstant1 = Double(secondValue! / thirdValue!)
            let VelocityTheoreticalConstant2 = Double(VelocityTheoreticalConstant1 * VelocityTheoreticalConstant1)
            let VelocityTheoretical = Double((1.0 - VelocityTheoreticalConstant2) * VelocityMaximum)
            
            
            
            myLabel1.text = "Velocity (maximum) for laminar flow = \(VelocityMaximum) m / s"
            
            myLabel2.text = "Velocity (theoretical) at user-defined distance from centerline for laminar flow = \(VelocityTheoretical) m / s"
            
            self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
            
        }else{
            myLabel1.text = "Hey! Enter a number!"
            myLabel2.text = "Hey! Enter a number!"
            
            self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
        }
    }
    
    func sideMenus() {
        if revealViewController() != nil{
            
            menuButtonFromPengRob.target = revealViewController()
            menuButtonFromPengRob.action = #selector(SWRevealViewController.revealToggle(_:))
            revealViewController().rearViewRevealWidth = 275
            revealViewController().rightViewRevealWidth = 160
            
            
            logButtonFromPengRob.target = revealViewController()
            logButtonFromPengRob.action = #selector(SWRevealViewController.rightRevealToggle(_:))
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            
        }
    }
    
    // ------- Might be a redundant section (need too look up how to acccess func from a sidifferent class e.g. sideMenus() -------------
    func customizeNavBar() {
        navigationController?.navigationBar.tintColor = .black //UIColor(colorLiteralRed: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        navigationController?.navigationBar.barTintColor = .white //UIColor(colorLiteralRed: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        self.navigationController?.navigationBar.isTranslucent = false // changing to "true", instead of "false" fixed the invisible space under navigation bar. It made the space go away.
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        
    }
    // ------------------------------
    //----makes keyboard disappear by tapping anywhere (2of3)----
    //Calls this function when the tap is recognized.
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    // ------------------------------
    
}

/////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////

class FluidMechanicsShearStressAtAnyPointInCrossSectionLaminarViewController: UIViewController {
    
    
    @IBOutlet var ScrollView: UIScrollView!
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // Wall|Max Shear Stress (Pa)
    @IBOutlet weak var myTextField2: UITextField! // Distance from centerline (m)
    @IBOutlet weak var myTextField3: UITextField! // Centerline distance from bottom|top inside wall (m)
    
    
    @IBOutlet weak var myLabel1: UILabel!
    @IBOutlet weak var myLabel2: UILabel!
    
    
    override func viewDidLoad() {
        //----makes keyboard disappear by tapping anywhere (1of3)----
        super.viewDidLoad()
        
        //Looks for single or multiple taps.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        
        //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
        //tap.cancelsTouchesInView = false
        
        view.addGestureRecognizer(tap)
        //-----------------------------------------------------------
        super.viewDidLoad()
        // -----
        let label = UILabel(frame: CGRect(x:0, y:0, width:10, height:50))
        label.backgroundColor = .white
        label.numberOfLines = 3
        label.font = UIFont(name: "HelveticaNeue", size: 15)
        label.textAlignment = .center
        label.textColor = .black
        label.text = "Shear Stress (At Any Point\nin Circular Cross-Section)"
        self.navigationItem.titleView = label
        // -----
        // ########### SCROLLING (1of2)#########################
        ScrollView.contentSize.height = 2000
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name:NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name:NSNotification.Name.UIKeyboardWillHide, object: nil)
        // ################################################
        // ########### Menu (Tutorial) (3) ###############
        sideMenus()
        customizeNavBar()
        // ##############################################
        //----makes keyboard disappear by tapping anywhere (3of3)----
        dismissKeyboard()
        //-----------------------------------------------------------
        
    }
    
    // ########### SCROLLING (2of2) #########################
    @objc func keyboardWillShow(notification:NSNotification){
        //give room at the bottom of the scroll view, so it doesn't cover up anything the user needs to tap
        var userInfo = notification.userInfo!
        var keyboardFrame:CGRect = (userInfo[UIKeyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
        keyboardFrame = self.view.convert(keyboardFrame, from: nil)
        
        var contentInset:UIEdgeInsets = self.ScrollView.contentInset
        contentInset.bottom = keyboardFrame.size.height
        ScrollView.contentInset = contentInset
    }
    
    @objc func keyboardWillHide(notification:NSNotification){
        let contentInset:UIEdgeInsets = UIEdgeInsets.zero
        ScrollView.contentInset = contentInset
    }
    // ################################################
    
    @IBAction func myButton2(_ sender: Any) {
        //NOTE: When copying and pasting a viewcontroller, I think you need to redo any buttons (eg. the calculate button). Need to control+drag to class
        // buttons must be set to ACTION when you create them AMP 11182017
        
        myLabel1.isHidden = false
        myLabel2.isHidden = false
        
        let firstValue = Double(myTextField1.text!) // Wall|Max Shear Stress (Pa)
        let secondValue = Double(myTextField2.text!) // Distance from centerline (m)
        let thirdValue = Double(myTextField3.text!) // Centerline distance from bottom|top inside wall (m)
        
        
        
        if firstValue != nil && secondValue != nil && thirdValue != nil {
            
            let ShearStressAtAnyPoint = Double(firstValue! * secondValue! / thirdValue!)
            
            
            
            myLabel1.text = "Shear stress (theoretical) for laminar flow = \(ShearStressAtAnyPoint) Pa"
            
            //            myLabel2.text = "Velocity (theoretical) at user-defined distance from centerline for laminar flow = \(VelocityTheoretical) m / s"
            
            self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
            
        }else{
            myLabel1.text = "Hey! Enter a number!"
            //            myLabel2.text = "Hey! Enter a number!"
            
            self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
        }
    }
    
    func sideMenus() {
        if revealViewController() != nil{
            
            menuButtonFromPengRob.target = revealViewController()
            menuButtonFromPengRob.action = #selector(SWRevealViewController.revealToggle(_:))
            revealViewController().rearViewRevealWidth = 275
            revealViewController().rightViewRevealWidth = 160
            
            
            logButtonFromPengRob.target = revealViewController()
            logButtonFromPengRob.action = #selector(SWRevealViewController.rightRevealToggle(_:))
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            
        }
    }
    
    // ------- Might be a redundant section (need too look up how to acccess func from a sidifferent class e.g. sideMenus() -------------
    func customizeNavBar() {
        navigationController?.navigationBar.tintColor = .black //UIColor(colorLiteralRed: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        navigationController?.navigationBar.barTintColor = .white //UIColor(colorLiteralRed: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        self.navigationController?.navigationBar.isTranslucent = false // changing to "true", instead of "false" fixed the invisible space under navigation bar. It made the space go away.
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        
    }
    // ------------------------------
    //----makes keyboard disappear by tapping anywhere (2of3)----
    //Calls this function when the tap is recognized.
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    // ------------------------------
    
}

/////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////

class FluidMechanicsShearStressMaximumFanningViewController: UIViewController {
    
    
    
    @IBOutlet var ScrollView: UIScrollView!
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // Fanning Friction Factor
    @IBOutlet weak var myTextField2: UITextField! // Density (kg / m^3)
    @IBOutlet weak var myTextField3: UITextField! // Mean|Normal Velocity (m / s)
    
    
    @IBOutlet weak var myLabel1: UILabel!
    @IBOutlet weak var myLabel2: UILabel!
    
    
    override func viewDidLoad() {
        //----makes keyboard disappear by tapping anywhere (1of3)----
        super.viewDidLoad()
        
        //Looks for single or multiple taps.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        
        //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
        //tap.cancelsTouchesInView = false
        
        view.addGestureRecognizer(tap)
        //-----------------------------------------------------------
        super.viewDidLoad()
        // -----
        let label = UILabel(frame: CGRect(x:0, y:0, width:10, height:50))
        label.backgroundColor = .white
        label.numberOfLines = 3
        label.font = UIFont(name: "HelveticaNeue", size: 15)
        label.textAlignment = .center
        label.textColor = .black
        label.text = "Maximum Shear Stress (Pa)\n with Fanning FF."
        self.navigationItem.titleView = label
        // -----
        // ########### SCROLLING (1of2)#########################
        ScrollView.contentSize.height = 2000
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name:NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name:NSNotification.Name.UIKeyboardWillHide, object: nil)
        // ################################################
        // ########### Menu (Tutorial) (3) ###############
        sideMenus()
        customizeNavBar()
        // ##############################################
        //----makes keyboard disappear by tapping anywhere (3of3)----
        dismissKeyboard()
        //-----------------------------------------------------------
        
    }
    
    // ########### SCROLLING (2of2) #########################
    @objc func keyboardWillShow(notification:NSNotification){
        //give room at the bottom of the scroll view, so it doesn't cover up anything the user needs to tap
        var userInfo = notification.userInfo!
        var keyboardFrame:CGRect = (userInfo[UIKeyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
        keyboardFrame = self.view.convert(keyboardFrame, from: nil)
        
        var contentInset:UIEdgeInsets = self.ScrollView.contentInset
        contentInset.bottom = keyboardFrame.size.height
        ScrollView.contentInset = contentInset
    }
    
    @objc func keyboardWillHide(notification:NSNotification){
        let contentInset:UIEdgeInsets = UIEdgeInsets.zero
        ScrollView.contentInset = contentInset
    }
    // ################################################
    
    @IBAction func myButton2(_ sender: Any) {
        //NOTE: When copying and pasting a viewcontroller, I think you need to redo any buttons (eg. the calculate button). Need to control+drag to class
        // buttons must be set to ACTION when you create them AMP 11182017
        
        myLabel1.isHidden = false
        myLabel2.isHidden = false
        
        let firstValue = Double(myTextField1.text!) // Fanning Friction Factor
        let secondValue = Double(myTextField2.text!) // Density (kg / m^3)
        let thirdValue = Double(myTextField3.text!) // Mean|Normal Velocity (m / s)
        
        
        
        if firstValue != nil && secondValue != nil && thirdValue != nil {
            
            let ShearStressMaximumConstant1 = Double(thirdValue! * thirdValue!)
            
            let ShearStressMaximum = Double(0.5 * firstValue! * secondValue! * ShearStressMaximumConstant1)
            
            
            
            myLabel1.text = "Shear stress (maximum) at wall for laminar|turbulent flow = \(ShearStressMaximum) Pa"
            
            //            myLabel2.text = "Velocity (theoretical) at user-defined distance from centerline for laminar flow = \(VelocityTheoretical) m / s"
            
            self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
            
        }else{
            myLabel1.text = "Hey! Enter a number!"
            //            myLabel2.text = "Hey! Enter a number!"
            
            self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
        }
    }
    
    func sideMenus() {
        if revealViewController() != nil{
            
            menuButtonFromPengRob.target = revealViewController()
            menuButtonFromPengRob.action = #selector(SWRevealViewController.revealToggle(_:))
            revealViewController().rearViewRevealWidth = 275
            revealViewController().rightViewRevealWidth = 160
            
            
            logButtonFromPengRob.target = revealViewController()
            logButtonFromPengRob.action = #selector(SWRevealViewController.rightRevealToggle(_:))
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            
        }
    }
    
    // ------- Might be a redundant section (need too look up how to acccess func from a sidifferent class e.g. sideMenus() -------------
    func customizeNavBar() {
        navigationController?.navigationBar.tintColor = .black //UIColor(colorLiteralRed: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        navigationController?.navigationBar.barTintColor = .white //UIColor(colorLiteralRed: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        self.navigationController?.navigationBar.isTranslucent = false // changing to "true", instead of "false" fixed the invisible space under navigation bar. It made the space go away.
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        
    }
    // ------------------------------
    //----makes keyboard disappear by tapping anywhere (2of3)----
    //Calls this function when the tap is recognized.
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    // ------------------------------
    
}

/////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////

class FluidMechanicsShearStressMaximumDarcyWeisbachViewController: UIViewController {
    
    
    @IBOutlet var ScrollView: UIScrollView!
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // Darcy-Weisbach Friction Factor
    @IBOutlet weak var myTextField2: UITextField! // Density (kg / m^3)
    @IBOutlet weak var myTextField3: UITextField! // Mean|Normal Velocity (m / s)
    
    
    @IBOutlet weak var myLabel1: UILabel!
    @IBOutlet weak var myLabel2: UILabel!
    
    
    override func viewDidLoad() {
        //----makes keyboard disappear by tapping anywhere (1of3)----
        super.viewDidLoad()
        
        //Looks for single or multiple taps.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        
        //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
        //tap.cancelsTouchesInView = false
        
        view.addGestureRecognizer(tap)
        //-----------------------------------------------------------
        super.viewDidLoad()
        // -----
        let label = UILabel(frame: CGRect(x:0, y:0, width:10, height:50))
        label.backgroundColor = .white
        label.numberOfLines = 3
        label.font = UIFont(name: "HelveticaNeue", size: 15)
        label.textAlignment = .center
        label.textColor = .black
        label.text = "Maximum Shear Stress (Pa)\n with Darcy-Weisbach FF."
        self.navigationItem.titleView = label
        // -----
        // ########### SCROLLING (1of2)#########################
        ScrollView.contentSize.height = 2000
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name:NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name:NSNotification.Name.UIKeyboardWillHide, object: nil)
        // ################################################
        // ########### Menu (Tutorial) (3) ###############
        sideMenus()
        customizeNavBar()
        // ##############################################
        //----makes keyboard disappear by tapping anywhere (3of3)----
        dismissKeyboard()
        //-----------------------------------------------------------
        
    }
    
    // ########### SCROLLING (2of2) #########################
    @objc func keyboardWillShow(notification:NSNotification){
        //give room at the bottom of the scroll view, so it doesn't cover up anything the user needs to tap
        var userInfo = notification.userInfo!
        var keyboardFrame:CGRect = (userInfo[UIKeyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
        keyboardFrame = self.view.convert(keyboardFrame, from: nil)
        
        var contentInset:UIEdgeInsets = self.ScrollView.contentInset
        contentInset.bottom = keyboardFrame.size.height
        ScrollView.contentInset = contentInset
    }
    
    @objc func keyboardWillHide(notification:NSNotification){
        let contentInset:UIEdgeInsets = UIEdgeInsets.zero
        ScrollView.contentInset = contentInset
    }
    // ################################################
    
    @IBAction func myButton2(_ sender: Any) {
        //NOTE: When copying and pasting a viewcontroller, I think you need to redo any buttons (eg. the calculate button). Need to control+drag to class
        // buttons must be set to ACTION when you create them AMP 11182017
        
        myLabel1.isHidden = false
        myLabel2.isHidden = false
        
        let firstValue = Double(myTextField1.text!) // Darcy-Weisbach Friction Factor
        let secondValue = Double(myTextField2.text!) // Density (kg / m^3)
        let thirdValue = Double(myTextField3.text!) // Mean|Normal Velocity (m / s)
        
        
        
        if firstValue != nil && secondValue != nil && thirdValue != nil {
            
            let ShearStressMaximum = Double((1.0 / 8.0) * firstValue! * secondValue! * thirdValue! * thirdValue!)
            
            
            
            myLabel1.text = "Shear stress (maximum) at wall for laminar|turbulent flow = \(ShearStressMaximum) Pa"
            
            //            myLabel2.text = "Velocity (theoretical) at user-defined distance from centerline for laminar flow = \(VelocityTheoretical) m / s"
            
            self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
            
        }else{
            myLabel1.text = "Hey! Enter a number!"
            //            myLabel2.text = "Hey! Enter a number!"
            
            self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
        }
    }
    
    func sideMenus() {
        if revealViewController() != nil{
            
            menuButtonFromPengRob.target = revealViewController()
            menuButtonFromPengRob.action = #selector(SWRevealViewController.revealToggle(_:))
            revealViewController().rearViewRevealWidth = 275
            revealViewController().rightViewRevealWidth = 160
            
            
            logButtonFromPengRob.target = revealViewController()
            logButtonFromPengRob.action = #selector(SWRevealViewController.rightRevealToggle(_:))
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            
        }
    }
    
    // ------- Might be a redundant section (need too look up how to acccess func from a sidifferent class e.g. sideMenus() -------------
    func customizeNavBar() {
        navigationController?.navigationBar.tintColor = .black //UIColor(colorLiteralRed: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        navigationController?.navigationBar.barTintColor = .white //UIColor(colorLiteralRed: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        self.navigationController?.navigationBar.isTranslucent = false // changing to "true", instead of "false" fixed the invisible space under navigation bar. It made the space go away.
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        
    }
    // ------------------------------
    //----makes keyboard disappear by tapping anywhere (2of3)----
    //Calls this function when the tap is recognized.
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    // ------------------------------
    
}


//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////

class FluidMechanicsPressureVariationsInAGasViewController: UIViewController {
    
    
    @IBOutlet var ScrollView: UIScrollView!
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // Pressure (Pa) at Initial Elevation (P ≠ 0)
    @IBOutlet weak var myTextField2: UITextField! // Molecular Weight (kg / kmol)
    @IBOutlet weak var myTextField3: UITextField! // Gravity (m / s^2)
    @IBOutlet weak var myTextField4: UITextField! // Elevation Change (m)
    @IBOutlet weak var myTextField5: UITextField! // Gas Constant 8314.3 (J/(kmol*K))
    @IBOutlet weak var myTextField6: UITextField! // Temperature (K)
   
    
    
    
    @IBOutlet weak var myLabel1: UILabel!
    
    override func viewDidLoad() {
        //----makes keyboard disappear by tapping anywhere (1of3)----
        super.viewDidLoad()
        
        //Looks for single or multiple taps.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        
        //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
        //tap.cancelsTouchesInView = false
        
        view.addGestureRecognizer(tap)
        //-----------------------------------------------------------
        super.viewDidLoad()
        // -----
        let label = UILabel(frame: CGRect(x:0, y:0, width:10, height:50))
        label.backgroundColor = .white
        label.numberOfLines = 3
        label.font = UIFont(name: "HelveticaNeue", size: 15)
        label.textAlignment = .center
        label.textColor = .black
        label.text = "Pressure Variation\nin an Ideal Gas (Pa)"
        self.navigationItem.titleView = label
        // -----
        // ########### SCROLLING (1of2)#########################
        ScrollView.contentSize.height = 2000
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name:NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name:NSNotification.Name.UIKeyboardWillHide, object: nil)
        // ################################################
        // ########### Menu (Tutorial) (3) ###############
        sideMenus()
        customizeNavBar()
        // ##############################################
        //----makes keyboard disappear by tapping anywhere (3of3)----
        dismissKeyboard()
        //-----------------------------------------------------------
        
    }
    
    // ########### SCROLLING (2of2) #########################
    @objc func keyboardWillShow(notification:NSNotification){
        //give room at the bottom of the scroll view, so it doesn't cover up anything the user needs to tap
        var userInfo = notification.userInfo!
        var keyboardFrame:CGRect = (userInfo[UIKeyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
        keyboardFrame = self.view.convert(keyboardFrame, from: nil)
        
        var contentInset:UIEdgeInsets = self.ScrollView.contentInset
        contentInset.bottom = keyboardFrame.size.height
        ScrollView.contentInset = contentInset
    }
    
    @objc func keyboardWillHide(notification:NSNotification){
        let contentInset:UIEdgeInsets = UIEdgeInsets.zero
        ScrollView.contentInset = contentInset
    }
    // ################################################
    
    @IBAction func myButton2(_ sender: Any) {
        //NOTE: When copying and pasting a viewcontroller, I think you need to redo any buttons (eg. the calculate button). Need to control+drag to class
        // buttons must be set to ACTION when you create them AMP 11182017
        
        myLabel1.isHidden = false
        
        let firstValue = Double(myTextField1.text!) // Pressure (Pa) at Initial Elevation (P ≠ 0)
        let secondValue = Double(myTextField2.text!) // Molecular Weight (kg / kmol)
        let thirdValue = Double(myTextField3.text!) // Gravity (m / s^2)
        let fourthValue = Double(myTextField4.text!) // Elevation Change (m)
        let fifthValue = Double(myTextField5.text!) // Gas Constant 8314.3 (J/(kmol*K))
        let sixthValue = Double(myTextField6.text!) // Temperature (K)
        
        if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil && fifthValue != nil && sixthValue != nil {
            
            
            let PressureVariationConstant1 = Double(-secondValue! * thirdValue! * fourthValue! / fifthValue! / sixthValue!)
            let PressureVariationConstant2 = Double(pow(2.71828182846, PressureVariationConstant1))
            
            let PressureVariation = Double(firstValue! * PressureVariationConstant2)
            
            
            myLabel1.text = "Pressure Variation = \(PressureVariation) Pa"
            
            self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
            
        }else{
            myLabel1.text = "Hey! Enter a number!"
            
            self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
        }
    }
    // ------------------------------
    // Swift 3:
    func sin(degrees: Double) -> Double {
        return __sinpi(degrees/180.0)
    }
    // ------------------------------
    func sideMenus() {
        if revealViewController() != nil{
            
            menuButtonFromPengRob.target = revealViewController()
            menuButtonFromPengRob.action = #selector(SWRevealViewController.revealToggle(_:))
            revealViewController().rearViewRevealWidth = 275
            revealViewController().rightViewRevealWidth = 160
            
            
            logButtonFromPengRob.target = revealViewController()
            logButtonFromPengRob.action = #selector(SWRevealViewController.rightRevealToggle(_:))
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            
        }
    }
    
    // ------- Might be a redundant section (need too look up how to acccess func from a sidifferent class e.g. sideMenus() -------------
    func customizeNavBar() {
        navigationController?.navigationBar.tintColor = .black //UIColor(colorLiteralRed: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        navigationController?.navigationBar.barTintColor = .white //UIColor(colorLiteralRed: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        self.navigationController?.navigationBar.isTranslucent = false // changing to "true", instead of "false" fixed the invisible space under navigation bar. It made the space go away.
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        
    }
    // ------------------------------
    //----makes keyboard disappear by tapping anywhere (2of3)----
    //Calls this function when the tap is recognized.
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    // ------------------------------
    
}

///////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////
class FluidMechanicsHydrodynamicEntryLengthLaminarOrTurbulentViewController: UIViewController {
    
    @IBOutlet var ScrollView: UIScrollView!
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // Density (kg / m^3)
    @IBOutlet weak var myTextField2: UITextField! // Velcoity (m / s)
    @IBOutlet weak var myTextField3: UITextField! // Diameter (m)
    @IBOutlet weak var myTextField4: UITextField! // Viscosity (Pa * s)
   
    
    
    
    @IBOutlet weak var myLabel1: UILabel!
    @IBOutlet weak var myLabel2: UILabel!
    
    override func viewDidLoad() {
        //----makes keyboard disappear by tapping anywhere (1of3)----
        super.viewDidLoad()
        
        //Looks for single or multiple taps.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        
        //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
        //tap.cancelsTouchesInView = false
        
        view.addGestureRecognizer(tap)
        //-----------------------------------------------------------
        super.viewDidLoad()
        // -----
        let label = UILabel(frame: CGRect(x:0, y:0, width:10, height:50))
        label.backgroundColor = .white
        label.numberOfLines = 3
        label.font = UIFont(name: "HelveticaNeue", size: 15)
        label.textAlignment = .center
        label.textColor = .black
        label.text = "Hydrodynamic Entry Length (m)\nLaminar or Turbulent Flow"
        self.navigationItem.titleView = label
        // -----
        // ########### SCROLLING (1of2)#########################
        ScrollView.contentSize.height = 2000
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name:NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name:NSNotification.Name.UIKeyboardWillHide, object: nil)
        // ################################################
        // ########### Menu (Tutorial) (3) ###############
        sideMenus()
        customizeNavBar()
        // ##############################################
        //----makes keyboard disappear by tapping anywhere (3of3)----
        dismissKeyboard()
        //-----------------------------------------------------------
        
    }
    
    // ########### SCROLLING (2of2) #########################
    @objc func keyboardWillShow(notification:NSNotification){
        //give room at the bottom of the scroll view, so it doesn't cover up anything the user needs to tap
        var userInfo = notification.userInfo!
        var keyboardFrame:CGRect = (userInfo[UIKeyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
        keyboardFrame = self.view.convert(keyboardFrame, from: nil)
        
        var contentInset:UIEdgeInsets = self.ScrollView.contentInset
        contentInset.bottom = keyboardFrame.size.height
        ScrollView.contentInset = contentInset
    }
    
    @objc func keyboardWillHide(notification:NSNotification){
        let contentInset:UIEdgeInsets = UIEdgeInsets.zero
        ScrollView.contentInset = contentInset
    }
    // ################################################
    
    @IBAction func myButton2(_ sender: Any) {
        //NOTE: When copying and pasting a viewcontroller, I think you need to redo any buttons (eg. the calculate button). Need to control+drag to class
        // buttons must be set to ACTION when you create them AMP 11182017
        
        myLabel1.isHidden = false
        myLabel2.isHidden = false
        
        
        let firstValue = Double(myTextField1.text!) // Density (kg / m^3)
        let secondValue = Double(myTextField2.text!) // Velcoity (m / s)
        let thirdValue = Double(myTextField3.text!) // Diameter (m)
        let fourthValue = Double(myTextField4.text!) // Viscosity (Pa * s)
        
        
        
        
        if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil {
            
            
            let ReynoldsNumber = Double(firstValue! * secondValue! * thirdValue! / fourthValue!) // Reynolds number
            
            
            
            if ReynoldsNumber < 2300 {
                
                let HydrodynamicEntryLength = Double(0.05 * ReynoldsNumber * thirdValue!) //ANSWER laminar flow
                
                myLabel1.text = "Reynolds Number  = \(ReynoldsNumber)"
                myLabel2.text = "Hydrodynamic entry length for laminar flow (Re < 2300) = \(HydrodynamicEntryLength) m"
                
            }else {
                let HydrodynamicEntryLengthConstant1 = Double(pow(ReynoldsNumber, 0.25))
                
                let HydrodynamicEntryLength = Double(1.359 * thirdValue! * HydrodynamicEntryLengthConstant1)//ANSWER turbulent flow
                
                
                myLabel1.text = "Reynolds Number  = \(ReynoldsNumber)"
                myLabel2.text = "Hydrodynamic entry length for turbulent flow (Re > 2300) = \(HydrodynamicEntryLength) m"
            }
            
    
           
            
            
            
            
            self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
            
        }else{
            myLabel1.text = "Hey! Enter a number!"
            myLabel2.text = "Hey! Enter a number!"

            self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
        }
    }
    
    func sideMenus() {
        if revealViewController() != nil{
            
            menuButtonFromPengRob.target = revealViewController()
            menuButtonFromPengRob.action = #selector(SWRevealViewController.revealToggle(_:))
            revealViewController().rearViewRevealWidth = 275
            revealViewController().rightViewRevealWidth = 160
            
            
            logButtonFromPengRob.target = revealViewController()
            logButtonFromPengRob.action = #selector(SWRevealViewController.rightRevealToggle(_:))
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            
        }
    }
    
    // ------- Might be a redundant section (need too look up how to acccess func from a sidifferent class e.g. sideMenus() -------------
    func customizeNavBar() {
        navigationController?.navigationBar.tintColor = .black //UIColor(colorLiteralRed: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        navigationController?.navigationBar.barTintColor = .white //UIColor(colorLiteralRed: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        self.navigationController?.navigationBar.isTranslucent = false // changing to "true", instead of "false" fixed the invisible space under navigation bar. It made the space go away.
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        
    }
    // ------------------------------
    //----makes keyboard disappear by tapping anywhere (2of3)----
    //Calls this function when the tap is recognized.
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    // ------------------------------
    
}


/////////////////////////HEAD LOSS/////////////////////////////////////
///////////////////////////////////////////////////////////////////////
class FluidMechanicsSwameeJainTurbulentHeadLossViewController: UIViewController {
    
    @IBOutlet var ScrollView: UIScrollView!
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // Volumetric Flow Rate (m^3 / s)
    @IBOutlet weak var myTextField2: UITextField! // Length of Pipe (m)
    @IBOutlet weak var myTextField3: UITextField! // Velocity (m / s)
    @IBOutlet weak var myTextField4: UITextField! // Gravity (m / s^2)
    @IBOutlet weak var myTextField5: UITextField! // Effective Surface Roughness (m)
    @IBOutlet weak var myTextField6: UITextField! // Diameter (m)
    
    
    
    
    @IBOutlet weak var myLabel1: UILabel!
    
    override func viewDidLoad() {
        //----makes keyboard disappear by tapping anywhere (1of3)----
        super.viewDidLoad()
        
        //Looks for single or multiple taps.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        
        //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
        //tap.cancelsTouchesInView = false
        
        view.addGestureRecognizer(tap)
        //-----------------------------------------------------------
        super.viewDidLoad()
        // -----
        let label = UILabel(frame: CGRect(x:0, y:0, width:10, height:50))
        label.backgroundColor = .white
        label.numberOfLines = 3
        label.font = UIFont(name: "HelveticaNeue", size: 15)
        label.textAlignment = .center
        label.textColor = .black
        label.text = "Swamee and Jain (Turbulent)\nHead Loss (m)"
        self.navigationItem.titleView = label
        // -----
        // ########### SCROLLING (1of2)#########################
        ScrollView.contentSize.height = 2000
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name:NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name:NSNotification.Name.UIKeyboardWillHide, object: nil)
        // ################################################
        // ########### Menu (Tutorial) (3) ###############
        sideMenus()
        customizeNavBar()
        // ##############################################
        //----makes keyboard disappear by tapping anywhere (3of3)----
        dismissKeyboard()
        //-----------------------------------------------------------
        
    }
    
    // ########### SCROLLING (2of2) #########################
    @objc func keyboardWillShow(notification:NSNotification){
        //give room at the bottom of the scroll view, so it doesn't cover up anything the user needs to tap
        var userInfo = notification.userInfo!
        var keyboardFrame:CGRect = (userInfo[UIKeyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
        keyboardFrame = self.view.convert(keyboardFrame, from: nil)
        
        var contentInset:UIEdgeInsets = self.ScrollView.contentInset
        contentInset.bottom = keyboardFrame.size.height
        ScrollView.contentInset = contentInset
    }
    
    @objc func keyboardWillHide(notification:NSNotification){
        let contentInset:UIEdgeInsets = UIEdgeInsets.zero
        ScrollView.contentInset = contentInset
    }
    // ################################################
    
    @IBAction func myButton2(_ sender: Any) {
        //NOTE: When copying and pasting a viewcontroller, I think you need to redo any buttons (eg. the calculate button). Need to control+drag to class
        // buttons must be set to ACTION when you create them AMP 11182017
        
        myLabel1.isHidden = false
        
        let firstValue = Double(myTextField1.text!) // Volumetric Flow Rate (m^3 / s)
        let secondValue = Double(myTextField2.text!) // Length of Pipe (m)
        let thirdValue = Double(myTextField3.text!) // Velocity (m / s)
        let fourthValue = Double(myTextField4.text!) // Gravity (m / s^2)
        let fifthValue = Double(myTextField5.text!) // Effective Surface Roughness (m)
        let sixthValue = Double(myTextField6.text!) // Diameter (m)
        
        
        
        
        if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil && fifthValue != nil && sixthValue != nil {
            
            
            let HeadLossConstant1 = Double(fifthValue! / 3.7 / sixthValue!)
            let HeadLossConstant2 = Double(thirdValue! * sixthValue! / firstValue!)
            
            let HeadLossConstant3 = Double(pow(HeadLossConstant2, 0.9))
            let HeadLossConstant4 = Double(4.62 * HeadLossConstant3)

            let HeadLossConstant5 = Double(log(HeadLossConstant1 + HeadLossConstant4))
            
            let HeadLossConstant6 = Double(pow(HeadLossConstant5, -2.0))
            
            let HeadLossConstant7 = Double(sixthValue! * sixthValue! * sixthValue! * sixthValue! * sixthValue! * sixthValue!)
            
            let HeadLoss = Double(1.07 * firstValue! * firstValue! * secondValue! * HeadLossConstant6 / fourthValue! / HeadLossConstant7)
            
            
            myLabel1.text = "Head Loss (Turbulent) = \(HeadLoss) m"
            
            self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
            
        }else{
            myLabel1.text = "Hey! Enter a number!"
            
            self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
        }
    }
    
    func sideMenus() {
        if revealViewController() != nil{
            
            menuButtonFromPengRob.target = revealViewController()
            menuButtonFromPengRob.action = #selector(SWRevealViewController.revealToggle(_:))
            revealViewController().rearViewRevealWidth = 275
            revealViewController().rightViewRevealWidth = 160
            
            
            logButtonFromPengRob.target = revealViewController()
            logButtonFromPengRob.action = #selector(SWRevealViewController.rightRevealToggle(_:))
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            
        }
    }
    
    // ------- Might be a redundant section (need too look up how to acccess func from a sidifferent class e.g. sideMenus() -------------
    func customizeNavBar() {
        navigationController?.navigationBar.tintColor = .black //UIColor(colorLiteralRed: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        navigationController?.navigationBar.barTintColor = .white //UIColor(colorLiteralRed: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        self.navigationController?.navigationBar.isTranslucent = false // changing to "true", instead of "false" fixed the invisible space under navigation bar. It made the space go away.
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        
    }
    // ------------------------------
    //----makes keyboard disappear by tapping anywhere (2of3)----
    //Calls this function when the tap is recognized.
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    // ------------------------------
    
}

////////////////////////////END HEAD LOSS/////////////////////////////
//////////////////////////////////////////////////////////////////////


///////////////////IGNORE DEBUGGING SEARCH BAR
//
//class DetailViewController1: UIViewController {
//    
//    @IBOutlet var ScrollView: UIScrollView!
//    
//    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
//    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
//    
//    @IBOutlet weak var myTextField1: UITextField! // Density (kg / m^3)
//    @IBOutlet weak var myTextField2: UITextField! // Velocity (m / s)
//    @IBOutlet weak var myTextField3: UITextField! // Diameter (m)
//    @IBOutlet weak var myTextField4: UITextField! // Viscosity (Pa * s)
//    
//    @IBOutlet weak var myLabel1: UILabel!
//    
//    override func viewDidLoad() {
//        //----makes keyboard disappear by tapping anywhere (1of3)----
//        super.viewDidLoad()
//        
//        //Looks for single or multiple taps.
//        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
//        
//        //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
//        //tap.cancelsTouchesInView = false
//        
//        view.addGestureRecognizer(tap)
//        //-----------------------------------------------------------
//        super.viewDidLoad()
//        // -----
//        let label = UILabel(frame: CGRect(x:0, y:0, width:10, height:50))
//        label.backgroundColor = .white
//        label.numberOfLines = 3
//        label.font = UIFont(name: "HelveticaNeue", size: 15)
//        label.textAlignment = .center
//        label.textColor = .black
//        label.text = "Fanning Friction Factor\n(Dimensionless Units)"
//        self.navigationItem.titleView = label
//        // -----
//        // ########### SCROLLING (1of2)#########################
//        ScrollView.contentSize.height = 2000
//        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name:NSNotification.Name.UIKeyboardWillShow, object: nil)
//        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name:NSNotification.Name.UIKeyboardWillHide, object: nil)
//        // ################################################
//        // ########### Menu (Tutorial) (3) ###############
//        sideMenus()
//        customizeNavBar()
//        // ##############################################
//        //----makes keyboard disappear by tapping anywhere (3of3)----
//        dismissKeyboard()
//        //-----------------------------------------------------------
//        
//    }
//    
//    // ########### SCROLLING (2of2) #########################
//    @objc func keyboardWillShow(notification:NSNotification){
//        //give room at the bottom of the scroll view, so it doesn't cover up anything the user needs to tap
//        var userInfo = notification.userInfo!
//        var keyboardFrame:CGRect = (userInfo[UIKeyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
//        keyboardFrame = self.view.convert(keyboardFrame, from: nil)
//        
//        var contentInset:UIEdgeInsets = self.ScrollView.contentInset
//        contentInset.bottom = keyboardFrame.size.height
//        ScrollView.contentInset = contentInset
//    }
//    
//    @objc func keyboardWillHide(notification:NSNotification){
//        let contentInset:UIEdgeInsets = UIEdgeInsets.zero
//        ScrollView.contentInset = contentInset
//    }
//    // ################################################
//    
//    @IBAction func myButton2(_ sender: Any) {
//        //NOTE: When copying and pasting a viewcontroller, I think you need to redo any buttons (eg. the calculate button). Need to control+drag to class
//        // buttons must be set to ACTION when you create them AMP 11182017
//        
//        myLabel1.isHidden = false
//        
//        let firstValue = Double(myTextField1.text!) // Density (kg / m^3)
//        let secondValue = Double(myTextField2.text!) // Velocity (m / s)
//        let thirdValue = Double(myTextField3.text!) // Diameter (m)
//        let fourthValue = Double(myTextField4.text!) //Viscosity (Pa * s)
//        
//        
//        
//        if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil {
//            
//            
//            let FrictionFactorFanningLaminar = Double(16.0 / (firstValue! * secondValue! * thirdValue! / fourthValue!)) //ANSWER
//            
//            myLabel1.text = "Fanning Friction Factor = \(FrictionFactorFanningLaminar)"
//            
//            self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
//            
//        }else{
//            myLabel1.text = "Hey! Enter a number!"
//            
//            self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
//        }
//    }
//    
//    func sideMenus() {
//        if revealViewController() != nil{
//            
//            menuButtonFromPengRob.target = revealViewController()
//            menuButtonFromPengRob.action = #selector(SWRevealViewController.revealToggle(_:))
//            revealViewController().rearViewRevealWidth = 275
//            revealViewController().rightViewRevealWidth = 160
//            
//            
//            logButtonFromPengRob.target = revealViewController()
//            logButtonFromPengRob.action = #selector(SWRevealViewController.rightRevealToggle(_:))
//            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
//            
//        }
//    }
//    
//    // ------- Might be a redundant section (need too look up how to acccess func from a sidifferent class e.g. sideMenus() -------------
//    func customizeNavBar() {
//        navigationController?.navigationBar.tintColor = .black //UIColor(colorLiteralRed: 0/255, green: 0/255, blue: 0/255, alpha: 1)
//        navigationController?.navigationBar.barTintColor = .white //UIColor(colorLiteralRed: 0/255, green: 0/255, blue: 0/255, alpha: 1)
//        self.navigationController?.navigationBar.isTranslucent = false // changing to "true", instead of "false" fixed the invisible space under navigation bar. It made the space go away.
//        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
//        
//    }
//    // ------------------------------
//    //----makes keyboard disappear by tapping anywhere (2of3)----
//    //Calls this function when the tap is recognized.
//    func dismissKeyboard() {
//        //Causes the view (or one of its embedded text fields) to resign the first responder status.
//        view.endEditing(true)
//    }
//    // ------------------------------
//    
//}

//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//class DetailViewController2: UIViewController {
//
//    @IBOutlet var ScrollView: UIScrollView!
//
//    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
//    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
//
//    @IBOutlet weak var myTextField1: UITextField! // Density (kg / m^3)
//    @IBOutlet weak var myTextField2: UITextField! // Velocity (m / s)
//    @IBOutlet weak var myTextField3: UITextField! // Diameter (m)
//    @IBOutlet weak var myTextField4: UITextField! // Viscosity (Pa * s)
//
//    @IBOutlet weak var myLabel1: UILabel!
//
//    override func viewDidLoad() {
//        //----makes keyboard disappear by tapping anywhere (1of3)----
//        super.viewDidLoad()
//
//        //Looks for single or multiple taps.
//        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
//
//        //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
//        //tap.cancelsTouchesInView = false
//
//        view.addGestureRecognizer(tap)
//        //-----------------------------------------------------------
//        super.viewDidLoad()
//        // -----
//        let label = UILabel(frame: CGRect(x:0, y:0, width:10, height:50))
//        label.backgroundColor = .white
//        label.numberOfLines = 3
//        label.font = UIFont(name: "HelveticaNeue", size: 15)
//        label.textAlignment = .center
//        label.textColor = .black
//        label.text = "Fanning Friction Factor\n(Dimensionless Units)"
//        self.navigationItem.titleView = label
//        // -----
//        // ########### SCROLLING (1of2)#########################
//        ScrollView.contentSize.height = 2000
//        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name:NSNotification.Name.UIKeyboardWillShow, object: nil)
//        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name:NSNotification.Name.UIKeyboardWillHide, object: nil)
//        // ################################################
//        // ########### Menu (Tutorial) (3) ###############
//        sideMenus()
//        customizeNavBar()
//        // ##############################################
//        //----makes keyboard disappear by tapping anywhere (3of3)----
//        dismissKeyboard()
//        //-----------------------------------------------------------
//
//    }
//
//    // ########### SCROLLING (2of2) #########################
//    @objc func keyboardWillShow(notification:NSNotification){
//        //give room at the bottom of the scroll view, so it doesn't cover up anything the user needs to tap
//        var userInfo = notification.userInfo!
//        var keyboardFrame:CGRect = (userInfo[UIKeyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
//        keyboardFrame = self.view.convert(keyboardFrame, from: nil)
//
//        var contentInset:UIEdgeInsets = self.ScrollView.contentInset
//        contentInset.bottom = keyboardFrame.size.height
//        ScrollView.contentInset = contentInset
//    }
//
//    @objc func keyboardWillHide(notification:NSNotification){
//        let contentInset:UIEdgeInsets = UIEdgeInsets.zero
//        ScrollView.contentInset = contentInset
//    }
//    // ################################################
//
//    @IBAction func myButton2(_ sender: Any) {
//        //NOTE: When copying and pasting a viewcontroller, I think you need to redo any buttons (eg. the calculate button). Need to control+drag to class
//        // buttons must be set to ACTION when you create them AMP 11182017
//
//        myLabel1.isHidden = false
//
//        let firstValue = Double(myTextField1.text!) // Density (kg / m^3)
//        let secondValue = Double(myTextField2.text!) // Velocity (m / s)
//        let thirdValue = Double(myTextField3.text!) // Diameter (m)
//        let fourthValue = Double(myTextField4.text!) //Viscosity (Pa * s)
//
//
//
//        if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil {
//
//
//            let FrictionFactorFanningLaminar = Double(16.0 / (firstValue! * secondValue! * thirdValue! / fourthValue!)) //ANSWER
//
//            myLabel1.text = "Fanning Friction Factor = \(FrictionFactorFanningLaminar)"
//
//            self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
//
//        }else{
//            myLabel1.text = "Hey! Enter a number!"
//
//            self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
//        }
//    }
//
//    func sideMenus() {
//        if revealViewController() != nil{
//
//            menuButtonFromPengRob.target = revealViewController()
//            menuButtonFromPengRob.action = #selector(SWRevealViewController.revealToggle(_:))
//            revealViewController().rearViewRevealWidth = 275
//            revealViewController().rightViewRevealWidth = 160
//
//
//            logButtonFromPengRob.target = revealViewController()
//            logButtonFromPengRob.action = #selector(SWRevealViewController.rightRevealToggle(_:))
//            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
//
//        }
//    }
//
//    // ------- Might be a redundant section (need too look up how to acccess func from a sidifferent class e.g. sideMenus() -------------
//    func customizeNavBar() {
//        navigationController?.navigationBar.tintColor = .black //UIColor(colorLiteralRed: 0/255, green: 0/255, blue: 0/255, alpha: 1)
//        navigationController?.navigationBar.barTintColor = .white //UIColor(colorLiteralRed: 0/255, green: 0/255, blue: 0/255, alpha: 1)
//        self.navigationController?.navigationBar.isTranslucent = false // changing to "true", instead of "false" fixed the invisible space under navigation bar. It made the space go away.
//        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
//
//    }
//    // ------------------------------
//    //----makes keyboard disappear by tapping anywhere (2of3)----
//    //Calls this function when the tap is recognized.
//    func dismissKeyboard() {
//        //Causes the view (or one of its embedded text fields) to resign the first responder status.
//        view.endEditing(true)
//    }
//    // ------------------------------
//
//}

//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////

///////////////////END IGNORE DEBUGGING SEARCH BAR

