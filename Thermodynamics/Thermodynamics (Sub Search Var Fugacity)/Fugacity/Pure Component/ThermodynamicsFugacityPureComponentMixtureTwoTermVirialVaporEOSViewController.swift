//
//  FluidMechanicsTankEvacuationAndFillingViewController.swift
//  CHE Equations
//
//  Created by Anthony on 1/5/18.
//  Copyright © 2018 CHE Equations. All rights reserved.
//

import UIKit


//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////

class ThermodynamicsFugacityPureComponentMixtureTwoTermVirialVaporEOSViewController: UIViewController {

    
    @IBOutlet var ScrollView: UIScrollView!
    
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // Temperature (K)
    @IBOutlet weak var myTextField2: UITextField! // Pressure (bar)
    @IBOutlet weak var myTextField3: UITextField! // Gas Constant "83.14" (cm^3*bar)/(mol*K)
    

    @IBOutlet weak var myTextField5: UITextField! // Component 1 Critical Temperature (K)
    @IBOutlet weak var myTextField6: UITextField! // Component 1 Critical Pressure (bar)
    @IBOutlet weak var myTextField7: UITextField! // Component 1 Accentric Factor
 
    
    
    
    @IBOutlet weak var myLabel1: UILabel!
   
    @IBOutlet weak var myLabel4: UILabel!
    

    
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
        let label = UILabel(frame: CGRect(x:0, y:0, width:10, height:75))
        label.backgroundColor = .white
        label.numberOfLines = 3
        label.font = UIFont(name: "HelveticaNeue", size: 15)
        label.textAlignment = .center
        label.textColor = .black
        label.text = "Pure Component Fugacity \n(Two-Term Virial EoS - Vapor)"
        self.navigationItem.titleView = label
        // -----
        // ########### SCROLLING (1of2)#########################
        ScrollView.contentSize.height = 3000
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name:NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name:NSNotification.Name.UIKeyboardWillHide, object: nil)
        // ################################################
        // ########### Menu (Tutorial) (3) ###############
        sideMenus()
        customizeNavBar()
        // ########### End Menu (Tutorial) (3) ###############
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
    
    //----------
    @IBAction func myButton2(_ sender: Any) {
        //NOTE: When copying and pasting a viewcontroller, I think you need to redo any buttons (eg. the calculate button). Need to control+drag to class
        // buttons must be set to ACTION when you create them AMP 11182017

        let firstValue = Double(myTextField1.text!) //
        let secondValue = Double(myTextField2.text!) //
        let thirdValue = Double(myTextField3.text!) //
      
        let fifthValue = Double(myTextField5.text!) //
        let sixthValue = Double(myTextField6.text!) //
        let seventhValue = Double(myTextField7.text!) //
       
 
 
        myLabel1.isHidden = false
      
        myLabel4.isHidden = false

        if firstValue != nil && secondValue != nil && thirdValue != nil && fifthValue != nil && sixthValue != nil && seventhValue != nil {
            

            //////////////////////////////////////////////////
            ///////////////// F_o_i calculation//////////
            //////////////////////////////////////////////////
            // ================ Component 1 ====================
            let F_o_1 = 0.1445-0.330/(firstValue!/fifthValue!)-0.1385/(pow((firstValue!/fifthValue!),2))-0.0121/(pow((firstValue!/fifthValue!),3))-0.000607/(pow((firstValue!/fifthValue!),8))
            // ================================================
            
            
            print("F_o_1: \(F_o_1)")

            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            
            //////////////////////////////////////////////////
            ///////////////// F_f_i calculation//////////
            //////////////////////////////////////////////////
            // ================ Component 1 ====================
            let F_f_1 = 0.0637+0.331/(pow((firstValue!/fifthValue!),2))-0.423/(pow((firstValue!/fifthValue!),3))-0.008/(pow((firstValue!/fifthValue!),8))
            // ================================================
            
            print("F_f_1: \(F_f_1)")
            
            
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            
            
            //////////////////////////////////////////////////
            ///////////////// F^ or B^ calculation //////////
            //////////////////////////////////////////////////
            
            let F_hat_1 = Double(F_o_1 + seventhValue! * F_f_1)
          
           
            print("F_hat_1: \(F_hat_1)")
            
            
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            
            //////////////////////////////////////////////////
            ///////////////// F or B calculation //////////
            //////////////////////////////////////////////////
            
            let F_1 = Double(F_hat_1 * thirdValue! * fifthValue! / sixthValue!)
          
            
            print("F_1: \(F_1)")
          
            
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////

          
            let CompressibilityFactor = Double(1+F_1*secondValue!/thirdValue!/firstValue!)
          
            

           // let natual_log_phi_1 = Double(()*())
            
           
        let fugacity_coefficient_1 = Double(pow(2.718281828,(F_1*secondValue!/thirdValue!/firstValue!)))
            
            print("fugacity_coefficient_1: \(fugacity_coefficient_1)")
  
         
            
         let fugacity_1 = Double(fugacity_coefficient_1 * 1.0 * secondValue!)
     
            
            print("fugacity_1: \(fugacity_1)")
          
            
            
            // ################################################
            myLabel1.text = "Component 1 \nFugacity Coefficient = \n\(fugacity_coefficient_1)"
         

            
            myLabel4.text = "Component 1 \nFugacity = \n\(fugacity_1) bar"
          
        
            

            
            
        }else{
            
            myLabel1.text = "Hey! Enter a number!"
         
            myLabel4.text = "Hey! Enter a number!"
           

            
            self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
        }
  
            self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
            
    
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
            self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
            
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
    //-----------------------------------------------

}
