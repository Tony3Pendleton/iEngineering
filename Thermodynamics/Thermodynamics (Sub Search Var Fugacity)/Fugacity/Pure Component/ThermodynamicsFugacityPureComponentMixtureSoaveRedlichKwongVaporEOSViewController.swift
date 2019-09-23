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

class ThermodynamicsFugacityPureComponentMixtureSoaveRedlichKwongVaporEOSViewController: UIViewController {

    
    
    @IBOutlet var ScrollView: UIScrollView!
    
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // Temperature (K)
    @IBOutlet weak var myTextField2: UITextField! // Pressure (bar)
    @IBOutlet weak var myTextField3: UITextField! // Gas Constant "83.14" (cm^3*bar)/(mol*K)
    
   
    @IBOutlet weak var myTextField5: UITextField! // Component 1 Critical Temperature (K)
    @IBOutlet weak var myTextField6: UITextField! // Component 1 Critical Pressure (bar)
    @IBOutlet weak var myTextField7: UITextField! // Component 1 Accentric Factor
    @IBOutlet weak var myTextField16: UITextField! // Iterative Guess for Compressibility Factor (Normally "1")
    
    
    @IBOutlet weak var myLabel1: UILabel!
    @IBOutlet weak var myLabel2: UILabel!
    
    
    @IBOutlet weak var myLabel5: UILabel!
    
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
        
        let firstValue = Double(myTextField1.text!) // Temperature (K)
        let secondValue = Double(myTextField2.text!) // Pressure (bar)
        let thirdValue = Double(myTextField3.text!) // Gas Constant "83.14" (cm^3*bar)/(mol*K)
       
        let fifthValue = Double(myTextField5.text!) // Component 1 Critical Temperature (K)
        let sixthValue = Double(myTextField6.text!) // Component 1 Critical Pressure (bar)
        let seventhValue = Double(myTextField7.text!) // Component 1 Accentric Factor
        let sixteenthValue = Double(myTextField16.text!) // Iterative Guess for Compressibility Factor (Normally "1")
        
        myLabel1.isHidden = false
        myLabel2.isHidden = false
        
        myLabel5.isHidden = false
        

        
        
        
        if firstValue != nil && secondValue != nil && thirdValue != nil && fifthValue != nil && sixthValue != nil && seventhValue != nil && sixteenthValue != nil  {
            
            let BIGomega = 0.08664
            let psi = 0.42748
            let sigma = 1.0
            let epsilon = 0.0
            
            //////////////////////////////////////////////////
            /////////////////greek alpha_i calculation//////////
            //////////////////////////////////////////////////
            // ================ Component 1 ====================
            let constant1 = Double(pow(seventhValue!, 2))
            let constant2 = Double(0.37464 + 1.54226*seventhValue! - 0.26992*constant1)
            let constant3 = Double(pow((firstValue! / fifthValue!), 0.5))
            let constant4 = Double(1 - constant3)
            let constant5 = Double(constant2 * constant4)
            let constant6 = Double(1 + constant5)
            let alpha_1 = Double(pow(constant6, 2))
            // ================================================
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            
            let beta = Double(BIGomega * (secondValue! / sixthValue!) / (firstValue! / fifthValue!))
            let q = Double(psi * alpha_1 / BIGomega / (firstValue! / fifthValue!))
            
            ///////////////////////////////////////////////////
            
            
            
            ///////////////////////////////////////////////////
            ////////// Z Iteration calculation ////////////////
            ///////////////////////////////////////////////////
            
            // ATTEMPT 1 shivangdave website ~example
            let ziterconstant1 = Double(epsilon * sigma * beta * beta)
            let ziterconstant2 = Double(sigma * beta * beta)
            let ziterconstant3 = Double(epsilon * beta * beta)
            let ziterconstant4 = Double(ziterconstant1 + ziterconstant2 + ziterconstant3)
            let ziterconstant5 = Double(2.0 * beta)
            let ziterconstant6 = Double(sigma * beta)
            let ziterconstant7 = Double(epsilon * beta)
            // let ziterconstant8 = Double(sigma * betaOutputValue + epsilon * betaOutputValue)
            let ziterconstant9 = Double(q * beta)
            
            var rootArray = [Double]()
            var fvalueArray = [Double]()
            var fdvalueArray = [Double]()
            var solved = false
            
            if !solved
            {
                // for i in stride(from: 0.0, to: 1.0, by: 0.000000001)
                for i in 0...10 //not sure exactly why, but "for i in 0...10" yields the same (I think same) as  "for i in 0...200"
                {
                    var firstX = Double(sixteenthValue!) //INITIAL GUESS
                    var baseValue = Double()
                    var derValue = Double()
                    //                        var i = Double()
                    if i == 0
                        
                    {
                        
                        // Peng Rob. vapor and vapor like set to zero
                        baseValue = -firstX + 1.0 + beta - ziterconstant9 * ((firstX - beta) / (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1))
                        
                        // derivative of Peng Rob. vapor and vapor like set to zero
                        derValue = -ziterconstant9 * (-1.0 * firstX * firstX + firstX * ziterconstant5 + ziterconstant4) / (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1) / (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1) - 1.0
                        
                        rootArray.append(firstX)
                        fvalueArray.append(baseValue)
                        fdvalueArray.append(derValue)
                    }
                    else
                    {
                        firstX = rootArray[i-1] - fvalueArray[i-1] / fdvalueArray[i-1]
                        
                        // 2of2         Peng Rob. equation set to zero
                        baseValue = -firstX + 1.0 + beta - ziterconstant9 * ((firstX - beta) / (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1))
                        
                        // derivative of Peng Rob. set to zero
                        derValue = -ziterconstant9 * (-1.0 * firstX * firstX + firstX * ziterconstant5 + ziterconstant4) / (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1) / (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1) - 1.0
                        
                        rootArray.append(firstX)
                        fvalueArray.append(baseValue)
                        fdvalueArray.append(derValue)
                        
                        //print(fdvalueArray)
                        
                        if String(format:"%0.4f",fdvalueArray[i]) == String(format:"%0.4f",fdvalueArray[i-1])
                        {
                            print("solved after \(i)th iteration")
                            
                            
                            print("Root is: \(rootArray[i])")
                            
                            solved = true
                            break
                            
                        }
                        myLabel1.text = "Compressibility Factor = \(rootArray[i])"
                        let CompressibilityFactor = Double(rootArray[i])
                        /////////////
                        
                        let I_vapor = Double((1/(sigma - epsilon)) * log((CompressibilityFactor + sigma * beta)/(CompressibilityFactor + epsilon * beta)))
                        
                        
                        
                        //
                        //                        ///////////////////////////////////////////////////
                        //                        /////////// fugacity coeffs. calculation///////////
                        //                        ///////////////////////////////////////////////////
                        //                        // ================ Component 1 ===================
                        let phi_1 = Double(pow(2.718281828, (CompressibilityFactor-1-log(CompressibilityFactor-beta)-q*I_vapor)))
                        //                        // ================================================
                        
                        //                        ///////////////////////////////////////////////////
                        //                        ///////////////////////////////////////////////////
                        //                        ///////////////////////////////////////////////////
                        
                        //                        ///////////////////////////////////////////////////
                        //                        ////////////// fugacity calculation ///////////////
                        //                        ///////////////////////////////////////////////////
                        // ================ Component 1 ===================
                        let fugacity_1 = Double(phi_1 * 1.0 * secondValue!)
                        // ================================================
                        
                        //
                        
                        
                        myLabel2.text = "Component 1 \nFugacity Coefficient = \n\(phi_1)"
                        
                        
                        myLabel5.text = "Component 1 \nFugacity = \n\(fugacity_1) bar"
                        
                        
                    }
                    
                }
                self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
            }
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            
            ///////////////////////////////////////////////////
            ////////////////// I calculation //////////////////
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            ///////////////////////////////////////////////////
            
            
            
            // ################################################
            
            
            
            
        }else{
            
            myLabel1.text = "Hey! Enter a number!"
            myLabel2.text = "Hey! Enter a number!"
            
            myLabel5.text = "Hey! Enter a number!"
            
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
