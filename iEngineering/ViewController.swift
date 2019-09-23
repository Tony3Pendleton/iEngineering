//
//  ViewController.swift
//  CHE Equations
//
//  Created by Anthony on 11/18/17.
//  Copyright © 2017 CHE Equations. All rights reserved.
//

import UIKit

// -----ignore section below, I was trying to use 'import Cocoa'
// trying this 12142017 1831 to see if it makes the LeeKesler view controller calculation work, I think the natural log function may not be working properly. The calculation and its output works fine but not right answer

//// ########### CollectionView Tutorial #################
var myTableView: UITableView!
////   https://www.youtube.com/watch?v=Coaf3mquHf8 "How to use UICollectionView in Swift 4 || Simple Version"
//let items = ["Thermodynamics"]
//// ###############################################


@IBDesignable class MyButton: UIButton
{
    override func layoutSubviews() {
        super.layoutSubviews()
        
        updateCornerRadius()
    }
    
    @IBInspectable var rounded: Bool = false {
        didSet {
            updateCornerRadius()
        }
    }
    
    func updateCornerRadius() {
        layer.cornerRadius = rounded ? frame.size.height / 2 : 0
    }
}


class SubjectViewController: UIViewController {
//
//

    // ################## Push Segue from Thermodynamics Button to Thermodynamics Table View Controller ############################
    @IBAction func action(_ sender: Any) {
        // performSegue(withIdentifier: "segue", sender: self)
    }
    // ############################################################
    
////////
    
    //override func viewDidLoad() {
      //      super.viewDidLoad()
//        self.navigationController?.isNavigationBarHidden = true // hides navigation item/bar for initial view controller when embedding a  navigation controller see Notes 12/25/2017
    // }
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // -----
        let label = UILabel(frame: CGRect(x:0, y:0, width:10, height:50))
        label.backgroundColor = .white
        label.textAlignment = .center
        label.font = UIFont(name: "HelveticaNeue", size: 15)
        label.text = "Subject Menu (Home)"
        self.navigationItem.titleView = label
        // -----
    }
  
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
     //   // Hide the navigation bar on the this view controller
     //   self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Show the navigation bar on other view controllers
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}


class TransportGeometryMenuViewController: UIViewController {
    //
    //
    
    // ################## Push Segue from Transport Geometry Menu to Fluid Mechanics Table View Controller (Circular Pipe Table View Controller) ############################
    
    
    @IBAction func CircularPipe(_ sender: Any) {
        
    }
    @IBAction func action(_ sender: Any) {
        // performSegue(withIdentifier: "segue", sender: self)
    }
    // ############################################################
    
    ////////
    
    //override func viewDidLoad() {
    //      super.viewDidLoad()
    //        self.navigationController?.isNavigationBarHidden = true // hides navigation item/bar for initial view controller when embedding a  navigation controller see Notes 12/25/2017
    // }
    
    @IBOutlet weak var myNavigationItem: UINavigationItem!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // -----
        self.navigationController?.navigationBar.topItem?.title = ""; //removes default "Back" text on defualt NavigationItem // -----
        let label = UILabel(frame: CGRect(x:0, y:0, width:10, height:50))
        label.textAlignment = .center
        label.font = UIFont(name: "HelveticaNeue", size: 15)
        label.text = "Transport Geometry"
        self.navigationItem.titleView = label
    }
 
    
    
}
// ###############################################


class ViewController: UIViewController {

    
    // ###############################################
   // ########### Menu (Tutorial) (1) ###############
    @IBOutlet weak var menuButton: UIBarButtonItem!
    @IBOutlet weak var alertButton: UIBarButtonItem!
//    @IBOutlet weak var thermodynamicsButton: UIButton!
    
   // ########### end Menu (Tutorial) (1) ##########
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // -----
        let label = UILabel(frame: CGRect(x:0, y:0, width:10, height:50))
        label.backgroundColor = .white
        label.numberOfLines = 3
        label.font = UIFont(name: "HelveticaNeue", size: 15)
        label.textAlignment = .center
        label.textColor = .white
        label.text = "CHE Equations"
        self.navigationItem.titleView = label
        // -----

    // ########### Menu (Tutorial) (3) ###############
    sideMenus()
    customizeNavBar()
    // ########### Menu (Tutorial) (3) ###############
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // ########### Menu (Tutorial) (2) ###############
    
    func sideMenus() {
        if revealViewController() != nil{
        
            menuButton.target = revealViewController()
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            revealViewController().rearViewRevealWidth = 275
            revealViewController().rightViewRevealWidth = 160
            
            
            alertButton.target = revealViewController()
            alertButton.action = #selector(SWRevealViewController.rightRevealToggle(_:))
            
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        
        }
    }
    
    
    func customizeNavBar() {
        navigationController?.navigationBar.tintColor = .black //UIColor(colorLiteralRed: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        navigationController?.navigationBar.barTintColor = .white //UIColor(colorLiteralRed: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        self.navigationController?.navigationBar.isTranslucent = false // changing to "true", instead of "false" fixed the invisible space under navigation bar. It made the space go away.
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
    
    }
    
    // ########### end Menu (Tutorial) (2) ##########
}

//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
class ThermodynamicsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // -----
        
        self.navigationController?.navigationBar.topItem?.title = ""; //removes default "Back" text on defualt NavigationItem
        // -----
        let label = UILabel(frame: CGRect(x:0, y:0, width:10, height:50))
        label.textAlignment = .center
        label.font = UIFont(name: "HelveticaNeue", size: 15)
        label.text = "Thermodynamics"
        self.navigationItem.titleView = label

    }

}

//////////////////////////////////////////////////////////////////////

//class FluidMechanicsTableViewController: UITableViewController {
//    
//    
//    
//    
//    
////    override func viewDidLoad() {
////        super.viewDidLoad()
////        // -----
////        self.navigationController?.navigationBar.topItem?.title = ""; //removes default "Back" text on defualt NavigationItem // -----
////        let label = UILabel(frame: CGRect(x:0, y:0, width:10, height:50))
////        label.textAlignment = .center
////        label.font = UIFont(name: "HelveticaNeue", size: 15)
////        label.text = "Fluid Mechanics"
////        self.navigationItem.titleView = label
////    }
// 
//}


// I DONT THINK THE DIRECTLY BELOW CLASS WORKS AT ALL. I WAS TRYING TO ADD A SECOND LINE OF TEXT TO THE NAVIGATION TITLE
class FluidMechanicsFlowPastASingleSphereTableViewController: UITableViewController {

    @IBOutlet weak var myNavigationItem: UINavigationItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        // -----
        self.navigationController?.navigationBar.topItem?.title = ""; //removes default "Back" text on defualt NavigationItem // -----
        let label = UILabel(frame: CGRect(x:0, y:0, width:10, height:50))
        label.textAlignment = .center
        label.font = UIFont(name: "HelveticaNeue", size: 15)
        label.text = "Fluid Mechanics"
        self.navigationItem.titleView = label
    }

}



//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////

class SecondViewController: UIViewController {
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // reduced temperature
    @IBOutlet weak var myTextField2: UITextField! // reduced pressure
    @IBOutlet weak var myTextField3: UITextField! // accentric factor
    
    @IBOutlet weak var myLabel1: UILabel!
    @IBOutlet weak var myLabel2: UILabel!
    @IBOutlet weak var myLabel3: UILabel!
    @IBOutlet weak var myLabel4: UILabel!
    @IBOutlet weak var myLabel5: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        // ------------
        let label = UILabel(frame: CGRect(x:0, y:0, width:10, height:50))
        label.numberOfLines = 3
        label.backgroundColor = .white
        label.textAlignment = .center
        label.font = UIFont(name: "HelveticaNeue", size: 15)
        label.text = "Peng-Robinson EoS\n(Vapor and Vapor-Like)"
        self.navigationItem.titleView = label
        // ------------
    //  self.title = "Peng-Robinson EoS Vapor|Vapor-Like"
        
        
        //        myLabel1.isHidden = true
        //        myLabel2.isHidden = true
        //        myLabel3.isHidden = true
        //        myLabel4.isHidden = true
        //        myLabel5.text = "Peng-Robinson \n (VaporandVapor-Like)"
        // Do any additional setup after loading the view, typically from a nib.
        
        // ########### Menu (Tutorial) (3) ###############
        sideMenus()
        customizeNavBar()
        // ########### Menu (Tutorial) (3) ###############
        
        
    }
    

    
    @IBAction func myButton1(_ sender: Any) {
        // buttons must be set to ACTION when you create them AMP 11182017
    
        myLabel1.isHidden = false
        myLabel2.isHidden = false
        myLabel3.isHidden = false
        myLabel4.isHidden = false
        let firstValue = Double(myTextField1.text!) // reduced temperature
        let secondValue = Double(myTextField2.text!) // reduced pressure
        let thirdValue = Double(myTextField3.text!) // accentric factor

        
        let BIGomega = 0.07780
        let psi = 0.45724
        let sigma = 2.414213562373095
        let epsilon = -0.41421356237
        
        
        
        if firstValue != nil && secondValue != nil && thirdValue != nil {
            
            /////////////////alpha calculation//////////
            let constant14 = Double(pow(thirdValue!, 2))
            let constant15 = Double(0.37464 + 1.54226*thirdValue! - 0.26992*constant14)
            let constant16 = Double(pow(firstValue!, 0.5))
            let constant17 = Double(1 - constant16)
            let constant18 = Double(constant15 * constant17)
            let constant19 = Double(1 + constant18)
            let alphaOutputValue = Double(pow(constant19, 2))
            ////////////////end alpha calculation//////////
            /////////////////beta calculation//////////
            let betaOutputValue = Double(BIGomega * secondValue! / firstValue!)
            ////////////////end beta calculation//////////
            /////////////////q calculation//////////
            let qOutputValue = Double(psi * alphaOutputValue / BIGomega / firstValue!)
            ////////////////end q calculation//////////
            //////////////Z iteration/calculation//////
            
            // ATTEMPT 1 shivangdave website ~example
            let ziterconstant1 = Double(epsilon * sigma * betaOutputValue * betaOutputValue)
            let ziterconstant2 = Double(sigma * betaOutputValue * betaOutputValue)
            let ziterconstant3 = Double(epsilon * betaOutputValue * betaOutputValue)
            let ziterconstant4 = Double(ziterconstant1 + ziterconstant2 + ziterconstant3)
            let ziterconstant5 = Double(2.0 * betaOutputValue)
            let ziterconstant6 = Double(sigma * betaOutputValue)
            let ziterconstant7 = Double(epsilon * betaOutputValue)
            // let ziterconstant8 = Double(sigma * betaOutputValue + epsilon * betaOutputValue)
            let ziterconstant9 = Double(qOutputValue * betaOutputValue)
            
    
          //  let x = 1.0
          //  let x1 = x
            
            
            // Peng Rob. equation set to zero
            //      let ziterFunction = Double(-x + 1.0 + betaOutputValue - ziterconstant9 * ((x - betaOutputValue) / (x * x + x * ziterconstant6 + x * ziterconstant7 + ziterconstant1)))
            
            
            // derivative of Peng Rob. set to zero
            //        let ziterPrimeFunction = Double(-ziterconstant9 * (-1.0 * x * x + x * ziterconstant5 + ziterconstant4) / (x * x + x * ziterconstant6 + x * ziterconstant7 + ziterconstant1) / (x * x + x * ziterconstant6 + x * ziterconstant7 + ziterconstant1) - 1.0)
            // ===================================
            //            import UIKit
            //
            //            var a = Double()
            //            var b = Double()
            //            var c = Double()
            //            var d = Double()
            
            //            func calc(a:Double,b:Double,c:Double,d:Double)
            //            {
            // func calc() {
            var rootArray = [Double]()
            var fvalueArray = [Double]()
            var fdvalueArray = [Double]()
            var solved = false
            
            if !solved
            {
                // for i in stride(from: 0.0, to: 1.0, by: 0.000000001)
                for i in 0...10 //not sure exactly why, but "for i in 0...10" yields the same (I think same) as  "for i in 0...200"
                {
                    var firstX = Double(1) //INITIAL GUESS
                    var baseValue = Double()
                    var derValue = Double()
                    //                        var i = Double()
                    if i == 0
                      
                    {
                        
                        // Peng Rob. vapor and vapor like set to zero
                        baseValue = -firstX + 1.0 + betaOutputValue - ziterconstant9 * ((firstX - betaOutputValue) / (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1))
                        
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
                        baseValue = -firstX + 1.0 + betaOutputValue - ziterconstant9 * ((firstX - betaOutputValue) / (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1))
                        
                        // derivative of Peng Rob. set to zero
                        derValue = -ziterconstant9 * (-1.0 * firstX * firstX + firstX * ziterconstant5 + ziterconstant4) / (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1) / (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1) - 1.0
                        
                        rootArray.append(firstX)
                        fvalueArray.append(baseValue)
                        fdvalueArray.append(derValue)
                        
                        //print(fdvalueArray)
                        
                        //                                if Double(format:"%0.4f",fdvalueArray[i]) == Double(format:"%0.4f",fdvalueArray[i-1])
                        //I changed 0.4f to 0.9f in the code below, not sure exactly what it does. I thought it changed the amount of decimal places
                        
                        if String(format:"%0.4f",fdvalueArray[i]) == String(format:"%0.4f",fdvalueArray[i-1])
                        {
                            print("solved after \(i)th iteration")
                            
                            
                            print("Root is: \(rootArray[i])")
                            //                              calc()
                            //                                var zOutputValue = rootArray[i]
                            solved = true
                            break
                            
                        }
                        myLabel4.text = "Compressibility Factor = \(rootArray[i])"
                        
                    }
                    
                }
                self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
            }
            
            // ################################################
            
            myLabel1.text = "α = \(alphaOutputValue)"
            myLabel2.text = "β = \(betaOutputValue)"
            myLabel3.text = "q = \(qOutputValue)"
            
        }else{
            myLabel1.text = "Hey! Enter a number!"
            myLabel2.text = "Hey! Enter a number!"
            myLabel3.text = "Hey! Enter a number!"
            myLabel4.text = "Hey! Enter a number!"
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
    
    // ------- Might be a edundant section (need too look up how to acccess func from a sidifferent class e.g. sideMenus() -------------
    func customizeNavBar() {
        navigationController?.navigationBar.tintColor = .black //UIColor(colorLiteralRed: 0/255, green: 0/255, blue: 0/255, alpha: 1) Note, tintColor for navigation bar changes the back symbol button ~
        navigationController?.navigationBar.barTintColor = .white //UIColor(colorLiteralRed: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        self.navigationController?.navigationBar.isTranslucent = false // changing to "true", instead of "false" fixed the invisible space under navigation bar. It made the space go away.
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        
    }
    // ------------------------------

}
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // reduced temperature
    @IBOutlet weak var myTextField2: UITextField! // reduced pressure
    @IBOutlet weak var myTextField3: UITextField! // accentric factor
 
    @IBOutlet weak var myLabel1: UILabel!
    @IBOutlet weak var myLabel2: UILabel!
    @IBOutlet weak var myLabel3: UILabel!
    @IBOutlet weak var myLabel4: UILabel!
    @IBOutlet weak var myLabel5: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        // ------------
        let label = UILabel(frame: CGRect(x:0, y:0, width:10, height:50))
        label.numberOfLines = 3
        label.backgroundColor = .white
        label.textAlignment = .center
        label.font = UIFont(name: "HelveticaNeue", size: 15)
        label.text = "Peng-Robinson EoS\n(Liquid and Liquid-Like)"
        self.navigationItem.titleView = label
        // ------------
        //  self.title = "Peng-Robinson EoS Vapor and Vapor-Like"
        
        
        //        myLabel1.isHidden = true
        //        myLabel2.isHidden = true
        //        myLabel3.isHidden = true
        //        myLabel4.isHidden = true
        //        myLabel5.text = "Peng-Robinson \n (Vapor and Vapor-Like)"
        // Do any additional setup after loading the view, typically from a nib.
        
        // ########### Menu (Tutorial) (3) ###############
        sideMenus()
       // customizeNavBar()
        // ########### Menu (Tutorial) (3) ###############
        
        
    }
    

    @IBAction func myButton2(_ sender: Any) {
        //NOTE: When copying and pasting a viewcontroller, I think you need to redo any buttons (eg. the calculate button). Need to control+drag to class
        // buttons must be set to ACTION when you create them AMP 11182017
        
        myLabel1.isHidden = false
        myLabel2.isHidden = false
        myLabel3.isHidden = false
        myLabel4.isHidden = false
        let firstValue = Double(myTextField1.text!) // reduced temperature
        let secondValue = Double(myTextField2.text!) // reduced pressure
        let thirdValue = Double(myTextField3.text!) // accentric factor
     
        
        let BIGomega = 0.07780
        let psi = 0.45724
        let sigma = 2.414213562373095
        let epsilon = -0.41421356237
        
        
        
        if firstValue != nil && secondValue != nil && thirdValue != nil {
            
            /////////////////alpha calculation//////////
            let constant14 = Double(pow(thirdValue!, 2))
            let constant15 = Double(0.37464 + 1.54226*thirdValue! - 0.26992*constant14)
            let constant16 = Double(pow(firstValue!, 0.5))
            let constant17 = Double(1 - constant16)
            let constant18 = Double(constant15 * constant17)
            let constant19 = Double(1 + constant18)
            let alphaOutputValue = Double(pow(constant19, 2))
            ////////////////end alpha calculation//////////
            /////////////////beta calculation//////////
            let betaOutputValue = Double(BIGomega * secondValue! / firstValue!)
            ////////////////end beta calculation//////////
            /////////////////q calculation//////////
            let qOutputValue = Double(psi * alphaOutputValue / BIGomega / firstValue!)
            ////////////////end q calculation//////////
            //////////////Z iteration/calculation//////
            
            // ATTEMPT 1 shivangdave website ~example
            let ziterconstant1 = Double(epsilon * sigma * betaOutputValue * betaOutputValue)
            let ziterconstant2 = Double(sigma * betaOutputValue * betaOutputValue)
            let ziterconstant3 = Double(epsilon * betaOutputValue * betaOutputValue)
            let ziterconstant4 = Double(ziterconstant1 + ziterconstant2 + ziterconstant3)
            let ziterconstant5 = Double(2.0 * betaOutputValue)
            let ziterconstant6 = Double(sigma * betaOutputValue)
            let ziterconstant7 = Double(epsilon * betaOutputValue)
            // let ziterconstant8 = Double(sigma * betaOutputValue + epsilon * betaOutputValue)
            let ziterconstant9 = Double(qOutputValue * betaOutputValue)
            //----
            let ziterconstant10 = Double(betaOutputValue + 1 - ziterconstant6 - 2 * ziterconstant7 + 1 - ziterconstant6)
            let ziterconstant11 = Double(ziterconstant2 + ziterconstant6 + ziterconstant7 + ziterconstant3)
            //----
            //initial guess (included in code)
            
        //    let firstX = Double(0.07780 * secondValue! / firstValue!)
            //   let x1 = x
            
        
            var rootArray = [Double]()
            var fvalueArray = [Double]()
            var fdvalueArray = [Double]()
            var solved = false
            
            if !solved
            {
                // for i in stride(from: 0.0, to: 1.0, by: 0.000000001)
                for i in 0...10 //not sure exactly why, but "for i in 0...10" yields the same (I think same) as  "for i in 0...200"
                {
                    var firstX = Double(0.07780 * secondValue! / firstValue!) //INITIAL GUESS
                    var baseValue = Double()
                    var derValue = Double()
                    //                        var i = Double()
                    if i == 0
                        //if i == 0
                    {
                     
                        
                        //Peng Rob. liquid and liquid-like base equation set to zero
                        baseValue = betaOutputValue + (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1) * ((1 + betaOutputValue - firstX) / ziterconstant9) - firstX
                        
                        //Derivative of Peng Rob. liquid and liquid-like equation set to zero
                        derValue = (1 / ziterconstant9) * (-3 * firstX * firstX + firstX * ziterconstant10 + ziterconstant11) - 1
                        
                        rootArray.append(firstX)
                        fvalueArray.append(baseValue)
                        fdvalueArray.append(derValue)
                    }
                    else
                    {
                        firstX = rootArray[i-1] - fvalueArray[i-1] / fdvalueArray[i-1]
                        
                        // 2of2         Peng Rob. equation set to zero
                        baseValue = -firstX + 1.0 + betaOutputValue - ziterconstant9 * ((firstX - betaOutputValue) / (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1))
                        
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
                        myLabel4.text = "Compressibility Factor = \(rootArray[i])"
                    }
                    
                }
                self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
            }

            
            // ################################################
            
            myLabel1.text = "α = \(alphaOutputValue)"
            myLabel2.text = "β = \(betaOutputValue)"
            myLabel3.text = "q = \(qOutputValue)"
         //   myLabel4.text = "Your Z value is: \(zOutputValue)"
            
        }else{
            myLabel1.text = "Hey! Enter a number!"
            myLabel2.text = "Hey! Enter a number!"
            myLabel3.text = "Hey! Enter a number!"
            myLabel4.text = "Hey! Enter a number!"
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
//    func customizeNavBar() {
//        navigationController?.navigationBar.tintColor = .black //UIColor(colorLiteralRed: 0/255, green: 0/255, blue: 0/255, alpha: 1)
//        navigationController?.navigationBar.barTintColor = .white //UIColor(colorLiteralRed: 0/255, green: 0/255, blue: 0/255, alpha: 1)
//        self.navigationController?.navigationBar.isTranslucent = false // changing to "true", instead of "false" fixed the invisible space under navigation bar. It made the space go away.
//        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
//
//    }
    // ------------------------------
    
    
    
}

//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////


class FourthViewController: UIViewController {
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // reduced temperature
    @IBOutlet weak var myTextField2: UITextField! // reduced pressure
    @IBOutlet weak var myTextField3: UITextField! // accentric factor

    @IBOutlet weak var myLabel1: UILabel!
    @IBOutlet weak var myLabel2: UILabel!
    @IBOutlet weak var myLabel3: UILabel!
    @IBOutlet weak var myLabel4: UILabel!
    @IBOutlet weak var myLabel5: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        // ------------
        let label = UILabel(frame: CGRect(x:0, y:0, width:10, height:50))
        label.numberOfLines = 3
        label.backgroundColor = .white
        label.textAlignment = .center
        label.font = UIFont(name: "HelveticaNeue", size: 15)
        label.text = "SRK EoS\n(Vapor and Vapor-Like)"
        self.navigationItem.titleView = label
        // ------------

        
        // ########### Menu (Tutorial) (3) ###############
        sideMenus()
        customizeNavBar()
        // ########### Menu (Tutorial) (3) ###############
        
        
    }
    
    @IBAction func myButton1(_ sender: Any) {
        // buttons must be set to ACTION when you create them AMP 11182017
        
        myLabel1.isHidden = false
        myLabel2.isHidden = false
        myLabel3.isHidden = false
        myLabel4.isHidden = false
        let firstValue = Double(myTextField1.text!) // reduced temperature
        let secondValue = Double(myTextField2.text!) // reduced pressure
        let thirdValue = Double(myTextField3.text!) // accentric factor
      
        
        let BIGomega = 0.08664
        let psi = 0.42748
        let sigma = 1.0
        let epsilon = 0.0
        
        
        
        if firstValue != nil && secondValue != nil && thirdValue != nil {
            
            /////////////////alpha calculation//////////
            let constant14 = Double(pow(thirdValue!, 2))
            let constant15 = Double(0.480 + 1.574*thirdValue! - 0.176*constant14)
            let constant16 = Double(pow(firstValue!, 0.5))
            let constant17 = Double(1 - constant16)
            let constant18 = Double(constant15 * constant17)
            let constant19 = Double(1 + constant18)
            let alphaOutputValue = Double(pow(constant19, 2))
            ////////////////end alpha calculation//////////
            /////////////////beta calculation//////////
            let betaOutputValue = Double(BIGomega * secondValue! / firstValue!)
            ////////////////end beta calculation//////////
            /////////////////q calculation//////////
            let qOutputValue = Double(psi * alphaOutputValue / BIGomega / firstValue!)
            ////////////////end q calculation//////////
            //////////////Z iteration/calculation//////
            
            // ATTEMPT 1 shivangdave website ~example
            let ziterconstant1 = Double(epsilon * sigma * betaOutputValue * betaOutputValue)
            let ziterconstant2 = Double(sigma * betaOutputValue * betaOutputValue)
            let ziterconstant3 = Double(epsilon * betaOutputValue * betaOutputValue)
            let ziterconstant4 = Double(ziterconstant1 + ziterconstant2 + ziterconstant3)
            let ziterconstant5 = Double(2.0 * betaOutputValue)
            let ziterconstant6 = Double(sigma * betaOutputValue)
            let ziterconstant7 = Double(epsilon * betaOutputValue)
            // let ziterconstant8 = Double(sigma * betaOutputValue + epsilon * betaOutputValue)
            let ziterconstant9 = Double(qOutputValue * betaOutputValue)
            
            
           // let x = 1.0
           // let x1 = x
            
            var rootArray = [Double]()
            var fvalueArray = [Double]()
            var fdvalueArray = [Double]()
            var solved = false
            
            if !solved
            {
                // for i in stride(from: 0.0, to: 1.0, by: 0.000000001)
                for i in 0...10 //not sure exactly why, but "for i in 0...10" yields the same (I think same) as  "for i in 0...200"
                {
                    var firstX = Double(1) //INITIAL GUESS
                    var baseValue = Double()
                    var derValue = Double()
                    //                        var i = Double()
                    if i == 0
                        
                    {
                        
                        // EoS vapor and vapor like set to zero
                        baseValue = -firstX + 1.0 + betaOutputValue - ziterconstant9 * ((firstX - betaOutputValue) / (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1))
                        
                         // derivative of above
                        derValue = -ziterconstant9 * (-1.0 * firstX * firstX + firstX * ziterconstant5 + ziterconstant4) / (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1) / (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1) - 1.0
                        
                        rootArray.append(firstX)
                        fvalueArray.append(baseValue)
                        fdvalueArray.append(derValue)
                    }
                    else
                    {
                        firstX = rootArray[i-1] - fvalueArray[i-1] / fdvalueArray[i-1]
                        
                        // 2of2         Peng Rob. equation set to zero
                        baseValue = -firstX + 1.0 + betaOutputValue - ziterconstant9 * ((firstX - betaOutputValue) / (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1))
                        
                        // derivative of Peng Rob. set to zero
                        derValue = -ziterconstant9 * (-1.0 * firstX * firstX + firstX * ziterconstant5 + ziterconstant4) / (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1) / (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1) - 1.0
                        
                        rootArray.append(firstX)
                        fvalueArray.append(baseValue)
                        fdvalueArray.append(derValue)
                        
                        //print(fdvalueArray)
                        
                        //                                if Double(format:"%0.4f",fdvalueArray[i]) == Double(format:"%0.4f",fdvalueArray[i-1])
                        //I changed 0.4f to 0.9f in the code below, not sure exactly what it does. I thought it changed the amount of decimal places
                        
                        if String(format:"%0.4f",fdvalueArray[i]) == String(format:"%0.4f",fdvalueArray[i-1])
                        {
                            print("solved after \(i)th iteration")
                            
                            
                            print("Root is: \(rootArray[i])")
                            //                              calc()
                            //                                var zOutputValue = rootArray[i]
                            solved = true
                            break
                            
                        }
                        myLabel4.text = "Compressibility Factor = \(rootArray[i])"
                    }
                    
                }
                self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
            }
            
            // ################################################
            
            myLabel1.text = "α = \(alphaOutputValue)"
            myLabel2.text = "β = \(betaOutputValue)"
            myLabel3.text = "q = \(qOutputValue)"
            
        }else{
            myLabel1.text = "Hey! Enter a number!"
            myLabel2.text = "Hey! Enter a number!"
            myLabel3.text = "Hey! Enter a number!"
            myLabel4.text = "Hey! Enter a number!"
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
    
    // ------- Might be a edundant section (need too look up how to acccess func from a sidifferent class e.g. sideMenus() -------------
    func customizeNavBar() {
        navigationController?.navigationBar.tintColor = .black //UIColor(colorLiteralRed: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        navigationController?.navigationBar.barTintColor = .white //UIColor(colorLiteralRed: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        self.navigationController?.navigationBar.isTranslucent = false // changing to "true", instead of "false" fixed the invisible space under navigation bar. It made the space go away.
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        
    }
    // ------------------------------
    
}

//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////

class FifthViewController: UIViewController {
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // reduced temperature
    @IBOutlet weak var myTextField2: UITextField! // reduced pressure
    @IBOutlet weak var myTextField3: UITextField! // accentric factor
    
    @IBOutlet weak var myLabel1: UILabel!
    @IBOutlet weak var myLabel2: UILabel!
    @IBOutlet weak var myLabel3: UILabel!
    @IBOutlet weak var myLabel4: UILabel!
    @IBOutlet weak var myLabel5: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // -----
        let label = UILabel(frame: CGRect(x:0, y:0, width:10, height:50))
        label.backgroundColor = .white
        label.numberOfLines = 3
        label.font = UIFont(name: "HelveticaNeue", size: 15)
        label.textAlignment = .center
        label.textColor = .black
        label.text = "SRK EoS\n(Liquid and Liquid-Like)"
        self.navigationItem.titleView = label
        // -----
  
       
        
        // ########### Menu (Tutorial) (3) ###############
        sideMenus()
        customizeNavBar()
        // ########### Menu (Tutorial) (3) ###############
        
        
    }
    
    
    @IBAction func myButton2(_ sender: Any) {
        //NOTE: When copying and pasting a viewcontroller, I think you need to redo any buttons (eg. the calculate button). Need to control+drag to class
        // buttons must be set to ACTION when you create them AMP 11182017
        
        myLabel1.isHidden = false
        myLabel2.isHidden = false
        myLabel3.isHidden = false
        myLabel4.isHidden = false
        let firstValue = Double(myTextField1.text!) // reduced temperature
        let secondValue = Double(myTextField2.text!) // reduced pressure
        let thirdValue = Double(myTextField3.text!) // accentric factor
      
        
        let BIGomega = 0.08664
        let psi = 0.42748
        let sigma = 1.0
        let epsilon = 0.0
        
        
        
        if firstValue != nil && secondValue != nil && thirdValue != nil {
            
            /////////////////alpha calculation//////////
            let constant14 = Double(pow(thirdValue!, 2))
            let constant15 = Double(0.480 + 1.574*thirdValue! - 0.176*constant14)
            let constant16 = Double(pow(firstValue!, 0.5))
            let constant17 = Double(1 - constant16)
            let constant18 = Double(constant15 * constant17)
            let constant19 = Double(1 + constant18)
            let alphaOutputValue = Double(pow(constant19, 2))
            ////////////////end alpha calculation//////////
            /////////////////beta calculation//////////
            let betaOutputValue = Double(BIGomega * secondValue! / firstValue!)
            ////////////////end beta calculation//////////
            /////////////////q calculation//////////
            let qOutputValue = Double(psi * alphaOutputValue / BIGomega / firstValue!)
            ////////////////end q calculation//////////
            //////////////Z iteration/calculation//////
            
            // ATTEMPT 1 shivangdave website ~example
            let ziterconstant1 = Double(epsilon * sigma * betaOutputValue * betaOutputValue)
            let ziterconstant2 = Double(sigma * betaOutputValue * betaOutputValue)
            let ziterconstant3 = Double(epsilon * betaOutputValue * betaOutputValue)
            let ziterconstant4 = Double(ziterconstant1 + ziterconstant2 + ziterconstant3)
            let ziterconstant5 = Double(2.0 * betaOutputValue)
            let ziterconstant6 = Double(sigma * betaOutputValue)
            let ziterconstant7 = Double(epsilon * betaOutputValue)
            // let ziterconstant8 = Double(sigma * betaOutputValue + epsilon * betaOutputValue)
            let ziterconstant9 = Double(qOutputValue * betaOutputValue)
            //----
            let ziterconstant10 = Double(betaOutputValue + 1 - ziterconstant6 - 2 * ziterconstant7 + 1 - ziterconstant6)
            let ziterconstant11 = Double(ziterconstant2 + ziterconstant6 + ziterconstant7 + ziterconstant3)
            //----
            //initial guess (included in code)
            
            // let firstX = Double(0.07780 * secondValue! / firstValue!)
            //   let x1 = x
            
            
            var rootArray = [Double]()
            var fvalueArray = [Double]()
            var fdvalueArray = [Double]()
            var solved = false
            
            if !solved
            {
                // for i in stride(from: 0.0, to: 1.0, by: 0.000000001)
                for i in 0...10 //not sure exactly why, but "for i in 0...10" yields the same (I think same) as  "for i in 0...200"
                {
                    var firstX = Double(0.07780 * secondValue! / firstValue!) //INITIAL GUESS
                    var baseValue = Double()
                    var derValue = Double()
                    //                        var i = Double()
                    if i == 0
                        //if i == 0
                    {
                        
                        
                          // EoS Liquid and Liquid Like
                        baseValue = betaOutputValue + (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1) * ((1 + betaOutputValue - firstX) / ziterconstant9) - firstX
                        
                          // derivative of above
                        derValue = (1 / ziterconstant9) * (-3 * firstX * firstX + firstX * ziterconstant10 + ziterconstant11) - 1
                        
                        rootArray.append(firstX)
                        fvalueArray.append(baseValue)
                        fdvalueArray.append(derValue)
                    }
                    else
                    {
                        firstX = rootArray[i-1] - fvalueArray[i-1] / fdvalueArray[i-1]
                        
                        // EoS Liquid and Liquid Like
                        baseValue = -firstX + 1.0 + betaOutputValue - ziterconstant9 * ((firstX - betaOutputValue) / (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1))
                        
                        // derivative of above
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
                        myLabel4.text = "Compressibility Factor = \(rootArray[i])"
                    }
                    
                }
                self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
            }
            
            
            // ################################################
            
            myLabel1.text = "α = \(alphaOutputValue)"
            myLabel2.text = "β = \(betaOutputValue)"
            myLabel3.text = "q = \(qOutputValue)"
            //   myLabel4.text = "Your Z value is: \(zOutputValue)"
            
        }else{
            myLabel1.text = "Hey! Enter a number!"
            myLabel2.text = "Hey! Enter a number!"
            myLabel3.text = "Hey! Enter a number!"
            myLabel4.text = "Hey! Enter a number!"
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
    
}

//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////

///////////////////  Redlich-Kwong ////////////////////////////////////
class SixthViewController: UIViewController {
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // reduced temperature
    @IBOutlet weak var myTextField2: UITextField! // reduced pressure
    @IBOutlet weak var myTextField3: UITextField! // accentric factor
    
    @IBOutlet weak var myLabel1: UILabel!
    @IBOutlet weak var myLabel2: UILabel!
    @IBOutlet weak var myLabel3: UILabel!
    @IBOutlet weak var myLabel4: UILabel!
    @IBOutlet weak var myLabel5: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // -----
        let label = UILabel(frame: CGRect(x:0, y:0, width:10, height:50))
        label.backgroundColor = .white
        label.numberOfLines = 3
        label.font = UIFont(name: "HelveticaNeue", size: 15)
        label.textAlignment = .center
        label.textColor = .black
        label.text = "RK EoS\n(Vapor and Vapor-Like)"
        self.navigationItem.titleView = label
        // -----
        
        
        // ########### Menu (Tutorial) (3) ###############
        sideMenus()
        customizeNavBar()
        // ########### Menu (Tutorial) (3) ###############
        
        
    }
    
    @IBAction func myButton1(_ sender: Any) {
        // buttons must be set to ACTION when you create them AMP 11182017
        
        myLabel1.isHidden = false
        myLabel2.isHidden = false
        myLabel3.isHidden = false
        myLabel4.isHidden = false
        let firstValue = Double(myTextField1.text!) // reduced temperature
        let secondValue = Double(myTextField2.text!) // reduced pressure
        let thirdValue = Double(myTextField3.text!) // accentric factor
       
        
        let BIGomega = 0.08664
        let psi = 0.42748
        let sigma = 1.0
        let epsilon = 0.0
        
        
        
        if firstValue != nil && secondValue != nil && thirdValue != nil {
            
            /////////////////alpha calculation//////////
            let alphaOutputValue = Double(pow(firstValue!, -0.5))
            ////////////////end alpha calculation//////////
            /////////////////beta calculation//////////
            let betaOutputValue = Double(BIGomega * secondValue! / firstValue!)
            ////////////////end beta calculation//////////
            /////////////////q calculation//////////
            let qOutputValue = Double(psi * alphaOutputValue / BIGomega / firstValue! )
            ////////////////end q calculation//////////
            //////////////Z iteration/calculation//////
            
            // ATTEMPT 1 shivangdave website ~example
            let ziterconstant1 = Double(epsilon * sigma * betaOutputValue * betaOutputValue)
            let ziterconstant2 = Double(sigma * betaOutputValue * betaOutputValue)
            let ziterconstant3 = Double(epsilon * betaOutputValue * betaOutputValue)
            let ziterconstant4 = Double(ziterconstant1 + ziterconstant2 + ziterconstant3)
            let ziterconstant5 = Double(2.0 * betaOutputValue)
            let ziterconstant6 = Double(sigma * betaOutputValue)
            let ziterconstant7 = Double(epsilon * betaOutputValue)
            // let ziterconstant8 = Double(sigma * betaOutputValue + epsilon * betaOutputValue)
            let ziterconstant9 = Double(qOutputValue * betaOutputValue)
            
            
        //     let x = 1.0
           // let x1 = x
            
            var rootArray = [Double]()
            var fvalueArray = [Double]()
            var fdvalueArray = [Double]()
            var solved = false
            
            if !solved
            {
                // for i in stride(from: 0.0, to: 1.0, by: 0.000000001)
                for i in 0...10 //not sure exactly why, but "for i in 0...10" yields the same (I think same) as  "for i in 0...200"
                {
                    var firstX = Double(1) //INITIAL GUESS
                    var baseValue = Double()
                    var derValue = Double()
                    //                        var i = Double()
                    if i == 0
                        
                    {
                        
                        // EoS vapor and vapor like set to zero
                        baseValue = -firstX + 1.0 + betaOutputValue - ziterconstant9 * ((firstX - betaOutputValue) / (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1))
                       
                        // derivative of above set to zero
                          derValue = -ziterconstant9 * (-1.0 * firstX * firstX + firstX * ziterconstant5 + ziterconstant4) / (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1) / (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1) - 1.0
                        
                
                       
                        rootArray.append(firstX)
                        fvalueArray.append(baseValue)
                        fdvalueArray.append(derValue)
                    }
                    else
                    {
                        firstX = rootArray[i-1] - fvalueArray[i-1] / fdvalueArray[i-1]
                        
                        // EoS vapor and vapor like set to zero
                        baseValue = -firstX + 1.0 + betaOutputValue - ziterconstant9 * ((firstX - betaOutputValue) / (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1))
                        
                        // derivative of above set to zero
                          derValue = -ziterconstant9 * (-1.0 * firstX * firstX + firstX * ziterconstant5 + ziterconstant4) / (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1) / (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1) - 1.0
                        
                    
  
                        rootArray.append(firstX)
                        fvalueArray.append(baseValue)
                        fdvalueArray.append(derValue)
                        
                        //print(fdvalueArray)
                        
                        //                                if Double(format:"%0.4f",fdvalueArray[i]) == Double(format:"%0.4f",fdvalueArray[i-1])
                        //I changed 0.4f to 0.9f in the code below, not sure exactly what it does. I thought it changed the amount of decimal places
                        
                        if String(format:"%0.4f",fdvalueArray[i]) == String(format:"%0.4f",fdvalueArray[i-1])
                        {
                            print("solved after \(i)th iteration")
                            
                            
                            print("Root is: \(rootArray[i])")
                            //                              calc()
                            //                                var zOutputValue = rootArray[i]
                            solved = true
                            break
                            
                        }
                        myLabel4.text = "Compressibility Factor = \(rootArray[i])"
                    }
                    
                }
                self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
            }
            
            // ################################################
            
            myLabel1.text = "α = \(alphaOutputValue)"
            myLabel2.text = "β = \(betaOutputValue)"
            myLabel3.text = "q = \(qOutputValue)"
            
        }else{
            myLabel1.text = "Hey! Enter a number!"
            myLabel2.text = "Hey! Enter a number!"
            myLabel3.text = "Hey! Enter a number!"
            myLabel4.text = "Hey! Enter a number!"
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
    
    // ------- Might be a edundant section (need too look up how to acccess func from a sidifferent class e.g. sideMenus() -------------
    func customizeNavBar() {
        navigationController?.navigationBar.tintColor = .black //UIColor(colorLiteralRed: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        navigationController?.navigationBar.barTintColor = .white //UIColor(colorLiteralRed: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        self.navigationController?.navigationBar.isTranslucent = false // changing to "true", instead of "false" fixed the invisible space under navigation bar. It made the space go away.
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        
    }
    // ------------------------------
    
}

//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////

class SeventhViewController: UIViewController {
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // reduced temperature
    @IBOutlet weak var myTextField2: UITextField! // reduced pressure
    @IBOutlet weak var myTextField3: UITextField! // accentric factor
   
    @IBOutlet weak var myLabel1: UILabel!
    @IBOutlet weak var myLabel2: UILabel!
    @IBOutlet weak var myLabel3: UILabel!
    @IBOutlet weak var myLabel4: UILabel!
    @IBOutlet weak var myLabel5: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // -----
        let label = UILabel(frame: CGRect(x:0, y:0, width:10, height:50))
        label.backgroundColor = .white
        label.numberOfLines = 3
        label.font = UIFont(name: "HelveticaNeue", size: 15)
        label.textAlignment = .center
        label.textColor = .black
        label.text = "RK EoS\n(Liquid and Liquid-Like)"
        self.navigationItem.titleView = label
        // -----
        
        // ########### Menu (Tutorial) (3) ###############
        sideMenus()
        customizeNavBar()
        // ########### Menu (Tutorial) (3) ###############
        
        
    }
    
    
    @IBAction func myButton2(_ sender: Any) {
        //NOTE: When copying and pasting a viewcontroller, I think you need to redo any buttons (eg. the calculate button). Need to control+drag to class
        // buttons must be set to ACTION when you create them AMP 11182017
        
        myLabel1.isHidden = false
        myLabel2.isHidden = false
        myLabel3.isHidden = false
        myLabel4.isHidden = false
        let firstValue = Double(myTextField1.text!) // reduced temperature
        let secondValue = Double(myTextField2.text!) // reduced pressure
        let thirdValue = Double(myTextField3.text!) // accentric factor
     
        
        let BIGomega = 0.08664
        let psi = 0.42748
        let sigma = 1.0
        let epsilon = 0.0
        
        
        
        if firstValue != nil && secondValue != nil && thirdValue != nil {
            
            /////////////////alpha calculation//////////
            let alphaOutputValue = Double(pow(firstValue!, -0.5))
            ////////////////end alpha calculation//////////
            /////////////////beta calculation//////////
            let betaOutputValue = Double(BIGomega * secondValue! / firstValue!)
            ////////////////end beta calculation//////////
            /////////////////q calculation//////////
            let qOutputValue = Double(psi * alphaOutputValue / BIGomega / firstValue! )
            ////////////////end q calculation//////////
            //////////////Z iteration/calculation//////
            
            // ATTEMPT 1 shivangdave website ~example
            let ziterconstant1 = Double(epsilon * sigma * betaOutputValue * betaOutputValue)
            let ziterconstant2 = Double(sigma * betaOutputValue * betaOutputValue)
            let ziterconstant3 = Double(epsilon * betaOutputValue * betaOutputValue)
            let ziterconstant4 = Double(ziterconstant1 + ziterconstant2 + ziterconstant3)
            let ziterconstant5 = Double(2.0 * betaOutputValue)
            let ziterconstant6 = Double(sigma * betaOutputValue)
            let ziterconstant7 = Double(epsilon * betaOutputValue)
            // let ziterconstant8 = Double(sigma * betaOutputValue + epsilon * betaOutputValue)
            let ziterconstant9 = Double(qOutputValue * betaOutputValue)
            
            
            // let x = 1.0
            // let x1 = x
            
            var rootArray = [Double]()
            var fvalueArray = [Double]()
            var fdvalueArray = [Double]()
            var solved = false
            
            if !solved
            {
                // for i in stride(from: 0.0, to: 1.0, by: 0.000000001)
                for i in 0...10 //not sure exactly why, but "for i in 0...10" yields the same (I think same) as  "for i in 0...200"
                {
                    var firstX = Double(0.07780 * secondValue! / firstValue!) //INITIAL GUESS
                    var baseValue = Double()
                    var derValue = Double()
                    //                        var i = Double()
                    if i == 0
                        
                    {
                        
                        // EoS vapor and vapor like set to zero
                        baseValue = -firstX + 1.0 + betaOutputValue - ziterconstant9 * ((firstX - betaOutputValue) / (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1))
                        
                        // derivative of above set to zero
                        derValue = -ziterconstant9 * (-1.0 * firstX * firstX + firstX * ziterconstant5 + ziterconstant4) / (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1) / (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1) - 1.0
                        
                        
                        
                        rootArray.append(firstX)
                        fvalueArray.append(baseValue)
                        fdvalueArray.append(derValue)
                    }
                    else
                    {
                        firstX = rootArray[i-1] - fvalueArray[i-1] / fdvalueArray[i-1]
                        
                        // EoS vapor and vapor like set to zero
                        baseValue = -firstX + 1.0 + betaOutputValue - ziterconstant9 * ((firstX - betaOutputValue) / (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1))
                        
                        // derivative of above set to zero
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
                        myLabel4.text = "Compressibility Factor = \(rootArray[i])"
                    }
                    
                }
                self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
            }
            
            
            // ################################################
            
            myLabel1.text = "α = \(alphaOutputValue)"
            myLabel2.text = "β = \(betaOutputValue)"
            myLabel3.text = "q = \(qOutputValue)"
            //   myLabel4.text = "Your Z value is: \(zOutputValue)"
            
        }else{
            myLabel1.text = "Hey! Enter a number!"
            myLabel2.text = "Hey! Enter a number!"
            myLabel3.text = "Hey! Enter a number!"
            myLabel4.text = "Hey! Enter a number!"
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
    
}

//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////

///////////////////  Redlich-Kwong ////////////////////////////////////
class EightViewController: UIViewController {
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // reduced temperature
    @IBOutlet weak var myTextField2: UITextField! // reduced pressure
    @IBOutlet weak var myTextField3: UITextField! // accentric factor
  
    @IBOutlet weak var myLabel1: UILabel!
    @IBOutlet weak var myLabel2: UILabel!
    @IBOutlet weak var myLabel3: UILabel!
    @IBOutlet weak var myLabel4: UILabel!
    @IBOutlet weak var myLabel5: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // -----
        let label = UILabel(frame: CGRect(x:0, y:0, width:10, height:50))
        label.backgroundColor = .white
        label.numberOfLines = 3
        label.font = UIFont(name: "HelveticaNeue", size: 15)
        label.textAlignment = .center
        label.textColor = .black
        label.text = "van der Waals EoS\n(Vapor and Vapor-Like)"
        self.navigationItem.titleView = label
        // -----
        
        
        // ########### Menu (Tutorial) (3) ###############
        sideMenus()
        customizeNavBar()
        // ########### Menu (Tutorial) (3) ###############
        
        
    }
    
    @IBAction func myButton1(_ sender: Any) {
        // buttons must be set to ACTION when you create them AMP 11182017
        
        myLabel1.isHidden = false
        myLabel2.isHidden = false
        myLabel3.isHidden = false
        myLabel4.isHidden = false
        let firstValue = Double(myTextField1.text!) // reduced temperature
        let secondValue = Double(myTextField2.text!) // reduced pressure
        let thirdValue = Double(myTextField3.text!) // accentric factor
       
        
        let BIGomega = 0.125
        let psi = 0.421875
        let sigma = 0.0
        let epsilon = 0.0
        
        
        
        if firstValue != nil && secondValue != nil && thirdValue != nil {
            
            /////////////////alpha calculation//////////
            let alphaOutputValue = Double(1.0)
            ////////////////end alpha calculation//////////
            /////////////////beta calculation//////////
            let betaOutputValue = Double(BIGomega * secondValue! / firstValue!)
            ////////////////end beta calculation//////////
            /////////////////q calculation//////////
            let qOutputValue = Double(psi * alphaOutputValue / BIGomega / firstValue! )
            ////////////////end q calculation//////////
            //////////////Z iteration/calculation//////
            
            // ATTEMPT 1 shivangdave website ~example
            let ziterconstant1 = Double(epsilon * sigma * betaOutputValue * betaOutputValue)
            let ziterconstant2 = Double(sigma * betaOutputValue * betaOutputValue)
            let ziterconstant3 = Double(epsilon * betaOutputValue * betaOutputValue)
            let ziterconstant4 = Double(ziterconstant1 + ziterconstant2 + ziterconstant3)
            let ziterconstant5 = Double(2.0 * betaOutputValue)
            let ziterconstant6 = Double(sigma * betaOutputValue)
            let ziterconstant7 = Double(epsilon * betaOutputValue)
            // let ziterconstant8 = Double(sigma * betaOutputValue + epsilon * betaOutputValue)
            let ziterconstant9 = Double(qOutputValue * betaOutputValue)
            
            
            //     let x = 1.0
            // let x1 = x
            
            var rootArray = [Double]()
            var fvalueArray = [Double]()
            var fdvalueArray = [Double]()
            var solved = false
            
            if !solved
            {
                // for i in stride(from: 0.0, to: 1.0, by: 0.000000001)
                for i in 0...10 //not sure exactly why, but "for i in 0...10" yields the same (I think same) as  "for i in 0...200"
                {
                    var firstX = Double(1) //INITIAL GUESS
                    var baseValue = Double()
                    var derValue = Double()
                    //                        var i = Double()
                    if i == 0
                        
                    {
                        
                        // EoS vapor and vapor like set to zero
                        baseValue = -firstX + 1.0 + betaOutputValue - ziterconstant9 * ((firstX - betaOutputValue) / (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1))
                        
                        // derivative of above set to zero
                        derValue = -ziterconstant9 * (-1.0 * firstX * firstX + firstX * ziterconstant5 + ziterconstant4) / (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1) / (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1) - 1.0
                        
                        
                        
                        rootArray.append(firstX)
                        fvalueArray.append(baseValue)
                        fdvalueArray.append(derValue)
                    }
                    else
                    {
                        firstX = rootArray[i-1] - fvalueArray[i-1] / fdvalueArray[i-1]
                        
                        // EoS vapor and vapor like set to zero
                        baseValue = -firstX + 1.0 + betaOutputValue - ziterconstant9 * ((firstX - betaOutputValue) / (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1))
                        
                        // derivative of above set to zero
                        derValue = -ziterconstant9 * (-1.0 * firstX * firstX + firstX * ziterconstant5 + ziterconstant4) / (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1) / (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1) - 1.0
                        
                        
                        
                        rootArray.append(firstX)
                        fvalueArray.append(baseValue)
                        fdvalueArray.append(derValue)
                        
                        //print(fdvalueArray)
                        
                        //                                if Double(format:"%0.4f",fdvalueArray[i]) == Double(format:"%0.4f",fdvalueArray[i-1])
                        //I changed 0.4f to 0.9f in the code below, not sure exactly what it does. I thought it changed the amount of decimal places
                        
                        if String(format:"%0.4f",fdvalueArray[i]) == String(format:"%0.4f",fdvalueArray[i-1])
                        {
                            print("solved after \(i)th iteration")
                            
                            
                            print("Root is: \(rootArray[i])")
                            //                              calc()
                            //                                var zOutputValue = rootArray[i]
                            solved = true
                            break
                            
                        }
                        myLabel4.text = "Compressibility Factor = \(rootArray[i])"
                    }
                    
                }
                self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
            }
            
            // ################################################
            
            myLabel1.text = "α = \(alphaOutputValue)"
            myLabel2.text = "β = \(betaOutputValue)"
            myLabel3.text = "q = \(qOutputValue)"
            
        }else{
            myLabel1.text = "Hey! Enter a number!"
            myLabel2.text = "Hey! Enter a number!"
            myLabel3.text = "Hey! Enter a number!"
            myLabel4.text = "Hey! Enter a number!"
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
    
    // ------- Might be a edundant section (need too look up how to acccess func from a sidifferent class e.g. sideMenus() -------------
    func customizeNavBar() {
        navigationController?.navigationBar.tintColor = .black //UIColor(colorLiteralRed: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        navigationController?.navigationBar.barTintColor = .white //UIColor(colorLiteralRed: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        self.navigationController?.navigationBar.isTranslucent = false // changing to "true", instead of "false" fixed the invisible space under navigation bar. It made the space go away.
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        
    }
    // ------------------------------
    
}

//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////

class NinthViewController: UIViewController {
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // reduced temperature
    @IBOutlet weak var myTextField2: UITextField! // reduced pressure
    @IBOutlet weak var myTextField3: UITextField! // accentric factor
   
    @IBOutlet weak var myLabel1: UILabel!
    @IBOutlet weak var myLabel2: UILabel!
    @IBOutlet weak var myLabel3: UILabel!
    @IBOutlet weak var myLabel4: UILabel!
    @IBOutlet weak var myLabel5: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // -----
        let label = UILabel(frame: CGRect(x:0, y:0, width:10, height:50))
        label.backgroundColor = .white
        label.numberOfLines = 3
        label.font = UIFont(name: "HelveticaNeue", size: 15)
        label.textAlignment = .center
        label.textColor = .black
        label.text = "van der Waals EoS\n(Liquid and Liquid-Like)"
        self.navigationItem.titleView = label
        // -----
        
        // ########### Menu (Tutorial) (3) ###############
        sideMenus()
        customizeNavBar()
        // ########### Menu (Tutorial) (3) ###############
        
        
    }
    
    
    @IBAction func myButton2(_ sender: Any) {
        //NOTE: When copying and pasting a viewcontroller, I think you need to redo any buttons (eg. the calculate button). Need to control+drag to class
        // buttons must be set to ACTION when you create them AMP 11182017
        
        myLabel1.isHidden = false
        myLabel2.isHidden = false
        myLabel3.isHidden = false
        myLabel4.isHidden = false
        let firstValue = Double(myTextField1.text!) // reduced temperature
        let secondValue = Double(myTextField2.text!) // reduced pressure
        let thirdValue = Double(myTextField3.text!) // accentric factor
     
        
        let BIGomega = 0.125
        let psi = 0.421875
        let sigma = 0.0
        let epsilon = 0.0
        
        
        
        if firstValue != nil && secondValue != nil && thirdValue != nil {
            
            /////////////////alpha calculation//////////
            let alphaOutputValue = Double(1.0)
            ////////////////end alpha calculation//////////
            /////////////////beta calculation//////////
            let betaOutputValue = Double(BIGomega * secondValue! / firstValue!)
            ////////////////end beta calculation//////////
            /////////////////q calculation//////////
            let qOutputValue = Double(psi * alphaOutputValue / BIGomega / firstValue! )
            ////////////////end q calculation//////////
            //////////////Z iteration/calculation//////
            
            // ATTEMPT 1 shivangdave website ~example
            let ziterconstant1 = Double(epsilon * sigma * betaOutputValue * betaOutputValue)
            let ziterconstant2 = Double(sigma * betaOutputValue * betaOutputValue)
            let ziterconstant3 = Double(epsilon * betaOutputValue * betaOutputValue)
            let ziterconstant4 = Double(ziterconstant1 + ziterconstant2 + ziterconstant3)
            let ziterconstant5 = Double(2.0 * betaOutputValue)
            let ziterconstant6 = Double(sigma * betaOutputValue)
            let ziterconstant7 = Double(epsilon * betaOutputValue)
            // let ziterconstant8 = Double(sigma * betaOutputValue + epsilon * betaOutputValue)
            let ziterconstant9 = Double(qOutputValue * betaOutputValue)
            
            
            // let x = 1.0
            // let x1 = x
            
            var rootArray = [Double]()
            var fvalueArray = [Double]()
            var fdvalueArray = [Double]()
            var solved = false
            
            if !solved // means "If not allowed ..."
            {
                // for i in stride(from: 0.0, to: 1.0, by: 0.000000001)
                for i in 0...10 //not sure exactly why, but "for i in 0...10" yields the same (I think same) as  "for i in 0...200"
                {
                    var firstX = Double(0.07780 * secondValue! / firstValue!) //INITIAL GUESS
                    var baseValue = Double()
                    var derValue = Double()
                    //                        var i = Double()
                    if i == 0
                        
                    {
                        
                        // EoS liquid and liquid like set to zero
                        baseValue = -firstX + 1.0 + betaOutputValue - ziterconstant9 * ((firstX - betaOutputValue) / (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1))
                        
                        // derivative of above set to zero
                        derValue = -ziterconstant9 * (-1.0 * firstX * firstX + firstX * ziterconstant5 + ziterconstant4) / (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1) / (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1) - 1.0
                        
                        
                        
                        rootArray.append(firstX)
                        fvalueArray.append(baseValue)
                        fdvalueArray.append(derValue)
                    }
                    else
                    {
                        firstX = rootArray[i-1] - fvalueArray[i-1] / fdvalueArray[i-1]
                        
                        // EoS liquid and liquid like set to zero
                        baseValue = -firstX + 1.0 + betaOutputValue - ziterconstant9 * ((firstX - betaOutputValue) / (firstX * firstX + firstX * ziterconstant6 + firstX * ziterconstant7 + ziterconstant1))
                        
                        // derivative of above set to zero
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
                        myLabel4.text = "Compressibility Factor = \(rootArray[i])"
                    }
                    
                }
                self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
            }
            
            
            // ################################################
            
            myLabel1.text = "α = \(alphaOutputValue)"
            myLabel2.text = "β = \(betaOutputValue)"
            myLabel3.text = "q = \(qOutputValue)"
            //   myLabel4.text = "Your Z value is: \(zOutputValue)"
            
        }else{
            myLabel1.text = "Hey! Enter a number!"
            myLabel2.text = "Hey! Enter a number!"
            myLabel3.text = "Hey! Enter a number!"
            myLabel4.text = "Hey! Enter a number!"
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
    
}

//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////

class AntoineViewController: UIViewController {
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // temperature in degree Celsius
    @IBOutlet weak var myTextField2: UITextField! // Antoine A Coeff
    @IBOutlet weak var myTextField3: UITextField! // Antoine B Coeff
    @IBOutlet weak var myTextField4: UITextField! // Antoine C Coeff
    @IBOutlet weak var myLabel1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // -----
        let label = UILabel(frame: CGRect(x:0, y:0, width:10, height:50))
        label.backgroundColor = .white
        label.numberOfLines = 3
        label.font = UIFont(name: "HelveticaNeue", size: 15)
        label.textAlignment = .center
        label.textColor = .black
        label.text = "Antoine Equation \n(Saturation Pressure (kPa))"
        self.navigationItem.titleView = label
        // -----
        
        // ########### Menu (Tutorial) (3) ###############
        sideMenus()
        customizeNavBar()
        // ########### Menu (Tutorial) (3) ###############

    }

    @IBAction func myButton2(_ sender: Any) {
        //NOTE: When copying and pasting a viewcontroller, I think you need to redo any buttons (eg. the calculate button). Need to control+drag to class
        // buttons must be set to ACTION when you create them AMP 11182017
        
        myLabel1.isHidden = false

        let firstValue = Double(myTextField1.text!) // temperature in degree Celsius
        let secondValue = Double(myTextField2.text!) // Antoine A Coeff
        let thirdValue = Double(myTextField3.text!) // Antoine B Coeff
        let fourthValue = Double(myTextField4.text!) // Antoine C Coeff

        
        if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil {
            
            let AntoineConstant1 = Double(secondValue! - thirdValue! / (firstValue! + fourthValue!))
            let AntoineConstant2 = Double(pow(10,AntoineConstant1))
            let AntoineSaturationPressure = Double(AntoineConstant2 / 7.50061683)
            
            // ################################################
            
            myLabel1.text = "P^sat = \(AntoineSaturationPressure) kPa"
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
    
}

//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////

class LeeAndKesslerViewController: UIViewController {
    // CALCULATION EXAMPLE PAGE 224
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // temperature in degree Celsius
    @IBOutlet weak var myTextField2: UITextField! // Antoine A Coeff
    @IBOutlet weak var myTextField3: UITextField! // Antoine B Coeff
    @IBOutlet weak var myTextField4: UITextField! // Antoine C Coeff
    @IBOutlet weak var myLabel1: UILabel!
    @IBOutlet weak var myLabel2: UILabel!
    @IBOutlet weak var myLabel3: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // -----
        let label = UILabel(frame: CGRect(x:0, y:0, width:10, height:50))
        label.backgroundColor = .white
        label.numberOfLines = 3
        label.font = UIFont(name: "HelveticaNeue", size: 15)
        label.textAlignment = .center
        label.textColor = .black
        label.text = "Lee and Kesler \n(Saturation Pressure (kPa))"
        self.navigationItem.titleView = label
        // -----
        
        // ########### Menu (Tutorial) (3) ###############
        sideMenus()
        customizeNavBar()
        // ########### Menu (Tutorial) (3) ###############
        
    }
    
    @IBAction func myButton2(_ sender: Any) {
        //NOTE: When copying and pasting a viewcontroller, I think you need to redo any buttons (eg. the calculate button). Need to control+drag to class
        // buttons must be set to ACTION when you create them AMP 11182017
        
        myLabel1.isHidden = false
        
        let firstValue = Double(myTextField1.text!) // Reduced Temperature at  Normal Boiling Point
        let secondValue = Double(myTextField2.text!) // Reduced Temperature
        let thirdValue = Double(myTextField3.text!) // Reduced Saturation Pressure at Normal Boiling Point
        let fourthValue = Double(myTextField4.text!) // Critical Pressure (bar)
        
        
        if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil {
           // CALCULATION EXAMPLE PAGE 224
            // ---

            let LeeKeslerConstant1 = Double(5.92714 - (6.09648 / firstValue!) - 1.28862 * log(firstValue!) + 0.1693477 * (firstValue! * firstValue! * firstValue! * firstValue! * firstValue! * firstValue!))
            let LeeKeslerConstant2 = Double(15.2518 - (15.6875 / firstValue!) - 13.4721 * log(firstValue!) + 0.43577 * (firstValue! * firstValue! * firstValue! * firstValue! * firstValue! * firstValue!))
            // ---

            let LeeKeslerConstant3 = Double(5.92714 - (6.09648 / secondValue!) - 1.28862 * log(secondValue!) + 0.1693477 * (secondValue! * secondValue! * secondValue! * secondValue! * secondValue! * secondValue!))
            let LeeKeslerConstant4 = Double(15.2518 - (15.6875 / secondValue!) - 13.4721 * log(secondValue!) + 0.43577 * (secondValue! * secondValue! * secondValue! * secondValue! * secondValue! * secondValue!))
            // ---
            let LeeKeslerAccentricFactor = Double((log(thirdValue!) - LeeKeslerConstant1) / LeeKeslerConstant2) //ANSWER for accentric factor
            let LeeKeslerConstant5 = Double(LeeKeslerConstant3 + LeeKeslerAccentricFactor * LeeKeslerConstant4)
            let LeeKeslerConstant6 = Double(pow(2.718281828, LeeKeslerConstant5))
            // ---
            let LeeKeslerSatPressureINkPa = Double(LeeKeslerConstant6 * fourthValue! * 100.0) //ANSWER for saturation pressure in kPa ANSWER
            let LeeKeslerSatPressureINbar = Double(LeeKeslerSatPressureINkPa / 100.0) //ANSWER for saturation pressure in bar

//            Input "Enter Trn ",N
//            Disp "Entr reduced sat"
//            Disp "uration press"
//            Input "ure P^sat_rn ",G
//            Input "Enter Tr ",I
//            Input "Pc (IN BAR) ",M
//            (5.92714-(6.09648/N)-1.28862ln(N)+0.1693477N^6)→A
//            (15.2518-(15.6875/N)-13.4721ln(N)+0.43577N^6)→B
//            (5.92714-(6.09648/I)-1.28862ln(I)+0.1693477I^6)→C
//            (15.2518-(15.6875/I)-13.4721ln(I)+0.43577I^6)→D
//            ((ln(G)-A)/(B))→W
//            ^(C+W*D)→K
//            K*M*100→P
//            P/100→Z
//            Disp W
//            Disp K
//            Disp P
//            Disp Z
            
            // ################################################
            self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
            // ################################################
            
            myLabel1.text = "Accentric factor = \(LeeKeslerAccentricFactor)"
            myLabel2.text = "P^sat = \(LeeKeslerSatPressureINkPa) kPa"
            myLabel3.text = "P^sat = \(LeeKeslerSatPressureINbar) bar"
            
        }else{
            myLabel1.text = "Hey! Enter a number!"
            myLabel2.text = "Hey! Enter a number!"
            myLabel3.text = "Hey! Enter a number!"
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
    
}

//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////

class AntoineSatTempViewController: UIViewController {
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // saturation pressue in kPa
    @IBOutlet weak var myTextField2: UITextField! // Antoine A Coeff
    @IBOutlet weak var myTextField3: UITextField! // Antoine B Coeff
    @IBOutlet weak var myTextField4: UITextField! // Antoine C Coeff
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
        label.text = "Antoine Saturation\nTemperature (Celsius)"
        self.navigationItem.titleView = label
        // -----
        
        // ########### Menu (Tutorial) (3) ###############
        sideMenus()
        customizeNavBar()
        // ########### Menu (Tutorial) (3) ###############
        //----makes keyboard disappear by tapping anywhere (3of3)----
        dismissKeyboard()
        //-----------------------------------------------------------
        
        
    }
    
    
    @IBAction func myButton2(_ sender: Any) {
        //NOTE: When copying and pasting a viewcontroller, I think you need to redo any buttons (eg. the calculate button). Need to control+drag to class
        // buttons must be set to ACTION when you create them AMP 11182017
        
        myLabel1.isHidden = false

        let firstValue = Double(myTextField1.text!) // saturation pressure in kPa
        let secondValue = Double(myTextField2.text!) // Antoine A Coeff
        let thirdValue = Double(myTextField3.text!) // Antoine B Coeff
        let fourthValue = Double(myTextField4.text!) // Antoine C Coeff

        
        if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil {
            

            var rootArray = [Double]()
            var fvalueArray = [Double]()
            var fdvalueArray = [Double]()
            var solved = false
            
            if !solved
            {
                for i in 0...1500 //not sure exactly why, but "for i in 0...10" yields the same (I think same) as  "for i in 0...200"
                {
                    var firstX = Double(100.0) //INITIAL GUESS
                    var baseValue = Double()
                    var derValue = Double()
                    if i == 0
                        
                    {
                        
                        let baseValueConstant1 = Double(log(firstValue!))
                        
                        // Antoine equation set to zero
                       baseValue = -baseValueConstant1 + secondValue! - thirdValue! / (firstX + fourthValue!)
                        
                        // derivative of above equation set to zerp
                        derValue = thirdValue! / (firstX * firstX + 2 * firstX * fourthValue! + fourthValue! * fourthValue!)
        
                        rootArray.append(firstX)
                        fvalueArray.append(baseValue)
                        fdvalueArray.append(derValue)
                    }
                    else
                    {
                        firstX = rootArray[i-1] - fvalueArray[i-1] / fdvalueArray[i-1]
                        
                        let baseValueConstant1 = Double(log(firstValue!))
                        
                        // Antoine equation set to zero
                        baseValue = -baseValueConstant1 + secondValue! - thirdValue! / (firstX + fourthValue!)
                        
                        // derivative of above equation set to zerp
                        derValue = thirdValue! / (firstX * firstX + 2 * firstX * fourthValue! + fourthValue! * fourthValue!)
                        
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
                        
                     myLabel1.text = "T^sat = \(rootArray[i]) Celsius"

                    }
                    
                }
                self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
            }
            
            
            // ################################################
            
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
    //----makes keyboard disappear by tapping anywhere (2of3)----
    //Calls this function when the tap is recognized.
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    // ------------------------------
    // ------------------------------
    
}

//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////

class BUBBLEandDEWPointAndCompositionsRaoultsLawViewController: UIViewController {
    
    

    
    @IBOutlet var ScrollView: UIScrollView!
    
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // component 1 mole fraction
    @IBOutlet weak var myTextField2: UITextField! // component 2 mole fraction
    @IBOutlet weak var myTextField3: UITextField! // component 3 mole fraction
    @IBOutlet weak var myTextField4: UITextField! // component 4 mole fraction
    @IBOutlet weak var myTextField5: UITextField! // component 5 mole fraction
    @IBOutlet weak var myTextField6: UITextField! // component 1 saturation pressure
    @IBOutlet weak var myTextField7: UITextField! // component 2 saturation pressure
    @IBOutlet weak var myTextField8: UITextField! // component 3 saturation pressure
    @IBOutlet weak var myTextField9: UITextField! // component 4 saturation pressure
    @IBOutlet weak var myTextField10: UITextField! // component 5 saturation pressure
    

    @IBOutlet weak var myLabel1: UILabel!
    @IBOutlet weak var myLabel2: UILabel!
    @IBOutlet weak var myLabel3: UILabel!
    @IBOutlet weak var myLabel4: UILabel!
    @IBOutlet weak var myLabel5: UILabel!
    @IBOutlet weak var myLabel6: UILabel!
    @IBOutlet weak var myLabel7: UILabel!
    @IBOutlet weak var myLabel8: UILabel!
    @IBOutlet weak var myLabel9: UILabel!
    @IBOutlet weak var myLabel10: UILabel!
    @IBOutlet weak var myLabel11: UILabel!
    @IBOutlet weak var myLabel12: UILabel!
    
    
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
        label.font = UIFont.boldSystemFont(ofSize: 13.0)
        label.textAlignment = .center
        label.textColor = .black
        label.text = "Raoult's Law - Bubble \nand Dew Point with Compositions"
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
        
        myLabel1.isHidden = false
        myLabel2.isHidden = false
        myLabel3.isHidden = false
        myLabel4.isHidden = false
        myLabel5.isHidden = false
        myLabel6.isHidden = false
        myLabel7.isHidden = false
        myLabel8.isHidden = false
        myLabel9.isHidden = false
        myLabel10.isHidden = false
        myLabel11.isHidden = false
        myLabel12.isHidden = false

        
        let firstValue = Double(myTextField1.text!) // component 1 mole fraction
        let secondValue = Double(myTextField2.text!) // component 2 mole fraction
        let thirdValue = Double(myTextField3.text!) // component 3 mole fraction
        let fourthValue = Double(myTextField4.text!) // component 4 mole fraction
        let fifthValue = Double(myTextField5.text!) // component 5 mole fraction
        let sixthValue = Double(myTextField6.text!) // component 1 saturation pressure
        let seventhValue = Double(myTextField7.text!) // component 2 saturation pressure
        let eightValue = Double(myTextField8.text!) // component 3 saturation pressure
        let ninthValue = Double(myTextField9.text!) // component 4 saturation pressure
        let tenthValue = Double(myTextField10.text!) // component 5 saturation pressure

        if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil && fifthValue != nil && sixthValue != nil && seventhValue != nil && eightValue != nil && ninthValue != nil && tenthValue != nil {
            
            let BubblePoint = Double(firstValue! * sixthValue! + secondValue! * seventhValue! + thirdValue! * eightValue! + fourthValue! * ninthValue! + fifthValue! * tenthValue!) //ANSWER bubble point
            
            let BubblePointCompositionForComponent1 = Double(firstValue! * sixthValue! / BubblePoint)
            let BubblePointCompositionForComponent2 = Double(secondValue! * seventhValue! / BubblePoint)
            let BubblePointCompositionForComponent3 = Double(thirdValue! * eightValue! / BubblePoint)
            let BubblePointCompositionForComponent4 = Double(fourthValue! * ninthValue! / BubblePoint)
            let BubblePointCompositionForComponent5 = Double(fifthValue! * tenthValue! / BubblePoint)
            
            //----
            let DewPointConstant1 = Double(firstValue! / sixthValue!)
            let DewPointConstant2 = Double(secondValue! / seventhValue!)
            let DewPointConstant3 = Double(thirdValue! / eightValue!)
            let DewPointConstant4 = Double(fourthValue! / ninthValue!)
            let DewPointConstant5 = Double(fifthValue! / tenthValue!)
            
            let DewPoint = Double(1.0 / (DewPointConstant1 + DewPointConstant2 + DewPointConstant3 + DewPointConstant4 + DewPointConstant5)) //ANSWER dew point
            
            let DewPointCompositionForComponent1 = Double(firstValue! * DewPoint / sixthValue!)
            let DewPointCompositionForComponent2 = Double(secondValue! * DewPoint / seventhValue!)
            let DewPointCompositionForComponent3 = Double(thirdValue! * DewPoint / eightValue!)
            let DewPointCompositionForComponent4 = Double(fourthValue! * DewPoint / ninthValue!)
            let DewPointCompositionForComponent5 = Double(fifthValue! * DewPoint / tenthValue!)
            
            
            
            // ################################################
            
            myLabel1.text = "Bubble Point = \(BubblePoint) kPa"
            myLabel2.text = "Vapor Component 1 = \(BubblePointCompositionForComponent1)"
            myLabel3.text = "Vapor Component 2 = \(BubblePointCompositionForComponent2)"
            myLabel4.text = "Vapor Component 3 = \(BubblePointCompositionForComponent3)"
            myLabel5.text = "Vapor Component 4 = \(BubblePointCompositionForComponent4)"
            myLabel6.text = "Vapor Component 5 = \(BubblePointCompositionForComponent5)"
            //================================================
            myLabel7.text = "Dew Point = \(DewPoint) kPa"
            myLabel8.text = "Liquid Component 1 = \(DewPointCompositionForComponent1)"
            myLabel9.text = "Liquid Component 2 = \(DewPointCompositionForComponent2)"
            myLabel10.text = "Liquid Component 3 = \(DewPointCompositionForComponent3)"
            myLabel11.text = "Liquid Component 4 = \(DewPointCompositionForComponent4)"
            myLabel12.text = "Liquid Component 5 = \(DewPointCompositionForComponent5)"
            
            // ################################################

            
            self.view.endEditing(true) //makes keypad disappear after calculate button is pressed

        }else{
            if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil && sixthValue != nil && seventhValue != nil && eightValue != nil && ninthValue != nil {
                
           let BubblePoint = Double(firstValue! * sixthValue! + secondValue! * seventhValue! + thirdValue! * eightValue! + fourthValue! * ninthValue!) //ANSWER bubble point
                
                let BubblePointCompositionForComponent1 = Double(firstValue! * sixthValue! / BubblePoint)
                let BubblePointCompositionForComponent2 = Double(secondValue! * seventhValue! / BubblePoint)
                let BubblePointCompositionForComponent3 = Double(thirdValue! * eightValue! / BubblePoint)
                let BubblePointCompositionForComponent4 = Double(fourthValue! * ninthValue! / BubblePoint)
                //===========================================
                let DewPointConstant1 = Double(firstValue! / sixthValue!)
                let DewPointConstant2 = Double(secondValue! / seventhValue!)
                let DewPointConstant3 = Double(thirdValue! / eightValue!)
                let DewPointConstant4 = Double(fourthValue! / ninthValue!)
               
                let DewPoint = Double(1.0 / (DewPointConstant1 + DewPointConstant2 + DewPointConstant3 + DewPointConstant4)) //ANSWER dew point
                
                let DewPointCompositionForComponent1 = Double(firstValue! * DewPoint / sixthValue!)
                let DewPointCompositionForComponent2 = Double(secondValue! * DewPoint / seventhValue!)
                let DewPointCompositionForComponent3 = Double(thirdValue! * DewPoint / eightValue!)
                let DewPointCompositionForComponent4 = Double(fourthValue! * DewPoint / ninthValue!)
            
                
                
                myLabel1.text = "Bubble Point = \(BubblePoint) kPa"
                myLabel2.text = "Vapor Component 1 = \(BubblePointCompositionForComponent1)"
                myLabel3.text = "Vapor Component 2 = \(BubblePointCompositionForComponent2)"
                myLabel4.text = "Vapor Component 3 = \(BubblePointCompositionForComponent3)"
                myLabel5.text = "Vapor Component 4 = \(BubblePointCompositionForComponent4)"
                myLabel7.text = "Dew Point = \(DewPoint) kPa"
                myLabel8.text = "Liquid Component 1 = \(DewPointCompositionForComponent1)"
                myLabel9.text = "Liquid Component 2 = \(DewPointCompositionForComponent2)"
                myLabel10.text = "Liquid Component 3 = \(DewPointCompositionForComponent3)"
                myLabel11.text = "Liquid Component 4 = \(DewPointCompositionForComponent4)"
              
                
                  self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
                
            }else{
                if firstValue != nil && secondValue != nil && thirdValue != nil && sixthValue != nil && seventhValue != nil && eightValue != nil {
                    

                    let BubblePoint = Double(firstValue! * sixthValue! + secondValue! * seventhValue! + thirdValue! * eightValue!) //ANSWER bubble point
                    
                    let BubblePointCompositionForComponent1 = Double(firstValue! * sixthValue! / BubblePoint)
                    let BubblePointCompositionForComponent2 = Double(secondValue! * seventhValue! / BubblePoint)
                    let BubblePointCompositionForComponent3 = Double(thirdValue! * eightValue! / BubblePoint)
                    //===========================================
                    let DewPointConstant1 = Double(firstValue! / sixthValue!)
                    let DewPointConstant2 = Double(secondValue! / seventhValue!)
                    let DewPointConstant3 = Double(thirdValue! / eightValue!)
                   
                    let DewPoint = Double(1.0 / (DewPointConstant1 + DewPointConstant2 + DewPointConstant3)) //ANSWER dew point
                    
                    let DewPointCompositionForComponent1 = Double(firstValue! * DewPoint / sixthValue!)
                    let DewPointCompositionForComponent2 = Double(secondValue! * DewPoint / seventhValue!)
                    let DewPointCompositionForComponent3 = Double(thirdValue! * DewPoint / eightValue!)
                    
                    
                    
                    myLabel1.text = "Bubble Point = \(BubblePoint) kPa"
                    myLabel2.text = "Vapor Component 1 = \(BubblePointCompositionForComponent1)"
                    myLabel3.text = "Vapor Component 2 = \(BubblePointCompositionForComponent2)"
                    myLabel4.text = "Vapor Component 3 = \(BubblePointCompositionForComponent3)"
                    myLabel7.text = "Dew Point = \(DewPoint) kPa"
                    myLabel8.text = "Liquid Component 1 = \(DewPointCompositionForComponent1)"
                    myLabel9.text = "Liquid Component 2 = \(DewPointCompositionForComponent2)"
                    myLabel10.text = "Liquid Component 3 = \(DewPointCompositionForComponent3)"

                    
                    self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
                    
                }else{
                    if firstValue != nil && secondValue != nil && sixthValue != nil && seventhValue != nil {
                        
                        
                        let BubblePoint = Double(firstValue! * sixthValue! + secondValue! * seventhValue!) //ANSWER bubble point
                        
                        let BubblePointCompositionForComponent1 = Double(firstValue! * sixthValue! / BubblePoint)
                        let BubblePointCompositionForComponent2 = Double(secondValue! * seventhValue! / BubblePoint)
                        //===========================================
                        let DewPointConstant1 = Double(firstValue! / sixthValue!)
                        let DewPointConstant2 = Double(secondValue! / seventhValue!)
                
                        let DewPoint = Double(1.0 / (DewPointConstant1 + DewPointConstant2)) //ANSWER dew point
                        
                        let DewPointCompositionForComponent1 = Double(firstValue! * DewPoint / sixthValue!)
                        let DewPointCompositionForComponent2 = Double(secondValue! * DewPoint / seventhValue!)
                        
                        myLabel1.text = "Bubble Point = \(BubblePoint) kPa"
                        myLabel2.text = "Vapor Component 1 = \(BubblePointCompositionForComponent1)"
                        myLabel3.text = "Vapor Component 2 = \(BubblePointCompositionForComponent2)"
                        myLabel7.text = "Dew Point = \(DewPoint) kPa"
                        myLabel8.text = "Liquid Component 1 = \(DewPointCompositionForComponent1)"
                        myLabel9.text = "Liquid Component 2 = \(DewPointCompositionForComponent2)"
                     
                        
                        self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
                }else{
                        
                        myLabel1.text = "Hey! Enter a number!"
                        myLabel2.text = "Hey! Enter a number!"
                        myLabel3.text = "Hey! Enter a number!"
                        myLabel4.text = "Hey! Enter a number!"
                        myLabel5.text = "Hey! Enter a number!"
                        myLabel6.text = "Hey! Enter a number!"
                        myLabel7.text = "Hey! Enter a number!"
                        myLabel8.text = "Hey! Enter a number!"
                        myLabel9.text = "Hey! Enter a number!"
                        myLabel10.text = "Hey! Enter a number!"
                        myLabel11.text = "Hey! Enter a number!"
                        myLabel12.text = "Hey! Enter a number!"
                        self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
                        
                }
                
                
                
                
                }
                
                
            }
            
            
            
            
            
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


//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////


class BUBBLEandDEWPointAndCompositionsModifiedRaoultsLawViewController: UIViewController {
 // MODIFIED RAOULTS LAW
    
    
    
    @IBOutlet var ScrollView: UIScrollView!
    
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // component 1 mole fraction
    @IBOutlet weak var myTextField2: UITextField! // component 2 mole fraction
    @IBOutlet weak var myTextField3: UITextField! // component 3 mole fraction
    @IBOutlet weak var myTextField4: UITextField! // component 4 mole fraction
    @IBOutlet weak var myTextField5: UITextField! // component 5 mole fraction
    @IBOutlet weak var myTextField6: UITextField! // component 1 saturation pressure
    @IBOutlet weak var myTextField7: UITextField! // component 2 saturation pressure
    @IBOutlet weak var myTextField8: UITextField! // component 3 saturation pressure
    @IBOutlet weak var myTextField9: UITextField! // component 4 saturation pressure
    @IBOutlet weak var myTextField10: UITextField! // component 5 saturation pressure
    @IBOutlet weak var myTextField11: UITextField! // component 1 activity coefficient
    @IBOutlet weak var myTextField12: UITextField! // component 2 activity coefficient
    @IBOutlet weak var myTextField13: UITextField! // component 3 activity coefficient
    @IBOutlet weak var myTextField14: UITextField! // component 4 activity coefficient
    @IBOutlet weak var myTextField15: UITextField! // component 5 activity coefficient

    @IBOutlet weak var myLabel1: UILabel!
    @IBOutlet weak var myLabel2: UILabel!
    @IBOutlet weak var myLabel3: UILabel!
    @IBOutlet weak var myLabel4: UILabel!
    @IBOutlet weak var myLabel5: UILabel!
    @IBOutlet weak var myLabel6: UILabel!
    @IBOutlet weak var myLabel7: UILabel!
    @IBOutlet weak var myLabel8: UILabel!
    @IBOutlet weak var myLabel9: UILabel!
    @IBOutlet weak var myLabel10: UILabel!
    @IBOutlet weak var myLabel11: UILabel!
    @IBOutlet weak var myLabel12: UILabel!
    
    
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
        label.font = UIFont.boldSystemFont(ofSize: 13.0)
        label.textAlignment = .center
        label.textColor = .black
        label.text = "Modified Raoult's Law - Bubble \nand Dew Point with Compositions"
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
        
        myLabel1.isHidden = false
        myLabel2.isHidden = false
        myLabel3.isHidden = false
        myLabel4.isHidden = false
        myLabel5.isHidden = false
        myLabel6.isHidden = false
        myLabel7.isHidden = false
        myLabel8.isHidden = false
        myLabel9.isHidden = false
        myLabel10.isHidden = false
        myLabel11.isHidden = false
        myLabel12.isHidden = false
        
        
        let firstValue = Double(myTextField1.text!) // component 1 mole fraction
        let secondValue = Double(myTextField2.text!) // component 2 mole fraction
        let thirdValue = Double(myTextField3.text!) // component 3 mole fraction
        let fourthValue = Double(myTextField4.text!) // component 4 mole fraction
        let fifthValue = Double(myTextField5.text!) // component 5 mole fraction
        let sixthValue = Double(myTextField6.text!) // component 1 saturation pressure
        let seventhValue = Double(myTextField7.text!) // component 2 saturation pressure
        let eightValue = Double(myTextField8.text!) // component 3 saturation pressure
        let ninthValue = Double(myTextField9.text!) // component 4 saturation pressure
        let tenthValue = Double(myTextField10.text!) // component 5 saturation pressure
        let eleventhValue = Double(myTextField11.text!) // component 1 activity coefficient
        let twelthValue = Double(myTextField12.text!) // component 2 activity coefficient
        let thirteenthValue = Double(myTextField13.text!) // component 3 activity coefficient
        let fourteenthValue = Double(myTextField14.text!) // component 4 activity coefficient
        let fifthteenthValue = Double(myTextField15.text!) // component 5 activity coefficient
        
        
        
        
        
        if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil && fifthValue != nil && sixthValue != nil && seventhValue != nil && eightValue != nil && ninthValue != nil && tenthValue != nil && eleventhValue != nil && twelthValue != nil && thirteenthValue != nil && fourteenthValue != nil && fifthteenthValue != nil {
            
            let BubblePoint = Double(firstValue! * sixthValue! * eleventhValue! + secondValue! * seventhValue! * twelthValue! + thirdValue! * eightValue! * thirteenthValue! + fourthValue! * ninthValue! * fourteenthValue! + fifthValue! * tenthValue! * fifthteenthValue!) //ANSWER bubble point
            
            
            let BubblePointCompositionForComponent1 = Double(firstValue! * sixthValue! * eleventhValue! / BubblePoint)
            let BubblePointCompositionForComponent2 = Double(secondValue! * seventhValue! * twelthValue! / BubblePoint)
            let BubblePointCompositionForComponent3 = Double(thirdValue! * eightValue! * thirteenthValue! / BubblePoint)
            let BubblePointCompositionForComponent4 = Double(fourthValue! * ninthValue! * fourteenthValue! / BubblePoint)
            let BubblePointCompositionForComponent5 = Double(fifthValue! * tenthValue! * fifthteenthValue! / BubblePoint)
            
            //----
            let DewPointConstant1 = Double(firstValue! / sixthValue! / eleventhValue!)
            let DewPointConstant2 = Double(secondValue! / seventhValue! / twelthValue!)
            let DewPointConstant3 = Double(thirdValue! / eightValue! / thirteenthValue!)
            let DewPointConstant4 = Double(fourthValue! / ninthValue! / fourteenthValue!)
            let DewPointConstant5 = Double(fifthValue! / tenthValue! / fifthteenthValue!)
            
            let DewPoint = Double(1.0 / (DewPointConstant1 + DewPointConstant2 + DewPointConstant3 + DewPointConstant4 + DewPointConstant5)) //ANSWER dew point
            
            let DewPointCompositionForComponent1 = Double(firstValue! * DewPoint / sixthValue! / eleventhValue!)
            let DewPointCompositionForComponent2 = Double(secondValue! * DewPoint / seventhValue! / twelthValue!)
            let DewPointCompositionForComponent3 = Double(thirdValue! * DewPoint / eightValue! / thirteenthValue!)
            let DewPointCompositionForComponent4 = Double(fourthValue! * DewPoint / ninthValue! / fourteenthValue!)
            let DewPointCompositionForComponent5 = Double(fifthValue! * DewPoint / tenthValue! / fifthteenthValue!)
            
            // ################################################
            
            myLabel1.text = "Bubble Point = \(BubblePoint) kPa"
            myLabel2.text = "Vapor Component 1 = \(BubblePointCompositionForComponent1)"
            myLabel3.text = "Vapor Component 2 = \(BubblePointCompositionForComponent2)"
            myLabel4.text = "Vapor Component 3 = \(BubblePointCompositionForComponent3)"
            myLabel5.text = "Vapor Component 4 = \(BubblePointCompositionForComponent4)"
            myLabel6.text = "Vapor Component 5 = \(BubblePointCompositionForComponent5)"
            //================================================
            myLabel7.text = "Dew Point = \(DewPoint) kPa"
            myLabel8.text = "Liquid Component 1 = \(DewPointCompositionForComponent1)"
            myLabel9.text = "Liquid Component 2 = \(DewPointCompositionForComponent2)"
            myLabel10.text = "Liquid Component 3 = \(DewPointCompositionForComponent3)"
            myLabel11.text = "Liquid Component 4 = \(DewPointCompositionForComponent4)"
            myLabel12.text = "Liquid Component 5 = \(DewPointCompositionForComponent5)"
            
            // ################################################
            
            
            self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
            
        }else{
            if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil && sixthValue != nil && seventhValue != nil && eightValue != nil && ninthValue != nil && eleventhValue != nil && twelthValue != nil && thirteenthValue != nil && fourteenthValue != nil {
                
                let BubblePoint = Double(firstValue! * sixthValue! * eleventhValue! + secondValue! * seventhValue! * twelthValue! + thirdValue! * eightValue! * thirteenthValue! + fourthValue! * ninthValue! * fourteenthValue!) //ANSWER bubble point
                
                let BubblePointCompositionForComponent1 = Double(firstValue! * sixthValue! * eleventhValue! / BubblePoint)
                let BubblePointCompositionForComponent2 = Double(secondValue! * seventhValue! * twelthValue! / BubblePoint)
                let BubblePointCompositionForComponent3 = Double(thirdValue! * eightValue! * thirteenthValue! / BubblePoint)
                let BubblePointCompositionForComponent4 = Double(fourthValue! * ninthValue! * fourteenthValue! / BubblePoint)
                //===========================================
                let DewPointConstant1 = Double(firstValue! / sixthValue! / eleventhValue!)
                let DewPointConstant2 = Double(secondValue! / seventhValue! / twelthValue!)
                let DewPointConstant3 = Double(thirdValue! / eightValue! / thirteenthValue!)
                let DewPointConstant4 = Double(fourthValue! / ninthValue! / fourteenthValue!)
                
                let DewPoint = Double(1.0 / (DewPointConstant1 + DewPointConstant2 + DewPointConstant3 + DewPointConstant4)) //ANSWER dew point
                
                let DewPointCompositionForComponent1 = Double(firstValue! * DewPoint / sixthValue! / eleventhValue!)
                let DewPointCompositionForComponent2 = Double(secondValue! * DewPoint / seventhValue! / twelthValue!)
                let DewPointCompositionForComponent3 = Double(thirdValue! * DewPoint / eightValue! / thirteenthValue!)
                let DewPointCompositionForComponent4 = Double(fourthValue! * DewPoint / ninthValue! / fourteenthValue!)
                
                
                
                myLabel1.text = "Bubble Point = \(BubblePoint) kPa"
                myLabel2.text = "Vapor Component 1 = \(BubblePointCompositionForComponent1)"
                myLabel3.text = "Vapor Component 2 = \(BubblePointCompositionForComponent2)"
                myLabel4.text = "Vapor Component 3 = \(BubblePointCompositionForComponent3)"
                myLabel5.text = "Vapor Component 4 = \(BubblePointCompositionForComponent4)"
                myLabel7.text = "Dew Point = \(DewPoint) kPa"
                myLabel8.text = "Liquid Component 1 = \(DewPointCompositionForComponent1)"
                myLabel9.text = "Liquid Component 2 = \(DewPointCompositionForComponent2)"
                myLabel10.text = "Liquid Component 3 = \(DewPointCompositionForComponent3)"
                myLabel11.text = "Liquid Component 4 = \(DewPointCompositionForComponent4)"
                
                
                self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
                
            }else{
                if firstValue != nil && secondValue != nil && thirdValue != nil && sixthValue != nil && seventhValue != nil && eightValue != nil && eleventhValue != nil && twelthValue != nil && thirteenthValue != nil {
                    
                    
                    let BubblePoint = Double(firstValue! * sixthValue! * eleventhValue! + secondValue! * seventhValue! * twelthValue! + thirdValue! * eightValue! * thirteenthValue!) //ANSWER bubble point
                    
                    let BubblePointCompositionForComponent1 = Double(firstValue! * sixthValue! * eleventhValue! / BubblePoint)
                    let BubblePointCompositionForComponent2 = Double(secondValue! * seventhValue! * twelthValue! / BubblePoint)
                    let BubblePointCompositionForComponent3 = Double(thirdValue! * eightValue! * thirteenthValue! / BubblePoint)
                    //===========================================
                    let DewPointConstant1 = Double(firstValue! / sixthValue! / eleventhValue!)
                    let DewPointConstant2 = Double(secondValue! / seventhValue! / twelthValue!)
                    let DewPointConstant3 = Double(thirdValue! / eightValue! / thirteenthValue!)
                    
                    let DewPoint = Double(1.0 / (DewPointConstant1 + DewPointConstant2 + DewPointConstant3)) //ANSWER dew point
                    
                    let DewPointCompositionForComponent1 = Double(firstValue! * DewPoint / sixthValue! / eleventhValue!)
                    let DewPointCompositionForComponent2 = Double(secondValue! * DewPoint / seventhValue! / twelthValue!)
                    let DewPointCompositionForComponent3 = Double(thirdValue! * DewPoint / eightValue! / thirteenthValue!)
                    
                    
                    
                    myLabel1.text = "Bubble Point = \(BubblePoint) kPa"
                    myLabel2.text = "Vapor Component 1 = \(BubblePointCompositionForComponent1)"
                    myLabel3.text = "Vapor Component 2 = \(BubblePointCompositionForComponent2)"
                    myLabel4.text = "Vapor Component 3 = \(BubblePointCompositionForComponent3)"
                    myLabel7.text = "Dew Point = \(DewPoint) kPa"
                    myLabel8.text = "Liquid Component 1 = \(DewPointCompositionForComponent1)"
                    myLabel9.text = "Liquid Component 2 = \(DewPointCompositionForComponent2)"
                    myLabel10.text = "Liquid Component 3 = \(DewPointCompositionForComponent3)"
                    
                    
                    self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
                    
                }else{
                    if firstValue != nil && secondValue != nil && sixthValue != nil && seventhValue != nil && eleventhValue != nil && twelthValue != nil {
                        
                        
                        let BubblePoint = Double(firstValue! * sixthValue! * eleventhValue! + secondValue! * seventhValue! * twelthValue!) //ANSWER bubble point
                        
                        let BubblePointCompositionForComponent1 = Double(firstValue! * sixthValue! * eleventhValue! / BubblePoint)
                        let BubblePointCompositionForComponent2 = Double(secondValue! * seventhValue! * twelthValue! / BubblePoint)
                        //===========================================
                        let DewPointConstant1 = Double(firstValue! / sixthValue! / eleventhValue!)
                        let DewPointConstant2 = Double(secondValue! / seventhValue! / twelthValue!)
                        
                        let DewPoint = Double(1.0 / (DewPointConstant1 + DewPointConstant2)) //ANSWER dew point
                        
                        let DewPointCompositionForComponent1 = Double(firstValue! * DewPoint / sixthValue! / eleventhValue!)
                        let DewPointCompositionForComponent2 = Double(secondValue! * DewPoint / seventhValue! / twelthValue!)
                        
                        myLabel1.text = "Bubble Point = \(BubblePoint) kPa"
                        myLabel2.text = "Vapor Component 1 = \(BubblePointCompositionForComponent1)"
                        myLabel3.text = "Vapor Component 2 = \(BubblePointCompositionForComponent2)"
                        myLabel7.text = "Dew Point = \(DewPoint) kPa"
                        myLabel8.text = "Liquid Component 1 = \(DewPointCompositionForComponent1)"
                        myLabel9.text = "Liquid Component 2 = \(DewPointCompositionForComponent2)"
                        
                        
                        self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
                    }else{
                        
                        myLabel1.text = "Hey! Enter a number!"
                        myLabel2.text = "Hey! Enter a number!"
                        myLabel3.text = "Hey! Enter a number!"
                        myLabel4.text = "Hey! Enter a number!"
                        myLabel5.text = "Hey! Enter a number!"
                        myLabel6.text = "Hey! Enter a number!"
                        myLabel7.text = "Hey! Enter a number!"
                        myLabel8.text = "Hey! Enter a number!"
                        myLabel9.text = "Hey! Enter a number!"
                        myLabel10.text = "Hey! Enter a number!"
                        myLabel11.text = "Hey! Enter a number!"
                        myLabel12.text = "Hey! Enter a number!"
                        self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
                        
                    }
                    
                    
                    
                    
                }
                
                
            }
            
            
            
            
            
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


//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////

class BUBBLEandDEWPointTotalVaporCompositionRachfordRiceViewController: UIViewController {
    
    
    
    
    @IBOutlet var ScrollView: UIScrollView!
    
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // component 1 saturation pressure
    @IBOutlet weak var myTextField2: UITextField! // component 2 saturation pressure
    @IBOutlet weak var myTextField3: UITextField! // component 3 saturation pressure
    @IBOutlet weak var myTextField4: UITextField! // component 4 saturation pressure
    @IBOutlet weak var myTextField5: UITextField! // component 5 saturation pressure
    @IBOutlet weak var myTextField6: UITextField! // component 1 mole fraction
    @IBOutlet weak var myTextField7: UITextField! // component 2 mole fraction
    @IBOutlet weak var myTextField8: UITextField! // component 3 mole fraction
    @IBOutlet weak var myTextField9: UITextField! // component 4 mole fraction
    @IBOutlet weak var myTextField10: UITextField! // component 5 mole fraction
    
    
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
        label.text = "Rachford Rice \nTotal Phase Fractions"
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
        
        myLabel1.isHidden = false
        myLabel2.isHidden = false
    
        let firstValue = Double(myTextField1.text!) // component 1 mole fraction
        let secondValue = Double(myTextField2.text!) // component 2 mole fraction
        let thirdValue = Double(myTextField3.text!) // component 3 mole fraction
        let fourthValue = Double(myTextField4.text!) // component 4 mole fraction
        let fifthValue = Double(myTextField5.text!) // component 5 mole fraction
        let sixthValue = Double(myTextField6.text!) // component 1 saturation pressure
        let seventhValue = Double(myTextField7.text!) // component 2 saturation pressure
        let eightValue = Double(myTextField8.text!) // component 3 saturation pressure
        let ninthValue = Double(myTextField9.text!) // component 4 saturation pressure
        let tenthValue = Double(myTextField10.text!) // component 5 saturation pressure
        
        if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil && fifthValue != nil && sixthValue != nil && seventhValue != nil && eightValue != nil && ninthValue != nil && tenthValue != nil {
            var rootArray = [Double]()
            var fvalueArray = [Double]()
            var fdvalueArray = [Double]()
            var solved = false
            
            if !solved
            {
                for i in 0...1 //not sure exactly why, but "for i in 0...10" yields the same (I think same) as  "for i in 0...200"
                {
                    var firstX = Double(0.01) //INITIAL GUESS
                    var baseValue = Double()
                    var derValue = Double()
                    if i == 0
                        
                    {
                        
                        //----------------
                        let DewPointConstant1 = Double(firstValue! / sixthValue!)
                        let DewPointConstant2 = Double(secondValue! / seventhValue!)
                        let DewPointConstant3 = Double(thirdValue! / eightValue!)
                        let DewPointConstant4 = Double(fourthValue! / ninthValue!)
                        let DewPointConstant5 = Double(fifthValue! / tenthValue!)
                        //------------------
                        let DewPoint = Double(1.0 / (DewPointConstant1 + DewPointConstant2 + DewPointConstant3 + DewPointConstant4 + DewPointConstant5)) //ANSWER dew point
                        let BubblePoint = Double(firstValue! * sixthValue! + secondValue! * seventhValue! + thirdValue! * eightValue! + fourthValue! * ninthValue! + fifthValue! * tenthValue!) //ANSWER bubble point
                        //----------------
                        let RachfordRiceConstant1 = Double((DewPoint + BubblePoint) / 2.0)
                        let RachfordRiceConstant2 = Double(sixthValue! / RachfordRiceConstant1)
                        let RachfordRiceConstant3 = Double(seventhValue! / RachfordRiceConstant1)
                        let RachfordRiceConstant4 = Double(eightValue! / RachfordRiceConstant1)
                        let RachfordRiceConstant5 = Double(ninthValue! / RachfordRiceConstant1)
                        let RachfordRiceConstant6 = Double(tenthValue! / RachfordRiceConstant1)
                        //------------------

                        // Rachford Rice eqn. set to zero
                        baseValue = firstValue! * RachfordRiceConstant2 / (1.0 + firstX * (RachfordRiceConstant2 - 1.0)) + secondValue! * RachfordRiceConstant3 / (1.0 + firstX * (RachfordRiceConstant3 - 1.0)) + thirdValue! * RachfordRiceConstant4 / (1.0 + firstX * (RachfordRiceConstant4 - 1.0)) + fourthValue! * RachfordRiceConstant5 / (1.0 + firstX * (RachfordRiceConstant5 - 1.0)) + fifthValue! * RachfordRiceConstant6 / (1.0 + firstX * (RachfordRiceConstant6 - 1.0)) - 1.0
                        
                        //----------------
                        let RachfordRiceConstant7 = Double(RachfordRiceConstant2 - 1.0)
                        let RachfordRiceConstant8 = Double(RachfordRiceConstant3 - 1.0)
                        let RachfordRiceConstant9 = Double(RachfordRiceConstant4 - 1.0)
                        let RachfordRiceConstant10 = Double(RachfordRiceConstant5 - 1.0)
                        let RachfordRiceConstant11 = Double(RachfordRiceConstant6 - 1.0)
                        //--
                        let RachfordRiceConstant12 = Double(firstValue! * RachfordRiceConstant2 * RachfordRiceConstant7)
                        let RachfordRiceConstant13 = Double(secondValue! * RachfordRiceConstant3 * RachfordRiceConstant8)
                        let RachfordRiceConstant14 = Double(thirdValue! * RachfordRiceConstant4 * RachfordRiceConstant9)
                        let RachfordRiceConstant15 = Double(fourthValue! * RachfordRiceConstant5 * RachfordRiceConstant10)
                        let RachfordRiceConstant16 = Double(fifthValue! * RachfordRiceConstant6 * RachfordRiceConstant11)
                        //------------------
                        // derivative of Rachford Rice equation (baseValue) set to zero
                        derValue = -RachfordRiceConstant12 / ((1.0 + RachfordRiceConstant7 * firstX) * (1.0 + RachfordRiceConstant7 * firstX)) - RachfordRiceConstant13 / ((1.0 + RachfordRiceConstant8 * firstX) * (1.0 + RachfordRiceConstant8 * firstX)) - RachfordRiceConstant14 / ((1.0 + RachfordRiceConstant9 * firstX) * (1.0 + RachfordRiceConstant9 * firstX)) - RachfordRiceConstant15 / ((1.0 + RachfordRiceConstant10 * firstX) * (1.0 + RachfordRiceConstant10 * firstX)) - RachfordRiceConstant16 / ((1.0 + RachfordRiceConstant11 * firstX) * (1.0 + RachfordRiceConstant11 * firstX))
                        
                        rootArray.append(firstX)
                        fvalueArray.append(baseValue)
                        fdvalueArray.append(derValue)
                    }
                    else
                    {
                        firstX = rootArray[i-1] - fvalueArray[i-1] / fdvalueArray[i-1]
                        
                        //----------------
                        let DewPointConstant1 = Double(firstValue! / sixthValue!)
                        let DewPointConstant2 = Double(secondValue! / seventhValue!)
                        let DewPointConstant3 = Double(thirdValue! / eightValue!)
                        let DewPointConstant4 = Double(fourthValue! / ninthValue!)
                        let DewPointConstant5 = Double(fifthValue! / tenthValue!)
                        //------------------
                        let DewPoint = Double(1.0 / (DewPointConstant1 + DewPointConstant2 + DewPointConstant3 + DewPointConstant4 + DewPointConstant5)) //ANSWER dew point
                        let BubblePoint = Double(firstValue! * sixthValue! + secondValue! * seventhValue! + thirdValue! * eightValue! + fourthValue! * ninthValue! + fifthValue! * tenthValue!) //ANSWER bubble point
                        //----------------
                        let RachfordRiceConstant1 = Double((DewPoint + BubblePoint) / 2.0)
                        let RachfordRiceConstant2 = Double(sixthValue! / RachfordRiceConstant1)
                        let RachfordRiceConstant3 = Double(seventhValue! / RachfordRiceConstant1)
                        let RachfordRiceConstant4 = Double(eightValue! / RachfordRiceConstant1)
                        let RachfordRiceConstant5 = Double(ninthValue! / RachfordRiceConstant1)
                        let RachfordRiceConstant6 = Double(tenthValue! / RachfordRiceConstant1)
                        //------------------
                        
                        // Rachford Rice eqn. set to zero
                        baseValue = firstValue! * RachfordRiceConstant2 / (1.0 + firstX * (RachfordRiceConstant2 - 1.0)) + secondValue! * RachfordRiceConstant3 / (1.0 + firstX * (RachfordRiceConstant3 - 1.0)) + thirdValue! * RachfordRiceConstant4 / (1.0 + firstX * (RachfordRiceConstant4 - 1.0)) + fourthValue! * RachfordRiceConstant5 / (1.0 + firstX * (RachfordRiceConstant5 - 1.0)) + fifthValue! * RachfordRiceConstant6 / (1.0 + firstX * (RachfordRiceConstant6 - 1.0)) - 1.0
                        
                        //----------------
                        let RachfordRiceConstant7 = Double(RachfordRiceConstant2 - 1.0)
                        let RachfordRiceConstant8 = Double(RachfordRiceConstant3 - 1.0)
                        let RachfordRiceConstant9 = Double(RachfordRiceConstant4 - 1.0)
                        let RachfordRiceConstant10 = Double(RachfordRiceConstant5 - 1.0)
                        let RachfordRiceConstant11 = Double(RachfordRiceConstant6 - 1.0)
                        //--
                        let RachfordRiceConstant12 = Double(firstValue! * RachfordRiceConstant2 * RachfordRiceConstant7)
                        let RachfordRiceConstant13 = Double(secondValue! * RachfordRiceConstant3 * RachfordRiceConstant8)
                        let RachfordRiceConstant14 = Double(thirdValue! * RachfordRiceConstant4 * RachfordRiceConstant9)
                        let RachfordRiceConstant15 = Double(fourthValue! * RachfordRiceConstant5 * RachfordRiceConstant10)
                        let RachfordRiceConstant16 = Double(fifthValue! * RachfordRiceConstant6 * RachfordRiceConstant11)
                        //------------------
                        // derivative of Rachford Rice equation (baseValue) set to zero
                        derValue = -RachfordRiceConstant12 / ((1.0 + RachfordRiceConstant7 * firstX) * (1.0 + RachfordRiceConstant7 * firstX)) - RachfordRiceConstant13 / ((1.0 + RachfordRiceConstant8 * firstX) * (1.0 + RachfordRiceConstant8 * firstX)) - RachfordRiceConstant14 / ((1.0 + RachfordRiceConstant9 * firstX) * (1.0 + RachfordRiceConstant9 * firstX)) - RachfordRiceConstant15 / ((1.0 + RachfordRiceConstant10 * firstX) * (1.0 + RachfordRiceConstant10 * firstX)) - RachfordRiceConstant16 / ((1.0 + RachfordRiceConstant11 * firstX) * (1.0 + RachfordRiceConstant11 * firstX))
                        
                        
                        rootArray.append(firstX)
                        fvalueArray.append(baseValue)
                        fdvalueArray.append(derValue)
                        
                        
                        let TotalLiquidComposition = Double(1 - rootArray[i])
                        
                        //print(fdvalueArray)
                        
                        if String(format:"%0.4f",fdvalueArray[i]) == String(format:"%0.4f",fdvalueArray[i-1])
                        {
                            print("solved after \(i)th iteration")
                            
                            
                            print("Root is: \(rootArray[i])")
                        
                            
                            solved = true
                            break
                            
                        }
                        
                        myLabel1.text = "Total Vapor Composition = \(rootArray[i])"
                        myLabel2.text = "Total Liquid Composition = \(TotalLiquidComposition)"
                        
                    }
                    
                }
                self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
            }

            
//            self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
//
        }else{
            if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil && sixthValue != nil && seventhValue != nil && eightValue != nil && ninthValue != nil {
                var rootArray = [Double]()
                var fvalueArray = [Double]()
                var fdvalueArray = [Double]()
                var solved = false
                
                if !solved
                {
                    for i in 0...1 //not sure exactly why, but "for i in 0...10" yields the same (I think same) as  "for i in 0...200"
                    {
                        var firstX = Double(0.01) //INITIAL GUESS
                        var baseValue = Double()
                        var derValue = Double()
                        if i == 0
                            
                        {
                            
                            //----------------
                            let DewPointConstant1 = Double(firstValue! / sixthValue!)
                            let DewPointConstant2 = Double(secondValue! / seventhValue!)
                            let DewPointConstant3 = Double(thirdValue! / eightValue!)
                            let DewPointConstant4 = Double(fourthValue! / ninthValue!)
                        
                            //------------------
                            let DewPoint = Double(1.0 / (DewPointConstant1 + DewPointConstant2 + DewPointConstant3 + DewPointConstant4)) //ANSWER dew point
                            let BubblePoint = Double(firstValue! * sixthValue! + secondValue! * seventhValue! + thirdValue! * eightValue! + fourthValue! * ninthValue!) //ANSWER bubble point
                            //----------------
                            let RachfordRiceConstant1 = Double((DewPoint + BubblePoint) / 2.0)
                            let RachfordRiceConstant2 = Double(sixthValue! / RachfordRiceConstant1)
                            let RachfordRiceConstant3 = Double(seventhValue! / RachfordRiceConstant1)
                            let RachfordRiceConstant4 = Double(eightValue! / RachfordRiceConstant1)
                            let RachfordRiceConstant5 = Double(ninthValue! / RachfordRiceConstant1)
                            
                            //------------------
                            
                            // Rachford Rice eqn. set to zero
                            baseValue = firstValue! * RachfordRiceConstant2 / (1 + firstX * (RachfordRiceConstant2 - 1)) + secondValue! * RachfordRiceConstant3 / (1 + firstX * (RachfordRiceConstant3 - 1)) + thirdValue! * RachfordRiceConstant4 / (1 + firstX * (RachfordRiceConstant4 - 1)) + fourthValue! * RachfordRiceConstant5 / (1 + firstX * (RachfordRiceConstant5 - 1)) - 1.0
                            
                            //----------------
                            let RachfordRiceConstant7 = Double(RachfordRiceConstant2 - 1.0)
                            let RachfordRiceConstant8 = Double(RachfordRiceConstant3 - 1.0)
                            let RachfordRiceConstant9 = Double(RachfordRiceConstant4 - 1.0)
                            let RachfordRiceConstant10 = Double(RachfordRiceConstant5 - 1.0)
                            //--
                            let RachfordRiceConstant12 = Double(firstValue! * RachfordRiceConstant2 * RachfordRiceConstant7)
                            let RachfordRiceConstant13 = Double(secondValue! * RachfordRiceConstant3 * RachfordRiceConstant8)
                            let RachfordRiceConstant14 = Double(thirdValue! * RachfordRiceConstant4 * RachfordRiceConstant9)
                            let RachfordRiceConstant15 = Double(fourthValue! * RachfordRiceConstant5 * RachfordRiceConstant10)
                            //------------------
                            // derivative of Rachford Rice equation (baseValue) set to zero
                            derValue = -RachfordRiceConstant12 / ((1.0 + RachfordRiceConstant7 * firstX) * (1.0 + RachfordRiceConstant7 * firstX)) - RachfordRiceConstant13 / ((1.0 + RachfordRiceConstant8 * firstX) * (1.0 + RachfordRiceConstant8 * firstX)) - RachfordRiceConstant14 / ((1.0 + RachfordRiceConstant9 * firstX) * (1.0 + RachfordRiceConstant9 * firstX)) - RachfordRiceConstant15 / ((1.0 + RachfordRiceConstant10 * firstX) * (1.0 + RachfordRiceConstant10 * firstX))

                            
                            rootArray.append(firstX)
                            fvalueArray.append(baseValue)
                            fdvalueArray.append(derValue)
                        }
                        else
                        {
                            firstX = rootArray[i-1] - fvalueArray[i-1] / fdvalueArray[i-1]
                            
                            //----------------
                            let DewPointConstant1 = Double(firstValue! / sixthValue!)
                            let DewPointConstant2 = Double(secondValue! / seventhValue!)
                            let DewPointConstant3 = Double(thirdValue! / eightValue!)
                            let DewPointConstant4 = Double(fourthValue! / ninthValue!)
                            //------------------
                            let DewPoint = Double(1.0 / (DewPointConstant1 + DewPointConstant2 + DewPointConstant3 + DewPointConstant4)) //ANSWER dew point
                            let BubblePoint = Double(firstValue! * sixthValue! + secondValue! * seventhValue! + thirdValue! * eightValue! + fourthValue! * ninthValue!) //ANSWER bubble point
                            //----------------
                            let RachfordRiceConstant1 = Double((DewPoint + BubblePoint) / 2.0)
                            let RachfordRiceConstant2 = Double(sixthValue! / RachfordRiceConstant1)
                            let RachfordRiceConstant3 = Double(seventhValue! / RachfordRiceConstant1)
                            let RachfordRiceConstant4 = Double(eightValue! / RachfordRiceConstant1)
                            let RachfordRiceConstant5 = Double(ninthValue! / RachfordRiceConstant1)
                            //------------------
                            
                            // Rachford Rice eqn. set to zero
                            baseValue = firstValue! * RachfordRiceConstant2 / (1 + firstX * (RachfordRiceConstant2 - 1)) + secondValue! * RachfordRiceConstant3 / (1 + firstX * (RachfordRiceConstant3 - 1)) + thirdValue! * RachfordRiceConstant4 / (1 + firstX * (RachfordRiceConstant4 - 1)) + fourthValue! * RachfordRiceConstant5 / (1 + firstX * (RachfordRiceConstant5 - 1)) - 1.0
                            
                            //----------------
                            let RachfordRiceConstant7 = Double(RachfordRiceConstant2 - 1.0)
                            let RachfordRiceConstant8 = Double(RachfordRiceConstant3 - 1.0)
                            let RachfordRiceConstant9 = Double(RachfordRiceConstant4 - 1.0)
                            let RachfordRiceConstant10 = Double(RachfordRiceConstant5 - 1.0)
                            //--
                            let RachfordRiceConstant12 = Double(firstValue! * RachfordRiceConstant2 * RachfordRiceConstant7)
                            let RachfordRiceConstant13 = Double(secondValue! * RachfordRiceConstant3 * RachfordRiceConstant8)
                            let RachfordRiceConstant14 = Double(thirdValue! * RachfordRiceConstant4 * RachfordRiceConstant9)
                            let RachfordRiceConstant15 = Double(fourthValue! * RachfordRiceConstant5 * RachfordRiceConstant10)
                            //------------------
                            // derivative of Rachford Rice equation (baseValue) set to zero
                            derValue = -RachfordRiceConstant12 / ((1.0 + RachfordRiceConstant7 * firstX) * (1.0 + RachfordRiceConstant7 * firstX)) - RachfordRiceConstant13 / ((1.0 + RachfordRiceConstant8 * firstX) * (1.0 + RachfordRiceConstant8 * firstX)) - RachfordRiceConstant14 / ((1.0 + RachfordRiceConstant9 * firstX) * (1.0 + RachfordRiceConstant9 * firstX)) - RachfordRiceConstant15 / ((1.0 + RachfordRiceConstant10 * firstX) * (1.0 + RachfordRiceConstant10 * firstX))
                           
                            rootArray.append(firstX)
                            fvalueArray.append(baseValue)
                            fdvalueArray.append(derValue)
                            
                            let TotalLiquidComposition = Double(1 - rootArray[i])
                            
                            //print(fdvalueArray)
                            
                            if String(format:"%0.4f",fdvalueArray[i]) == String(format:"%0.4f",fdvalueArray[i-1])
                            {
                                print("solved after \(i)th iteration")
                                
                                
                                print("Root is: \(rootArray[i])")
                                
                                solved = true
                                break
                                
                            }
                            
                            myLabel1.text = "Total Vapor Composition = \(rootArray[i])"
                            myLabel2.text = "Total Liquid Composition = \(TotalLiquidComposition)"
                            
                        }
                        
                    }
                    self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
                }
                
            }else{
                if firstValue != nil && secondValue != nil && thirdValue != nil && sixthValue != nil && seventhValue != nil && eightValue != nil {
                    
                    
                    var rootArray = [Double]()
                    var fvalueArray = [Double]()
                    var fdvalueArray = [Double]()
                    var solved = false
                    
                    if !solved
                    {
                        for i in 0...1 //not sure exactly why, but "for i in 0...10" yields the same (I think same) as  "for i in 0...200"
                        {
                            var firstX = Double(0.01) //INITIAL GUESS
                            var baseValue = Double()
                            var derValue = Double()
                            if i == 0
                                
                            {
                                
                                //----------------
                                let DewPointConstant1 = Double(firstValue! / sixthValue!)
                                let DewPointConstant2 = Double(secondValue! / seventhValue!)
                                let DewPointConstant3 = Double(thirdValue! / eightValue!)
                                //------------------
                                let DewPoint = Double(1.0 / (DewPointConstant1 + DewPointConstant2 + DewPointConstant3)) //ANSWER dew point
                                let BubblePoint = Double(firstValue! * sixthValue! + secondValue! * seventhValue! + thirdValue! * eightValue!) //ANSWER bubble point
                                //----------------
                                let RachfordRiceConstant1 = Double((DewPoint + BubblePoint) / 2.0)
                                let RachfordRiceConstant2 = Double(sixthValue! / RachfordRiceConstant1)
                                let RachfordRiceConstant3 = Double(seventhValue! / RachfordRiceConstant1)
                                let RachfordRiceConstant4 = Double(eightValue! / RachfordRiceConstant1)
                                //------------------
                                
                                // Rachford Rice eqn. set to zero
                                baseValue = firstValue! * RachfordRiceConstant2 / (1.0 + firstX * (RachfordRiceConstant2 - 1.0)) + secondValue! * RachfordRiceConstant3 / (1.0 + firstX * (RachfordRiceConstant3 - 1.0)) + thirdValue! * RachfordRiceConstant4 / (1.0 + firstX * (RachfordRiceConstant4 - 1.0)) - 1.0
                                
                                //----------------
                                let RachfordRiceConstant7 = Double(RachfordRiceConstant2 - 1.0)
                                let RachfordRiceConstant8 = Double(RachfordRiceConstant3 - 1.0)
                                let RachfordRiceConstant9 = Double(RachfordRiceConstant4 - 1.0)
                                //--
                                let RachfordRiceConstant12 = Double(firstValue! * RachfordRiceConstant2 * RachfordRiceConstant7)
                                let RachfordRiceConstant13 = Double(secondValue! * RachfordRiceConstant3 * RachfordRiceConstant8)
                                let RachfordRiceConstant14 = Double(thirdValue! * RachfordRiceConstant4 * RachfordRiceConstant9)
                                //------------------
                                // derivative of Rachford Rice equation (baseValue) set to zero
                                derValue = -RachfordRiceConstant12 / ((1.0 + RachfordRiceConstant7 * firstX) * (1.0 + RachfordRiceConstant7 * firstX)) - RachfordRiceConstant13 / ((1.0 + RachfordRiceConstant8 * firstX) * (1.0 + RachfordRiceConstant8 * firstX)) - RachfordRiceConstant14 / ((1.0 + RachfordRiceConstant9 * firstX) * (1.0 + RachfordRiceConstant9 * firstX))
                                
                                rootArray.append(firstX)
                                fvalueArray.append(baseValue)
                                fdvalueArray.append(derValue)
                            }
                            else
                            {
                                firstX = rootArray[i-1] - fvalueArray[i-1] / fdvalueArray[i-1]
                                
                                //----------------
                                let DewPointConstant1 = Double(firstValue! / sixthValue!)
                                let DewPointConstant2 = Double(secondValue! / seventhValue!)
                                let DewPointConstant3 = Double(thirdValue! / eightValue!)
                                //------------------
                                let DewPoint = Double(1.0 / (DewPointConstant1 + DewPointConstant2 + DewPointConstant3)) //ANSWER dew point
                                let BubblePoint = Double(firstValue! * sixthValue! + secondValue! * seventhValue! + thirdValue! * eightValue!) //ANSWER bubble point
                                //----------------
                                let RachfordRiceConstant1 = Double((DewPoint + BubblePoint) / 2.0)
                                let RachfordRiceConstant2 = Double(sixthValue! / RachfordRiceConstant1)
                                let RachfordRiceConstant3 = Double(seventhValue! / RachfordRiceConstant1)
                                let RachfordRiceConstant4 = Double(eightValue! / RachfordRiceConstant1)
                                //------------------
                                
                                // Rachford Rice eqn. set to zero
                                baseValue = firstValue! * RachfordRiceConstant2 / (1.0 + firstX * (RachfordRiceConstant2 - 1.0)) + secondValue! * RachfordRiceConstant3 / (1.0 + firstX * (RachfordRiceConstant3 - 1.0)) + thirdValue! * RachfordRiceConstant4 / (1.0 + firstX * (RachfordRiceConstant4 - 1.0)) - 1.0
                                
                                //----------------
                                let RachfordRiceConstant7 = Double(RachfordRiceConstant2 - 1.0)
                                let RachfordRiceConstant8 = Double(RachfordRiceConstant3 - 1.0)
                                let RachfordRiceConstant9 = Double(RachfordRiceConstant4 - 1.0)
                                //--
                                let RachfordRiceConstant12 = Double(firstValue! * RachfordRiceConstant2 * RachfordRiceConstant7)
                                let RachfordRiceConstant13 = Double(secondValue! * RachfordRiceConstant3 * RachfordRiceConstant8)
                                let RachfordRiceConstant14 = Double(thirdValue! * RachfordRiceConstant4 * RachfordRiceConstant9)
                                //------------------
                                // derivative of Rachford Rice equation (baseValue) set to zero
                                derValue = -RachfordRiceConstant12 / ((1.0 + RachfordRiceConstant7 * firstX) * (1.0 + RachfordRiceConstant7 * firstX)) - RachfordRiceConstant13 / ((1.0 + RachfordRiceConstant8 * firstX) * (1.0 + RachfordRiceConstant8 * firstX)) - RachfordRiceConstant14 / ((1.0 + RachfordRiceConstant9 * firstX) * (1.0 + RachfordRiceConstant9 * firstX))
                                
                                rootArray.append(firstX)
                                fvalueArray.append(baseValue)
                                fdvalueArray.append(derValue)
                                
                                let TotalLiquidComposition = Double(1 - rootArray[i])
                                //print(fdvalueArray)
                                
                                if String(format:"%0.4f",fdvalueArray[i]) == String(format:"%0.4f",fdvalueArray[i-1])
                                {
                                    print("solved after \(i)th iteration")
                                    
                                    
                                    print("Root is: \(rootArray[i])")
                                    
                                    solved = true
                                    break
                                    
                                }
                                
                                myLabel1.text = "Total Vapor Composition = \(rootArray[i])"
                                myLabel2.text = "Total Liquid Composition = \(TotalLiquidComposition)"
                                
                            }
                            
                        }
                        self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
                    }
                    
                    
                    //            self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
                    
                }else{
                    if firstValue != nil && secondValue != nil && sixthValue != nil && seventhValue != nil {
                        
                        
                        var rootArray = [Double]()
                        var fvalueArray = [Double]()
                        var fdvalueArray = [Double]()
                        var solved = false
                        
                        if !solved
                        {
                            for i in 0...1 //not sure exactly why, but "for i in 0...10" yields the same (I think same) as  "for i in 0...200"
                            {
                                var firstX = Double(0.01) //INITIAL GUESS
                                var baseValue = Double()
                                var derValue = Double()
                                if i == 0
                                    
                                {
                                    
                                    //----------------
                                    let DewPointConstant1 = Double(firstValue! / sixthValue!)
                                    let DewPointConstant2 = Double(secondValue! / seventhValue!)
                                    //------------------
                                    let DewPoint = Double(1.0 / (DewPointConstant1 + DewPointConstant2)) //ANSWER dew point
                                    let BubblePoint = Double(firstValue! * sixthValue! + secondValue! * seventhValue!) //ANSWER bubble point
                                    //----------------
                                    let RachfordRiceConstant1 = Double((DewPoint + BubblePoint) / 2.0)
                                    let RachfordRiceConstant2 = Double(sixthValue! / RachfordRiceConstant1)
                                    let RachfordRiceConstant3 = Double(seventhValue! / RachfordRiceConstant1)
                                    //------------------
                                    
                                    // Rachford Rice eqn. set to zero
                                    baseValue = firstValue! * RachfordRiceConstant2 / (1.0 + firstX * (RachfordRiceConstant2 - 1.0)) + secondValue! * RachfordRiceConstant3 / (1.0 + firstX * (RachfordRiceConstant3 - 1.0)) - 1.0
                                    
                                    //----------------
                                    let RachfordRiceConstant7 = Double(RachfordRiceConstant2 - 1.0)
                                    let RachfordRiceConstant8 = Double(RachfordRiceConstant3 - 1.0)
                                    //--
                                    let RachfordRiceConstant12 = Double(firstValue! * RachfordRiceConstant2 * RachfordRiceConstant7)
                                    let RachfordRiceConstant13 = Double(secondValue! * RachfordRiceConstant3 * RachfordRiceConstant8)
                                    //------------------
                                    // derivative of Rachford Rice equation (baseValue) set to zero
                                    derValue = -RachfordRiceConstant12 / ((1.0 + RachfordRiceConstant7 * firstX) * (1.0 + RachfordRiceConstant7 * firstX)) - RachfordRiceConstant13 / ((1.0 + RachfordRiceConstant8 * firstX) * (1.0 + RachfordRiceConstant8 * firstX))
                                    
                                    rootArray.append(firstX)
                                    fvalueArray.append(baseValue)
                                    fdvalueArray.append(derValue)
                                }
                                else
                                {
                                    firstX = rootArray[i-1] - fvalueArray[i-1] / fdvalueArray[i-1]
                                    
                                    //----------------
                                    let DewPointConstant1 = Double(firstValue! / sixthValue!)
                                    let DewPointConstant2 = Double(secondValue! / seventhValue!)
                                    //------------------
                                    let DewPoint = Double(1.0 / (DewPointConstant1 + DewPointConstant2)) //ANSWER dew point
                                    let BubblePoint = Double(firstValue! * sixthValue! + secondValue! * seventhValue!) //ANSWER bubble point
                                    //----------------
                                    let RachfordRiceConstant1 = Double((DewPoint + BubblePoint) / 2.0)
                                    let RachfordRiceConstant2 = Double(sixthValue! / RachfordRiceConstant1)
                                    let RachfordRiceConstant3 = Double(seventhValue! / RachfordRiceConstant1)
                                    //------------------
                                    
                                    // Rachford Rice eqn. set to zero
                                    baseValue = firstValue! * RachfordRiceConstant2 / (1.0 + firstX * (RachfordRiceConstant2 - 1.0)) + secondValue! * RachfordRiceConstant3 / (1.0 + firstX * (RachfordRiceConstant3 - 1.0)) - 1.0
                                    
                                    //----------------
                                    let RachfordRiceConstant7 = Double(RachfordRiceConstant2 - 1.0)
                                    let RachfordRiceConstant8 = Double(RachfordRiceConstant3 - 1.0)
                                    //--
                                    let RachfordRiceConstant12 = Double(firstValue! * RachfordRiceConstant2 * RachfordRiceConstant7)
                                    let RachfordRiceConstant13 = Double(secondValue! * RachfordRiceConstant3 * RachfordRiceConstant8)
                                    //------------------
                                    // derivative of Rachford Rice equation (baseValue) set to zero
                                    derValue = -RachfordRiceConstant12 / ((1.0 + RachfordRiceConstant7 * firstX) * (1.0 + RachfordRiceConstant7 * firstX)) - RachfordRiceConstant13 / ((1.0 + RachfordRiceConstant8 * firstX) * (1.0 + RachfordRiceConstant8 * firstX))
                                    
                                    rootArray.append(firstX)
                                    fvalueArray.append(baseValue)
                                    fdvalueArray.append(derValue)
                                    
                                    let TotalLiquidComposition = Double(1 - rootArray[i])
                                    
                                    //print(fdvalueArray)
                                    
                                    if String(format:"%0.4f",fdvalueArray[i]) == String(format:"%0.4f",fdvalueArray[i-1])
                                    {
                                        print("solved after \(i)th iteration")
                                        
                                        
                                        print("Root is: \(rootArray[i])")
                                        
                                        solved = true
                                        break
                                        
                                    }
                                    
                                    myLabel1.text = "Total Vapor Composition = \(rootArray[i])"
                                    myLabel2.text = "Total Liquid Composition = \(TotalLiquidComposition)"
                                    
                                    
                                }
                                
                            }
                            self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
                        }
                        
                        
                        //            self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
                    }else{
                        
                        myLabel1.text = "Hey! Enter a number!"
                        myLabel2.text = "Hey! Enter a number!"
                       
                        self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
                        
                    }
                    
                    
                    
                    
                }
                
                
            }
            
            
            
            
            
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


//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////

class MeanHeatCapacityandDeltaHViewController: UIViewController {
    
    @IBOutlet var ScrollView: UIScrollView!
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // Initial Temperature
    @IBOutlet weak var myTextField2: UITextField! // Final Temperature
    @IBOutlet weak var myTextField3: UITextField! // Mean Heat Cap. Coeff A
    @IBOutlet weak var myTextField4: UITextField! // Mean Heat Cap. Coeff B
    @IBOutlet weak var myTextField5: UITextField! // Mean Heat Cap. Coeff C
    @IBOutlet weak var myTextField6: UITextField! // Mean Heat Cap. Coeff D
    
    
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
        label.text = "Mean Heat Capacity \nand ΔH"
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
        
        let firstValue = Double(myTextField1.text!) // Initial Temperature
        let secondValue = Double(myTextField2.text!) // Final Temperature
        let thirdValue = Double(myTextField3.text!) // Mean Heat Cap. Coeff A
        let fourthValue = Double(myTextField4.text!) // Mean Heat Cap. Coeff B
        let fifthValue = Double(myTextField5.text!) // Mean Heat Cap. Coeff C
        let sixthValue = Double(myTextField6.text!) // Mean Heat Cap. Coeff D
        
        
        if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil && fifthValue != nil && sixthValue != nil {
            
            let MeanHeatCapacityConstant1 = Double(secondValue! / firstValue!)
            let GasConstant = 8.314472
            //---
            let MeanHeatCapacity = Double((thirdValue! + ((fourthValue! / 2.0) * (firstValue! * (MeanHeatCapacityConstant1 + 1.0))) + ((fifthValue! / 3.0) * (firstValue! * firstValue!) * ((MeanHeatCapacityConstant1 * MeanHeatCapacityConstant1) + MeanHeatCapacityConstant1 + 1.0)) + ((sixthValue!) / ((MeanHeatCapacityConstant1) * (firstValue! * firstValue!)))) * GasConstant)
            let DeltaH = Double(MeanHeatCapacity * (secondValue! - firstValue!))
            
            // ################################################
            
            myLabel1.text = "Mean Heat Capacity (Enthalpy) = \(MeanHeatCapacity) J /(mol*K)"
            myLabel2.text = "ΔH = \(DeltaH) J / mol"
            
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
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    //-----------------------------------------------
    
}


//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////

class EntropyMeanHeatCapacityViewController: UIViewController {
    
    @IBOutlet var ScrollView: UIScrollView!
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // Initial Temperature
    @IBOutlet weak var myTextField2: UITextField! // Final Temperature
    @IBOutlet weak var myTextField3: UITextField! // Entropy Mean Heat Cap. Coeff A
    @IBOutlet weak var myTextField4: UITextField! // Entropy Mean Heat Cap. Coeff B
    @IBOutlet weak var myTextField5: UITextField! // Entropy Mean Heat Cap. Coeff C
    @IBOutlet weak var myTextField6: UITextField! // Entropy Mean Heat Cap. Coeff D
    
    
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
        label.text = "Mean Heat Capacity \n(Entropy)"
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
        
        let firstValue = Double(myTextField1.text!) // Initial Temperature
        let secondValue = Double(myTextField2.text!) // Final Temperature
        let thirdValue = Double(myTextField3.text!) // Mean Heat Cap. Coeff A
        let fourthValue = Double(myTextField4.text!) // Mean Heat Cap. Coeff B
        let fifthValue = Double(myTextField5.text!) // Mean Heat Cap. Coeff C
        let sixthValue = Double(myTextField6.text!) // Mean Heat Cap. Coeff D
        
        
        if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil && fifthValue != nil && sixthValue != nil {
            
            let EntropyMeanHeatCapacityConstant1 = Double(pow(firstValue!, 2.0))
            let EntropyMeanHeatCapacityConstant2 = Double(secondValue! / firstValue!)
            let EntropyMeanHeatCapacityConstant3 = Double(pow(EntropyMeanHeatCapacityConstant2, 2.0))
            
            
            let GasConstant = 8.314472
            

            let EntropyMeanHeatCapacityConstant4 = Double(log(EntropyMeanHeatCapacityConstant2))
                 print("natural ln, aka log(tau), is: \(EntropyMeanHeatCapacityConstant4)")
                            let EntropyMeanHeatCapacity = Double((thirdValue! + (fourthValue! * firstValue! + (fifthValue! * EntropyMeanHeatCapacityConstant1 + (sixthValue! / (EntropyMeanHeatCapacityConstant3 * EntropyMeanHeatCapacityConstant1))) * ((EntropyMeanHeatCapacityConstant2 + 1.0) / 2.0)) * ((EntropyMeanHeatCapacityConstant2 - 1.0) / EntropyMeanHeatCapacityConstant4)) * GasConstant) //ANSWER
                myLabel1.text = "Mean Heat Capacity (Entropy) = \(EntropyMeanHeatCapacity) J / mol"
                
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

//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////

class DeltaEntropyReversibleProcessIdealGasViewController: UIViewController {
    
    @IBOutlet var ScrollView: UIScrollView!
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // Entropy Heat Capacity (J/(mol*K))
    @IBOutlet weak var myTextField2: UITextField! // State 1 Temperature
    @IBOutlet weak var myTextField3: UITextField! // State 1 Pressure
    @IBOutlet weak var myTextField4: UITextField! // State 2 Temperature
    @IBOutlet weak var myTextField5: UITextField! // State 2 Pressure
    
    
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
        label.text = "Change in Entropy\nΔS (J / (mol*K))"
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
        
        let firstValue = Double(myTextField1.text!) // Entropy Heat Capacity (J/(mol*K))
        let secondValue = Double(myTextField2.text!) // State 1 Temperature
        let thirdValue = Double(myTextField3.text!) // State 1 Pressure
        let fourthValue = Double(myTextField4.text!) // State 2 Temperature
        let fifthValue = Double(myTextField5.text!) // State 2 Pressure
        
        
        
        if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil && fifthValue != nil {
            
            
            let GasConstant = 8.314472 // J/(mol*K)
            
            let DeltaEntropyReversibleProcessIdealGasConstant1 = Double(fourthValue! / secondValue!)
            let DeltaEntropyReversibleProcessIdealGasConstant2 = Double(fifthValue! / thirdValue!)
            
            let DeltaEntropyReversibleProcessIdealGas = Double(firstValue! * log(DeltaEntropyReversibleProcessIdealGasConstant1) - GasConstant * log(DeltaEntropyReversibleProcessIdealGasConstant2)) //ANSWER change in entropy (ΔS)
   
            myLabel1.text = "Entropy (ΔS) = \(DeltaEntropyReversibleProcessIdealGas) J / (mol*K)"
            
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


////////////////////////// FLUID MECHANICS ///////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
////////////////////////// FLUID MECHANICS ///////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
////////////////////////// FLUID MECHANICS ///////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
////////////////////////// FLUID MECHANICS ///////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
////////////////////////// FLUID MECHANICS ///////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
////////////////////////// FLUID MECHANICS ///////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
////////////////////////// FLUID MECHANICS ///////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
////////////////////////// FLUID MECHANICS ///////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
////////////////////////// FLUID MECHANICS ///////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
////////////////////////// FLUID MECHANICS ///////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
////////////////////////// FLUID MECHANICS ///////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
////////////////////////// FLUID MECHANICS ///////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
////////////////////////// FLUID MECHANICS ///////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
////////////////////////// FLUID MECHANICS ///////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
////////////////////////// FLUID MECHANICS ///////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
////////////////////////// FLUID MECHANICS ///////////////////////////


////////////////////////////VOLUMETRIC FLOW RATE//////////////////////
//////////////////////////////////////////////////////////////////////
class HagenPoiseuilleLaminarVolumetricFlowRateViewController: UIViewController {
    
    @IBOutlet var ScrollView: UIScrollView!
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // ΔPressure (Pa)
    @IBOutlet weak var myTextField2: UITextField! // Diameter (m)
    @IBOutlet weak var myTextField3: UITextField! // Viscosity (Pa * s)
    @IBOutlet weak var myTextField4: UITextField! // Density (kg / m^3)
    @IBOutlet weak var myTextField5: UITextField! // Length of Pipe (m)
    @IBOutlet weak var myTextField6: UITextField! // Gravity (m / s^2)
    @IBOutlet weak var myTextField7: UITextField! // **Pipe Inclination (Degrees)
    
    
    
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
        label.text = "Hagen-Poiseuille\nVolumetric Flow Rate"
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
        
        let firstValue = Double(myTextField1.text!) // ΔPressure (Pa)
        let secondValue = Double(myTextField2.text!) // Diameter (m)
        let thirdValue = Double(myTextField3.text!) // Viscosity (Pa * s)
        let fourthValue = Double(myTextField4.text!) // Density (kg / m^3)
        let fifthValue = Double(myTextField5.text!) // Length of Pipe (m)
        let sixthValue = Double(myTextField6.text!) // Gravity (m / s^2)
        let seventhValue = Double(myTextField7.text!) // **Pipe Inclination (Degrees)
        
        // ------------------------------
        // Swift 3:
        func sin(degrees: Double) -> Double {
            return __sinpi(degrees/180.0) // RADIANS TO DEGREES!!
        }
        // ------------------------------
        
        if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil && fifthValue != nil && sixthValue != nil && seventhValue != nil {
            
        
            let VolumetricFlowRateConstant1 = Double(sin(degrees: seventhValue!))
            print("sin is: \(VolumetricFlowRateConstant1)") // debugging

            let VolumetricFlowRateConstant6 = Double(firstValue!)
            print("ΔP is: \(VolumetricFlowRateConstant6)") // debugging
                
            let VolumetricFlowRateConstant4 = Double(fourthValue! * sixthValue! * fifthValue! * VolumetricFlowRateConstant1)
                
            print("rho * gravity * lengthOfpipe * sin(deg) is: \(VolumetricFlowRateConstant4)") // debugging
                
            let VolumetricFlowRateConstant5 = Double(VolumetricFlowRateConstant6 - VolumetricFlowRateConstant4)
            print("ΔP - rho * gravity * lengthOfpipe * sin(deg) is: \(VolumetricFlowRateConstant5)") // debugging
            let VolumetricFlowRateConstant2 = Double(secondValue! * secondValue! * secondValue! * secondValue!)
            let pi = 3.14159265359
            let VolumetricFlowRate = Double((VolumetricFlowRateConstant5 * pi * VolumetricFlowRateConstant2) / (128.0 * thirdValue! * fifthValue!)) //ANSWER
                
            myLabel1.text = "Volumetric Flow Rate = \(VolumetricFlowRate) m^3 / s"
            
  
            
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

/////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////

class GregoryFogarasiChenTurbulentVolumetricFlowRateViewController: UIViewController {
    
    @IBOutlet var ScrollView: UIScrollView!
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // ΔPressure (Pa)
    @IBOutlet weak var myTextField2: UITextField! // Diameter (m)
    @IBOutlet weak var myTextField3: UITextField! // Viscosity (Pa * s)
    @IBOutlet weak var myTextField4: UITextField! // Density (kg / m^3)
    @IBOutlet weak var myTextField5: UITextField! // Length of Pipe (m)
    @IBOutlet weak var myTextField6: UITextField! // Gravity (m / s^2)
    @IBOutlet weak var myTextField7: UITextField! // Effective Surface Roughness (m)
    @IBOutlet weak var myTextField8: UITextField! // **Pipe Inclination (Degrees)
    
    
    
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
        label.text = "Gregory and Fogarasi (Chen)\nVolumetric Flow Rate"
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
        
        let firstValue = Double(myTextField1.text!) // ΔPressure (Pa)
        let secondValue = Double(myTextField2.text!) // Diameter (m)
        let thirdValue = Double(myTextField3.text!) // Viscosity (Pa * s)
        let fourthValue = Double(myTextField4.text!) // Density (kg / m^3)
        let fifthValue = Double(myTextField5.text!) // Length of Pipe (m)
        let sixthValue = Double(myTextField6.text!) // Gravity (m / s^2)
        let seventhValue = Double(myTextField7.text!) // Effective Surface Roughness (m)
        let eighthValue = Double(myTextField8.text!) // **Pipe Inclination (Degrees)
        
        // ------------------------------
        // Swift 3:
        func sin(degrees: Double) -> Double {
            return __sinpi(degrees/180.0) // RADIANS TO DEGREES!!
        }
        // ------------------------------
        
        if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil && fifthValue != nil && sixthValue != nil && seventhValue != nil && eighthValue != nil {
            
            
            let VolumetricFlowRateConstant1 = Double(sin(degrees: eighthValue!))
            
            print("sin is: \(VolumetricFlowRateConstant1)") // debugging
            
            let VolumetricFlowRateConstant6 = Double(firstValue!)
            
            print("ΔP is: \(VolumetricFlowRateConstant6)") // debugging
            
            let VolumetricFlowRateConstant4 = Double(fourthValue! * sixthValue! * fifthValue! * VolumetricFlowRateConstant1)
            
            print("rho * gravity * lengthOfpipe * sin(deg) is: \(VolumetricFlowRateConstant4)") // debugging
            
            let VolumetricFlowRateConstant5 = Double(VolumetricFlowRateConstant6 - VolumetricFlowRateConstant4)
            
            print("ΔP - rho * gravity * lengthOfpipe * sin(deg) is: \(VolumetricFlowRateConstant5)") // debugging
            
            let VolumetricFlowRateConstant2 = Double(secondValue! * secondValue! * secondValue! * secondValue! * secondValue!)
            let pi = 3.14159265359
            
            let VolumetricFlowRateConstant7 = Double(pi * pi * VolumetricFlowRateConstant2 * VolumetricFlowRateConstant5 / 32.0 / fourthValue! / fifthValue!)
            
            let VolumetricFlowRateConstant8 = Double(pow(VolumetricFlowRateConstant7, 0.5)) // "Y" on handout
            
            let VolumetricFlowRateConstant9 = Double(seventhValue! / secondValue! / 3.7065)
            let VolumetricFlowRateConstant10 = Double(thirdValue! * secondValue! / fourthValue! / VolumetricFlowRateConstant8)
            let VolumetricFlowRateConstant11 = Double(VolumetricFlowRateConstant9 + VolumetricFlowRateConstant10)
            let VolumetricFlowRateConstant12 = Double(log10(VolumetricFlowRateConstant11))
            
            let VolumetricFlowRate = Double(-4.0 * VolumetricFlowRateConstant8 * VolumetricFlowRateConstant12)

            myLabel1.text = "Volumetric Flow Rate = \(VolumetricFlowRate) m^3 / s"
            
            
            
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

//////////////////////END VOLUMETRIC FLOW RATE////////////////////////
//////////////////////////////////////////////////////////////////////



////////////////////////////PRESSURE DROP/////////////////////////////
//////////////////////////////////////////////////////////////////////
class HagenPoiseuilleLaminarPressureDropViewController: UIViewController {
    
    @IBOutlet var ScrollView: UIScrollView!
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // Volumetric Flow Rate (m^3 / s)
    @IBOutlet weak var myTextField2: UITextField! // Diameter (m)
    @IBOutlet weak var myTextField3: UITextField! // Viscosity (Pa * s)
    @IBOutlet weak var myTextField4: UITextField! // Density (kg / m^3)
    @IBOutlet weak var myTextField5: UITextField! // Length of Pipe (m)
    @IBOutlet weak var myTextField6: UITextField! // Gravity (m / s^2)
    @IBOutlet weak var myTextField7: UITextField! // **Pipe Inclination (Degrees)
    
    
    
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
        label.text = "Hagen-Poiseuille\nPressure Drop (Pascals)"
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
        let secondValue = Double(myTextField2.text!) // Diameter (m)
        let thirdValue = Double(myTextField3.text!) // Viscosity (Pa * s)
        let fourthValue = Double(myTextField4.text!) // Density (kg / m^3)
        let fifthValue = Double(myTextField5.text!) // Length of Pipe (m)
        let sixthValue = Double(myTextField6.text!) // Gravity (m / s^2)
        let seventhValue = Double(myTextField7.text!) // **Pipe Inclination (Degrees)
        
        // ------------------------------
        // Swift 3:
        func sin(degrees: Double) -> Double {
            return __sinpi(degrees/180.0) // RADIANS TO DEGREES!!
        }
        // ------------------------------
        
        
        if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil && fifthValue != nil && sixthValue != nil && seventhValue != nil {
            
            
            let PressureDropConstant1 = Double(sin(degrees: seventhValue!))
            print("sin is: \(PressureDropConstant1)") // debugging

            let PressureDropConstant2 = Double(secondValue! * secondValue! * secondValue! * secondValue!)
            let PressureDropConstant3 = Double(fourthValue! * sixthValue! * fifthValue! * PressureDropConstant1)
            let pi = 3.14159265359
            
            let PressureDrop = Double(128.0 * thirdValue! * fifthValue! * firstValue! / pi / PressureDropConstant2 + PressureDropConstant3) //ANSWER
           
            
            myLabel1.text = "Pressure Drop (ΔP) = \(PressureDrop) Pa"
            
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
class GregoryFogarasiChenTurbulentPressureDropViewController: UIViewController {
    
    @IBOutlet var ScrollView: UIScrollView!
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // Reynolds Number
    @IBOutlet weak var myTextField2: UITextField! // Volumetric Flow Rate (m^3 / s)
    @IBOutlet weak var myTextField3: UITextField! // Diameter (m)
    @IBOutlet weak var myTextField4: UITextField! // Density (kg / m^3)
    @IBOutlet weak var myTextField5: UITextField! // Length of Pipe (m)
    @IBOutlet weak var myTextField6: UITextField! // Gravity (m / s^2)
    @IBOutlet weak var myTextField7: UITextField! // Effective Surface Roughness (m)
    @IBOutlet weak var myTextField8: UITextField! // **Pipe Inclination (Degrees)
    
    
    
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
        label.text = "Gregory & Fogarasi (Chen) \nPressure Drop (Pa)"
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
        
        let firstValue = Double(myTextField1.text!) // Reynolds Number
        let secondValue = Double(myTextField2.text!) // Volumetric Flow Rate (m^3 / s)
        let thirdValue = Double(myTextField3.text!) // Diameter (m)
        let fourthValue = Double(myTextField4.text!) // Density (kg / m^3)
        let fifthValue = Double(myTextField5.text!) // Length of Pipe (m)
        let sixthValue = Double(myTextField6.text!) // Gravity (m / s^2)
        let seventhValue = Double(myTextField7.text!) // Effective Surface Roughness (m)
        let eighthValue = Double(myTextField8.text!) // **Pipe Inclination (Degrees)
        
        
        // ------------------------------
        // Swift 3:
        func sin(degrees: Double) -> Double {
            return __sinpi(degrees/180.0) // RADIANS TO DEGREES!!
        }
        // ------------------------------
        
        if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil && fifthValue != nil && sixthValue != nil && seventhValue != nil && eighthValue != nil {
            
            
            let PressureDropConstant1 = Double(sin(degrees: eighthValue!))
            
            print("sin is: \(PressureDropConstant1)") // debugging
            
            let PressureDropConstant2 = Double(fourthValue! * sixthValue! * fifthValue! * PressureDropConstant1)
            print("rho * gravity * lengthOfpipe * sin(deg) is: \(PressureDropConstant2)") // debugging
            
            let pi = 3.14159265359
         
            let PressureDropConstant3 = Double(seventhValue! / thirdValue!) // effective surface roughness ratio
            
            let PressureDropConstant4 = Double(PressureDropConstant3 / 2.5497)
            
            let PressureDropConstant5 = Double(7.1490 / firstValue!)
            
            let PressureDropConstant6 = Double(pow(PressureDropConstant4, 1.1098))
            let PressureDropConstant7 = Double(pow(PressureDropConstant5, 0.8981))
            
            let PressureDropConstant8 = Double(PressureDropConstant6 + PressureDropConstant7) // A on handout equation 4.5-17
            
            let PressureDropConstant9 = Double(log10(PressureDropConstant8))
            
            let PressureDropConstant10 = Double(PressureDropConstant3 / 3.7065)
            
            let PressureDropConstant11 = Double(5.0452 / firstValue!)
            
            let PressureDropConstant12 = Double(PressureDropConstant11 * PressureDropConstant9)
            
            let PressureDropConstant13 = Double(PressureDropConstant10 - PressureDropConstant12)
            
            let PressureDropConstant14 = Double(log10(PressureDropConstant13))
            
            let PressureDropConstant15 = Double(-4.0 * PressureDropConstant14)
            
            let PressureDropConstant16 = Double(1.0 / PressureDropConstant15)
            
            let PressureDropConstant17 = Double(pow(PressureDropConstant16, 2.0)) // FRICTION FACTOR
            
            let PressureDropConstant18 = Double(thirdValue! * thirdValue! * thirdValue! * thirdValue! * thirdValue!)
            
            let PressureDrop = Double((32.0 * fourthValue! * fifthValue! * PressureDropConstant17 * secondValue! * secondValue! / pi / pi / PressureDropConstant18) + PressureDropConstant2)
            
            
            myLabel1.text = "Pressure Drop (ΔP) = \(PressureDrop) Pa"
            
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


////////////////////////////END PRESSURE DROP//////////////////////////
///////////////////////////////////////////////////////////////////////

//////////////////////////// DIAMETER /////////////////////////////
//////////////////////////////////////////////////////////////////////
class HagenPoiseuilleLaminarDiameterViewController: UIViewController {
    
    @IBOutlet var ScrollView: UIScrollView!
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // Volumetric Flow Rate (m^3 / s)
    @IBOutlet weak var myTextField2: UITextField! // ΔPressure (Pa)
    @IBOutlet weak var myTextField3: UITextField! // Viscosity (Pa * s)
    @IBOutlet weak var myTextField4: UITextField! // Density (kg / m^3)
    @IBOutlet weak var myTextField5: UITextField! // Length of Pipe (m)
    @IBOutlet weak var myTextField6: UITextField! // Gravity (m / s^2)
    @IBOutlet weak var myTextField7: UITextField! // **Pipe Inclination (Degrees)
    
    
    
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
        label.text = "Hagen-Poiseuille\nDiameter (m)"
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
        let secondValue = Double(myTextField2.text!) // ΔPressure (Pa)
        let thirdValue = Double(myTextField3.text!) // Viscosity (Pa * s)
        let fourthValue = Double(myTextField4.text!) // Density (kg / m^3)
        let fifthValue = Double(myTextField5.text!) // Length of Pipe (m)
        let sixthValue = Double(myTextField6.text!) // Gravity (m / s^2)
        let seventhValue = Double(myTextField7.text!) // **Pipe Inclination (Degrees)
        
        // ------------------------------
        // Swift 3:
        func sin(degrees: Double) -> Double {
            return __sinpi(degrees/180.0) // RADIANS TO DEGREES!!
        }
        // ------------------------------
        
        
        if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil && fifthValue != nil && sixthValue != nil && seventhValue != nil {
            
            let DiameterConstant1 = Double(sin(degrees: seventhValue!))
            print("sin is: \(DiameterConstant1)") // debugging
        
            let DiameterConstant2 = Double(secondValue! - fourthValue! * sixthValue! * fifthValue! * DiameterConstant1)
            print("DiameterConstant2: \(DiameterConstant2)")
            let pi = 3.14159265359
            let DiameterConstant3 = Double(128.0 * thirdValue! * fifthValue! * firstValue! / pi / DiameterConstant2)
            print("DiameterConstant3: \(DiameterConstant3)")

            let Diameter = Double(pow(DiameterConstant3, 0.25))
            print("Diameter: \(Diameter)")

            myLabel1.text = "Diameter = \(Diameter) m"
            
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

//////////////////////////////////////////////////////////////////////

class TosunAksahinTurbulentDiameterViewController: UIViewController {
    
    @IBOutlet var ScrollView: UIScrollView!
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // ΔPressure (Pa)
    @IBOutlet weak var myTextField2: UITextField! // Volumetric Flow Rate (m^3 / s)
    @IBOutlet weak var myTextField3: UITextField! // Viscosity (Pa * s)
    @IBOutlet weak var myTextField4: UITextField! // Density (kg / m^3)
    @IBOutlet weak var myTextField5: UITextField! // Length of Pipe (m)
    @IBOutlet weak var myTextField6: UITextField! // Gravity (m / s^2)
    @IBOutlet weak var myTextField7: UITextField! // Effective Surface Roughness (m)
    @IBOutlet weak var myTextField8: UITextField! // **Pipe Inclination (Degrees)
    
    
    
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
        label.text = "Tosun and Aksahin\nDiameter (m)"
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
        
        let firstValue = Double(myTextField1.text!) // ΔPressure (Pa)
        let secondValue = Double(myTextField2.text!) // Volumetric Flow Rate (m^3 / s)
        let thirdValue = Double(myTextField3.text!) // Viscosity (Pa * s)
        let fourthValue = Double(myTextField4.text!) // Density (kg / m^3)
        let fifthValue = Double(myTextField5.text!) // Length of Pipe (m)
        let sixthValue = Double(myTextField6.text!) // Gravity (m / s^2)
        let seventhValue = Double(myTextField7.text!) // Effective Surface Roughness (m)
        let eighthValue = Double(myTextField8.text!) // **Pipe Inclination (Degrees)
        
        // ------------------------------
        // Swift 3:
        func sin(degrees: Double) -> Double {
            return __sinpi(degrees/180.0) // RADIANS TO DEGREES!!
        }
        // ------------------------------
        
        if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil && fifthValue != nil && sixthValue != nil && seventhValue != nil && eighthValue != nil {
            
            
            let DiameterConstant1 = Double(sin(degrees: eighthValue!))
            
            print("sin is: \(DiameterConstant1)") // debugging
            
            let DiameterConstant2 = Double(fourthValue! * sixthValue! * fifthValue! * DiameterConstant1)
            
            let DiameterConstant3 = Double(firstValue! - DiameterConstant2)
            
            print("ΔP - rho * gravity * lengthOfpipe * sin(deg) is: \(DiameterConstant3)") // debugging
            
            let pi = 3.14159265359
            
            let DiameterConstant4 = Double(pi * pi * DiameterConstant3 / 32.0 / fourthValue! / fifthValue! / secondValue! / secondValue!)
            
            let DiameterConstant5 = Double(pow(DiameterConstant4, 0.20)) // N on handout equation 4.5-22
            
            let DiameterConstant6 = Double(seventhValue! * DiameterConstant5)
            let DiameterConstant7 = Double(5.875 * (thirdValue! / fourthValue! / secondValue! / DiameterConstant5))
            let DiameterConstant8 = Double(DiameterConstant6 + DiameterConstant7)
            let DiameterConstant9 = Double(log10(DiameterConstant8))
            let DiameterConstant10 = Double(DiameterConstant9 - 0.171)
            let DiameterConstant11 = Double(pow(DiameterConstant10, 2.0))
            let DiameterConstant12 = Double(pow(DiameterConstant11, -0.20))
            
            let Diameter = Double(0.575 * DiameterConstant12 / DiameterConstant5)
            
            myLabel1.text = "Diameter = \(Diameter) m"
            
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

///////////////////////// END DIAMETER //////////////////////////////
/////////////////////////////////////////////////////////////////////


/////////////////////////HEAD LOSS/////////////////////////////////////
///////////////////////////////////////////////////////////////////////
class DarcyWeisbachLaminarHeadLossViewController: UIViewController {
    
    @IBOutlet var ScrollView: UIScrollView!
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // Darcy Friction Factor
    @IBOutlet weak var myTextField2: UITextField! // Length of Pipe (m)
    @IBOutlet weak var myTextField3: UITextField! // Velocity (m / s)
    @IBOutlet weak var myTextField4: UITextField! // Gravity (m / s^2)
    @IBOutlet weak var myTextField5: UITextField! // Diameter (m)
    
    
    
    
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
        label.text = "Darcy-Weisbach\nHead Loss (m)"
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
        
        let firstValue = Double(myTextField1.text!) // Darcy Friction Factor
        let secondValue = Double(myTextField2.text!) // Length of Pipe (m)
        let thirdValue = Double(myTextField3.text!) // Velocity (m / s)
        let fourthValue = Double(myTextField4.text!) // Gravity (m / s^2)
        let fifthValue = Double(myTextField5.text!) // Diameter (m)
        
        
        
        
        if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil && fifthValue != nil {
            
            
            let HeadLoss = Double(firstValue! * secondValue! * thirdValue! * thirdValue! / (fifthValue! * 2.0 * fourthValue!)) //ANSWER
            
            myLabel1.text = "Head Loss = \(HeadLoss) m"
            
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




class WeymouthMassVelocityCompressibleGasViewController: UIViewController {
    
    @IBOutlet var ScrollView: UIScrollView!
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // Molecular Weight (kg / kmol)
    @IBOutlet weak var myTextField2: UITextField! // Diameter of Pipe (m)
    @IBOutlet weak var myTextField3: UITextField! // ΔPressure (kPa)ΔPressure (kPa)
    @IBOutlet weak var myTextField4: UITextField! // Gas Constant 8.314((J * kPa)/(kmol * K))
    @IBOutlet weak var myTextField5: UITextField! // Temperature (Kelvin)
    @IBOutlet weak var myTextField6: UITextField! // Friction Factor
    @IBOutlet weak var myTextField7: UITextField! // Length of Pipe (m)
    @IBOutlet weak var myTextField8: UITextField! // Density (kg / m^3)
    
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
        label.text = "Weymouth Comp. Gas\nVelocity & Mass Velocity"
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

        let firstValue = Double(myTextField1.text!) // Molecular Weight (kg / kmol)
        let secondValue = Double(myTextField2.text!) // Diameter of Pipe (m)
        let thirdValue = Double(myTextField3.text!) // ΔPressure (kPa)ΔPressure (kPa)
        let fourthValue = Double(myTextField4.text!) // Gas Constant 8.314((J * kPa)/(kmol * K))
        let fifthValue = Double(myTextField5.text!) // Temperature (Kelvin)
        let sixthValue = Double(myTextField6.text!) // Friction Factor
        let seventhValue = Double(myTextField7.text!) // Length of Pipe (m)
        let eighthValue = Double(myTextField8.text!) //Density (kg / m^3)
        
        
        
        
        if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil && fifthValue != nil && sixthValue != nil && seventhValue != nil && eighthValue != nil {
            
            
            let WeymouthMassVelocityConstant1 = Double(firstValue! * secondValue! * thirdValue! / fourthValue! / fifthValue! / (4.0 * sixthValue!) / seventhValue!)
            let WeymouthMassVelocity = Double(pow(WeymouthMassVelocityConstant1, 0.5)) //ANSWER mass velocity
            let WeymouthVelocity = Double(WeymouthMassVelocity / eighthValue!) //ANSWER velocity
            
            
            myLabel1.text = "Mass Velocity = \n \(WeymouthMassVelocity) kg / (s * m^2)"
            myLabel2.text = "Velocity = \n \(WeymouthVelocity) m / s"
            
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
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////

class TorricelliLawVelocityLaminarViewController: UIViewController {
    
    @IBOutlet var ScrollView: UIScrollView!
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // Gravity (m / s^2)
    @IBOutlet weak var myTextField2: UITextField! // Height of Fluid (m)

    
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
        label.text = "Torricelli \nVelocity (m / s)"
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
      
        
        let firstValue = Double(myTextField1.text!) // Gravity (m / s^2)
        let secondValue = Double(myTextField2.text!) // Height of Fluid (m)

        
        if firstValue != nil && secondValue != nil {
            
            
            let ToricelliVelocityConstant1 = Double(2 * firstValue! * secondValue!)
            let ToricelliVelocity = Double(pow(ToricelliVelocityConstant1, 0.5))

            myLabel1.text = "Velocity = \(ToricelliVelocity) m / s"
            
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
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////

class ReynoldsNumberViewController: UIViewController {
    
    @IBOutlet var ScrollView: UIScrollView!
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // Density (kg / m^3)
    @IBOutlet weak var myTextField2: UITextField! // Velocity (m / s)
    @IBOutlet weak var myTextField3: UITextField! // Diameter (m)
    @IBOutlet weak var myTextField4: UITextField! // Viscosity (Pa * s)

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
        label.text = "Reynolds Number\n(Dimensionless Units)"
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
        
        let firstValue = Double(myTextField1.text!) // Density (kg / m^3)
        let secondValue = Double(myTextField2.text!) // Velocity (m / s)
        let thirdValue = Double(myTextField3.text!) // Diameter (m)
        let fourthValue = Double(myTextField4.text!) //Viscosity (Pa * s)
       
        
        
        if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil {
            
            
            let ReynoldsNumber = Double(firstValue! * secondValue! * thirdValue! / fourthValue!) //ANSWER
            
            myLabel1.text = "Reynolds number = \(ReynoldsNumber)"
            
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

//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////


//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////

class FrictionalDissipationViewController: UIViewController {
    
    @IBOutlet var ScrollView: UIScrollView!
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // Viscosity (Pa * s)
    @IBOutlet weak var myTextField2: UITextField! // Length of Pipe (m)
    @IBOutlet weak var myTextField3: UITextField! // Volumetric Flow Rate (m^3)
    @IBOutlet weak var myTextField4: UITextField! // Radius (m)
    @IBOutlet weak var myTextField5: UITextField! // Density (kg / m^3)
    
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
        label.text = "Frictional Dissipation\n(Joule / kg)"
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
        
        let firstValue = Double(myTextField1.text!) // Viscosity (Pa * s)
        let secondValue = Double(myTextField2.text!) // Length of Pipe (m)
        let thirdValue = Double(myTextField3.text!) // Volumetric Flow Rate (m^3)
        let fourthValue = Double(myTextField4.text!) // Radius (m)
        let fifthValue = Double(myTextField5.text!) // Density (kg / m^3)

        
        
        
        if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil && fifthValue != nil {
            
            let pi = 3.14159265359
            let FrictionalDissipationConstant1 = Double(fourthValue! * fourthValue! * fourthValue! * fourthValue!)
            let FrictionalDissipation = Double(8.0 * firstValue! * secondValue! * thirdValue! / pi / FrictionalDissipationConstant1 / fifthValue!) //ANSWER
            
            
            myLabel1.text = "Frictional Dissipation = \(FrictionalDissipation)"
            
            self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
            
        }else{
            myLabel1.text = "Hey! Enter a number!"
            
            self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
        }
    }
    
    func sideMenus() {
        if revealViewController() != nil {
            
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


class FlowPastASingleSphereArchimedesNumberViewController: UIViewController {
    
    @IBOutlet var ScrollView: UIScrollView!
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // Diameter of Particle (m)
    @IBOutlet weak var myTextField2: UITextField! // Gravity (m / s^2)
    @IBOutlet weak var myTextField3: UITextField! // Density of Fluid (kg / m^3)
    @IBOutlet weak var myTextField4: UITextField! // Density of Particle (kg / m^3)
    @IBOutlet weak var myTextField5: UITextField! // Viscosity of Fluid (Pa * s)

    
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
        label.text = "Archimedes Number \n(Dimensionless)"
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
        
        let firstValue = Double(myTextField1.text!) // Diameter of Particle (m)
        let secondValue = Double(myTextField2.text!) // Gravity (m / s^2)
        let thirdValue = Double(myTextField3.text!) // Density of Fluid (kg / m^3)
        let fourthValue = Double(myTextField4.text!) // Density of Particle (kg / m^3)
        let fifthValue = Double(myTextField5.text!) // Viscosity of Fluid (Pa * s)
   
        
        
        
        if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil && fifthValue != nil {
            
            
            let ArchimedesNumberConstant1 = Double(firstValue! * firstValue! * firstValue!)
            let ArchimedesNumberConstant2 = Double(fifthValue! * fifthValue!)
            
            let ArchimedesNumber = Double(ArchimedesNumberConstant1 * secondValue! * thirdValue! * (fourthValue! - thirdValue!) / ArchimedesNumberConstant2)
            
            myLabel1.text = "Archimedes number = \(ArchimedesNumber)"
          
            
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

////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////

class FlowPastASingleSphereReynoldsNumberOfParticleViewController: UIViewController {
    
    @IBOutlet var ScrollView: UIScrollView!
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // Diameter of Particle (m)
    @IBOutlet weak var myTextField2: UITextField! // Terminal Velocity (m / s)
    @IBOutlet weak var myTextField3: UITextField! // Density of Fluid (kg / m^3)
    @IBOutlet weak var myTextField4: UITextField! // Viscosity of Fluid (Pa * s)
    
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
        label.text = "Reynolds Number of Particle\n(Dimensionless Units)"
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
        
        let firstValue = Double(myTextField1.text!) // Diameter of Particle (m)
        let secondValue = Double(myTextField2.text!) // Terminal Velocity (m / s)
        let thirdValue = Double(myTextField3.text!) // Density of Fluid (kg / m^3)
        let fourthValue = Double(myTextField4.text!) // Viscosity of Fluid (Pa * s)
        
        
        
        if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil {
            
            
            let ReynoldsNumberOfParticle = Double(firstValue! * secondValue! * thirdValue! / fourthValue!) //ANSWER
            
            myLabel1.text = "Reynolds number (particle) = \(ReynoldsNumberOfParticle)"
            
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

//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////


class FlowPastASingleSphereTurtonClarkTerminalVelocityViewController: UIViewController {
    
    @IBOutlet var ScrollView: UIScrollView!
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // Diameter of Particle (m)
    @IBOutlet weak var myTextField2: UITextField! // Gravity (m / s^2)
    @IBOutlet weak var myTextField3: UITextField! // Density of Fluid (kg / m^3)
    @IBOutlet weak var myTextField4: UITextField! // Density of Particle (kg / m^3)
    @IBOutlet weak var myTextField5: UITextField! // Viscosity of Fluid (Pa * s)
    
    
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
        label.text = "Turton and Clark \nTerminal Velocity (m / s)"
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
        
        let firstValue = Double(myTextField1.text!) // Diameter of Particle (m)
        let secondValue = Double(myTextField2.text!) // Gravity (m / s^2)
        let thirdValue = Double(myTextField3.text!) // Density of Fluid (kg / m^3)
        let fourthValue = Double(myTextField4.text!) // Density of Particle (kg / m^3)
        let fifthValue = Double(myTextField5.text!) // Viscosity of Fluid (Pa * s)
        
        
        
        
        if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil && fifthValue != nil {
            
            
            let ArchimedesNumberConstant1 = Double(firstValue! * firstValue! * firstValue!)
            let ArchimedesNumberConstant2 = Double(fifthValue! * fifthValue!)
            
            let ArchimedesNumber = Double(ArchimedesNumberConstant1 * secondValue! * thirdValue! * (fourthValue! - thirdValue!) / ArchimedesNumberConstant2) //Archimedes Number
            
            let TerminalVelocityConstant1 = Double(pow(ArchimedesNumber, 0.412))
            let TerminalVelocityConstant2 = Double(1.0 + 0.0579 * TerminalVelocityConstant1)
            let TerminalVelocityConstant3 = Double(pow(TerminalVelocityConstant2, -1.214))
            let TerminalVelocityConstant4 = Double(ArchimedesNumber * TerminalVelocityConstant3 / 18) //ReynoldsNumberParticle
            
            
            let TerminalVelocity = Double(fifthValue! * TerminalVelocityConstant4 / thirdValue! / firstValue!)
            
            
            myLabel1.text = "Terminal Velocity = \(TerminalVelocity) m/s"
            
            
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

//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////


class FlowPastASingleSphereTosunAksahinDiameterParticleViewController: UIViewController {
    
    @IBOutlet var ScrollView: UIScrollView!
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // Terminal Velocity (m / s)
    @IBOutlet weak var myTextField2: UITextField! // Gravity (m / s^2)
    @IBOutlet weak var myTextField3: UITextField! // Density of Fluid (kg / m^3)
    @IBOutlet weak var myTextField4: UITextField! // Density of Particle (kg / m^3)
    @IBOutlet weak var myTextField5: UITextField! // Viscosity of Fluid (Pa * s)
    
    
    @IBOutlet weak var myLabel1: UILabel!
    @IBOutlet weak var myLabel2: UILabel!
    @IBOutlet weak var myLabel3: UILabel!
    
    
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
        label.text = "Tosun & Aksahin \nDiameter of Particle (m)"
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
        
        let firstValue = Double(myTextField1.text!) // Terminal Velocity (m / s)
        let secondValue = Double(myTextField2.text!) // Gravity (m / s^2)
        let thirdValue = Double(myTextField3.text!) // Density of Fluid (kg / m^3)
        let fourthValue = Double(myTextField4.text!) // Density of Particle (kg / m^3)
        let fifthValue = Double(myTextField5.text!) // Viscosity of Fluid (Pa * s)
        
        
        
        
        if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil && fifthValue != nil {
            
            
            let DiameterParticleConstant1 = Double((4.0 / 3.0) * secondValue! * (fourthValue! - thirdValue!) * fifthValue! / (thirdValue! * thirdValue!) / (firstValue! * firstValue! * firstValue!)) //Y variable in Modeling in Transport Phenomena [Ismali_Tosun]...* PDF page ~77
            
            
            let DiameterParticleConstant2 = Double(pow(DiameterParticleConstant1, 0.25))
            let DiameterParticleConstant3 = Double(pow(DiameterParticleConstant1, 0.50))
            let DiameterParticleConstant4 = Double(pow(DiameterParticleConstant1, 0.75))
            let DiameterParticleConstant5 = Double(3.15 + 0.052 / DiameterParticleConstant2 + 0.007 / DiameterParticleConstant3 - 0.00019 / DiameterParticleConstant4)
            
            let DiameterParticleConstant10 = Double(pow(2.718281828, DiameterParticleConstant5)) //Psi(Y) variable in Modeling in Transport Phenomena [Ismali_Tosun]...* PDF page ~77
            
            let DiameterParticleConstant6 = Double(pow(DiameterParticleConstant1, 0.65))
            let DiameterParticleConstant7 = Double(pow(DiameterParticleConstant1, 0.54545455))
            let DiameterParticleConstant8 = Double(6.0 * DiameterParticleConstant6 - DiameterParticleConstant7)
            let DiameterParticleConstant9 = Double(pow(DiameterParticleConstant8, 0.85))
            
            let DiameterParticleConstant11 = Double(DiameterParticleConstant10 / DiameterParticleConstant9) // Reynolds number of particle

            let DiameterParticleConstant12 = Double(DiameterParticleConstant1 * DiameterParticleConstant11) // friction factor
            
            let DiameterParticle = Double(fifthValue! * DiameterParticleConstant11 / thirdValue! / firstValue!)
            
            myLabel1.text = "Reynolds number (particle) = \n\(DiameterParticleConstant11)"
            myLabel2.text = "Friction Factor = \n\(DiameterParticleConstant12)"
            myLabel3.text = "Diameter (particle) = \n\(DiameterParticle) m"

            
            
            self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
            
        }else{
            myLabel1.text = "Hey! Enter a number!"
            myLabel2.text = "Hey! Enter a number!"
            myLabel3.text = "Hey! Enter a number!"

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


class FlowPastASingleSphereTosunAksahinViscosityFluidViewController: UIViewController {
    
    @IBOutlet var ScrollView: UIScrollView!
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // Terminal Velocity (m / s)
    @IBOutlet weak var myTextField2: UITextField! // Gravity (m / s^2)
    @IBOutlet weak var myTextField3: UITextField! // Density of Fluid (kg / m^3)
    @IBOutlet weak var myTextField4: UITextField! // Density of Particle (kg / m^3)
    @IBOutlet weak var myTextField5: UITextField! // Diameter of Particle (m)
    
    
    @IBOutlet weak var myLabel1: UILabel!
    @IBOutlet weak var myLabel2: UILabel!
    @IBOutlet weak var myLabel3: UILabel!
    
    
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
        label.text = "Tosun & Aksahin \nViscosity of Fluid (Pa * s)"
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
        
        let firstValue = Double(myTextField1.text!) // Terminal Velocity (m / s)
        let secondValue = Double(myTextField2.text!) // Gravity (m / s^2)
        let thirdValue = Double(myTextField3.text!) // Density of Fluid (kg / m^3)
        let fourthValue = Double(myTextField4.text!) // Density of Particle (kg / m^3)
        let fifthValue = Double(myTextField5.text!) // Diameter of Particle (m)
        
        
        
        
        if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil && fifthValue != nil {
            
            
            let ViscosityFluidConstant1 = Double((4.0 / 3.0) * secondValue! * fifthValue! * (fourthValue! - thirdValue!) / thirdValue! / (firstValue! * firstValue!)) //X ALSO Friction Factor variable in Modeling in Transport Phenomena [Ismali_Tosun]...* PDF page ~77
            
            let ViscosityFluidConstant2 = Double(pow(ViscosityFluidConstant1, -1.81818182))
            let ViscosityFluidConstant3 = Double(1.0 + 120.0 * ViscosityFluidConstant2)
            let ViscosityFluidConstant4 = Double(pow(ViscosityFluidConstant3, 0.36363636))
            let ViscosityFluidConstant5 = Double(24.0 * ViscosityFluidConstant4 / ViscosityFluidConstant1) //Reynolds number of particle

            let ViscosityFluid = Double(fifthValue! * firstValue! * thirdValue! / ViscosityFluidConstant5)
            
            myLabel1.text = "Reynolds number (particle) = \n\(ViscosityFluidConstant5)"
            myLabel2.text = "Friction Factor = \n\(ViscosityFluidConstant1)"
            myLabel3.text = "Viscosity (fluid) = \n\(ViscosityFluid) Pa * s"
            
            
            
            self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
            
        }else{
            myLabel1.text = "Hey! Enter a number!"
            myLabel2.text = "Hey! Enter a number!"
            myLabel3.text = "Hey! Enter a number!"
            
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

////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////

class FlowPastASingleSphereFrictionFactorLappleShepherdViewController: UIViewController {
    
    @IBOutlet var ScrollView: UIScrollView!
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // Diameter of Particle (m)
    @IBOutlet weak var myTextField2: UITextField! // Terminal Velocity (m / s)
    @IBOutlet weak var myTextField3: UITextField! // Density of Fluid (kg / m^3)
    @IBOutlet weak var myTextField4: UITextField! // Viscosity of Fluid (Pa * s)
    
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
        label.text = "Friction Factor \nLapple & Shepherd"
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

        let firstValue = Double(myTextField1.text!) // Diameter of Particle (m)
        let secondValue = Double(myTextField2.text!) // Terminal Velocity (m / s)
        let thirdValue = Double(myTextField3.text!) // Density of Fluid (kg / m^3)
        let fourthValue = Double(myTextField4.text!) // Viscosity of Fluid (Pa * s)
        
        
        
        if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil {
            
            
            let ReynoldsNumberOfParticle = Double(firstValue! * secondValue! * thirdValue! / fourthValue!) //ANSWER
            
            
            if ReynoldsNumberOfParticle < 2.0 {
                
                let FrictionFactor = Double(24.0 / ReynoldsNumberOfParticle) //ANSWER Stokes' law
                
                myLabel1.text = "Reynolds number (particle) = \(ReynoldsNumberOfParticle)"
                myLabel2.text = "Stokes' Law (Re < 2)\nFriction Factor = \(FrictionFactor)"
            }else{
                
                if ReynoldsNumberOfParticle > 2.0 && ReynoldsNumberOfParticle < 500.0 {
                    
                    let FrictionFactorConstant1 = Double(pow(ReynoldsNumberOfParticle, 0.6))
                    let FrictionFactor = Double(18.5 / FrictionFactorConstant1) //ANSWER Newton's law
                    
                    myLabel1.text = "Reynolds number (particle) = \(ReynoldsNumberOfParticle)"
                    myLabel2.text = "Newton's Law (2 < Re < 500)\nFriction Factor = \(FrictionFactor)"
                    
                }else{
                    
                    let FrictionFactor = Double(0.44) //ANSWER
                    
                    myLabel1.text = "Reynolds number (particle) = \(ReynoldsNumberOfParticle)"
                    myLabel2.text = "Friction Factor (Re > 500) = \(FrictionFactor)"
                    }
                
            
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

////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////

class FlowPastASingleSphereFrictionFactorTurtonLevenspielViewController: UIViewController {
    
    @IBOutlet var ScrollView: UIScrollView!
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // Diameter of Particle (m)
    @IBOutlet weak var myTextField2: UITextField! // Terminal Velocity (m / s)
    @IBOutlet weak var myTextField3: UITextField! // Density of Fluid (kg / m^3)
    @IBOutlet weak var myTextField4: UITextField! // Viscosity of Fluid (Pa * s)
    
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
        label.text = "Friction Factor \nTurton & Levenspiel"
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
        
        let firstValue = Double(myTextField1.text!) // Diameter of Particle (m)
        let secondValue = Double(myTextField2.text!) // Terminal Velocity (m / s)
        let thirdValue = Double(myTextField3.text!) // Density of Fluid (kg / m^3)
        let fourthValue = Double(myTextField4.text!) // Viscosity of Fluid (Pa * s)
        
        
        
        if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil {
            
            
            let ReynoldsNumberOfParticle = Double(firstValue! * secondValue! * thirdValue! / fourthValue!) // Reynolds number of particle
            
            let FrictionFactorConstant1 = Double(pow(ReynoldsNumberOfParticle, 0.657))
            let FrictionFactorConstant2 = Double(pow(ReynoldsNumberOfParticle, -1.09))
            let FrictionFactorConstant3 = Double(1.0 + 0.173 * FrictionFactorConstant1)
            let FrictionFactorConstant4 = Double(1.0 + 16300 * FrictionFactorConstant2)
            let FrictionFactor = Double(24.0 * FrictionFactorConstant3 / ReynoldsNumberOfParticle + 0.413 / FrictionFactorConstant4) //ANSWER Friction Factor


            myLabel1.text = "Reynolds number (particle) = \(ReynoldsNumberOfParticle)"
            myLabel2.text = "Friction Factor = \(FrictionFactor)"
       
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

/////////////////////// FLOW IN PACKED BEDS //////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
/////////////////////// FLOW IN PACKED BEDS //////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
/////////////////////// FLOW IN PACKED BEDS //////////////////////////
/////////////////////// FLOW IN PACKED BEDS //////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
/////////////////////// FLOW IN PACKED BEDS //////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
/////////////////////// FLOW IN PACKED BEDS //////////////////////////
/////////////////////// FLOW IN PACKED BEDS //////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
/////////////////////// FLOW IN PACKED BEDS //////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
/////////////////////// FLOW IN PACKED BEDS //////////////////////////
/////////////////////// FLOW IN PACKED BEDS //////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
/////////////////////// FLOW IN PACKED BEDS //////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
/////////////////////// FLOW IN PACKED BEDS //////////////////////////

//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
class FlowInPackedBedsReynoldsNumberViewController: UIViewController {
    
    @IBOutlet var ScrollView: UIScrollView!
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // Diameter of Particle (m)
    @IBOutlet weak var myTextField2: UITextField! // Superficial Velocity (m / s)
    @IBOutlet weak var myTextField3: UITextField! // Density of Fluid (kg / m^3)
    @IBOutlet weak var myTextField4: UITextField! // Porosity | Void Volume Fraction
    @IBOutlet weak var myTextField5: UITextField! // Viscosity of Fluid (Pa * s)
    
    
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
        label.text = "Reynolds Number \n(Packed Beds)"
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
        
        let firstValue = Double(myTextField1.text!) // Diameter of Particle (m)
        let secondValue = Double(myTextField2.text!) // Superficial Velocity (m / s)
        let thirdValue = Double(myTextField3.text!) // Density of Fluid (kg / m^3)
        let fourthValue = Double(myTextField4.text!) // Porosity | Void Volume Fraction
        let fifthValue = Double(myTextField5.text!) // Viscosity of Fluid (Pa * s)
        
        if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil && fifthValue != nil {
            
            
            let ReynoldsNumberPackedBeds = Double((firstValue! * secondValue! * thirdValue! / fifthValue!) * (1.0 / (1.0 - fourthValue!)))
         
            
            myLabel1.text = "Reynolds number (packed beds) = \(ReynoldsNumberPackedBeds)"
            
            
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


//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////

class FlowInPackedBedsFrictionFactorViewController: UIViewController {
    
    @IBOutlet var ScrollView: UIScrollView!
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // Diameter of Particle (m)
    @IBOutlet weak var myTextField2: UITextField! // Superficial Velocity (m / s)
    @IBOutlet weak var myTextField3: UITextField! // Density of Fluid (kg / m^3)
    @IBOutlet weak var myTextField4: UITextField! // Porosity | Void Volume Fraction
    @IBOutlet weak var myTextField5: UITextField! // Length of Pipe (m)
    @IBOutlet weak var myTextField6: UITextField! // ΔPressure (Pa)
    @IBOutlet weak var myTextField7: UITextField! // Viscosity (Pa * s)
    
    
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
        label.text = "Friction Factor \n(Packed Beds)"
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

        let firstValue = Double(myTextField1.text!) // Diameter of Particle (m)
        let secondValue = Double(myTextField2.text!) // Superficial Velocity (m / s)
        let thirdValue = Double(myTextField3.text!) // Density of Fluid (kg / m^3)
        let fourthValue = Double(myTextField4.text!) // Porosity | Void Volume Fraction
        let fifthValue = Double(myTextField5.text!) // Length of Pipe (m)
        let sixthValue = Double(myTextField6.text!) // |ΔPressure| (Pa)
        let seventhValue = Double(myTextField7.text!) // Viscosity (Pa * s)
        
        if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil && fifthValue != nil && sixthValue != nil && seventhValue != nil {
            
            
//            let FrictionFactorConstant1 = Double(fourthValue! * fourthValue! * fourthValue!)
//            let FrictionFactorConstant2 = Double(secondValue! * secondValue!)
//            let FrictionFactorConstant3 = Double(FrictionFactorConstant1 / (1.0 - fourthValue!))
//
//            let FrictionFactor = Double(FrictionFactorConstant3 * (firstValue! * sixthValue! / thirdValue! / FrictionFactorConstant2 / fifthValue!))
//            print("Friction Factor Equation 4.6-1 = \(FrictionFactor)")
            //       //  Note, see FlowInPackedBedsFrictionFactorViewController in Isamli and Tosun textbook page ~114
            
            
            let ReynoldsNumberPackedBeds = Double((firstValue! * secondValue! * thirdValue! / seventhValue!) * (1.0 / (1.0 - fourthValue!)))
            
            if ReynoldsNumberPackedBeds < 10.0 {
                
                let FrictionFactorKozenyCarman = Double(150.0 / ReynoldsNumberPackedBeds) //ANSWER Blake-Kozeny equation
                
                myLabel1.text = "Reynolds number (packed bed) = \n\(ReynoldsNumberPackedBeds)"
                myLabel2.text = "Kozeny-Carman equation (Re < 10)\nFriction factor (laminar) = \n\(FrictionFactorKozenyCarman)"
            }else{
                
                if ReynoldsNumberPackedBeds > 1000.0 {
                    
                    let FrictionFactorBurkePlummer = Double(1.75)  //ANSWER Burke-Plummer equation
                    
                    myLabel1.text = "Reynolds number (packed bed) = \n\(ReynoldsNumberPackedBeds)"
                    myLabel2.text = "Burke-Plummer equation (Re > 1000)\nFriction factor (turbulent) = \n\(FrictionFactorBurkePlummer)"
                    
                }else{
                    
                    let FrictionFactorErgun = Double(150.0 / ReynoldsNumberPackedBeds + 1.75) //ANSWER Ergun equation
                    
                    myLabel1.text = "Reynolds number (packed bed) = \n\(ReynoldsNumberPackedBeds)"
                    myLabel2.text = "Εrgun equation (10 < Re < 1000)\nFriction Factor = \(FrictionFactorErgun)"
                }
                
                
            }
            
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
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////

class FlowInPackedBedsPorosityVoidVolumeFractionViewController: UIViewController {
    
    @IBOutlet var ScrollView: UIScrollView!
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // Diameter of Particle (m)
    @IBOutlet weak var myTextField2: UITextField! // Superficial Velocity (m / s)
    @IBOutlet weak var myTextField3: UITextField! // Density of Fluid (kg / m^3)
    @IBOutlet weak var myTextField4: UITextField! // Length of Pipe (m)
    @IBOutlet weak var myTextField5: UITextField! // ΔPressure (Pa)
    @IBOutlet weak var myTextField6: UITextField! // Viscosity (Pa * s)
    @IBOutlet weak var myTextField7: UITextField! // Iterative Guess (0.0 to 1.0)
    
    
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
        label.text = "Ergun Equation \n(Porosity | Void Volume Fraction)"
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
        
        let firstValue = Double(myTextField1.text!) // Diameter of Particle (m)
        let secondValue = Double(myTextField2.text!) // Superficial Velocity (m / s)
        let thirdValue = Double(myTextField3.text!) // Density of Fluid (kg / m^3)
        let fourthValue = Double(myTextField4.text!) // Length of Pipe (m)
        let fifthValue = Double(myTextField5.text!) // ΔPressure (Pa)
        let sixthValue = Double(myTextField6.text!) // Viscosity (Pa * s)
        let seventhValue = Double(myTextField7.text!) // Iterative Guess (0.0 to 1.0)

        
        if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil && fifthValue != nil && sixthValue != nil && seventhValue != nil {
            
            
            let Constant1 = Double(firstValue! * secondValue! * thirdValue! / sixthValue!) //part of Re_pb equation Ismali_Tosun
            let Constant2 = Double(firstValue! * fifthValue! / thirdValue! / secondValue! / secondValue! / fourthValue!) //part of Ff_pb equation Ismali_Tosun
            
            let Constant3 = Double(150.0 / Constant1 / Constant2) // E^2 #
            let Constant4 = Double((1.75 / Constant3) + Constant3 + Constant3) // E^1 #
            let Constant5 = Double((1.75 / Constant3) + Constant3) // E^0 # NOTE: E^0 = 1
            

            var rootArray = [Double]()
            var fvalueArray = [Double]()
            var fdvalueArray = [Double]()
            var solved = false

            if !solved
            {
                for i in 0...1000
                {
                    var firstX = Double(seventhValue!) //INITIAL GUESS
                    var baseValue = Double()
                    var derValue = Double()
                    if i == 0

                    {




//                        let baseConstant1 = Double(1.75 * fourthValue! * thirdValue! * secondValue! * secondValue! / firstValue!)
//                        let baseConstant2 = Double(150.0 * sixthValue! * fourthValue! * secondValue! / firstValue! / firstValue!)
//                        let baseConstant3 = Double(fifthValue!) //ΔPressure

                       
 
                        
                        // Ergun equation set to zero
                        baseValue = firstX * firstX * firstX - Constant3 * firstX * firstX + Constant4 * firstX - Constant5

                        // derivative of above equation set to zero
                        derValue = 3.0  * firstX * firstX - 2.0 * Constant3 * firstX + Constant4



                        rootArray.append(firstX)
                        fvalueArray.append(baseValue)
                        fdvalueArray.append(derValue)
                    }
                    else
                    {
                        firstX = rootArray[i-1] - fvalueArray[i-1] / fdvalueArray[i-1]

                        let Constant1 = Double(firstValue! * secondValue! * thirdValue! / sixthValue!) //part of Re_pb equation Ismali_Tosun
                        let Constant2 = Double(firstValue! * fifthValue! / thirdValue! / secondValue! / secondValue! / fourthValue!) //part of Ff_pb equation Ismali_Tosun
                        
                        let Constant3 = Double(150.0 / Constant1 / Constant2) // E^2 #
                        let Constant4 = Double((1.75 / Constant2) + Constant3 + Constant3) // E^1 #
                        let Constant5 = Double((1.75 / Constant2) + Constant3) // #
                        
                        print("E^2 constant is: \(Constant3)")
                        print("E^1 constant is: \(Constant4)")
                        print("E^0 constant is: \(Constant5) (NOTE: E^0 = 1)")
                        
                        
                        // Ergun equation set to zero
                        baseValue = firstX * firstX * firstX - Constant3 * firstX * firstX + Constant4 * firstX - Constant5
                        
                        // derivative of above equation set to zero
                        derValue = 3.0  * firstX * firstX - 2.0 * Constant3 * firstX + Constant4

                        rootArray.append(firstX)
                        fvalueArray.append(baseValue)
                        fdvalueArray.append(derValue)

                        //print(fdvalueArray)

                        if String(format:"%0.9f",fdvalueArray[i]) == String(format:"%0.9f",fdvalueArray[i-1])
                        {
                            print("solved after \(i)th iteration")


                            print("Root is: \(rootArray[i])")

                            solved = true
                            break

                        }

                        myLabel1.text = "Porosity | Void Volume Fraction =\n\(rootArray[i])"

                    }

                }
                self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
            }
                    //===============================
            
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


//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////

class FlowInPackedBedsVelocitySuperficialViewController: UIViewController {
    
    @IBOutlet var ScrollView: UIScrollView!
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // Diameter of Particle (m)
    @IBOutlet weak var myTextField2: UITextField! // Porosity | Void Volume Fraction
    @IBOutlet weak var myTextField3: UITextField! // Density of Fluid (kg / m^3)
    @IBOutlet weak var myTextField4: UITextField! // Length of Pipe (m)
    @IBOutlet weak var myTextField5: UITextField! // ΔPressure (Pa)
    @IBOutlet weak var myTextField6: UITextField! // Viscosity (Pa * s)
    @IBOutlet weak var myTextField7: UITextField! // Iterative Guess (m / s)
    
    
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
        label.text = "Ergun Equation \n(Superficial Velocity)"
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
        
        let firstValue = Double(myTextField1.text!) // Diameter of Particle (m)
        let secondValue = Double(myTextField2.text!) // Porosity | Void Volume Fraction
        let thirdValue = Double(myTextField3.text!) // Density of Fluid (kg / m^3)
        let fourthValue = Double(myTextField4.text!) // Length of Pipe (m)
        let fifthValue = Double(myTextField5.text!) // ΔPressure (Pa)
        let sixthValue = Double(myTextField6.text!) // Viscosity (Pa * s)
        let seventhValue = Double(myTextField7.text!) // Iterative Guess (m / s)
        
        
        if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil && fifthValue != nil && sixthValue != nil && seventhValue != nil {
            
            
            
            let Constant1 = Double((secondValue! * secondValue! * secondValue!) / (1.0 - secondValue!)) //part of Ff_pb equation Ismali_Tosun
            let Constant2 = Double(firstValue! * fifthValue! / thirdValue! / fourthValue!)
            let Constant3 = Double(Constant1 * Constant2)
           
            let Constant4 = Double(1.0 / (1.0 - secondValue!)) //part of Re_pb equation Ismali_Tosun
            let Constant5 = Double(firstValue! * thirdValue! / sixthValue!)
            let Constant6 = Double(Constant4 * Constant5)
            
            //----
            
            
            let Constant7 = Double(150.0 / Constant6) //Velocity^1
           
          
            
            var rootArray = [Double]()
            var fvalueArray = [Double]()
            var fdvalueArray = [Double]()
            var solved = false
            
            if !solved
            {
                for i in 0...1000
                {
                    var firstX = Double(seventhValue!) //INITIAL GUESS
                    var baseValue = Double()
                    var derValue = Double()
                    if i == 0
                        
                    {
                          // Ergun equation set to zero
                        baseValue = 1.75 * firstX * firstX + Constant7 * firstX - Constant3
                        
                        // derivative of above equation set to zero
                        derValue = 3.5  * firstX + Constant7
                        
                        rootArray.append(firstX)
                        fvalueArray.append(baseValue)
                        fdvalueArray.append(derValue)
                    }
                    else
                    {
                        firstX = rootArray[i-1] - fvalueArray[i-1] / fdvalueArray[i-1]
                        
                        // Ergun equation set to zero
                        baseValue = 1.75 * firstX * firstX + Constant7 * firstX - Constant3
                        
                        // derivative of above equation set to zero
                        derValue = 3.5  * firstX + Constant7
                        
                        rootArray.append(firstX)
                        fvalueArray.append(baseValue)
                        fdvalueArray.append(derValue)
                        
                        //print(fdvalueArray)
                        
                        if String(format:"%0.9f",fdvalueArray[i]) == String(format:"%0.9f",fdvalueArray[i-1])
                        {
                            print("solved after \(i)th iteration")
                            
                            
                            print("Root is: \(rootArray[i])")
                            
                            solved = true
                            break
                            
                        }
                        
                        myLabel1.text = "Superficial Velocity = \(rootArray[i]) m/s"
                        
                    }
                    
                }
                self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
            }
            //===============================
            
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

//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////

class FlowInPackedBedsPressureDropViewController: UIViewController {
    
    @IBOutlet var ScrollView: UIScrollView!
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // Diameter of Particle (m)
    @IBOutlet weak var myTextField2: UITextField! // Porosity | Void Volume Fraction
    @IBOutlet weak var myTextField3: UITextField! // Density of Fluid (kg / m^3)
    @IBOutlet weak var myTextField4: UITextField! // Length of Pipe (m)
    @IBOutlet weak var myTextField5: UITextField! // Superficial Velocity (m / s)
    @IBOutlet weak var myTextField6: UITextField! // Viscosity (Pa * s)
    @IBOutlet weak var myTextField7: UITextField! // Iterative Guess (Pa)
    
    
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
        label.text = "Ergun Equation \n(Pressure Drop)"
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
        
        let firstValue = Double(myTextField1.text!) // Diameter of Particle (m)
        let secondValue = Double(myTextField2.text!) // Porosity | Void Volume Fraction
        let thirdValue = Double(myTextField3.text!) // Density of Fluid (kg / m^3)
        let fourthValue = Double(myTextField4.text!) // Length of Pipe (m)
        let fifthValue = Double(myTextField5.text!) // Superficial Velocity (m / s)
        let sixthValue = Double(myTextField6.text!) // Viscosity (Pa * s)
        let seventhValue = Double(myTextField7.text!) // Iterative Guess
        
        
        if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil && fifthValue != nil && sixthValue != nil && seventhValue != nil {
            
            
            
            let Constant1 = Double((secondValue! * secondValue! * secondValue!) / (1.0 - secondValue!)) //part of Ff_pb equation Ismali_Tosun
            let Constant2 = Double(firstValue! / thirdValue! / fifthValue! / fifthValue! / fourthValue!)
            let Constant3 = Double(Constant1 * Constant2)
            
            //----
            
            let Constant4 = Double(1.0 / (1.0 - secondValue!)) //part of Re_pb equation Ismali_Tosun
            let Constant5 = Double(firstValue! * fifthValue! * thirdValue! / sixthValue!)
            let Constant6 = Double(Constant4 * Constant5)
            
            //----
            
            
            let Constant7 = Double(150.0 / Constant6)
            //
            let Constant8 = Double(Constant7 / Constant3)
            let Constant9 = Double(1.75 / Constant3)
            
            
            var rootArray = [Double]()
            var fvalueArray = [Double]()
            var fdvalueArray = [Double]()
            var solved = false
            
            if !solved
            {
                for i in 0...1000
                {
                    var firstX = Double(seventhValue!) //INITIAL GUESS
                    var baseValue = Double()
                    var derValue = Double()
                    if i == 0
                        
                    {
                        // Ergun equation set to zero
                        baseValue = Constant8 + Constant9 - firstX
                        
                        // derivative of above equation set to zero
                        derValue = -1.0
                        
                        rootArray.append(firstX)
                        fvalueArray.append(baseValue)
                        fdvalueArray.append(derValue)
                    }
                    else
                    {
                        firstX = rootArray[i-1] - fvalueArray[i-1] / fdvalueArray[i-1]
                        
                        // Ergun equation set to zero
                        baseValue = Constant8 + Constant9 - firstX
                        
                        // derivative of above equation set to zero
                        derValue = -1.0
                        
                        rootArray.append(firstX)
                        fvalueArray.append(baseValue)
                        fdvalueArray.append(derValue)
                        
                        //print(fdvalueArray)
                        
                        if String(format:"%0.9f",fdvalueArray[i]) == String(format:"%0.9f",fdvalueArray[i-1])
                        {
                            print("solved after \(i)th iteration")
                            
                            
                            print("Root is: \(rootArray[i])")
                            
                            solved = true
                            
                            myLabel1.text = "Pressure Drop = \(rootArray[i]) Pa"
                            
                            break
                            
                            
                            
                        }
                        
                       
                        
                    }
                    
                }
                self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
            }
            //===============================
            
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

//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////

class FlowInPackedBedsDiameterOfParticlesViewController: UIViewController {
    
    @IBOutlet var ScrollView: UIScrollView!
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // Superficial Velocity (m / s)
    @IBOutlet weak var myTextField2: UITextField! // Porosity | Void Volume Fraction
    @IBOutlet weak var myTextField3: UITextField! // Density of Fluid (kg / m^3)
    @IBOutlet weak var myTextField4: UITextField! // Length of Pipe (m)
    @IBOutlet weak var myTextField5: UITextField! // ΔPressure (Pa)
    @IBOutlet weak var myTextField6: UITextField! // Viscosity (Pa * s)
    @IBOutlet weak var myTextField7: UITextField! // Iterative Guess (m)
    
    
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
        label.text = "Ergun Equation \n(Diameter of One Particle)"
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
        
        let firstValue = Double(myTextField1.text!) // Superficial Velocity (m / s)
        let secondValue = Double(myTextField2.text!) // Porosity | Void Volume Fraction
        let thirdValue = Double(myTextField3.text!) // Density of Fluid (kg / m^3)
        let fourthValue = Double(myTextField4.text!) // Length of Pipe (m)
        let fifthValue = Double(myTextField5.text!) // |ΔPressure| (Pa)
        let sixthValue = Double(myTextField6.text!) // Viscosity (Pa * s)
        let seventhValue = Double(myTextField7.text!) // Iterative Guess (m)
        
        if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil && fifthValue != nil && sixthValue != nil && seventhValue != nil {
            
            
            
            let Constant1 = Double((secondValue! * secondValue! * secondValue!) / (1.0 - secondValue!)) //part of Ff_pb equation Ismali_Tosun
            let Constant2 = Double(fifthValue! / thirdValue! / (firstValue! * firstValue!) / fourthValue!)
            let Constant3 = Double(Constant1 * Constant2)
            
            //----
            
            let Constant4 = Double(1.0 / (1.0 - secondValue!)) //part of Re_pb equation Ismali_Tosun
            let Constant5 = Double(firstValue! * thirdValue! / sixthValue!)
            let Constant6 = Double(Constant4 * Constant5)
            
            //----
            
            
            let Constant7 = Double(Constant3 * Constant6)
            //--
            let Constant8 = Double(150.0 / Constant7) //Dp^0 constant
            let Constant9 = Double(1.75 * Constant6 / Constant7) //Dp^1 constant
            
            var rootArray = [Double]()
            var fvalueArray = [Double]()
            var fdvalueArray = [Double]()
            var solved = false
            
            if !solved
            {
                for i in 0...1000
                {
                    var firstX = Double(seventhValue!) //INITIAL GUESS
                    var baseValue = Double()
                    var derValue = Double()
                    if i == 0
                        
                    {
                        // Ergun equation set to zero
                        baseValue = -(firstX * firstX) + Constant9 * firstX + Constant8
                        
                        // derivative of above equation set to zero
                        derValue = -2.0 * firstX + firstX
                        
                        rootArray.append(firstX)
                        fvalueArray.append(baseValue)
                        fdvalueArray.append(derValue)
                    }
                    else
                    {
                        firstX = rootArray[i-1] - fvalueArray[i-1] / fdvalueArray[i-1]
                        
                        // Ergun equation set to zero
                        baseValue = -(firstX * firstX) + Constant9 * firstX + Constant8
                        
                        // derivative of above equation set to zero
                        derValue = -2.0 * firstX + firstX
                        
                        rootArray.append(firstX)
                        fvalueArray.append(baseValue)
                        fdvalueArray.append(derValue)
                        
                        //print(fdvalueArray)
                        
                        if String(format:"%0.9f",fdvalueArray[i]) == String(format:"%0.9f",fdvalueArray[i-1])
                        {
                            print("solved after \(i)th iteration")
                            
                            
                            print("Root is: \(rootArray[i])")
                            
                            solved = true
                             myLabel1.text = "Diameter of One Particle =\n\(rootArray[i]) (m)"
                            break
                            
                           
                            
                        }
                        
                       
                    }
                    
                }
                self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
            }
            //===============================
            
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
////////////////// END FLOW IN PACKED BEDS //////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
////////////////// END FLOW IN PACKED BEDS //////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
////////////////// END FLOW IN PACKED BEDS //////////////////////////
////////////////// END FLOW IN PACKED BEDS //////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
////////////////// END FLOW IN PACKED BEDS //////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
////////////////// END FLOW IN PACKED BEDS //////////////////////////
////////////////// END FLOW IN PACKED BEDS //////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
////////////////// END FLOW IN PACKED BEDS //////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
////////////////// END FLOW IN PACKED BEDS //////////////////////////
////////////////// END FLOW IN PACKED BEDS //////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
////////////////// END FLOW IN PACKED BEDS //////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
////////////////// END FLOW IN PACKED BEDS //////////////////////////

class FrictionFactorFanningLaminarViewController: UIViewController {
    
    @IBOutlet var ScrollView: UIScrollView!
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // Density (kg / m^3)
    @IBOutlet weak var myTextField2: UITextField! // Velocity (m / s)
    @IBOutlet weak var myTextField3: UITextField! // Diameter (m)
    @IBOutlet weak var myTextField4: UITextField! // Viscosity (Pa * s)
    
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
        label.text = "Fanning Friction Factor\n(Dimensionless Units)"
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
        
        let firstValue = Double(myTextField1.text!) // Density (kg / m^3)
        let secondValue = Double(myTextField2.text!) // Velocity (m / s)
        let thirdValue = Double(myTextField3.text!) // Diameter (m)
        let fourthValue = Double(myTextField4.text!) //Viscosity (Pa * s)
        
        
        
        if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil {
            
            
            let FrictionFactorFanningLaminar = Double(16.0 / (firstValue! * secondValue! * thirdValue! / fourthValue!)) //ANSWER
            
            myLabel1.text = "Fanning Friction Factor = \(FrictionFactorFanningLaminar)"
            
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

//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////

class FrictionFactorDarcyLaminarViewController: UIViewController {
    
    // ########### SCROLLING (3of3) #########################
    @IBOutlet var ScrollView: UIScrollView!
    // ################################################

    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // Density (kg / m^3)
    @IBOutlet weak var myTextField2: UITextField! // Velocity (m / s)
    @IBOutlet weak var myTextField3: UITextField! // Diameter (m)
    @IBOutlet weak var myTextField4: UITextField! // Viscosity (Pa * s)
    
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
        label.text = "Darcy Friction Factor\n(Dimensionless Units)"
        self.navigationItem.titleView = label
        // -----
        // ########### SCROLLING (1of3)#########################
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
    
    // ########### SCROLLING (2of3) #########################
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
        
        let firstValue = Double(myTextField1.text!) // Density (kg / m^3)
        let secondValue = Double(myTextField2.text!) // Velocity (m / s)
        let thirdValue = Double(myTextField3.text!) // Diameter (m)
        let fourthValue = Double(myTextField4.text!) //Viscosity (Pa * s)
        
        
        
        if firstValue != nil && secondValue != nil && thirdValue != nil && fourthValue != nil {
            
            
            let FrictionFactorDarcyLaminar = Double(64.0 / (firstValue! * secondValue! * thirdValue! / fourthValue!)) //ANSWER
            
            myLabel1.text = "Darcy Friction Factor = \(FrictionFactorDarcyLaminar)"
            
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

//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////

class FrictionFactorOlujicAndShachamModifiedColebrookandWhiteViewController: UIViewController {
    
    
    // ########### SCROLLING (3of3) #########################
    @IBOutlet var ScrollView: UIScrollView!
    // ################################################
    
    @IBOutlet weak var menuButtonFromPengRob: UIBarButtonItem!
    @IBOutlet weak var logButtonFromPengRob: UIBarButtonItem!
    
    @IBOutlet weak var myTextField1: UITextField! // Effective Surface Roughness (m)
    @IBOutlet weak var myTextField2: UITextField! // Diameter (m)
    @IBOutlet weak var myTextField3: UITextField! // Reynolds Number
    
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
        label.text = "Friction Factor Olujíc &\nShacham (Dimensionless Units)"
        self.navigationItem.titleView = label
        // -----
        // -----
        // ########### SCROLLING (1of3)#########################
        ScrollView.contentSize.height = 2000
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name:NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name:NSNotification.Name.UIKeyboardWillHide, object: nil)
        // ################################################
        
        // ########### Menu (Tutorial) (3) ###############
        sideMenus()
        customizeNavBar()
        // ########### Menu (Tutorial) (3) ###############
        //----makes keyboard disappear by tapping anywhere (3of3)----
        dismissKeyboard()
        //-----------------------------------------------------------
        
        
    }
    // ########### SCROLLING (2of3) #########################
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
        
        let firstValue = Double(myTextField1.text!) // Effective Surface Roughness (m)
        let secondValue = Double(myTextField2.text!) // Diameter (m)
        let thirdValue = Double(myTextField3.text!) // Reynolds Number
        
        
        if firstValue != nil && secondValue != nil && thirdValue != nil {
            
            
            var rootArray = [Double]()
            var fvalueArray = [Double]()
            var fdvalueArray = [Double]()
            var solved = false
            
            if !solved
            {
                for i in 0...10 //not sure exactly why, but "for i in 0...10" yields the same (I think same) as  "for i in 0...200"
                {
                    var firstX = Double(0.0075) //INITIAL GUESS
                    var baseValue = Double()
                    var derValue = Double()
                    if i == 0
                        
                    {
                        
                        let baseValueConstant1 = Double(firstValue! / secondValue!) //effective surface roughness ratio
                        
                        let baseValueConstant2 = Double(0.269 * baseValueConstant1)
                        let baseValueConstant3 = Double(2.185 / thirdValue!)
                        let baseValueConstant4 = Double(14.5 / thirdValue!)

                        let baseValueConstant5 = Double(baseValueConstant2 + baseValueConstant4)

                        let baseValueConstant6 = Double(log(baseValueConstant5))
                        
                        let baseValueConstant7 = Double(baseValueConstant3 * baseValueConstant6)
                        
                        let baseValueConstant8 = Double(baseValueConstant2 - baseValueConstant7)

                        let baseValueConstant9 = Double(log(baseValueConstant8))
                        
                        let baseValueConstant10 = Double(-1.737 * baseValueConstant9)
                        
                        let baseValueConstant11 = Double(pow(baseValueConstant10, -2.0))
                        
                        
                        // Olujíc & Shacham equation set to zero
                        baseValue = baseValueConstant11 - firstX
                        
                        // derivative of Olujíc & Shacham equation set to zero
                        derValue = -1.0
                        
                        rootArray.append(firstX)
                        fvalueArray.append(baseValue)
                        fdvalueArray.append(derValue)
                        
                    }
                    else
                    {
                        firstX = rootArray[i-1] - fvalueArray[i-1] / fdvalueArray[i-1]
                        
                        let baseValueConstant1 = Double(firstValue! / secondValue!) //effective surface roughness ratio
                        
                        let baseValueConstant2 = Double(0.269 * baseValueConstant1)
                        let baseValueConstant3 = Double(2.185 / thirdValue!)
                        let baseValueConstant4 = Double(14.5 / thirdValue!)
                        
                        let baseValueConstant5 = Double(baseValueConstant2 + baseValueConstant4)
                        
                        let baseValueConstant6 = Double(log(baseValueConstant5))
                        
                        let baseValueConstant7 = Double(baseValueConstant3 * baseValueConstant6)
                        
                        let baseValueConstant8 = Double(baseValueConstant2 - baseValueConstant7)
                        
                        let baseValueConstant9 = Double(log(baseValueConstant8))
                        
                        let baseValueConstant10 = Double(-1.737 * baseValueConstant9)
                        
                        let baseValueConstant11 = Double(pow(baseValueConstant10, -2.0))
                        
                        
                        // Olujíc & Shacham equation set to zero
                        baseValue = baseValueConstant11 - firstX
                        
                        // derivative of Olujíc & Shacham equation set to zero
                        derValue = -1.0
                        
                        rootArray.append(firstX)
                        fvalueArray.append(baseValue)
                        fdvalueArray.append(derValue)
                        
                        //print(fdvalueArray)
                        
                        if String(format:"%0.4f",fdvalueArray[i]) == String(format:"%0.4f",fdvalueArray[i-1])
                        {
                            print("solved after \(i)th iteration")
                            
                            
                            print("Root is: \(rootArray[i])")
                            
                            solved = true
                            
                            myLabel1.text = "Friction Factor = \(rootArray[i])" // for some reason the label was not updating with the answer if placed in the "HERE!" comment below. However, It works here if you put the label inside this if statement it works?? 12282017 0411. This problem arose in FrictionFactorOlujicAndShachamModifiedColebrookandWhiteViewController . I think this is happening because the answer is found after the first iteration. Well, at least the problem I tried it was. Page 143 in textbook. Anyways, this is the first time I have seen a solution found after the first iteration.

                            break
                            
                        }
                    // myLabel1.text = "Friction Factor = \(rootArray[i])"   // "HERE!"
                        
                    }
                 //   myLabel1.text = "Friction Factor = \(rootArray[i])"
                    
                }
                
                self.view.endEditing(true) //makes keypad disappear after calculate button is pressed
                
            }
            
            
            // ################################################
            
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
    //----makes keyboard disappear by tapping anywhere (2of3)----
    //Calls this function when the tap is recognized.
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    // ------------------------------
    // ------------------------------
    
}

