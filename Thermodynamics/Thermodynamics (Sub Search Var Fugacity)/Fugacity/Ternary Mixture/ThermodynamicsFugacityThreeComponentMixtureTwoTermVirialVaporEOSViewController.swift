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

class ThermodynamicsFugacityThreeComponentMixtureTwoTermVirialVaporEOSViewController: UIViewController {

    
    @IBOutlet var ScrollView: UIScrollView!
    
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // Temperature (K)
    @IBOutlet weak var myTextField2: UITextField! // Pressure (bar)
    @IBOutlet weak var myTextField3: UITextField! // Gas Constant "83.14" (cm^3*bar)/(mol*K)
    
    @IBOutlet weak var myTextField4: UITextField! // Component 1 Mole Fraction
    @IBOutlet weak var myTextField5: UITextField! // Component 1 Critical Temperature (K)
    @IBOutlet weak var myTextField6: UITextField! // Component 1 Critical Pressure (bar)
    @IBOutlet weak var myTextField7: UITextField! // Component 1 Accentric Factor
    @IBOutlet weak var myTextField8: UITextField! // Component 1 Critical Compressibility Factor
    @IBOutlet weak var myTextField9: UITextField! // Component 1 Critical Volume (cm^3/mol)
    @IBOutlet weak var myTextField10: UITextField! // Component 2 Mole Fraction
    @IBOutlet weak var myTextField11: UITextField! // Component 2 Critical Temperature (K)
    @IBOutlet weak var myTextField12: UITextField! // Component 2 Critical Pressure (bar)
    @IBOutlet weak var myTextField13: UITextField! // Component 2 Accentric Factor
    @IBOutlet weak var myTextField14: UITextField! // Component 2 Critical Compressibility Factor
    @IBOutlet weak var myTextField15: UITextField! // Component 2 Critical Volume (cm^3/mol)
    @IBOutlet weak var myTextField16: UITextField! // Component 3 Mole Fraction
    @IBOutlet weak var myTextField17: UITextField! // Component 3 Critical Temperature (K)
    @IBOutlet weak var myTextField18: UITextField! // Component 3 Critical Pressure (bar)
    @IBOutlet weak var myTextField19: UITextField! // Component 3 Accentric Factor
    @IBOutlet weak var myTextField20: UITextField! // Component 3 Critical Compressibility Factor
    @IBOutlet weak var myTextField21: UITextField! // Component 3 Critical Volume (cm^3/mol)
    
    
    
    @IBOutlet weak var myLabel1: UILabel!
    @IBOutlet weak var myLabel2: UILabel!
    @IBOutlet weak var myLabel3: UILabel!
    @IBOutlet weak var myLabel4: UILabel!
    @IBOutlet weak var myLabel5: UILabel!
    @IBOutlet weak var myLabel6: UILabel!

    
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
        label.text = "Pure Component Fugacities \n(Two-Term Virial - Ternary Vapor Mixture)"
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
        let fourthValue = Double(myTextField4.text!) //
        let fifthValue = Double(myTextField5.text!) //
        let sixthValue = Double(myTextField6.text!) //
        let seventhValue = Double(myTextField7.text!) //
        let eighthValue = Double(myTextField8.text!) //
        let ninthValue = Double(myTextField9.text!) //
        let tenthValue = Double(myTextField10.text!) //
        let eleventhValue = Double(myTextField11.text!) //
        let twelvthValue = Double(myTextField12.text!) //
        let thirteenthValue = Double(myTextField13.text!) //
        let fourteenthValue = Double(myTextField14.text!) //
        let fifteenthValue = Double(myTextField15.text!) //
        let sixteenthValue = Double(myTextField16.text!) //
        let seventeenthValue = Double(myTextField17.text!) //
         let eighteenthValue = Double(myTextField18.text!) //
         let nineteenthValue = Double(myTextField19.text!) //
         let twentiethValue = Double(myTextField20.text!) //
         let twentyfirstValue = Double(myTextField21.text!) //
        
        myLabel1.isHidden = false
        myLabel2.isHidden = false
        myLabel3.isHidden = false
        myLabel4.isHidden = false
        myLabel5.isHidden = false
        myLabel6.isHidden = false

        if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil && fifthValue != nil && sixthValue != nil && seventhValue != nil && eighthValue != nil && ninthValue != nil && tenthValue != nil && eleventhValue != nil && twelvthValue != nil && thirteenthValue != nil && fourteenthValue != nil && fifteenthValue != nil && sixteenthValue != nil && seventeenthValue != nil && eighteenthValue != nil && nineteenthValue != nil && twentiethValue != nil && twentyfirstValue != nil  {
            

            //////////////////////////////////////////////////
            ///////////////// F_o_i calculation//////////
            //////////////////////////////////////////////////
            // ================ Component 1 ====================
            let F_o_1 = 0.1445-0.330/(firstValue!/fifthValue!)-0.1385/(pow((firstValue!/fifthValue!),2))-0.0121/(pow((firstValue!/fifthValue!),3))-0.000607/(pow((firstValue!/fifthValue!),8))
            // ================================================
            // ================ Component 2 ====================
            let F_o_2 = 0.1445-0.330/(firstValue!/eleventhValue!)-0.1385/(pow((firstValue!/eleventhValue!),2))-0.0121/(pow((firstValue!/eleventhValue!),3))-0.000607/(pow((firstValue!/eleventhValue!),8))
            // ================================================
            // ================ Component 3 ====================
            let F_o_3 = 0.1445-0.330/(firstValue!/seventeenthValue!)-0.1385/(pow((firstValue!/seventeenthValue!),2))-0.0121/(pow((firstValue!/seventeenthValue!),3))-0.000607/(pow((firstValue!/seventeenthValue!),8))
            // ================================================
            
            print("F_o_1: \(F_o_1)")
            print("F_o_2: \(F_o_2)")
             print("F_o_3: \(F_o_3)")
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            
            //////////////////////////////////////////////////
            ///////////////// F_f_i calculation//////////
            //////////////////////////////////////////////////
            // ================ Component 1 ====================
            let F_f_1 = 0.0637+0.331/(pow((firstValue!/fifthValue!),2))-0.423/(pow((firstValue!/fifthValue!),3))-0.008/(pow((firstValue!/fifthValue!),8))
            // ================================================
            // ================ Component 2 ====================
            let F_f_2 = 0.0637+0.331/(pow((firstValue!/eleventhValue!),2))-0.423/(pow((firstValue!/eleventhValue!),3))-0.008/(pow((firstValue!/eleventhValue!),8))
            // ================================================
            // ================ Component 3 ====================
            let F_f_3 = 0.0637+0.331/(pow((firstValue!/seventeenthValue!),2))-0.423/(pow((firstValue!/seventeenthValue!),3))-0.008/(pow((firstValue!/seventeenthValue!),8))
            // ================================================
            print("F_f_1: \(F_f_1)")
            print("F_f_2: \(F_f_2)")
            print("F_f_3: \(F_f_3)")
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            
            
            //////////////////////////////////////////////////
            ///////////////// F^ or B^ calculation //////////
            //////////////////////////////////////////////////
            
            let F_hat_1 = Double(F_o_1 + seventhValue! * F_f_1)
            let F_hat_2 = Double(F_o_2 + thirteenthValue! * F_f_2)
            let F_hat_3 = Double(F_o_3 + nineteenthValue! * F_f_3)
            print("F_hat_1: \(F_hat_1)")
            print("F_hat_2: \(F_hat_2)")
            print("F_hat_3: \(F_hat_3)")
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            
            //////////////////////////////////////////////////
            ///////////////// F or B calculation //////////
            //////////////////////////////////////////////////
            
            let F_1 = Double(F_hat_1 * thirdValue! * fifthValue! / sixthValue!)
            let F_2 = Double(F_hat_2 * thirdValue! * eleventhValue! / twelvthValue!)
            let F_3 = Double(F_hat_3 * thirdValue! * seventeenthValue! / eighteenthValue!)
            print("F_1: \(F_1)")
            print("F_2: \(F_2)")
            print("F_3: \(F_3)")
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////

            //////////////////////////////////////////////////
            ///////////////// Tc_ij calculation //////////
            //////////////////////////////////////////////////
            let Tc_12 = Double(pow(fifthValue! * eleventhValue!, 0.5))
            let Tc_13 = Double(pow(fifthValue! * seventeenthValue!, 0.5))
            let Tc_23 = Double(pow(eleventhValue! * seventeenthValue!, 0.5))
            print("Tc_12: \(Tc_12)")
            print("Tc_13: \(Tc_13)")
            print("Tc_23: \(Tc_23)")
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            
            //////////////////////////////////////////////////
            ///////////////// Zc_ij calculation //////////
            //////////////////////////////////////////////////
            let Zc_12 = Double((eighthValue! + fourteenthValue!)/2.0)
            let Zc_13 = Double((eighthValue! + twentiethValue!)/2.0)
            let Zc_23 = Double((fourteenthValue! + twentiethValue!)/2.0)
            print("Zc_12: \(Zc_12)")
            print("Zc_13: \(Zc_13)")
            print("Zc_23: \(Zc_23)")
            
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            
            //////////////////////////////////////////////////
            ///////////////// w_ij calculation //////////
            //////////////////////////////////////////////////
            
            let w_12 = Double((seventhValue! + thirteenthValue!)/2.0)
            let w_13 = Double((seventhValue! + nineteenthValue!)/2.0)
            let w_23 = Double((thirteenthValue! + nineteenthValue!)/2.0)
            print("w_12: \(w_12)")
            print("w_13: \(w_13)")
            print("w_23: \(w_23)")
            
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            
            
            //////////////////////////////////////////////////
            ///////////////// Vc_ij calculation //////////
            //////////////////////////////////////////////////
            
            let Vc_constant_1 = Double(pow(ninthValue!, (1.0/3.0)))
            let Vc_constant_2 = Double(pow(fifteenthValue!, (1.0/3.0)))
            let Vc_constant_3 = Double(pow(twentyfirstValue!, (1.0/3.0)))
            print("Vc_constant_1: \(Vc_constant_1)")
            print("Vc_constant_2: \(Vc_constant_2)")
            print("Vc_constant_3: \(Vc_constant_3)")
            let Vc_normal_avg_constant_12 = Double((Vc_constant_1 + Vc_constant_2)/2.0)
            let Vc_normal_avg_constant_13 = Double((Vc_constant_1 + Vc_constant_3)/2.0)
            let Vc_normal_avg_constant_23 = Double((Vc_constant_2 + Vc_constant_3)/2.0)
            print("Vc_normal_avg_constant_12: \(Vc_normal_avg_constant_12)")
            print("Vc_normal_avg_constant_13: \(Vc_normal_avg_constant_13)")
            print("Vc_normal_avg_constant_23: \(Vc_normal_avg_constant_23)")
            let Vc_12 = Double(pow(Vc_normal_avg_constant_12, 3))
            let Vc_13 = Double(pow(Vc_normal_avg_constant_13, 3))
            let Vc_23 = Double(pow(Vc_normal_avg_constant_23, 3))
            print("Vc_12: \(Vc_12)")
            print("Vc_13: \(Vc_13)")
            print("Vc_23: \(Vc_23)")
            
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            
            //////////////////////////////////////////////////
            ///////////////// Pc_ij calculation //////////
            //////////////////////////////////////////////////
            
            let Pc_12 = Double(Zc_12 * thirdValue! * Tc_12 / Vc_12)
            let Pc_13 = Double(Zc_13 * thirdValue! * Tc_13 / Vc_13)
            let Pc_23 = Double(Zc_23 * thirdValue! * Tc_23 / Vc_23)
            print("Pc_12: \(Pc_12)")
            print("Pc_13: \(Pc_13)")
            print("Pc_23: \(Pc_23)")
            
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            
            //////////////////////////////////////////////////
            ///////////////// Tr_ij calculation //////////
            //////////////////////////////////////////////////
            let Tr_12 = Double(pow((firstValue!/fifthValue!)*(firstValue!/eleventhValue!), 0.5))
            let Tr_13 = Double(pow((firstValue!/fifthValue!)*(firstValue!/seventeenthValue!), 0.5))
            let Tr_23 = Double(pow((firstValue!/eleventhValue!)*(firstValue!/seventeenthValue!), 0.5))
            
              print("Tr_12: \(Tr_12)")
              print("Tr_13: \(Tr_13)")
              print("Tr_23: \(Tr_23)")
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            
            //////////////////////////////////////////////////
            ///////////////// F_o_ij calculation//////////
            //////////////////////////////////////////////////
            
            let F_o_12 = 0.1445-0.330/(Tr_12)-0.1385/(pow(Tr_12,2))-0.0121/(pow(Tr_12,3))-0.000607/(pow(Tr_12,8))
       
            let F_o_13 = 0.1445-0.330/(Tr_13)-0.1385/(pow(Tr_13,2))-0.0121/(pow(Tr_13,3))-0.000607/(pow(Tr_13,8))
        
            let F_o_23 = 0.1445-0.330/(Tr_23)-0.1385/(pow(Tr_23,2))-0.0121/(pow(Tr_23,3))-0.000607/(pow(Tr_23,8))
            
            print("F_o_12: \(F_o_12)")
            print("F_o_13: \(F_o_13)")
            print("F_o_23: \(F_o_23)")
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            
            
            //////////////////////////////////////////////////
            ///////////////// F_f_ij calculation///////////////
            //////////////////////////////////////////////////
      
            let F_f_12 = 0.0637+0.331/(pow(Tr_12,2))-0.423/(pow(Tr_12,3))-0.008/(pow(Tr_12,8))

            let F_f_13 = 0.0637+0.331/(pow(Tr_13,2))-0.423/(pow(Tr_13,3))-0.008/(pow(Tr_13,8))
         
            let F_f_23 = 0.0637+0.331/(pow(Tr_23,2))-0.423/(pow(Tr_23,3))-0.008/(pow(Tr_23,8))
            print("F_f_12: \(F_f_12)")
            print("F_f_13: \(F_f_13)")
            print("F_f_23: \(F_f_23)")
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            
            //////////////////////////////////////////////////
            ///////////////// F^_ij calculation //////////////
            //////////////////////////////////////////////////
            
            let F_hat_12 = Double(F_o_12 + w_12 * F_f_12)
            let F_hat_13 = Double(F_o_13 + w_13 * F_f_13)
            let F_hat_23 = Double(F_o_23 + w_23 * F_f_23)
            
            print("F_hat_12: \(F_hat_12)")
            print("F_hat_13: \(F_hat_13)")
            print("F_hat_23: \(F_hat_23)")
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            
            //////////////////////////////////////////////////
            /////////////// F_ij calculation //////////////
            //////////////////////////////////////////////////
            
            let F_12 = Double(F_hat_12 * thirdValue! * Tc_12 / Pc_12)
            let F_13 = Double(F_hat_13 * thirdValue! * Tc_13 / Pc_13)
            let F_23 = Double(F_hat_23 * thirdValue! * Tc_23 / Pc_23)
            
            print("F_12: \(F_12)")
            print("F_13: \(F_13)")
            print("F_23: \(F_23)")
            
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            
            
            //////////////////////////////////////////////////
            /////////////// del_ij calculation //////////////
            //////////////////////////////////////////////////
            
            let del_12 = Double(2.0*F_12-(F_1)-(F_2))
            let del_13 = Double(2.0*F_13-(F_1)-(F_3))
            let del_23 = Double(2.0*F_23-(F_2)-(F_3))
            
            print("del_12: \(del_12)")
            print("del_13: \(del_13)")
            print("del_23: \(del_23)")
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            
           // let natual_log_phi_1 = Double(()*())
            
           
        let fugacity_coefficient_1 = Double(pow(2.718281828,((secondValue!/thirdValue!/firstValue!)*(F_1+tenthValue!*tenthValue!*del_12+sixteenthValue!*sixteenthValue!*del_13+tenthValue!*sixteenthValue!*del_12+tenthValue!*sixteenthValue!*del_13-tenthValue!*sixteenthValue!*del_23))))
            
            
        let fugacity_coefficient_2 = Double(pow(2.718281828, ((secondValue!/thirdValue!/firstValue!)*(F_2+fourthValue!*fourthValue!*del_12+sixteenthValue!*sixteenthValue!*del_23+fourthValue!*sixteenthValue!*del_12+fourthValue!*sixteenthValue!*del_23-fourthValue!*sixteenthValue!*del_13))))
            
            
         let fugacity_coefficient_3 = Double(pow(2.718281828, ((secondValue!/thirdValue!/firstValue!)*(F_3+fourthValue!*fourthValue!*del_13+tenthValue!*tenthValue!*del_23+fourthValue!*tenthValue!*del_13+fourthValue!*tenthValue!*del_23-fourthValue!*tenthValue!*del_12))))
            
            print("fugacity_coefficient_1: \(fugacity_coefficient_1)")
            print("fugacity_coefficient_2: \(fugacity_coefficient_2)")
            print("fugacity_coefficient_3: \(fugacity_coefficient_3)")
            
         let fugacity_1 = Double(fugacity_coefficient_1 * fourthValue! * secondValue!)
         let fugacity_2 = Double(fugacity_coefficient_2 * tenthValue! * secondValue!)
         let fugacity_3 = Double(fugacity_coefficient_3 * sixteenthValue! * secondValue!)
            
            print("fugacity_1: \(fugacity_1)")
            print("fugacity_2: \(fugacity_2)")
            print("fugacity_3: \(fugacity_3)")
            
            // ################################################
            myLabel1.text = "Component 1 \nFugacity Coefficient = \n\(fugacity_coefficient_1)"
            myLabel2.text = "Component 2 \nFugacity Coefficient = \n\(fugacity_coefficient_2)"
            myLabel3.text = "Component 3 \nFugacity Coefficient = \n\(fugacity_coefficient_3)"
            
            myLabel4.text = "Component 1 \nFugacity = \n\(fugacity_1) bar"
            myLabel5.text = "Component 2 \nFugacity = \n\(fugacity_2) bar"
            myLabel6.text = "Component 3 \nFugacity = \n\(fugacity_3) bar"
            

            
            
        }else{
            
            myLabel1.text = "Hey! Enter a number!"
            myLabel2.text = "Hey! Enter a number!"
            myLabel3.text = "Hey! Enter a number!"
            myLabel4.text = "Hey! Enter a number!"
            myLabel5.text = "Hey! Enter a number!"
            myLabel6.text = "Hey! Enter a number!"

            
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
