//
//  ViewController.swift
//  MyCalculator


import UIKit


let sin_func_NotificationKey = "co.seanallen.darkside"
let sinInverse_func_NotificationKey = "co.seanallen.darksideInverse"
let cos_func_NotificationKey = "co.seanallen.lightside"
let cosInverse_func_NotificationKey = "co.seanallen.lightsideInverse"
let tan_func_NotificationKey = "co.seanallen.tangent"
let tanInverse_func_NotificationKey = "co.seanallen.tangentInverse"

let sinh_func_NotificationKey = "co.seanallen.sineH"
let sinhInverse_func_NotificationKey = "co.seanallen.sineHInverse"
let cosh_func_NotificationKey = "co.seanallen.cosineH"
let coshInverse_func_NotificationKey = "co.seanallen.cosineHInverse"
let tanh_func_NotificationKey = "co.seanallen.tangentH"
let tanhInverse_func_NotificationKey = "co.seanallen.tangentHInverse"

let tenRaisedToX_func_NotificationKey = "co.seanallen.tenRaisedToX"
let twoRaisedToX_func_NotificationKey = "co.seanallen.twoRaisedToX"

let ln_func_NotificationKey = "co.seanallen.ln"
let logyx_func_NotificationKey = "co.seanallen.logyx"

let logTen_func_NotificationKey = "co.seanallen.logTen"
let logTwo_func_NotificationKey = "co.seanallen.logTwo"

let eRaisedToX_func_NotificationKey = "co.seanallen.eRaisedToX"
let yRaisedToX_func_NotificationKey = "co.seanallen.yRaisedToX"

let oneOverX_func_NotificationKey = "co.seanallen.oneOverX"

let twoSqrtX_func_NotificationKey = "co.seanallen.twoSqrtX"
let threeSqrtX_func_NotificationKey = "co.seanallen.threeSqrtX"
let ySqrtX_func_NotificationKey = "co.seanallen.ySqrtX"

let mClear_func_NotificationKey = "co.seanallen.mClear"
let mPlus_func_NotificationKey = "co.seanallen.mPlus"
let mMinus_func_NotificationKey = "co.seanallen.mMinus"
let mRecall_func_NotificationKey = "co.seanallen.mRecall"

let changeDegToRadUILabel_func_NotificationKey = "co.seanallen.changeDegToRadUILabel"
let changeRadToDegUILabel_func_NotificationKey = "co.seanallen.changeRadToDegUILabel"

let xRaisedToTwo_func_NotificationKey = "co.seanallen.xRaisedToTwo"
let xRaisedToThree_func_NotificationKey = "co.seanallen.xRaisedToThree"
let xRaisedToY_func_NotificationKey = "co.seanallen.xRaisedToY"

let xFactorial_func_NotificationKey = "co.seanallen.xFactorial"


let RAND_func_NotificationKey = "co.seanallen.RAND"
let EE_func_NotificationKey = "co.seanallen.EE"
let pi_func_NotificationKey = "co.seanallen.pi"
let e_func_NotificationKey = "co.seanallen.e"


let leftParenthesis_func_NotificationKey = "co.seanallen.leftParenthesis"
let rightParenthesis_func_NotificationKey = "co.seanallen.rightParenthesis"

//---orange---

let decToFrac_func_NotificationKey = "co.seanallen.decToFrac"
let pnr_func_NotificationKey = "co.seanallen.pnr"
let cnr_func_NotificationKey = "co.seanallen.cnr"
let gcf_func_NotificationKey = "co.seanallen.gcf"
let lcm_func_NotificationKey = "co.seanallen.lcm"
let avg_func_NotificationKey = "co.seanallen.avg"

let stoOne_func_NotificationKey = "co.seanallen.stoOne"
let writeStoOne_func_NotificationKey = "co.seanallen.writeStoOne"

let stoTwo_func_NotificationKey = "co.seanallen.stoTwo"
let writeStoTwo_func_NotificationKey = "co.seanallen.writeStoTwo"

let stoThree_func_NotificationKey = "co.seanallen.stoThree"
let writeStoThree_func_NotificationKey = "co.seanallen.writeStoThree"

let stoFour_func_NotificationKey = "co.seanallen.stoFour"
let writeStoFour_func_NotificationKey = "co.seanallen.writeStoFour"

let stoFive_func_NotificationKey = "co.seanallen.stoFive"
let writeStoFive_func_NotificationKey = "co.seanallen.writeStoFive"

let stoSix_func_NotificationKey = "co.seanallen.stoSix"
let writeStoSix_func_NotificationKey = "co.seanallen.writeStoSix"

let stoSeven_func_NotificationKey = "co.seanallen.stoSeven"
let writeStoSeven_func_NotificationKey = "co.seanallen.writeStoSeven"

let stoEight_func_NotificationKey = "co.seanallen.stoEight"
let writeStoEight_func_NotificationKey = "co.seanallen.writeStoEight"

let stoNine_func_NotificationKey = "co.seanallen.stoNine"
let writeStoNine_func_NotificationKey = "co.seanallen.writeStoNine"

let stoTen_func_NotificationKey = "co.seanallen.stoTen"
let writeStoTen_func_NotificationKey = "co.seanallen.writeStoTen"

let stoEleven_func_NotificationKey = "co.seanallen.stoEleven"
let writeStoEleven_func_NotificationKey = "co.seanallen.writeStoEleven"

let stoTwelve_func_NotificationKey = "co.seanallen.stoTwelve"
let writeStoTwelve_func_NotificationKey = "co.seanallen.writeStoTwelve"

let mMult_func_NotificationKey = "co.seanallen.mMult"
let mDivide_func_NotificationKey = "co.seanallen.mDivide"

let didTapView_func_NotificationKey = "co.seanallen.didTapView"


// cyan

let AreaOfCircleGivenRadius_func_NotificationKey = "co.seanallen.AreaOfCircleGivenRadius"
let circumferenceOfCircleGivenRadius_func_NotificationKey = "co.seanallen.circumferenceOfCircleGivenRadius"
let radiusOfCircleGivenDiameter_func_NotificationKey = "co.seanallen.radiusOfCircleGivenDiameter"
let radiusOfCircleGivenArea_func_NotificationKey = "co.seanallen.radiusOfCircleGivenArea"
let volumeOfSphereGivenRadius_func_NotificationKey = "co.seanallen.volumeOfSphereGivenRadius"
let areaOfSphereGivenRadius_func_NotificationKey = "co.seanallen.areaOfSphereGivenRadius"
let radiusOfSphereGivenVolume_func_NotificationKey = "co.seanallen.radiusOfSphereGivenVolume"
let radiusOfSphereGivenArea_func_NotificationKey = "co.seanallen.radiusOfSphereGivenArea"

let volumeOfCylinderGivenRadiusAndHeight_func_NotificationKey = "co.seanallen.volumeOfCylinderGivenRadiusAndHeight"
let areaOfCylinderGivenRadiusAndHeight_func_NotificationKey = "co.seanallen.areaOfCylinderGivenRadiusAndHeight"
let radiusOfCylinderGivenAreaAndHeight_func_NotificationKey = "co.seanallen.radiusOfCylinderGivenAreaAndHeight"
let heightOfCylinderGivenAreaAndRadius_func_NotificationKey = "co.seanallen.heightOfCylinderGivenAreaAndRadius"

let areaofTriangleGivenHeightAndBase_func_NotificationKey = "co.seanallen.areaofTriangleGivenHeightAndBase"
let hypotenuseofRightTriangleGivenSides_func_NotificationKey = "co.seanallen.hypotenuseofRightTriangleGivenSides"
let sideOfRightTriangleGivenHypotenuseAndKnownSide_func_NotificationKey = "co.seanallen.sideOfRightTriangleGivenHypotenuseAndKnownSide"
let areaOfEquilateralTriangleGivenLength_func_NotificationKey = "co.seanallen.areaOfEquilateralTriangleGivenLength"



//stored_varsFor_heightOfCylinderGivenAreaAndRadius_func_NotificationKey
// end cyan



//------------





class myCalculatorViewController: UIViewController {
   
    
    let sin_func = Notification.Name(rawValue: sin_func_NotificationKey)
    let sinInverse_func = Notification.Name(rawValue: sinInverse_func_NotificationKey)

    let cos_func = Notification.Name(rawValue: cos_func_NotificationKey)
    let cosInverse_func = Notification.Name(rawValue: cosInverse_func_NotificationKey)

    let tan_func = Notification.Name(rawValue: tan_func_NotificationKey)
    let tanInverse_func = Notification.Name(rawValue: tanInverse_func_NotificationKey)

    let sinh_func = Notification.Name(rawValue: sinh_func_NotificationKey)
    let sinhInverse_func = Notification.Name(rawValue: sinhInverse_func_NotificationKey)

    let cosh_func = Notification.Name(rawValue: cosh_func_NotificationKey)
    let coshInverse_func = Notification.Name(rawValue: coshInverse_func_NotificationKey)

    let tanh_func = Notification.Name(rawValue: tanh_func_NotificationKey)
    let tanhInverse_func = Notification.Name(rawValue: tanhInverse_func_NotificationKey)

    
    let tenRaisedToX_func = Notification.Name(rawValue: tenRaisedToX_func_NotificationKey)
    
    let twoRaisedToX_func = Notification.Name(rawValue: twoRaisedToX_func_NotificationKey)
    
    let ln_func = Notification.Name(rawValue: ln_func_NotificationKey)
    let logyx_func = Notification.Name(rawValue: logyx_func_NotificationKey)

    
    let logTen_func = Notification.Name(rawValue: logTen_func_NotificationKey)
    let logTwo_func = Notification.Name(rawValue: logTwo_func_NotificationKey)

    
    
    let eRaisedToX_func = Notification.Name(rawValue: eRaisedToX_func_NotificationKey)
    let yRaisedToX_func = Notification.Name(rawValue: yRaisedToX_func_NotificationKey)
    
    let oneOverX_func = Notification.Name(rawValue: oneOverX_func_NotificationKey)
    
    
    let twoSqrtX_func = Notification.Name(rawValue: twoSqrtX_func_NotificationKey)
    let threeSqrtX_func = Notification.Name(rawValue: threeSqrtX_func_NotificationKey)
    let ySqrtX_func = Notification.Name(rawValue: ySqrtX_func_NotificationKey)
    
    let mClear_func = Notification.Name(rawValue: mClear_func_NotificationKey)
    let mPlus_func = Notification.Name(rawValue: mPlus_func_NotificationKey)
    let mMinus_func = Notification.Name(rawValue: mMinus_func_NotificationKey)
    let mRecall_func = Notification.Name(rawValue: mRecall_func_NotificationKey)
    
    let changeDegToRadUILabel_func = Notification.Name(rawValue: changeDegToRadUILabel_func_NotificationKey)
    let changeRadToDegUILabel_func = Notification.Name(rawValue: changeRadToDegUILabel_func_NotificationKey)
    
    
    
    let xRaisedToTwo_func = Notification.Name(rawValue: xRaisedToTwo_func_NotificationKey)
    let xRaisedToThree_func = Notification.Name(rawValue: xRaisedToThree_func_NotificationKey)
    
    let xRaisedToY_func = Notification.Name(rawValue: xRaisedToY_func_NotificationKey)
    
    let xFactorial_func = Notification.Name(rawValue: xFactorial_func_NotificationKey)
    
    
    let EE_func = Notification.Name(rawValue: EE_func_NotificationKey)
    let RAND_func = Notification.Name(rawValue: RAND_func_NotificationKey)
    let pi_func = Notification.Name(rawValue: pi_func_NotificationKey)
    let e_func = Notification.Name(rawValue: e_func_NotificationKey)
    
    let leftParenthesis_func = Notification.Name(rawValue: leftParenthesis_func_NotificationKey)
    let rightParenthesis_func = Notification.Name(rawValue: rightParenthesis_func_NotificationKey)
    
    
    let decToFrac_func = Notification.Name(rawValue: decToFrac_func_NotificationKey)
    let pnr_func = Notification.Name(rawValue: pnr_func_NotificationKey)
    let cnr_func = Notification.Name(rawValue: cnr_func_NotificationKey)
    let gcf_func = Notification.Name(rawValue: gcf_func_NotificationKey)
    let lcm_func = Notification.Name(rawValue: lcm_func_NotificationKey)
    let avg_func = Notification.Name(rawValue: avg_func_NotificationKey)
    
    
    let stoOne_func = Notification.Name(rawValue: stoOne_func_NotificationKey)
    let writeStoOne_func = Notification.Name(rawValue: writeStoOne_func_NotificationKey)
    
    let stoTwo_func = Notification.Name(rawValue: stoTwo_func_NotificationKey)
    let writeStoTwo_func = Notification.Name(rawValue: writeStoTwo_func_NotificationKey)
    
    let stoThree_func = Notification.Name(rawValue: stoThree_func_NotificationKey)
    let writeStoThree_func = Notification.Name(rawValue: writeStoThree_func_NotificationKey)
    
    let stoFour_func = Notification.Name(rawValue: stoFour_func_NotificationKey)
    let writeStoFour_func = Notification.Name(rawValue: writeStoFour_func_NotificationKey)
    
    let stoFive_func = Notification.Name(rawValue: stoFive_func_NotificationKey)
    let writeStoFive_func = Notification.Name(rawValue: writeStoFive_func_NotificationKey)
    
    let stoSix_func = Notification.Name(rawValue: stoSix_func_NotificationKey)
    let writeStoSix_func = Notification.Name(rawValue: writeStoSix_func_NotificationKey)
    
    let stoSeven_func = Notification.Name(rawValue: stoSeven_func_NotificationKey)
    let writeStoSeven_func = Notification.Name(rawValue: writeStoSeven_func_NotificationKey)
    
    let stoEight_func = Notification.Name(rawValue: stoEight_func_NotificationKey)
    let writeStoEight_func = Notification.Name(rawValue: writeStoEight_func_NotificationKey)
    
    let stoNine_func = Notification.Name(rawValue: stoNine_func_NotificationKey)
    let writeStoNine_func = Notification.Name(rawValue: writeStoNine_func_NotificationKey)
    
    let stoTen_func = Notification.Name(rawValue: stoTen_func_NotificationKey)
    let writeStoTen_func = Notification.Name(rawValue: writeStoTen_func_NotificationKey)
    
    let stoEleven_func = Notification.Name(rawValue: stoEleven_func_NotificationKey)
    let writeStoEleven_func = Notification.Name(rawValue: writeStoEleven_func_NotificationKey)
    
    let stoTwelve_func = Notification.Name(rawValue: stoTwelve_func_NotificationKey)
    let writeStoTwelve_func = Notification.Name(rawValue: writeStoTwelve_func_NotificationKey)
    
     let mMult_func = Notification.Name(rawValue: mMult_func_NotificationKey)
     let mDivide_func = Notification.Name(rawValue: mDivide_func_NotificationKey)
    
    
    let didTapView_func = Notification.Name(rawValue: didTapView_func_NotificationKey)
    
    // cyan instantiated view
    let AreaOfCircleGivenRadius_func = Notification.Name(rawValue: AreaOfCircleGivenRadius_func_NotificationKey)
    let circumferenceOfCircleGivenRadius_func = Notification.Name(rawValue: circumferenceOfCircleGivenRadius_func_NotificationKey)
    let radiusOfCircleGivenDiameter_func = Notification.Name(rawValue: radiusOfCircleGivenDiameter_func_NotificationKey)
    let radiusOfCircleGivenArea_func = Notification.Name(rawValue: radiusOfCircleGivenArea_func_NotificationKey)
    let volumeOfSphereGivenRadius_func = Notification.Name(rawValue: volumeOfSphereGivenRadius_func_NotificationKey)
    let areaOfSphereGivenRadius_func = Notification.Name(rawValue: areaOfSphereGivenRadius_func_NotificationKey)
    let radiusOfSphereGivenVolume_func = Notification.Name(rawValue: radiusOfSphereGivenVolume_func_NotificationKey)
    let radiusOfSphereGivenArea_func = Notification.Name(rawValue: radiusOfSphereGivenArea_func_NotificationKey)
    
    let volumeOfCylinderGivenRadiusAndHeight_func = Notification.Name(rawValue: volumeOfCylinderGivenRadiusAndHeight_func_NotificationKey)
    let areaOfCylinderGivenRadiusAndHeight_func = Notification.Name(rawValue: areaOfCylinderGivenRadiusAndHeight_func_NotificationKey)
    let radiusOfCylinderGivenAreaAndHeight_func = Notification.Name(rawValue: radiusOfCylinderGivenAreaAndHeight_func_NotificationKey)
    let heightOfCylinderGivenAreaAndRadius_func = Notification.Name(rawValue: heightOfCylinderGivenAreaAndRadius_func_NotificationKey)
    
    
    let areaofTriangleGivenHeightAndBase_func = Notification.Name(rawValue: areaofTriangleGivenHeightAndBase_func_NotificationKey)
    let hypotenuseofRightTriangleGivenSides_func = Notification.Name(rawValue: hypotenuseofRightTriangleGivenSides_func_NotificationKey)
    let sideOfRightTriangleGivenHypotenuseAndKnownSide_func = Notification.Name(rawValue: sideOfRightTriangleGivenHypotenuseAndKnownSide_func_NotificationKey)
    let areaOfEquilateralTriangleGivenLength_func = Notification.Name(rawValue: areaOfEquilateralTriangleGivenLength_func_NotificationKey)
    
    // end cyan
    
    
    
    
    
    
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
                print("landscape ---> under didRotate in myCalculatorViewController")
            
                self.myFaceUpOrDown_madeUpBool = true
                self.myPortrait_madeUpBool = false
                
                if (self.myFaceUpOrDown_madeUpBool == true && self.myPortrait_madeUpBool == false) && (UIDevice.current.orientation.isLandscape == true) {
                
                self.labelDisplay.font = UIFont(name: "HelveticaNeue-Light", size: 32 * self.fontConstantFor_labelDisplay_and_calcDisplay) // LANDSCAPE
                self.labelDisplay.font = self.labelDisplay.font.withSize(32 * self.fontConstantFor_labelDisplay_and_calcDisplay)
                self.labelDisplay.adjustsFontSizeToFitWidth = true
                self.labelDisplay.minimumScaleFactor = 0.2
                
                self.calcDisplay.font = UIFont(name: "HelveticaNeue-Light", size: 14 * self.fontConstantFor_labelDisplay_and_calcDisplay) // LANDSCAPE
                self.calcDisplay.font = self.labelDisplay.font.withSize(14 * self.fontConstantFor_labelDisplay_and_calcDisplay)
                
                }
                
                
                
                
            case .portrait, .portraitUpsideDown:
                print("Portrait --> under didRotate in myCalculatorViewController")
              
                
                self.myFaceUpOrDown_madeUpBool = true
                self.myPortrait_madeUpBool = true
                
                
                if self.myFaceUpOrDown_madeUpBool == true && self.myPortrait_madeUpBool == true  {
                    
                    
                    //NOTE: The "true" & "true" case here is for when viewDidLoad() is called
                    
                    
                    self.labelDisplay.font = UIFont(name: "HelveticaNeue-Light", size: 80 * self.fontConstantFor_labelDisplay_and_calcDisplay) // LANDSCAPE
                    self.labelDisplay.font = self.labelDisplay.font.withSize(80 * self.fontConstantFor_labelDisplay_and_calcDisplay)
                    self.labelDisplay.adjustsFontSizeToFitWidth = true
                    self.labelDisplay.minimumScaleFactor = 0.2
                    
                    self.calcDisplay.font = UIFont(name: "HelveticaNeue-Light", size: 22 * self.fontConstantFor_labelDisplay_and_calcDisplay) // LANDSCAPE
                    self.calcDisplay.font = self.labelDisplay.font.withSize(22 * self.fontConstantFor_labelDisplay_and_calcDisplay)
                    
                    
                }
                
              
                
                
                
                
                
            default:
                
                print("other") // USING "other" as FaceDown or FaceUp
                print("UIDevice.current.orientation.isLandscape: \(UIDevice.current.orientation.isLandscape)")
              //self.myFaceUpOrDown_madeUpBool = false
                
//                print("UIDevice.current.orientation: \(UIDevice.current.orientation)")
                
//               if UIDevice.current.orientation == UIDeviceOrientation.landscapeLeft || UIDevice.current.orientation == UIDeviceOrientation.landscapeRight    {
//
                
//                self.myFaceUpOrDown_madeUpBool = true
//                self.myPortrait_madeUpBool = false

                if self.myFaceUpOrDown_madeUpBool == true && self.myPortrait_madeUpBool == false {
                    
                    
                //    self.myFaceUpOrDown_madeUpBool = false
                    
                    self.labelDisplay.font = UIFont(name: "HelveticaNeue-Light", size: 32 * self.fontConstantFor_labelDisplay_and_calcDisplay) // LANDSCAPE
                    self.labelDisplay.font = self.labelDisplay.font.withSize(32 * self.fontConstantFor_labelDisplay_and_calcDisplay)
                    self.labelDisplay.adjustsFontSizeToFitWidth = true
                    self.labelDisplay.minimumScaleFactor = 0.2
                    
                    self.calcDisplay.font = UIFont(name: "HelveticaNeue-Light", size: 14 * self.fontConstantFor_labelDisplay_and_calcDisplay) // LANDSCAPE
                    self.calcDisplay.font = self.labelDisplay.font.withSize(14 * self.fontConstantFor_labelDisplay_and_calcDisplay)
                    
                } else {
                    
                    self.labelDisplay.font = UIFont(name: "HelveticaNeue-Light", size: 80 * self.fontConstantFor_labelDisplay_and_calcDisplay) // LANDSCAPE
                    self.labelDisplay.font = self.labelDisplay.font.withSize(80 * self.fontConstantFor_labelDisplay_and_calcDisplay)
                    self.labelDisplay.adjustsFontSizeToFitWidth = true
                    self.labelDisplay.minimumScaleFactor = 0.2
                    
                    self.calcDisplay.font = UIFont(name: "HelveticaNeue-Light", size: 22 * self.fontConstantFor_labelDisplay_and_calcDisplay) // LANDSCAPE
                    self.calcDisplay.font = self.labelDisplay.font.withSize(22 * self.fontConstantFor_labelDisplay_and_calcDisplay)
                    
                }
//               } else {
//
//                self.labelDisplay.font = UIFont(name: "HelveticaNeue-Light", size: 80 * self.fontConstantFor_labelDisplay_and_calcDisplay) // LANDSCAPE
//                self.labelDisplay.font = self.labelDisplay.font.withSize(80 * self.fontConstantFor_labelDisplay_and_calcDisplay)
//                self.labelDisplay.adjustsFontSizeToFitWidth = true
//                self.labelDisplay.minimumScaleFactor = 0.2
//
//                self.calcDisplay.font = UIFont(name: "HelveticaNeue-Light", size: 22 * self.fontConstantFor_labelDisplay_and_calcDisplay) // LANDSCAPE
//                self.calcDisplay.font = self.labelDisplay.font.withSize(22 * self.fontConstantFor_labelDisplay_and_calcDisplay)
//
//
//                }
                
                
                
                
                
                
                
            
            }
        }
        
        NotificationCenter.default.addObserver(forName: .UIDeviceOrientationDidChange, object: nil, queue: .main, using: didRotate)
        // ............ end
        
        
        /// https://www.youtube.com/watch?v=srqiDnLEocA
        // Sean Allens Tutorial
        
        
        
        
        
       
        
        
        
        
        
        
        
        
        //dark
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.sineFunction(notification:)), name: sin_func, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.sineInverseFunction(notification:)), name: sinInverse_func, object: nil)
        

        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.cosineFunction(notification:)), name: cos_func, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.cosineInverseFunction(notification:)), name: cosInverse_func, object: nil)
        
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.tangentFunction(notification:)), name: tan_func, object: nil)
                NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.tangentInverseFunction(notification:)), name: tanInverse_func, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.sineH_Function(notification:)), name: sinh_func, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.sineHInverse_Function(notification:)), name: sinhInverse_func, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.cosineH_Function(notification:)), name: cosh_func, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.cosineHInverse_Function(notification:)), name: coshInverse_func, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.tangentH_Function(notification:)), name: tanh_func, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.tangentHInverse_Function(notification:)), name: tanhInverse_func, object: nil)
        
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.tenRaisedToXFunction(notification:)), name: tenRaisedToX_func, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.twoRaisedToXFunction(notification:)), name: twoRaisedToX_func, object: nil)
        
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.ln_Function(notification:)), name: ln_func, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.logyxFunction(notification:)), name: logyx_func, object: nil)
        
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.logTen_Function(notification:)), name: logTen_func, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.logTwo_Function(notification:)), name: logTwo_func, object: nil)
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.eRaisedToXFunction(notification:)), name: eRaisedToX_func, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.yRaisedToXFunction(notification:)), name: yRaisedToX_func, object: nil)
        
         NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.oneOverXFunction(notification:)), name: oneOverX_func, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.twoSqrtXFunction(notification:)), name: twoSqrtX_func, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.threeSqrtXFunction(notification:)), name: threeSqrtX_func, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.ySqrtXFunction(notification:)), name: ySqrtX_func, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.mClearFunction(notification:)), name: mClear_func, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.mPlusFunction(notification:)), name: mPlus_func, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.mMinusFunction(notification:)), name: mMinus_func, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.mRecallFunction(notification:)), name: mRecall_func, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.changeDegToRadUILabelFunction(notification:)), name: changeDegToRadUILabel_func, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.changeRadToDegUILabelFunction(notification:)), name: changeRadToDegUILabel_func, object: nil)
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.xRaisedToTwoFunction(notification:)), name: xRaisedToTwo_func, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.xRaisedToThreeFunction(notification:)), name: xRaisedToThree_func, object: nil)
         NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.xRaisedToYFunction(notification:)), name: xRaisedToY_func, object: nil)
        
         NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.xFractorialFunction(notification:)), name: xFactorial_func, object: nil)
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.EE_Function(notification:)), name: EE_func, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.RandFunction(notification:)), name: RAND_func, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.piFunction(notification:)), name: pi_func, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.eFunction(notification:)), name: e_func, object: nil)
        
        
    
        
        //---orange----
        
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.decToFracFunction(notification:)), name: decToFrac_func, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.pnrFunction(notification:)), name: pnr_func, object: nil)
       NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.cnrFunction(notification:)), name: cnr_func, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.gcfFunction(notification:)), name: gcf_func, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.lcmFunction(notification:)), name: lcm_func, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.avgFunction(notification:)), name: avg_func, object: nil)
        
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.stoOneFunction(notification:)), name: stoOne_func, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.writeStoOneFunction(notification:)), name: writeStoOne_func, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.stoTwoFunction(notification:)), name: stoTwo_func, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.writeStoTwoFunction(notification:)), name: writeStoTwo_func, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.stoThreeFunction(notification:)), name: stoThree_func, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.writeStoThreeFunction(notification:)), name: writeStoThree_func, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.stoFourFunction(notification:)), name: stoFour_func, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.writeStoFourFunction(notification:)), name: writeStoFour_func, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.stoFiveFunction(notification:)), name: stoFive_func, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.writeStoFiveFunction(notification:)), name: writeStoFive_func, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.stoSixFunction(notification:)), name: stoSix_func, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.writeStoSixFunction(notification:)), name: writeStoSix_func, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.stoSevenFunction(notification:)), name: stoSeven_func, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.writeStoSevenFunction(notification:)), name: writeStoSeven_func, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.stoEightFunction(notification:)), name: stoEight_func, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.writeStoEightFunction(notification:)), name: writeStoEight_func, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.stoNineFunction(notification:)), name: stoNine_func, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.writeStoNineFunction(notification:)), name: writeStoNine_func, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.stoTenFunction(notification:)), name: stoTen_func, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.writeStoTenFunction(notification:)), name: writeStoTen_func, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.stoElevenFunction(notification:)), name: stoEleven_func, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.writeStoElevenFunction(notification:)), name: writeStoEleven_func, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.stoTwelveFunction(notification:)), name: stoTwelve_func, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.writeStoTwelveFunction(notification:)), name: writeStoTwelve_func, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.mMultFunction(notification:)), name: mMult_func, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.mDivideFunction(notification:)), name: mDivide_func, object: nil)
        
        
        // cyan
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.AreaOfCircleGivenRadiusFunction(notification:)), name: AreaOfCircleGivenRadius_func, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.circumferenceOfCircleGivenRadiusFunction(notification:)), name: circumferenceOfCircleGivenRadius_func, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.radiusOfCircleGivenDiameterFunction(notification:)), name: radiusOfCircleGivenDiameter_func, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.radiusOfCircleGivenAreaFunction(notification:)), name: radiusOfCircleGivenArea_func, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.volumeOfSphereGivenRadiusFunction(notification:)), name: volumeOfSphereGivenRadius_func, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.areaOfSphereGivenRadiusFunction(notification:)), name: areaOfSphereGivenRadius_func, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.radiusOfSphereGivenVolumeFunction(notification:)), name: radiusOfSphereGivenVolume_func, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.radiusOfSphereGivenAreaFunction(notification:)), name: radiusOfSphereGivenArea_func, object: nil)
        
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.volumeOfCylinderGivenRadiusAndHeightFunction(notification:)), name: volumeOfCylinderGivenRadiusAndHeight_func, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.areaOfCylinderGivenRadiusAndHeightFunction(notification:)), name: areaOfCylinderGivenRadiusAndHeight_func, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.radiusOfCylinderGivenAreaAndHeightFunction(notification:)), name: radiusOfCylinderGivenAreaAndHeight_func, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.heightOfCylinderGivenAreaAndRadiusFunction(notification:)), name: heightOfCylinderGivenAreaAndRadius_func, object: nil)
        
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.areaofTriangleGivenHeightAndBaseFunction(notification:)), name: areaofTriangleGivenHeightAndBase_func, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.hypotenuseofRightTriangleGivenSidesFunction(notification:)), name: hypotenuseofRightTriangleGivenSides_func, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.sideOfRightTriangleGivenHypotenuseAndKnownSideFunction(notification:)), name: sideOfRightTriangleGivenHypotenuseAndKnownSide_func, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.areaOfEquilateralTriangleGivenLengthFunction(notification:)), name: areaOfEquilateralTriangleGivenLength_func, object: nil)
        
        
        
        
        
        
        //
        // end cyan
        
        
        
        
      //  NotificationCenter.default.addObserver(self, selector: #selector(myCalculatorViewController.didTapViewFunction(notification:)), name: didTapView_func, object: nil)
        
        
        //-------------
       
        
        
        
        
        
    }
    
    
    
    
    
    @objc func sineFunction(notification: NSNotification) {
      
        variableLabel.text = String("")

        guard let amount = labelDisplay.text else { return }
        
        newCalculator = true

        if amount == "" || amount == "Error" || amount == "nan" || amount == "inf" {
            return
        }else {
            if trig_DegOrRad_label.text == "Rad" {
            
            let am = Double(amount)
            let result = Double(sin(am!))
          labelDisplay.text = String(formatNumber(result))
            } else {
            
                
                let am = Double(amount)
                let result = Double(sin(am!) * 57.2958) // with radians to deg
                labelDisplay.text = String(formatNumber(result))

                
            }
            
            
        }
        
        
        
        
        
    }
    
    
    
    
    @objc func sineInverseFunction(notification: NSNotification) {
        
        variableLabel.text = String("")
        
        guard let amount = labelDisplay.text else { return }
        
        newCalculator = true
        
        if amount == "" || amount == "Error" || amount == "nan" || amount == "inf" {
            return
        }else {
            if trig_DegOrRad_label.text == "Rad" {
                
                let am = Double(amount)
                let result = Double(1/sin(am!))
                labelDisplay.text = String(formatNumber(result))
            } else {
                
                
                let am = Double(amount)
                let result = Double(1/sin(am!) * 57.2958) // with radians to deg
                labelDisplay.text = String(formatNumber(result))
                
                
            }
            
            
        }
        
        
        
        
        
    }
    
    
    
    @objc func cosineFunction(notification: NSNotification) {
        variableLabel.text = String("")

        guard let amount = labelDisplay.text else { return }
        
        newCalculator = true

        if amount == "" || amount == "Error" || amount == "nan" || amount == "inf" {
            return
        }else {
            
            
            if trig_DegOrRad_label.text == "Rad" {
                
                let am = Double(amount)
                let result = Double(cos(am!))
                labelDisplay.text = String(formatNumber(result))
            } else {
                
                
                let am = Double(amount)
                let result = Double(cos(am!) * 57.2958) // with radians to deg
                labelDisplay.text = String(formatNumber(result))

                
            }
            
          
        }
        
    }
    
    @objc func cosineInverseFunction(notification: NSNotification) {
        variableLabel.text = String("")
        
        guard let amount = labelDisplay.text else { return }
        
        newCalculator = true
        
        if amount == "" || amount == "Error" || amount == "nan" || amount == "inf" {
            return
        }else {
            
            
            if trig_DegOrRad_label.text == "Rad" {
                
                let am = Double(amount)
                let result = Double(1/cos(am!))
                labelDisplay.text = String(formatNumber(result))
            } else {
                
                
                let am = Double(amount)
                let result = Double(1/cos(am!) * 57.2958) // with radians to deg
                labelDisplay.text = String(formatNumber(result))
                
                
            }
            
            
        }
        
    }
    
    
    
    
    
    @objc func tangentFunction(notification: NSNotification) {
        variableLabel.text = String("")

        guard let amount = labelDisplay.text else { return }
        
        newCalculator = true

        if amount == "" || amount == "Error" || amount == "nan" || amount == "inf" {
            return
        }else {
            
            if trig_DegOrRad_label.text == "Rad" {
                
                let am = Double(amount)
                let result = Double(tan(am!))
                labelDisplay.text = String(formatNumber(result))
            } else {
                
                
                let am = Double(amount)
                let result = Double(tan(am!) * 57.2958) // with radians to deg
                labelDisplay.text = String(formatNumber(result))

                
            }
            
            
        }
        
    }
    
    @objc func tangentInverseFunction(notification: NSNotification) {
        variableLabel.text = String("")
        
        guard let amount = labelDisplay.text else { return }
        
        newCalculator = true
        
        if amount == "" || amount == "Error" || amount == "nan" || amount == "inf" {
            return
        }else {
            
            if trig_DegOrRad_label.text == "Rad" {
                
                let am = Double(amount)
                let result = Double(1/tan(am!))
                labelDisplay.text = String(formatNumber(result))
            } else {
                
                
                let am = Double(amount)
                let result = Double(1/tan(am!) * 57.2958) // with radians to deg
                labelDisplay.text = String(formatNumber(result))
                
                
            }
            
            
        }
        
    }
    
    @objc func sineH_Function(notification: NSNotification) {
        variableLabel.text = String("")

        
        guard let amount = labelDisplay.text else { return }
        
        newCalculator = true

        if amount == "" || amount == "Error" || amount == "nan" || amount == "inf" {
            return
        }else {
            
            if trig_DegOrRad_label.text == "Rad" {
                
                let am = Double(amount)
                let result = Double(sinh(am!))
                labelDisplay.text = String(formatNumber(result))
            } else {
                
                
                let am = Double(amount)
                let result = Double(sinh(am!) * 57.2958) // with radians to deg
                labelDisplay.text = String(formatNumber(result))

                
            }
            
            
 
        }
    }
    
    @objc func sineHInverse_Function(notification: NSNotification) {
        variableLabel.text = String("")
        
        
        guard let amount = labelDisplay.text else { return }
        
        newCalculator = true
        
        if amount == "" || amount == "Error" || amount == "nan" || amount == "inf" {
            return
        }else {
            
            if trig_DegOrRad_label.text == "Rad" {
                
                let am = Double(amount)
                let result = Double(1/sinh(am!))
                labelDisplay.text = String(formatNumber(result))
            } else {
                
                
                let am = Double(amount)
                let result = Double(1/sinh(am!) * 57.2958) // with radians to deg
                labelDisplay.text = String(formatNumber(result))
                
                
            }
            
            
            
        }
    }
    
    
    
    @objc func cosineH_Function(notification: NSNotification) {
        variableLabel.text = String("")

        guard let amount = labelDisplay.text else { return }
        
        
        newCalculator = true

        
        if amount == "" || amount == "Error" || amount == "nan" || amount == "inf" {
            return
        }else {
            
            
            
            if trig_DegOrRad_label.text == "Rad" {
                
                let am = Double(amount)
                let result = Double(cosh(am!))
                labelDisplay.text = String(formatNumber(result))
            } else {
                
                
                let am = Double(amount)
                let result = Double(cosh(am!) * 57.2958) // with radians to deg
                labelDisplay.text = String(formatNumber(result))

                
            }
            
            

        }
        
    }
    
    
    @objc func cosineHInverse_Function(notification: NSNotification) {
        variableLabel.text = String("")
        
        guard let amount = labelDisplay.text else { return }
        
        
        newCalculator = true
        
        
        if amount == "" || amount == "Error" || amount == "nan" || amount == "inf" {
            return
        }else {
            
            
            
            if trig_DegOrRad_label.text == "Rad" {
                
                let am = Double(amount)
                let result = Double(1/cosh(am!))
                labelDisplay.text = String(formatNumber(result))
            } else {
                
                
                let am = Double(amount)
                let result = Double(1/cosh(am!) * 57.2958) // with radians to deg
                labelDisplay.text = String(formatNumber(result))
                
                
            }
            
            
            
        }
        
    }
    
    @objc func tangentH_Function(notification: NSNotification) {
        variableLabel.text = String("")

        guard let amount = labelDisplay.text else { return }
        
        newCalculator = true
        
        if amount == "" || amount == "Error" || amount == "nan" || amount == "inf" {
            return
        }else {
            
            
            if trig_DegOrRad_label.text == "Rad" {
                
                let am = Double(amount)
                let result = Double(tanh(am!))
                labelDisplay.text = String(formatNumber(result))
            } else {
                
                
                let am = Double(amount)
                let result = Double(tanh(am!) * 57.2958) // with radians to deg
                labelDisplay.text = String(formatNumber(result))

                
            }
            
            
            

        }
        
    }
    
    
    @objc func tangentHInverse_Function(notification: NSNotification) {
        variableLabel.text = String("")
        
        guard let amount = labelDisplay.text else { return }
        
        newCalculator = true
        
        if amount == "" || amount == "Error" || amount == "nan" || amount == "inf" {
            return
        }else {
            
            
            if trig_DegOrRad_label.text == "Rad" {
                
                let am = Double(amount)
                let result = Double(1/tanh(am!))
                labelDisplay.text = String(formatNumber(result))
            } else {
                
                
                let am = Double(amount)
                let result = Double(1/tanh(am!) * 57.2958) // with radians to deg
                labelDisplay.text = String(formatNumber(result))
                
                
            }
            
            
            
            
        }
        
    }
    
    
    
    
    
    @objc func tenRaisedToXFunction(notification: NSNotification) {
        variableLabel.text = String("")
        
        guard let amount = labelDisplay.text else { return }
        
        newCalculator = true
        
        if amount == "" || amount == "Error" || amount == "nan" || amount == "inf" {
            return
        }else {
            let am = Double(amount)
            let result = Double(pow(10, am!))
            labelDisplay.text = String(formatNumber(result))
            
        }
        
    }
    
    @objc func twoRaisedToXFunction(notification: NSNotification) {
        variableLabel.text = String("")
        
        guard let amount = labelDisplay.text else { return }
        
        newCalculator = true
        
        if amount == "" || amount == "Error" || amount == "nan" || amount == "inf" {
            return
        }else {
            let am = Double(amount)
            let result = Double(pow(2, am!))
            labelDisplay.text = String(formatNumber(result))
            
        }
        
    }
    
    
    
    
    
    @objc func ln_Function(notification: NSNotification) {
        variableLabel.text = String("")

        guard let amount = labelDisplay.text else { return }
        
        newCalculator = true
        
        if amount == "" || amount == "Error" || amount == "nan" || amount == "inf" {
            return
        }else {
            let am = Double(amount)
            let result = Double(log(am!)) // natural log
            labelDisplay.text = String(formatNumber(result))

        }
        
    }
    
    
    
    @objc func logyxFunction(notification: NSNotification) {
        variableLabel.text = String("")
        
        guard let amount = labelDisplay.text else { return }
        
        if amount == "" || amount == "Error" || amount == "nan" || amount == "inf" {
            return
        }else {
            //            var x_inxRaisedToY = Double(amount)
            
            print("stored_logyx.count: \(stored_logyx.count)")
            
            if stored_logyx.count > 0 {
                
                let x_in_logyx = Double(stored_logyx.removeLast())!
                //alet  x_in_xRaisedToY = Double(pow())!
                //  stored_mRecall.append(String(y_in_xRaisedToY))
                
                //let x_in_xRaisedToY = Double(stored_xRaisedToY.removeLast())!
                let result = Double(log10(x_in_logyx)/log10(Double(amount)!))
                
                
                labelDisplay.text = String(formatNumber(result))
                stored_logyx.removeAll()
                newCalculator = true
                
                
                
            } else {
                stored_logyx.append(String(amount))
                //   let  x_in_xRaisedToY = stored_xRaisedToY.append(String(amount))
                labelDisplay.text = ""
            }
            
        }
        
    }
    
    
    
    
    
    @objc func logTen_Function
        (notification: NSNotification) {
        variableLabel.text = String("")

        guard let amount = labelDisplay.text else { return }
        
        newCalculator = true
        
        if amount == "" || amount == "Error" || amount == "nan" || amount == "inf" {
            return
        }else {
            let am = Double(amount)
            let result = Double(log10(am!))
            labelDisplay.text = String(formatNumber(result))

        }
        
    }
    
    @objc func logTwo_Function(notification: NSNotification) {
        variableLabel.text = String("")
        
        guard let amount = labelDisplay.text else { return }
        
        newCalculator = true
        
        if amount == "" || amount == "Error" || amount == "nan" || amount == "inf" {
            return
        }else {
            let am = Double(amount)
            let result = Double(log2(am!))
            labelDisplay.text = String(formatNumber(result))
            
        }
        
    }
    
    @objc func eRaisedToXFunction(notification: NSNotification) {
        variableLabel.text = String("")
        
        guard let amount = labelDisplay.text else { return }
        
        newCalculator = true
        
        if amount == "" || amount == "Error" || amount == "nan" || amount == "inf" {
            return
        }else {
            let am = Double(amount)
            let result = Double(pow(2.71828182846, am!))
            labelDisplay.text = String(formatNumber(result))
            
        }
        
    }
    
    @objc func yRaisedToXFunction(notification: NSNotification) {
        variableLabel.text = String("")
        
        guard let amount = labelDisplay.text else { return }
        
        if amount == "" || amount == "Error" || amount == "nan" || amount == "inf" {
            return
        }else {
            //            var x_inxRaisedToY = Double(amount)
            
            print("stored_yRaisedToX.count: \(stored_yRaisedToX.count)")
            
            if stored_yRaisedToX.count > 0 {
                
                let x_in_yRaisedToX = Double(stored_yRaisedToX.removeLast())!
                //alet  x_in_xRaisedToY = Double(pow())!
                //  stored_mRecall.append(String(y_in_xRaisedToY))
                
                //let x_in_xRaisedToY = Double(stored_xRaisedToY.removeLast())!
                let result = Double(pow(Double(amount)!, x_in_yRaisedToX))
                
                
                labelDisplay.text = String(formatNumber(result))
                stored_yRaisedToX.removeAll()
                newCalculator = true
                
                
                
            } else {
                stored_yRaisedToX.append(String(amount))
                //   let  x_in_xRaisedToY = stored_xRaisedToY.append(String(amount))
                labelDisplay.text = ""
            }
            
        }
        
    }
    
    
    @objc func oneOverXFunction(notification: NSNotification) {
        variableLabel.text = String("")
        
        guard let amount = labelDisplay.text else { return }
        
        newCalculator = true
        
        if amount == "" || amount == "0" || amount == "Error" {
            return
        }else {
            let am = Double(amount)
            let result = Double(1/am!)
            labelDisplay.text = String(formatNumber(result))
        }
        
    }
    
    
    @objc func twoSqrtXFunction(notification: NSNotification) {
        variableLabel.text = String("")
        guard let amount = labelDisplay.text else { return }
        
        newCalculator = true
        
        if amount == "" || amount == "0" || amount == "Error" || amount == "nan" || amount == "inf"  {
            return
        }else {
            let am = Double(amount)
            let result = Double(pow(am!, 1/2))
            labelDisplay.text = String(formatNumber(result))
        }
        
        
        
    }
    
    @objc func threeSqrtXFunction(notification: NSNotification) {
        variableLabel.text = String("")
        guard let amount = labelDisplay.text else { return }
        
        newCalculator = true
        
        if amount == "" || amount == "0" || amount == "Error" || amount == "nan" || amount == "inf" {
            return
        }else {
            let am = Double(amount)
            let result = Double(pow(am!, 1/3))
            labelDisplay.text = String(formatNumber(result))
        }
        
        
        
    }
    
    
    @objc func ySqrtXFunction(notification: NSNotification) {
        variableLabel.text = String("")
        
        guard let amount = labelDisplay.text else { return }
        
        if amount == "" || amount == "0" || amount == "Error" || amount == "nan" || amount == "inf" {
            return
        }else {
            //            var x_inxRaisedToY = Double(amount)
            
            print("stored_ySqrtX.count: \(stored_ySqrtX.count)")
            
            if stored_ySqrtX.count > 0 {
                
                let x_in_ySqrtX = Double(stored_ySqrtX.removeLast())!
                //alet  x_in_xRaisedToY = Double(pow())!
                //  stored_mRecall.append(String(y_in_xRaisedToY))
                
                //let x_in_xRaisedToY = Double(stored_xRaisedToY.removeLast())!
                
                
                let result = Double(pow(Double(x_in_ySqrtX), 1/(Double(amount)!)))
                
                print("this \(x_in_ySqrtX) raised to the 1/\((amount))")
                labelDisplay.text = String(formatNumber(result))
                stored_ySqrtX.removeAll()
                newCalculator = true
                
                
                
            } else {
                stored_ySqrtX.append(String(amount))
                //   let  x_in_xRaisedToY = stored_xRaisedToY.append(String(amount))
                labelDisplay.text = ""
            }
            
        }
        
        
    }
    
    
    
    
    
    
    @objc func mClearFunction(notification: NSNotification) {
     //   guard let amount = labelDisplay.text else { return }
        variableLabel.text = String("")
        
            newCalculator = true

            if stored_mRecall.count > 0 {
                stored_mRecall.removeAll()
                print("stored_mRecall.removeAll(): \(stored_mRecall)")
            } else {
                return
            }

    }
    
    
    
    @objc func mPlusFunction(notification: NSNotification) {
        variableLabel.text = String("")
     
        
        
        guard let amount = labelDisplay.text else { return }
        
        newCalculator = true

        
        if amount == "" || amount == "0" || amount == "Error" || amount == "nan" || amount == "inf" {
            return
        }else {
            

            if stored_mRecall.count > 0 {
            
                let add_to_mRecall = Double(stored_mRecall.removeLast())! + Double(amount)!
                
                stored_mRecall.append(String(add_to_mRecall))

            } else {
                
                 stored_mRecall.append(String(amount))
                
            }
   
        }

    }
    
    @objc func mMinusFunction(notification: NSNotification) {
        variableLabel.text = String("")
        

        guard let amount = labelDisplay.text else { return }
        
        
        newCalculator = true

        
        if amount == "" || amount == "0" || amount == "Error" || amount == "nan" || amount == "inf" {
            return
        }else {
            

            if stored_mRecall.count > 0 {
                let subtract_from_mRecall = Double(stored_mRecall.removeLast())! - Double(amount)!
                stored_mRecall.append(String(subtract_from_mRecall))
            } else {
                stored_mRecall.append(String(amount))

            }
        }
        
        
    }
    
    @objc func mRecallFunction(notification: NSNotification) {
        variableLabel.text = String("")
        
        
        newCalculator = true
        
        
        if stored_mRecall.count > 0 {
            print("There are objects")
            labelDisplay.text = stored_mRecall.last
            
        } else {
            print("No objects")
            return
        }
        
        
    }
    
    
    @objc func changeDegToRadUILabelFunction(notification: NSNotification) {
        variableLabel.text = String("")

        trig_DegOrRad_label.text = "Rad"

    }
    @objc func changeRadToDegUILabelFunction(notification: NSNotification) {
        variableLabel.text = String("")

        trig_DegOrRad_label.text = "Deg"
        
    }
    
    
    @objc func xRaisedToTwoFunction(notification: NSNotification) {
        variableLabel.text = String("")
        guard let amount = labelDisplay.text else { return }
        
        newCalculator = true
        
        if amount == "" || amount == "Error" || amount == "nan" || amount == "inf" {
            return
        }else {
            let am = Double(amount)
            let result = Double(pow(am!, 2))
            labelDisplay.text = String(formatNumber(result))
        }
        
    }
    @objc func xRaisedToThreeFunction(notification: NSNotification) {
        variableLabel.text = String("")
        calcDisplay.text = String("")
        
        guard let amount = labelDisplay.text else { return }
        
        newCalculator = true
        
        if amount == "" || amount == "Error" || amount == "nan" || amount == "inf" {
            return
        }else {
            let am = Double(amount)
            let result = Double(pow(am!, 3))
            labelDisplay.text = String(formatNumber(result))
        }
        
        
        
    }
    
    @objc func xRaisedToYFunction(notification: NSNotification) {
        variableLabel.text = String("")
        calcDisplay.text = String("")
        
        guard let amount = labelDisplay.text else { return }
        
        if amount == "" || amount == "Error" || amount == "nan" || amount == "inf" {
            return
        }else {
//            var x_inxRaisedToY = Double(amount)
            
            print("stored_xRaisedToY.count: \(stored_xRaisedToY.count)")
            
            if stored_xRaisedToY.count > 0 {
                
               let x_in_xRaisedToY = Double(stored_xRaisedToY.removeLast())!
              //alet  x_in_xRaisedToY = Double(pow())!
              //  stored_mRecall.append(String(y_in_xRaisedToY))

//let x_in_xRaisedToY = Double(stored_xRaisedToY.removeLast())!
                let result = Double(pow(x_in_xRaisedToY, Double(amount)!))
                    
                
                labelDisplay.text = String(formatNumber(result))
              stored_xRaisedToY.removeAll()
              newCalculator = true



            } else {
                stored_xRaisedToY.append(String(amount))
           //   let  x_in_xRaisedToY = stored_xRaisedToY.append(String(amount))
                labelDisplay.text = ""
            }
            
        }
        
    }
    @objc func xFractorialFunction(notification: NSNotification) {

        variableLabel.text = String("")
        calcDisplay.text = String("")
        
        guard let checkUnderNumber = Double(labelDisplay.text!) else {return}
        
        guard let amount = labelDisplay.text else { return }
        
        newCalculator = true

        
        if amount == "" || amount == "Error" || amount == "Inf" || amount == "inf" || amount == "-" || amount == "nan" {
            labelDisplay.text = "Error"
            
        } else if labelDisplay.text!.contains(".1") || labelDisplay.text!.contains(".2") || labelDisplay.text!.contains(".3") || labelDisplay.text!.contains(".4") || labelDisplay.text!.contains(".5") || labelDisplay.text!.contains(".6") || labelDisplay.text!.contains(".7") || labelDisplay.text!.contains(".8") || labelDisplay.text!.contains(".9") || labelDisplay.text!.contains(".01") || labelDisplay.text!.contains(".02") || labelDisplay.text!.contains(".03") || labelDisplay.text!.contains(".04") || labelDisplay.text!.contains(".05") || labelDisplay.text!.contains(".06") || labelDisplay.text!.contains(".07") || labelDisplay.text!.contains(".08") || labelDisplay.text!.contains(".09")  || labelDisplay.text!.contains(".001")   || labelDisplay.text!.contains(".002") || labelDisplay.text!.contains(".003")   || labelDisplay.text!.contains(".004")   || labelDisplay.text!.contains(".005")   || labelDisplay.text!.contains(".006")   || labelDisplay.text!.contains(".007")   || labelDisplay.text!.contains(".008")   || labelDisplay.text!.contains(".009") || labelDisplay.text!.contains(".0001") || labelDisplay.text!.contains(".0002") || labelDisplay.text!.contains(".0003") || labelDisplay.text!.contains(".0004") || labelDisplay.text!.contains(".0005") || labelDisplay.text!.contains(".0006") || labelDisplay.text!.contains(".0007") || labelDisplay.text!.contains(".0008") || labelDisplay.text!.contains(".0009")    {
            
          //  var checkUnderNumber = Double(labelDisplay.text!)

            
            //guard let amount = labelDisplay.text else { return }
    
            // ::::::::::: Gospers Approximation for Decimal Factorial :::::::
            //   https://www.quora.com/How-do-I-calculate-decimal-factorials-like-1-7
            let am = Double(amount)
            let constant_one = Double(pow(am!/2.71828182845905, am!))
            let constant_two = Double(pow(3.141592653589790 * (2.0 * am! + 1.0/3.0), 0.5))
            let result = Double(constant_one * constant_two)
            labelDisplay.text = String(formatNumber(result))
            
            if labelDisplay.text == "inf" {
                labelDisplay.text = "Error"
            }
            
            ///::::::::::::::::::::::::::::::::::::::::::::::::::
    
        } else if labelDisplay.text!.contains(".") || labelDisplay.text!.contains(".0") || labelDisplay.text!.contains(".00") || labelDisplay.text!.contains(".000") || labelDisplay.text!.contains(".0000") || labelDisplay.text!.contains(".00000") || labelDisplay.text!.contains(".000000") || labelDisplay.text!.contains(".0000000") || labelDisplay.text!.contains(".00000000") || labelDisplay.text!.contains(".000000000") || labelDisplay.text!.contains(".0000000000") || labelDisplay.text!.contains(".00000000000") || labelDisplay.text!.contains(".000000000000") || labelDisplay.text!.contains(".0000000000000") || labelDisplay.text!.contains(".00000000000000") || labelDisplay.text!.contains(".000000000000000") || labelDisplay.text!.contains(".0000000000000000") || labelDisplay.text!.contains(".00000000000000000") || labelDisplay.text!.contains(".000000000000000000") || labelDisplay.text!.contains(".0000000000000000000") || labelDisplay.text!.contains(".00000000000000000000") || labelDisplay.text!.contains(".000000000000000000000") || labelDisplay.text!.contains(".0000000000000000000000") {
           
           // let checkUnderNumber = Double(labelDisplay.text)
            
                let amount = Float(labelDisplay.text!)
                if amount == 0 || amount == 1 {
                    
                    labelDisplay.text = String(1.0)
                    
                } else if String(amount!) == "Error" {
                    return
                } else if Double(amount!) < 0.0 {
                    labelDisplay.text = String("Error")
                } else {
                    
                    let am = Int(amount!)
                    // let upperBound = am
                    //   let lowerBound = 1.0
                    
                    
                    if am == 0 || am == 1 {
                        
                        labelDisplay.text = String(1.0)
                        
                        
                    } else {
                        
                        
                        
                        
                        
                        func carryAll(_ arr: [Int]) -> [Int] {
                            var result = [Int]()
                            
                            var carry = 0
                            for val in arr.reversed() {
                                let total = val + carry
                                let digit = total % 10
                                carry = total / 10
                                result.append(digit)
                            }
                            
                            while carry > 0 {
                                let digit = carry % 10
                                carry = carry / 10
                                result.append(digit)
                            }
                            
                            return result.reversed()
                        }
                        
                        
                        
                        func factorial(of n: Int) -> String {
                            var result = [1]
                            for i in 2...n {
                                result = result.map { $0 * i }
                                result = carryAll(result)
                            }
                            
                            return result.map(String.init).joined()
                        }
                        
                        
                        //                func factorial(of num: Int) -> Int {
                        //                    if num == 1 {
                        //                        return 1
                        //                    } else {
                        //                        return num * factorial(of:num - 1)
                        //                    }
                        //                }
                        
                        //  let x = 4
                        let result = factorial(of: am)
                        //   print("The factorial of \(x) is \(result)")
                        
                        labelDisplay.text = String(formatNumber(Double(result)!))
                        if labelDisplay.text == "inf" {
                           labelDisplay.text = "Error"
                        }
                        
        
                    }

                }

 
                
            
            
            
        } else {
            
            let amount = Int(labelDisplay.text!)
            
            if amount! > 103 {
                labelDisplay.text = "Error"
                return
            }else {
            
                if amount == 0 || amount == 1 {
                
                labelDisplay.text = String(1.0)
                
                }  else {
                
                let am = Int(amount!)
                // let upperBound = am
                //   let lowerBound = 1.0
                
                
                if am == 0 || am == 1 {
                    
                    labelDisplay.text = String(1.0)
                    
                    
                } else {
                    
                    
                    
                    
                    
                    func carryAll(_ arr: [Int]) -> [Int] {
                        var result = [Int]()
                        
                        var carry = 0
                        for val in arr.reversed() {
                            let total = val + carry
                            let digit = total % 10
                            carry = total / 10
                            result.append(digit)
                        }
                        
                        while carry > 0 {
                            let digit = carry % 10
                            carry = carry / 10
                            result.append(digit)
                        }
                        
                        return result.reversed()
                    }
                    
                    
                    
                    func factorial(of n: Int) -> String {
                        var result = [1]
                        for i in 2...n {
                            result = result.map { $0 * i }
                            result = carryAll(result)
                        }
                        
                        return result.map(String.init).joined()
                    }
                    
                    
                
                    let result = factorial(of: am)
                    
                    labelDisplay.text = String(formatNumber(Double(result)!))
                    if labelDisplay.text == "inf" {
                        labelDisplay.text = "Error"
                    }
                   }
                 }
                }
     
            
      }
        
        
        
        
    }
    
    
    @objc func RandFunction(notification: NSNotification) {
        
        variableLabel.text = String("")

        
      //  guard let amount = labelDisplay.text else { return }
        
        newCalculator = true
        
        // this uses the Double Extension created in this file
        // https://stackoverflow.com/questions/25050309/swift-random-float-between-0-and-1
        
                    let randomNumDouble  = Double.random(min: 0.00, max: 1.00)
                    let result = Double(randomNumDouble)
                   labelDisplay.text = String(formatNumber(result))

    }
    
    
    @objc func EE_Function(notification: NSNotification) {
        variableLabel.text = String("")
        
        guard let amount = labelDisplay.text else { return }
        
        if amount == "" || amount == "Error" || amount == "nan" || amount == "inf" {
            return
        }else {
            //            var x_inxRaisedToY = Double(amount)
            
            print("stored_EE.count: \(stored_EE.count)")
            
            if stored_EE.count > 0 {
                
                let x_in_EE = Double(stored_EE.removeLast())!
                //alet  x_in_xRaisedToY = Double(pow())!
                //  stored_mRecall.append(String(y_in_xRaisedToY))
                
                //let x_in_xRaisedToY = Double(stored_xRaisedToY.removeLast())!
                let result = Double(x_in_EE*pow(10, Double(amount)!))
                
                
                labelDisplay.text = String(formatNumber(result))
                stored_EE.removeAll()
                newCalculator = true
                
                
                
            } else {
                stored_EE.append(String(amount))
                
                labelDisplay.text = ""
            }
            
        }
        
    }
    
    @objc func piFunction(notification: NSNotification) {
        
        variableLabel.text = String("")
        
        //  guard let amount = labelDisplay.text else { return }
        
        newCalculator = true
        
    
        labelDisplay.text = String(formatNumber(3.14159265359))
        
    }
    
    @objc func eFunction(notification: NSNotification) {
        
        variableLabel.text = String("")
        
        
        //  guard let amount = labelDisplay.text else { return }
        
        newCalculator = true
        
        
        labelDisplay.text = String(formatNumber(2.71828182846))
        
    }
    
    
    
   
    
    ///// end left and right parenthesis
    
    
    
    //::::
    
    //ggggggggggggg start1
    @objc func decToFracFunction(notification: NSNotification) {
        variableLabel.text = String("")
        calcDisplay.text = String("")
        
        
        newCalculator = true
        
        
      

        guard let amount = labelDisplay.text else { return }
        
        if labelDisplay.text!.contains("") || labelDisplay.text!.contains("Error") || labelDisplay.text!.contains("inf")   {
            return
        }else {
            // labelDisplay.text = String(formatNumber(result))
            let am = Double(amount)
           // let result = Double(3.141592653589790 * am! * am!)
            
            print("rationalApproximation numerator: \(rationalApproximation(of: am!).num)")
           print("rationalApproximation denominator: \(rationalApproximation(of: am!).den)")
            let result = String(rationalApproximation(of: am!).num) + " / " + String(rationalApproximation(of: am!).den)
            print("result under decToFracFunction: \(result)")
            calcDisplay.text = result
           // calcDisplay.text += result
            //  var stored_stoOne = amount
            
        }
    }
    
      typealias Rational = (num : Int, den : Int)
    func rationalApproximation(of x0 : Double, withPrecision eps : Double = 1.0E-6) -> Rational {
        var x = x0
        var a = x.rounded(.down)
        var (h1, k1, h, k) = (1, 0, Int(a), 1)
        
        while x - a > eps * Double(k) * Double(k) {
            x = 1.0/(x - a)
            a = x.rounded(.down)
            (h1, k1, h, k) = (h, k, h1 + Int(a) * h, k1 + Int(a) * k)
        }
        return (h, k)
    }
    
    
    
    @objc func pnrFunction(notification: NSNotification) {
        //https://www.calculatorsoup.com/calculators/discretemathematics/permutations.php
        variableLabel.text = String("")
        calcDisplay.text = String("")
        
        guard let checkUnderNumber = Double(labelDisplay.text!) else {return}
        
        guard let amount = labelDisplay.text else { return }
        
        newCalculator = true
        // numerator_n_pnrANDcnrFunction
        // denominator_nMinusr_pnrANDcnrFunction
        if amount == "" || amount == "Error" || amount == "Inf" || amount == "inf" || amount == "-" || amount == "nan" {
            labelDisplay.text = "Error"
            
        }else {
            //            var x_inxRaisedToY = Double(amount)
            
            print("stored_pnr.count: \(stored_pnr.count)")
            
            if stored_pnr.count > 0 {
                
              let n_in_pnr = String(stored_pnr.removeLast()) // for n!
              let nMinusr_in_pnr = String(Double(n_in_pnr)! - Double(amount)!)  // for "(n-r)!"
                
                
                
             //   let result = Double(pow(n_in_pnr, Double(amount)!))
              //  labelDisplay.text = String(formatNumber(result))
                
                //;;; start numerator
                if n_in_pnr.contains(".1") || n_in_pnr.contains(".2") || n_in_pnr.contains(".3") || n_in_pnr.contains(".4") || n_in_pnr.contains(".5") || n_in_pnr.contains(".6") || n_in_pnr.contains(".7") || n_in_pnr.contains(".8") || n_in_pnr.contains(".9") || n_in_pnr.contains(".01") || n_in_pnr.contains(".02") || n_in_pnr.contains(".03") || n_in_pnr.contains(".04") || n_in_pnr.contains(".05") || n_in_pnr.contains(".06") || n_in_pnr.contains(".07") || n_in_pnr.contains(".08") || n_in_pnr.contains(".09")  || n_in_pnr.contains(".001")   || n_in_pnr.contains(".002") || n_in_pnr.contains(".003")   || n_in_pnr.contains(".004")   || n_in_pnr.contains(".005")   || n_in_pnr.contains(".006")   || n_in_pnr.contains(".007")   || n_in_pnr.contains(".008")   || n_in_pnr.contains(".009") || n_in_pnr.contains(".0001") || n_in_pnr.contains(".0002") || n_in_pnr.contains(".0003") || n_in_pnr.contains(".0004") || n_in_pnr.contains(".0005") || n_in_pnr.contains(".0006") || n_in_pnr.contains(".0007") || n_in_pnr.contains(".0008") || n_in_pnr.contains(".0009")    {
                    
                    //  var checkUnderNumber = Double(labelDisplay.text!)
                    
                    
                    //guard let amount = labelDisplay.text else { return }
                    
                    // ::::::::::: Gospers Approximation for Decimal Factorial :::::::
                    //   https://www.quora.com/How-do-I-calculate-decimal-factorials-like-1-7
                    let am = Double(n_in_pnr)
                    let constant_one = Double(pow(am!/2.71828182845905, am!))
                    let constant_two = Double(pow(3.141592653589790 * (2.0 * am! + 1.0/3.0), 0.5))
                    let result = Double(constant_one * constant_two)
                    numerator_n_pnrANDcnrFunction = result
                    
                    if labelDisplay.text == "inf" {
                        labelDisplay.text = "Error"
                    }
                    
                    ///::::::::::::::::::::::::::::::::::::::::::::::::::
                    
                
            } else if n_in_pnr.contains(".") ||
                    n_in_pnr.contains(".0") ||
                    n_in_pnr.contains(".00") ||
                    n_in_pnr.contains(".000") ||
                    n_in_pnr.contains(".0000") ||
                    n_in_pnr.contains(".00000") ||
                    n_in_pnr.contains(".000000") ||
                    n_in_pnr.contains(".0000000") ||
                    n_in_pnr.contains(".00000000") ||
                    n_in_pnr.contains(".000000000") ||
                    n_in_pnr.contains(".0000000000") ||
                    n_in_pnr.contains(".00000000000") ||
                    n_in_pnr.contains(".000000000000") ||
                    n_in_pnr.contains(".0000000000000") ||
                    n_in_pnr.contains(".00000000000000") || n_in_pnr.contains(".000000000000000") || n_in_pnr.contains(".0000000000000000") || n_in_pnr.contains(".00000000000000000") || n_in_pnr.contains(".000000000000000000") || n_in_pnr.contains(".0000000000000000000") || n_in_pnr.contains(".00000000000000000000") || n_in_pnr.contains(".000000000000000000000") || n_in_pnr.contains(".0000000000000000000000") {
                    
                    // let checkUnderNumber = Double(labelDisplay.text)
                    
                    let amount = Float(n_in_pnr)
                    if amount == 0 || amount == 1 {
                        
                        numerator_n_pnrANDcnrFunction = Double(1.0) // normal labelDisplay
                        
                    } else if String(amount!) == "Error" {
                        return
                    } else if Double(amount!) < 0.0 {
                        labelDisplay.text = String("Error")
                    } else {
                        
                        let am = Int(amount!)
                        // let upperBound = am
                        //   let lowerBound = 1.0
                        
                        
                        if am == 0 || am == 1 {
                            
                            numerator_n_pnrANDcnrFunction = Double(1.0)
                            
                            
                        } else {
                            
                            
                            
                            
                            
                            func carryAll(_ arr: [Int]) -> [Int] {
                                var result = [Int]()
                                
                                var carry = 0
                                for val in arr.reversed() {
                                    let total = val + carry
                                    let digit = total % 10
                                    carry = total / 10
                                    result.append(digit)
                                }
                                
                                while carry > 0 {
                                    let digit = carry % 10
                                    carry = carry / 10
                                    result.append(digit)
                                }
                                
                                return result.reversed()
                            }
                            
                            
                            
                            func factorial(of n: Int) -> String {
                                var result = [1]
                                for i in 2...n {
                                    result = result.map { $0 * i }
                                    result = carryAll(result)
                                }
                                
                                return result.map(String.init).joined()
                            }
                            
                            
                            //                func factorial(of num: Int) -> Int {
                            //                    if num == 1 {
                            //                        return 1
                            //                    } else {
                            //                        return num * factorial(of:num - 1)
                            //                    }
                            //                }
                            
                            //  let x = 4
                            let result = factorial(of: am)
                            //   print("The factorial of \(x) is \(result)")
                            
                            numerator_n_pnrANDcnrFunction = Double(result)!
                            if labelDisplay.text == "inf" {
                                labelDisplay.text = "Error"
                            }
                            
                            
                        }
                        
                    }
                    
                    
                    
                    
                    
                    
                } else {
                    
                    let amount = Int(n_in_pnr)
                    
                    if amount! > 103 {
                        labelDisplay.text = "Error"
                        return
                    }else {
                        
                        if amount == 0 || amount == 1 {
                            
                            numerator_n_pnrANDcnrFunction = Double(1.0)
                            
                        }  else {
                            
                            let am = Int(amount!)
                            // let upperBound = am
                            //   let lowerBound = 1.0
                            
                            
                            if am == 0 || am == 1 {
                                
                                numerator_n_pnrANDcnrFunction = Double(1.0)
                                
                                
                            } else {
                                
                                
                                
                                
                                
                                func carryAll(_ arr: [Int]) -> [Int] {
                                    var result = [Int]()
                                    
                                    var carry = 0
                                    for val in arr.reversed() {
                                        let total = val + carry
                                        let digit = total % 10
                                        carry = total / 10
                                        result.append(digit)
                                    }
                                    
                                    while carry > 0 {
                                        let digit = carry % 10
                                        carry = carry / 10
                                        result.append(digit)
                                    }
                                    
                                    return result.reversed()
                                }
                                
                                
                                
                                func factorial(of n: Int) -> String {
                                    var result = [1]
                                    for i in 2...n {
                                        result = result.map { $0 * i }
                                        result = carryAll(result)
                                    }
                                    
                                    return result.map(String.init).joined()
                                }
                                
                                
                                
                                let result = factorial(of: am)
                                
                                numerator_n_pnrANDcnrFunction = Double(result)!
                                if labelDisplay.text == "inf" {
                                    labelDisplay.text = "Error"
                                }
                            }
                        }
                    }
                    
                    
                }
                //;;; end numerator
                //;;; start denominator
                if nMinusr_in_pnr.contains(".1") ||
                    nMinusr_in_pnr.contains(".2") ||
                    nMinusr_in_pnr.contains(".3") ||
                    nMinusr_in_pnr.contains(".4") ||
                    nMinusr_in_pnr.contains(".5") ||
                    nMinusr_in_pnr.contains(".6") ||
                    nMinusr_in_pnr.contains(".7") ||
                    nMinusr_in_pnr.contains(".8") ||
                    nMinusr_in_pnr.contains(".9") ||
                    nMinusr_in_pnr.contains(".01") || nMinusr_in_pnr.contains(".02") || nMinusr_in_pnr.contains(".03") || nMinusr_in_pnr.contains(".04") || nMinusr_in_pnr.contains(".05") || nMinusr_in_pnr.contains(".06") || nMinusr_in_pnr.contains(".07") || nMinusr_in_pnr.contains(".08") || nMinusr_in_pnr.contains(".09")  || nMinusr_in_pnr.contains(".001")   || nMinusr_in_pnr.contains(".002") || nMinusr_in_pnr.contains(".003")   || nMinusr_in_pnr.contains(".004")   || nMinusr_in_pnr.contains(".005")   || nMinusr_in_pnr.contains(".006")   || nMinusr_in_pnr.contains(".007")   || nMinusr_in_pnr.contains(".008")   || nMinusr_in_pnr.contains(".009") || nMinusr_in_pnr.contains(".0001") || nMinusr_in_pnr.contains(".0002") || nMinusr_in_pnr.contains(".0003") || nMinusr_in_pnr.contains(".0004") || nMinusr_in_pnr.contains(".0005") || nMinusr_in_pnr.contains(".0006") || nMinusr_in_pnr.contains(".0007") || nMinusr_in_pnr.contains(".0008") || nMinusr_in_pnr.contains(".0009")    {
                    
                    //  var checkUnderNumber = Double(labelDisplay.text!)
                    
                    
                    //guard let amount = labelDisplay.text else { return }
                    
                    // ::::::::::: Gospers Approximation for Decimal Factorial :::::::
                    //   https://www.quora.com/How-do-I-calculate-decimal-factorials-like-1-7
                    let am = Double(nMinusr_in_pnr)
                    let constant_one = Double(pow(am!/2.71828182845905, am!))
                    let constant_two = Double(pow(3.141592653589790 * (2.0 * am! + 1.0/3.0), 0.5))
                    let result = Double(constant_one * constant_two)
                    denominator_nMinusr_pnrANDcnrFunction = result
                    
                    if labelDisplay.text == "inf" {
                        labelDisplay.text = "Error"
                    }
                    
                    ///::::::::::::::::::::::::::::::::::::::::::::::::::
                    
                    
                } else if nMinusr_in_pnr.contains(".") ||
                    nMinusr_in_pnr.contains(".0") ||
                    nMinusr_in_pnr.contains(".00") ||
                    nMinusr_in_pnr.contains(".000") ||
                    nMinusr_in_pnr.contains(".0000") ||
                    nMinusr_in_pnr.contains(".00000") ||
                    nMinusr_in_pnr.contains(".000000") ||
                    nMinusr_in_pnr.contains(".0000000") ||
                    nMinusr_in_pnr.contains(".00000000") ||
                    nMinusr_in_pnr.contains(".000000000") ||
                    nMinusr_in_pnr.contains(".0000000000") ||
                    nMinusr_in_pnr.contains(".00000000000") ||
                    nMinusr_in_pnr.contains(".000000000000") ||
                    nMinusr_in_pnr.contains(".0000000000000") ||
                    nMinusr_in_pnr.contains(".00000000000000") || nMinusr_in_pnr.contains(".000000000000000") || nMinusr_in_pnr.contains(".0000000000000000") || nMinusr_in_pnr.contains(".00000000000000000") || nMinusr_in_pnr.contains(".000000000000000000") || nMinusr_in_pnr.contains(".0000000000000000000") || nMinusr_in_pnr.contains(".00000000000000000000") || nMinusr_in_pnr.contains(".000000000000000000000") || nMinusr_in_pnr.contains(".0000000000000000000000") {
                    
                    // let checkUnderNumber = Double(labelDisplay.text)
                    
                    let amount = Float(nMinusr_in_pnr)
                    if amount == 0 || amount == 1 {
                        
                        denominator_nMinusr_pnrANDcnrFunction = Double(1.0) // normal labelDisplay
                        
                    } else if String(amount!) == "Error" {
                        return
                    } else if Double(amount!) < 0.0 {
                        labelDisplay.text = String("Error")
                    } else {
                        
                        let am = Int(amount!)
                        // let upperBound = am
                        //   let lowerBound = 1.0
                        
                        
                        if am == 0 || am == 1 {
                            
                            denominator_nMinusr_pnrANDcnrFunction = Double(1.0)
                            
                            
                        } else {
                            
                            
                            
                            
                            
                            func carryAll(_ arr: [Int]) -> [Int] {
                                var result = [Int]()
                                
                                var carry = 0
                                for val in arr.reversed() {
                                    let total = val + carry
                                    let digit = total % 10
                                    carry = total / 10
                                    result.append(digit)
                                }
                                
                                while carry > 0 {
                                    let digit = carry % 10
                                    carry = carry / 10
                                    result.append(digit)
                                }
                                
                                return result.reversed()
                            }
                            
                            
                            
                            func factorial(of n: Int) -> String {
                                var result = [1]
                                for i in 2...n {
                                    result = result.map { $0 * i }
                                    result = carryAll(result)
                                }
                                
                                return result.map(String.init).joined()
                            }
                            
                            
                            //                func factorial(of num: Int) -> Int {
                            //                    if num == 1 {
                            //                        return 1
                            //                    } else {
                            //                        return num * factorial(of:num - 1)
                            //                    }
                            //                }
                            
                            //  let x = 4
                            let result = factorial(of: am)
                            //   print("The factorial of \(x) is \(result)")
                            
                            denominator_nMinusr_pnrANDcnrFunction = Double(result)!
                            if labelDisplay.text == "inf" {
                                labelDisplay.text = "Error"
                            }
                            
                            
                        }
                        
                    }
                    
                    
                    
                    
                    
                    
                } else {
                    
                    let amount = Int(n_in_pnr)
                    
                    if amount! > 103 {
                        labelDisplay.text = "Error"
                        return
                    }else {
                        
                        if amount == 0 || amount == 1 {
                            
                            denominator_nMinusr_pnrANDcnrFunction = Double(1.0)
                            
                        }  else {
                            
                            let am = Int(amount!)
                            // let upperBound = am
                            //   let lowerBound = 1.0
                            
                            
                            if am == 0 || am == 1 {
                                
                                denominator_nMinusr_pnrANDcnrFunction = Double(1.0)
                                
                                
                            } else {
                                
                                
                                
                                
                                
                                func carryAll(_ arr: [Int]) -> [Int] {
                                    var result = [Int]()
                                    
                                    var carry = 0
                                    for val in arr.reversed() {
                                        let total = val + carry
                                        let digit = total % 10
                                        carry = total / 10
                                        result.append(digit)
                                    }
                                    
                                    while carry > 0 {
                                        let digit = carry % 10
                                        carry = carry / 10
                                        result.append(digit)
                                    }
                                    
                                    return result.reversed()
                                }
                                
                                
                                
                                func factorial(of n: Int) -> String {
                                    var result = [1]
                                    for i in 2...n {
                                        result = result.map { $0 * i }
                                        result = carryAll(result)
                                    }
                                    
                                    return result.map(String.init).joined()
                                }
                                
                                
                                
                                let result = factorial(of: am)
                                
                                denominator_nMinusr_pnrANDcnrFunction = Double(result)!
                                if labelDisplay.text == "inf" {
                                    labelDisplay.text = "Error"
                                }
                            }
                        }
                    }
                    
                    
                }
                //;;; end denominator
                
                
                
                
                
                
                //important section
              let answer = Double(numerator_n_pnrANDcnrFunction / denominator_nMinusr_pnrANDcnrFunction)
                calcDisplay.text = String(answer) // outputs answer
                  variableLabel.text = String("n (objects), r (sample)")
              
                stored_pnr.removeAll()
                newCalculator = true
                
                //end of important section
                
                
                
                
                
                
                
            } else {
                stored_pnr.append(String(amount))
                //   let  x_in_xRaisedToY = stored_xRaisedToY.append(String(amount))
                variableLabel.text = String("n (objects)")
                labelDisplay.text = ""
                
            }
            
        }
        
        
    }

    //ggggggggggggggg end1
    //hhhhhhhhhhhhhhh start1
    @objc func cnrFunction(notification: NSNotification) {
        //https://www.calculatorsoup.com/calculators/discretemathematics/permutations.php
        variableLabel.text = String("")
        calcDisplay.text = String("")
        
        guard let checkUnderNumber = Double(labelDisplay.text!) else {return}
        
        guard let amount = labelDisplay.text else { return }
        
        newCalculator = true
        // numerator_n_pnrANDcnrFunction
        // denominator_nMinusr_pnrANDcnrFunction
        if amount == "" || amount == "Error" || amount == "Inf" || amount == "inf" || amount == "-" || amount == "nan" {
            labelDisplay.text = "Error"
            
        }else {
            //            var x_inxRaisedToY = Double(amount)
            
            print("stored_cnr.count: \(stored_cnr.count)")
            
            if stored_cnr.count > 0 {
                
                let n_in_cnr = String(stored_cnr.removeLast()) // for n!
                let nMinusr_in_cnr = String(Double(n_in_cnr)! - Double(amount)!)  // for "(n-r)!"
                let r_in_cnr = String(Double(amount)!) // for r!
                
                
                //   let result = Double(pow(n_in_pnr, Double(amount)!))
                //  labelDisplay.text = String(formatNumber(result))
                
                //;;; start numerator
                if n_in_cnr.contains(".1") || n_in_cnr.contains(".2") || n_in_cnr.contains(".3") || n_in_cnr.contains(".4") || n_in_cnr.contains(".5") || n_in_cnr.contains(".6") || n_in_cnr.contains(".7") || n_in_cnr.contains(".8") || n_in_cnr.contains(".9") || n_in_cnr.contains(".01") || n_in_cnr.contains(".02") || n_in_cnr.contains(".03") || n_in_cnr.contains(".04") || n_in_cnr.contains(".05") || n_in_cnr.contains(".06") || n_in_cnr.contains(".07") || n_in_cnr.contains(".08") || n_in_cnr.contains(".09")  || n_in_cnr.contains(".001")   || n_in_cnr.contains(".002") || n_in_cnr.contains(".003")   || n_in_cnr.contains(".004")   || n_in_cnr.contains(".005")   || n_in_cnr.contains(".006")   || n_in_cnr.contains(".007")   || n_in_cnr.contains(".008")   || n_in_cnr.contains(".009") || n_in_cnr.contains(".0001") || n_in_cnr.contains(".0002") || n_in_cnr.contains(".0003") || n_in_cnr.contains(".0004") || n_in_cnr.contains(".0005") || n_in_cnr.contains(".0006") || n_in_cnr.contains(".0007") || n_in_cnr.contains(".0008") || n_in_cnr.contains(".0009")    {
                    
                    //  var checkUnderNumber = Double(labelDisplay.text!)
                    
                    
                    //guard let amount = labelDisplay.text else { return }
                    
                    // ::::::::::: Gospers Approximation for Decimal Factorial :::::::
                    //   https://www.quora.com/How-do-I-calculate-decimal-factorials-like-1-7
                    let am = Double(n_in_cnr)
                    let constant_one = Double(pow(am!/2.71828182845905, am!))
                    let constant_two = Double(pow(3.141592653589790 * (2.0 * am! + 1.0/3.0), 0.5))
                    let result = Double(constant_one * constant_two)
                    numerator_n_pnrANDcnrFunction = result
                    
                    if labelDisplay.text == "inf" {
                        labelDisplay.text = "Error"
                    }
                    
                    ///::::::::::::::::::::::::::::::::::::::::::::::::::
                    
                    
                } else if n_in_cnr.contains(".") ||
                    n_in_cnr.contains(".0") ||
                    n_in_cnr.contains(".00") ||
                    n_in_cnr.contains(".000") ||
                    n_in_cnr.contains(".0000") ||
                    n_in_cnr.contains(".00000") ||
                    n_in_cnr.contains(".000000") ||
                    n_in_cnr.contains(".0000000") ||
                    n_in_cnr.contains(".00000000") ||
                    n_in_cnr.contains(".000000000") ||
                    n_in_cnr.contains(".0000000000") ||
                    n_in_cnr.contains(".00000000000") ||
                    n_in_cnr.contains(".000000000000") ||
                    n_in_cnr.contains(".0000000000000") ||
                    n_in_cnr.contains(".00000000000000") || n_in_cnr.contains(".000000000000000") || n_in_cnr.contains(".0000000000000000") || n_in_cnr.contains(".00000000000000000") || n_in_cnr.contains(".000000000000000000") || n_in_cnr.contains(".0000000000000000000") || n_in_cnr.contains(".00000000000000000000") || n_in_cnr.contains(".000000000000000000000") || n_in_cnr.contains(".0000000000000000000000") {
                    
                    // let checkUnderNumber = Double(labelDisplay.text)
                    
                    let amount = Float(n_in_cnr)
                    if amount == 0 || amount == 1 {
                        
                        numerator_n_pnrANDcnrFunction = Double(1.0) // normal labelDisplay
                        
                    } else if String(amount!) == "Error" {
                        return
                    } else if Double(amount!) < 0.0 {
                        labelDisplay.text = String("Error")
                    } else {
                        
                        let am = Int(amount!)
                        // let upperBound = am
                        //   let lowerBound = 1.0
                        
                        
                        if am == 0 || am == 1 {
                            
                            numerator_n_pnrANDcnrFunction = Double(1.0)
                            
                            
                        } else {
                            
                            
                            
                            
                            
                            func carryAll(_ arr: [Int]) -> [Int] {
                                var result = [Int]()
                                
                                var carry = 0
                                for val in arr.reversed() {
                                    let total = val + carry
                                    let digit = total % 10
                                    carry = total / 10
                                    result.append(digit)
                                }
                                
                                while carry > 0 {
                                    let digit = carry % 10
                                    carry = carry / 10
                                    result.append(digit)
                                }
                                
                                return result.reversed()
                            }
                            
                            
                            
                            func factorial(of n: Int) -> String {
                                var result = [1]
                                for i in 2...n {
                                    result = result.map { $0 * i }
                                    result = carryAll(result)
                                }
                                
                                return result.map(String.init).joined()
                            }
                            
                            
                            //                func factorial(of num: Int) -> Int {
                            //                    if num == 1 {
                            //                        return 1
                            //                    } else {
                            //                        return num * factorial(of:num - 1)
                            //                    }
                            //                }
                            
                            //  let x = 4
                            let result = factorial(of: am)
                            //   print("The factorial of \(x) is \(result)")
                            
                            numerator_n_pnrANDcnrFunction = Double(result)!
                            if labelDisplay.text == "inf" {
                                labelDisplay.text = "Error"
                            }
                            
                            
                        }
                        
                    }
                    
                    
                    
                    
                    
                    
                } else {
                    
                    let amount = Int(n_in_cnr)
                    
                    if amount! > 103 {
                        labelDisplay.text = "Error"
                        return
                    }else {
                        
                        if amount == 0 || amount == 1 {
                            
                            numerator_n_pnrANDcnrFunction = Double(1.0)
                            
                        }  else {
                            
                            let am = Int(amount!)
                            // let upperBound = am
                            //   let lowerBound = 1.0
                            
                            
                            if am == 0 || am == 1 {
                                
                                numerator_n_pnrANDcnrFunction = Double(1.0)
                                
                                
                            } else {
                                
                                
                                
                                
                                
                                func carryAll(_ arr: [Int]) -> [Int] {
                                    var result = [Int]()
                                    
                                    var carry = 0
                                    for val in arr.reversed() {
                                        let total = val + carry
                                        let digit = total % 10
                                        carry = total / 10
                                        result.append(digit)
                                    }
                                    
                                    while carry > 0 {
                                        let digit = carry % 10
                                        carry = carry / 10
                                        result.append(digit)
                                    }
                                    
                                    return result.reversed()
                                }
                                
                                
                                
                                func factorial(of n: Int) -> String {
                                    var result = [1]
                                    for i in 2...n {
                                        result = result.map { $0 * i }
                                        result = carryAll(result)
                                    }
                                    
                                    return result.map(String.init).joined()
                                }
                                
                                
                                
                                let result = factorial(of: am)
                                
                                numerator_n_pnrANDcnrFunction = Double(result)!
                                if labelDisplay.text == "inf" {
                                    labelDisplay.text = "Error"
                                }
                            }
                        }
                    }
                    
                    
                }
                //;;; end numerator
                //;;; start denominator part1
                if nMinusr_in_cnr.contains(".1") ||
                    nMinusr_in_cnr.contains(".2") ||
                    nMinusr_in_cnr.contains(".3") ||
                    nMinusr_in_cnr.contains(".4") ||
                    nMinusr_in_cnr.contains(".5") ||
                    nMinusr_in_cnr.contains(".6") ||
                    nMinusr_in_cnr.contains(".7") ||
                    nMinusr_in_cnr.contains(".8") ||
                    nMinusr_in_cnr.contains(".9") ||
                    nMinusr_in_cnr.contains(".01") || nMinusr_in_cnr.contains(".02") || nMinusr_in_cnr.contains(".03") || nMinusr_in_cnr.contains(".04") || nMinusr_in_cnr.contains(".05") || nMinusr_in_cnr.contains(".06") || nMinusr_in_cnr.contains(".07") || nMinusr_in_cnr.contains(".08") || nMinusr_in_cnr.contains(".09")  || nMinusr_in_cnr.contains(".001")   || nMinusr_in_cnr.contains(".002") || nMinusr_in_cnr.contains(".003")   || nMinusr_in_cnr.contains(".004")   || nMinusr_in_cnr.contains(".005")   || nMinusr_in_cnr.contains(".006")   || nMinusr_in_cnr.contains(".007")   || nMinusr_in_cnr.contains(".008")   || nMinusr_in_cnr.contains(".009") || nMinusr_in_cnr.contains(".0001") || nMinusr_in_cnr.contains(".0002") || nMinusr_in_cnr.contains(".0003") || nMinusr_in_cnr.contains(".0004") || nMinusr_in_cnr.contains(".0005") || nMinusr_in_cnr.contains(".0006") || nMinusr_in_cnr.contains(".0007") || nMinusr_in_cnr.contains(".0008") || nMinusr_in_cnr.contains(".0009")    {
                    
                    //  var checkUnderNumber = Double(labelDisplay.text!)
                    
                    
                    //guard let amount = labelDisplay.text else { return }
                    
                    // ::::::::::: Gospers Approximation for Decimal Factorial :::::::
                    //   https://www.quora.com/How-do-I-calculate-decimal-factorials-like-1-7
                    let am = Double(nMinusr_in_cnr)
                    let constant_one = Double(pow(am!/2.71828182845905, am!))
                    let constant_two = Double(pow(3.141592653589790 * (2.0 * am! + 1.0/3.0), 0.5))
                    let result = Double(constant_one * constant_two)
                    denominator_nMinusr_pnrANDcnrFunction = result
                    
                    if labelDisplay.text == "inf" {
                        labelDisplay.text = "Error"
                    }
                    
                    ///::::::::::::::::::::::::::::::::::::::::::::::::::
                    
                    
                } else if nMinusr_in_cnr.contains(".") ||
                    nMinusr_in_cnr.contains(".0") ||
                    nMinusr_in_cnr.contains(".00") ||
                    nMinusr_in_cnr.contains(".000") ||
                    nMinusr_in_cnr.contains(".0000") ||
                    nMinusr_in_cnr.contains(".00000") ||
                    nMinusr_in_cnr.contains(".000000") ||
                    nMinusr_in_cnr.contains(".0000000") ||
                    nMinusr_in_cnr.contains(".00000000") ||
                    nMinusr_in_cnr.contains(".000000000") ||
                    nMinusr_in_cnr.contains(".0000000000") ||
                    nMinusr_in_cnr.contains(".00000000000") ||
                    nMinusr_in_cnr.contains(".000000000000") ||
                    nMinusr_in_cnr.contains(".0000000000000") ||
                    nMinusr_in_cnr.contains(".00000000000000") || nMinusr_in_cnr.contains(".000000000000000") || nMinusr_in_cnr.contains(".0000000000000000") || nMinusr_in_cnr.contains(".00000000000000000") || nMinusr_in_cnr.contains(".000000000000000000") || nMinusr_in_cnr.contains(".0000000000000000000") || nMinusr_in_cnr.contains(".00000000000000000000") || nMinusr_in_cnr.contains(".000000000000000000000") || nMinusr_in_cnr.contains(".0000000000000000000000") {
                    
                    // let checkUnderNumber = Double(labelDisplay.text)
                    
                    let amount = Float(nMinusr_in_cnr)
                    if amount == 0 || amount == 1 {
                        
                        denominator_nMinusr_pnrANDcnrFunction = Double(1.0) // normal labelDisplay
                        
                    } else if String(amount!) == "Error" {
                        return
                    } else if Double(amount!) < 0.0 {
                        labelDisplay.text = String("Error")
                    } else {
                        
                        let am = Int(amount!)
                        // let upperBound = am
                        //   let lowerBound = 1.0
                        
                        
                        if am == 0 || am == 1 {
                            
                            denominator_nMinusr_pnrANDcnrFunction = Double(1.0)
                            
                            
                        } else {
                            
                            
                            
                            
                            
                            func carryAll(_ arr: [Int]) -> [Int] {
                                var result = [Int]()
                                
                                var carry = 0
                                for val in arr.reversed() {
                                    let total = val + carry
                                    let digit = total % 10
                                    carry = total / 10
                                    result.append(digit)
                                }
                                
                                while carry > 0 {
                                    let digit = carry % 10
                                    carry = carry / 10
                                    result.append(digit)
                                }
                                
                                return result.reversed()
                            }
                            
                            
                            
                            func factorial(of n: Int) -> String {
                                var result = [1]
                                for i in 2...n {
                                    result = result.map { $0 * i }
                                    result = carryAll(result)
                                }
                                
                                return result.map(String.init).joined()
                            }
                            
                            
                            //                func factorial(of num: Int) -> Int {
                            //                    if num == 1 {
                            //                        return 1
                            //                    } else {
                            //                        return num * factorial(of:num - 1)
                            //                    }
                            //                }
                            
                            //  let x = 4
                            let result = factorial(of: am)
                            //   print("The factorial of \(x) is \(result)")
                            
                            denominator_nMinusr_pnrANDcnrFunction = Double(result)!
                            if labelDisplay.text == "inf" {
                                labelDisplay.text = "Error"
                            }
                            
                            
                        }
                        
                    }
                    
                    
                    
                    
                    
                    
                } else {
                    
                    let amount = Int(nMinusr_in_cnr)
                    
                    if amount! > 103 {
                        labelDisplay.text = "Error"
                        return
                    }else {
                        
                        if amount == 0 || amount == 1 {
                            
                            denominator_nMinusr_pnrANDcnrFunction = Double(1.0)
                            
                        }  else {
                            
                            let am = Int(amount!)
                            // let upperBound = am
                            //   let lowerBound = 1.0
                            
                            
                            if am == 0 || am == 1 {
                                
                                denominator_nMinusr_pnrANDcnrFunction = Double(1.0)
                                
                                
                            } else {
                                
                                
                                
                                
                                
                                func carryAll(_ arr: [Int]) -> [Int] {
                                    var result = [Int]()
                                    
                                    var carry = 0
                                    for val in arr.reversed() {
                                        let total = val + carry
                                        let digit = total % 10
                                        carry = total / 10
                                        result.append(digit)
                                    }
                                    
                                    while carry > 0 {
                                        let digit = carry % 10
                                        carry = carry / 10
                                        result.append(digit)
                                    }
                                    
                                    return result.reversed()
                                }
                                
                                
                                
                                func factorial(of n: Int) -> String {
                                    var result = [1]
                                    for i in 2...n {
                                        result = result.map { $0 * i }
                                        result = carryAll(result)
                                    }
                                    
                                    return result.map(String.init).joined()
                                }
                                
                                
                                
                                let result = factorial(of: am)
                                
                                denominator_nMinusr_pnrANDcnrFunction = Double(result)!
                                if labelDisplay.text == "inf" {
                                    labelDisplay.text = "Error"
                                }
                            }
                        }
                    }
                    
                    
                }
                //;;; end denominator part1
                 //;;; start denominator part2
                if r_in_cnr.contains(".1") ||
                    r_in_cnr.contains(".2") ||
                    r_in_cnr.contains(".3") ||
                    r_in_cnr.contains(".4") ||
                    r_in_cnr.contains(".5") ||
                    r_in_cnr.contains(".6") ||
                    r_in_cnr.contains(".7") ||
                    r_in_cnr.contains(".8") ||
                    r_in_cnr.contains(".9") ||
                    r_in_cnr.contains(".01") ||
                    r_in_cnr.contains(".02") ||
                    r_in_cnr.contains(".03") ||
                    r_in_cnr.contains(".04") ||
                    r_in_cnr.contains(".05") ||
                    r_in_cnr.contains(".06") ||
                    r_in_cnr.contains(".07") ||
                    r_in_cnr.contains(".08") ||
                    r_in_cnr.contains(".09")  ||
                    r_in_cnr.contains(".001")   ||
                    r_in_cnr.contains(".002") ||
                    r_in_cnr.contains(".003")   ||
                    r_in_cnr.contains(".004")   ||
                    r_in_cnr.contains(".005")   ||
                    r_in_cnr.contains(".006")   ||
                    r_in_cnr.contains(".007")   ||
                    r_in_cnr.contains(".008")   ||
                    r_in_cnr.contains(".009") ||
                    r_in_cnr.contains(".0001") ||
                    r_in_cnr.contains(".0002") ||
                    r_in_cnr.contains(".0003") ||
                    r_in_cnr.contains(".0004") ||
                    r_in_cnr.contains(".0005") ||
                    r_in_cnr.contains(".0006") ||
                    r_in_cnr.contains(".0007") ||
                    r_in_cnr.contains(".0008") ||
                    r_in_cnr.contains(".0009")    {
                    
                    //  var checkUnderNumber = Double(labelDisplay.text!)
                    
                    
                    //guard let amount = labelDisplay.text else { return }
                    
                    // ::::::::::: Gospers Approximation for Decimal Factorial :::::::
                    //   https://www.quora.com/How-do-I-calculate-decimal-factorials-like-1-7
                    let am = Double(r_in_cnr)
                    let constant_one = Double(pow(am!/2.71828182845905, am!))
                    let constant_two = Double(pow(3.141592653589790 * (2.0 * am! + 1.0/3.0), 0.5))
                    let result = Double(constant_one * constant_two)
                    denominator_r_cnrFunction = result
                    
                    if labelDisplay.text == "inf" {
                        labelDisplay.text = "Error"
                    }
                    
                    ///::::::::::::::::::::::::::::::::::::::::::::::::::
                    
                    
                } else if r_in_cnr.contains(".") ||
                    r_in_cnr.contains(".0") ||
                    r_in_cnr.contains(".00") ||
                    r_in_cnr.contains(".000") ||
                    r_in_cnr.contains(".0000") ||
                    r_in_cnr.contains(".00000") ||
                    r_in_cnr.contains(".000000") ||
                    r_in_cnr.contains(".0000000") ||
                    r_in_cnr.contains(".00000000") ||
                    r_in_cnr.contains(".000000000") ||
                    r_in_cnr.contains(".0000000000") ||
                    r_in_cnr.contains(".00000000000") ||
                    r_in_cnr.contains(".000000000000") ||
                    r_in_cnr.contains(".0000000000000") ||
                    r_in_cnr.contains(".00000000000000") || r_in_cnr.contains(".000000000000000") || r_in_cnr.contains(".0000000000000000") || r_in_cnr.contains(".00000000000000000") || r_in_cnr.contains(".000000000000000000") || r_in_cnr.contains(".0000000000000000000") || r_in_cnr.contains(".00000000000000000000") || r_in_cnr.contains(".000000000000000000000") || r_in_cnr.contains(".0000000000000000000000") {
                    
                    // let checkUnderNumber = Double(labelDisplay.text)
                    
                    let amount = Float(r_in_cnr)
                    if amount == 0 || amount == 1 {
                        
                        denominator_r_cnrFunction = Double(1.0) // normal labelDisplay
                        
                    } else if String(amount!) == "Error" {
                        return
                    } else if Double(amount!) < 0.0 {
                        labelDisplay.text = String("Error")
                    } else {
                        
                        let am = Int(amount!)
                        // let upperBound = am
                        //   let lowerBound = 1.0
                        
                        
                        if am == 0 || am == 1 {
                            
                            denominator_r_cnrFunction = Double(1.0)
                            
                            
                        } else {
                            
                            
                            
                            
                            
                            func carryAll(_ arr: [Int]) -> [Int] {
                                var result = [Int]()
                                
                                var carry = 0
                                for val in arr.reversed() {
                                    let total = val + carry
                                    let digit = total % 10
                                    carry = total / 10
                                    result.append(digit)
                                }
                                
                                while carry > 0 {
                                    let digit = carry % 10
                                    carry = carry / 10
                                    result.append(digit)
                                }
                                
                                return result.reversed()
                            }
                            
                            
                            
                            func factorial(of n: Int) -> String {
                                var result = [1]
                                for i in 2...n {
                                    result = result.map { $0 * i }
                                    result = carryAll(result)
                                }
                                
                                return result.map(String.init).joined()
                            }
                            
                            
                            //                func factorial(of num: Int) -> Int {
                            //                    if num == 1 {
                            //                        return 1
                            //                    } else {
                            //                        return num * factorial(of:num - 1)
                            //                    }
                            //                }
                            
                            //  let x = 4
                            let result = factorial(of: am)
                            //   print("The factorial of \(x) is \(result)")
                            
                            denominator_r_cnrFunction = Double(result)!
                            if labelDisplay.text == "inf" {
                                labelDisplay.text = "Error"
                            }
                            
                            
                        }
                        
                    }
                    
                    
                    
                    
                    
                    
                } else {
                    
                    let amount = Int(r_in_cnr)
                    
                    if amount! > 103 {
                        labelDisplay.text = "Error"
                        return
                    }else {
                        
                        if amount == 0 || amount == 1 {
                            
                            denominator_r_cnrFunction = Double(1.0)
                            
                        }  else {
                            
                            let am = Int(amount!)
                            // let upperBound = am
                            //   let lowerBound = 1.0
                            
                            
                            if am == 0 || am == 1 {
                                
                                denominator_r_cnrFunction = Double(1.0)
                                
                                
                            } else {
                                
                                
                                
                                
                                
                                func carryAll(_ arr: [Int]) -> [Int] {
                                    var result = [Int]()
                                    
                                    var carry = 0
                                    for val in arr.reversed() {
                                        let total = val + carry
                                        let digit = total % 10
                                        carry = total / 10
                                        result.append(digit)
                                    }
                                    
                                    while carry > 0 {
                                        let digit = carry % 10
                                        carry = carry / 10
                                        result.append(digit)
                                    }
                                    
                                    return result.reversed()
                                }
                                
                                
                                
                                func factorial(of n: Int) -> String {
                                    var result = [1]
                                    for i in 2...n {
                                        result = result.map { $0 * i }
                                        result = carryAll(result)
                                    }
                                    
                                    return result.map(String.init).joined()
                                }
                                
                                
                                
                                let result = factorial(of: am)
                                
                                denominator_r_cnrFunction = Double(result)!
                                if labelDisplay.text == "inf" {
                                    labelDisplay.text = "Error"
                                }
                            }
                        }
                    }
                    
                    
                }
                //;;; end denominator part2
                
                
                
                
                
                //important section
                let answer = Double(numerator_n_pnrANDcnrFunction / denominator_r_cnrFunction / denominator_nMinusr_pnrANDcnrFunction)
                calcDisplay.text = String(answer) // outputs answer
                variableLabel.text = String("n (objects), r (sample)")
                
                stored_cnr.removeAll()
                newCalculator = true
                
                //end of important section
                
                
                
                
                
                
                
            } else {
                stored_cnr.append(String(amount))
                //   let  x_in_xRaisedToY = stored_xRaisedToY.append(String(amount))
                variableLabel.text = String("n (objects)")
                labelDisplay.text = ""
                
            }
            
        }
        
        
    }
    
    //hhhhhhhhhhhhhhhh end1

    
    @objc func gcfFunction(notification: NSNotification) {
        variableLabel.text = String("")
        
        guard let amount = labelDisplay.text else { return }
        
        if amount == "" || amount == "Error" || amount == "nan" || amount == "inf" {
            return
        }else {
            //            var x_inxRaisedToY = Double(amount)
            
            print("stored_gcf.count: \(stored_gcf.count)")
            
            if stored_gcf.count > 0 {
                
                let firstNumber = Double(stored_gcf.removeLast())!
                let secondNumber = Double(amount)!
                
                let floored_firstNumber = floor(firstNumber)
                let floored_secondNumber = floor(secondNumber)
                
                
                //alet  x_in_xRaisedToY = Double(pow())!
                //  stored_mRecall.append(String(y_in_xRaisedToY))
                
                //let x_in_xRaisedToY = Double(stored_xRaisedToY.removeLast())!
                let result = Double(gcd(Int(floored_firstNumber), Int(floored_secondNumber)))
                
                
                labelDisplay.text = String(formatNumber(result))
                stored_gcf.removeAll()
                newCalculator = true
                
              //  variableLabel.text = "X, Y"

                
            } else {
                stored_gcf.append(String(amount))
                //   let  x_in_xRaisedToY = stored_xRaisedToY.append(String(amount))
                labelDisplay.text = ""
                //variableLabel.text = "X"
            }
            
        }
        
        
        
    }
    
    
    func gcd(_ a: Int, _ b: Int) -> Int {
        //for gcfFunction
        let r = a % b
        if r != 0 {
            return gcd(b, r)
        } else {
            return b
        }
    }
    
    @objc func lcmFunction(notification: NSNotification) {
        variableLabel.text = String("")
        
        guard let amount = labelDisplay.text else { return }
        
        if amount == "" || amount == "Error" || amount == "nan" || amount == "inf" {
            return
        }else {
            //            var x_inxRaisedToY = Double(amount)
            
            print("stored_lcm.count: \(stored_lcm.count)")
            
            if stored_lcm.count > 0 {
                
                let firstNumber = Double(stored_lcm.removeLast())!
                let secondNumber = Double(amount)!
                
                let floored_firstNumber = floor(firstNumber)
                let floored_secondNumber = floor(secondNumber)
                
                
                //alet  x_in_xRaisedToY = Double(pow())!
                //  stored_mRecall.append(String(y_in_xRaisedToY))
                
                //let x_in_xRaisedToY = Double(stored_xRaisedToY.removeLast())!
                let result = Double(lcm(Int(floored_firstNumber), Int(floored_secondNumber)))
                
                
                labelDisplay.text = String(formatNumber(result))
                stored_lcm.removeAll()
                newCalculator = true
                
                //  variableLabel.text = "X, Y"
                
                
            } else {
                stored_lcm.append(String(amount))
                //   let  x_in_xRaisedToY = stored_xRaisedToY.append(String(amount))
                labelDisplay.text = ""
                //variableLabel.text = "X"
            }
            
        }
        
    }
    
    func lcm(_ m: Int, _ n: Int) -> Int {
        // for lcmFunction
        return m / gcd(m, n) * n
    }
    
    
    @objc func avgFunction(notification: NSNotification) {
        variableLabel.text = String("")
        
        guard let amount = labelDisplay.text else { return }
        
        if amount == "" || amount == "Error" || amount == "nan" || amount == "inf" {
            return
        }else {
            //            var x_inxRaisedToY = Double(amount)
            
            print("stored_avg.count: \(stored_avg.count)")
            
            if stored_avg.count > 0 {
                
                let firstNumber = Double(stored_avg.removeLast())!
                let secondNumber = Double(amount)!
                
               
                
                //alet  x_in_xRaisedToY = Double(pow())!
                //  stored_mRecall.append(String(y_in_xRaisedToY))
                
                //let x_in_xRaisedToY = Double(stored_xRaisedToY.removeLast())!
                let result = Double((firstNumber + secondNumber)/2)
                
                
                labelDisplay.text = String(formatNumber(result))
                stored_avg.removeAll()
                newCalculator = true
                
                //  variableLabel.text = "X, Y"
                
                
            } else {
                stored_avg.append(String(amount))
                //   let  x_in_xRaisedToY = stored_xRaisedToY.append(String(amount))
                labelDisplay.text = ""
                //variableLabel.text = "X"
            }
            
        }
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    @objc func stoOneFunction(notification: NSNotification) {
        variableLabel.text = String("")
        calcDisplay.text = String("")
        
      
        newCalculator = true
        
        if labelDisplay.text!.contains("") || labelDisplay.text!.contains("Error") || labelDisplay.text!.contains("inf")   {
            return
        }else {
            // labelDisplay.text = String(formatNumber(result))
            
            let defaults = UserDefaults.standard
            defaults.set(labelDisplay.text!, forKey: "stoOne")
            //  var stored_stoOne = amount
            
        }
        
    }
    
    
    
    
    @objc func writeStoOneFunction(notification: NSNotification) {
        variableLabel.text = String("")
        
        
            //   guard let amount = labelDisplay.text else { return }
            newCalculator = true
        
            let defaults = UserDefaults.standard
            let stoOneNewTitle = defaults.string(forKey: "stoOne")
            labelDisplay.text = stoOneNewTitle
           
        
        
    }
    
    
    
    
    
    
    
    
    
    @objc func stoTwoFunction(notification: NSNotification) {
        variableLabel.text = String("")
        calcDisplay.text = String("")
        
      
        newCalculator = true
        
        if labelDisplay.text!.contains("") || labelDisplay.text!.contains("Error") || labelDisplay.text!.contains("inf")   {
            return
        }else {
            // labelDisplay.text = String(formatNumber(result))
            
            let defaults = UserDefaults.standard
            defaults.set(labelDisplay.text!, forKey: "stoTwo")
            //  var stored_stoOne = amount
            
        }
        
    }
    
    
    
    
    @objc func writeStoTwoFunction(notification: NSNotification) {
        variableLabel.text = String("")
        
        
        //   guard let amount = labelDisplay.text else { return }
        newCalculator = true
        
        let defaults = UserDefaults.standard
        let stoTwoNewTitle = defaults.string(forKey: "stoTwo")
        labelDisplay.text = stoTwoNewTitle
        
        
        
    }
    
    
    
    
    
    
    @objc func stoThreeFunction(notification: NSNotification) {
        variableLabel.text = String("")
        calcDisplay.text = String("")
    
        newCalculator = true
        
        if labelDisplay.text!.contains("") || labelDisplay.text!.contains("Error") || labelDisplay.text!.contains("inf")   {
            return
        }else {
            // labelDisplay.text = String(formatNumber(result))
            
            let defaults = UserDefaults.standard
            defaults.set(labelDisplay.text!, forKey: "stoThree")
            //  var stored_stoOne = amount
            
        }
        
    }
    
    
    
    
    @objc func writeStoThreeFunction(notification: NSNotification) {
        variableLabel.text = String("")
        
        
        //   guard let amount = labelDisplay.text else { return }
        newCalculator = true
        
        let defaults = UserDefaults.standard
        let stoThreeNewTitle = defaults.string(forKey: "stoThree")
        labelDisplay.text = stoThreeNewTitle
        
        
        
    }
    
    
    @objc func stoFourFunction(notification: NSNotification) {
        variableLabel.text = String("")
        calcDisplay.text = String("")
        
        
        newCalculator = true
     //   print("amount under stoFourFunction: \(amount)")
        if labelDisplay.text!.contains("") || labelDisplay.text!.contains("Error") || labelDisplay.text!.contains("inf")   {
            return
        }else {
            
            
            let defaults = UserDefaults.standard
            defaults.set(labelDisplay.text!, forKey: "stoFour")
            
            
        }
        
    }
    
    
    
    
    @objc func writeStoFourFunction(notification: NSNotification) {
        variableLabel.text = String("")
        
        
      //   guard let amount = labelDisplay.text else { return }
        newCalculator = true
        
        let defaults = UserDefaults.standard
        let stoFourNewTitle = defaults.string(forKey: "stoFour")
        labelDisplay.text = stoFourNewTitle
        
        
        
    }
    
    @objc func stoFiveFunction(notification: NSNotification) {
        variableLabel.text = String("")
        calcDisplay.text = String("")
        
      
        newCalculator = true
   
        if labelDisplay.text!.contains("") || labelDisplay.text!.contains("Error") || labelDisplay.text!.contains("inf")   {
            return
        }else {
            // labelDisplay.text = String(formatNumber(result))
            
            let defaults = UserDefaults.standard
            defaults.set(labelDisplay.text!, forKey: "stoFive")
            //  var stored_stoOne = amount
            
        }
    }
    
    
    
    
    @objc func writeStoFiveFunction(notification: NSNotification) {
        variableLabel.text = String("")
        
        
    //    guard let amount = labelDisplay.text else { return }
        newCalculator = true
        
        let defaults = UserDefaults.standard
        let stoFiveNewTitle = defaults.string(forKey: "stoFive")
        labelDisplay.text = stoFiveNewTitle
        
        
        
    }
    
    
    
    @objc func stoSixFunction(notification: NSNotification) {
        variableLabel.text = String("")
        calcDisplay.text = String("")
        
        
        newCalculator = true
        if labelDisplay.text!.contains("") || labelDisplay.text!.contains("Error") || labelDisplay.text!.contains("inf")   {
            return
        }else {
            // labelDisplay.text = String(formatNumber(result))
            
            let defaults = UserDefaults.standard
            defaults.set(labelDisplay.text!, forKey: "stoSix")
            //  var stored_stoOne = amount
            
        }
        
    }
    
    
    
    
    @objc func writeStoSixFunction(notification: NSNotification) {
        variableLabel.text = String("")
        
        
        //   guard let amount = labelDisplay.text else { return }
        newCalculator = true
        
        let defaults = UserDefaults.standard
        let stoSixNewTitle = defaults.string(forKey: "stoSix")
        labelDisplay.text = stoSixNewTitle
        
        
        
    }
    
    @objc func stoSevenFunction(notification: NSNotification) {
        variableLabel.text = String("")
        calcDisplay.text = String("")
        
     
        newCalculator = true
        
        if labelDisplay.text!.contains("") || labelDisplay.text!.contains("Error") || labelDisplay.text!.contains("inf")   {
            return
        }else {
           
            
            let defaults = UserDefaults.standard
            defaults.set(labelDisplay.text!, forKey: "stoSeven")
            
            
        }
        
    }
    
    
    
    
    @objc func writeStoSevenFunction(notification: NSNotification) {
        variableLabel.text = String("")
        
        
        //   guard let amount = labelDisplay.text else { return }
        newCalculator = true
        
        let defaults = UserDefaults.standard
        let stoSevenNewTitle = defaults.string(forKey: "stoSeven")
        labelDisplay.text = stoSevenNewTitle
        
        
        
    }
    
    
    @objc func stoEightFunction(notification: NSNotification) {
        variableLabel.text = String("")
        calcDisplay.text = String("")
        
      
        newCalculator = true
        
        if labelDisplay.text!.contains("") || labelDisplay.text!.contains("Error") || labelDisplay.text!.contains("inf")   {
            return
        }else {
            // labelDisplay.text = String(formatNumber(result))
            
            let defaults = UserDefaults.standard
            defaults.set(labelDisplay.text!, forKey: "stoEight")
            //  var stored_stoOne = amount
            
        }
        
        
    }
    
    
    
    
    @objc func writeStoEightFunction(notification: NSNotification) {
        variableLabel.text = String("")
        
        
        //   guard let amount = labelDisplay.text else { return }
        newCalculator = true
        
        let defaults = UserDefaults.standard
        let stoEightNewTitle = defaults.string(forKey: "stoEight")
        labelDisplay.text = stoEightNewTitle
        
        
        
    }
    
    @objc func stoNineFunction(notification: NSNotification) {
        variableLabel.text = String("")
        calcDisplay.text = String("")
        
       
        newCalculator = true
       

        if labelDisplay.text!.contains("") || labelDisplay.text!.contains("Error") || labelDisplay.text!.contains("inf")   {
            return
        }else {
            // labelDisplay.text = String(formatNumber(result))
            
            let defaults = UserDefaults.standard
            defaults.set(labelDisplay.text!, forKey: "stoNine")
            //  var stored_stoOne = amount
            
        }
        
    }
    
    
    
    
    @objc func writeStoNineFunction(notification: NSNotification) {
        variableLabel.text = String("")
        
        
      
        newCalculator = true
        
        let defaults = UserDefaults.standard
        let stoNineNewTitle = defaults.string(forKey: "stoNine")
        labelDisplay.text = stoNineNewTitle
        
        
        
    }
    
    
    
    @objc func stoTenFunction(notification: NSNotification) {
        variableLabel.text = String("")
        calcDisplay.text = String("")
        
      
        newCalculator = true
        
        if labelDisplay.text!.contains("") || labelDisplay.text!.contains("Error") || labelDisplay.text!.contains("inf")   {
            return
        }else {
            // labelDisplay.text = String(formatNumber(result))
            
            let defaults = UserDefaults.standard
            defaults.set(labelDisplay.text!, forKey: "stoTen")
            //  var stored_stoOne = amount
            
        }
        
    }
    
    
    
    
    @objc func writeStoTenFunction(notification: NSNotification) {
        variableLabel.text = String("")
        
        
        //   guard let amount = labelDisplay.text else { return }
        newCalculator = true
        
        let defaults = UserDefaults.standard
        let stoTenNewTitle = defaults.string(forKey: "stoTen")
        labelDisplay.text = stoTenNewTitle
        
        
        
    }
    
    
    @objc func stoElevenFunction(notification: NSNotification) {
        variableLabel.text = String("")
        calcDisplay.text = String("")
        
       
        newCalculator = true
        
        if labelDisplay.text!.contains("") || labelDisplay.text!.contains("Error") || labelDisplay.text!.contains("inf")   {
            return
        }else {
            // labelDisplay.text = String(formatNumber(result))
            
            let defaults = UserDefaults.standard
            defaults.set(labelDisplay.text!, forKey: "stoEleven")
            //  var stored_stoOne = amount
            
        }
        
    }
    
    
    
    
    @objc func writeStoElevenFunction(notification: NSNotification) {
        variableLabel.text = String("")
        
        
        //   guard let amount = labelDisplay.text else { return }
        newCalculator = true
        
        let defaults = UserDefaults.standard
        let stoElevenNewTitle = defaults.string(forKey: "stoEleven")
        labelDisplay.text = stoElevenNewTitle
        
        
        
    }
    
    
    @objc func stoTwelveFunction(notification: NSNotification) {
        variableLabel.text = String("")
        calcDisplay.text = String("")
        
      
        newCalculator = true
        
        if labelDisplay.text!.contains("") || labelDisplay.text!.contains("Error") || labelDisplay.text!.contains("inf")   {
            return
        }else {
            // labelDisplay.text = String(formatNumber(result))
            
            let defaults = UserDefaults.standard
            defaults.set(labelDisplay.text!, forKey: "stoTwelve")
            //  var stored_stoOne = amount
            
        }
        
    }
    
    
    
    
    @objc func writeStoTwelveFunction(notification: NSNotification) {
        variableLabel.text = String("")
        
        
        //   guard let amount = labelDisplay.text else { return }
        newCalculator = true
        
        let defaults = UserDefaults.standard
        let stoTwelveNewTitle = defaults.string(forKey: "stoTwelve")
        labelDisplay.text = stoTwelveNewTitle
        
        
        
    }
    
    
    @objc func mMultFunction(notification: NSNotification) {
        variableLabel.text = String("")
        
        
        guard let amount = labelDisplay.text else { return }
        
        newCalculator = true
        
        
        if amount == "" || amount == "Error" || amount == "nan" || amount == "inf" {
            return
        }else {
            
            
            if stored_mRecall.count > 0 {
                
                let mult_to_mRecall = Double(stored_mRecall.removeLast())! * Double(amount)!
                
                stored_mRecall.append(String(mult_to_mRecall))
                
            } else {
                
                stored_mRecall.append(String(amount))
                
            }
            
        }
        
    }
    
    
    @objc func mDivideFunction(notification: NSNotification) {
        variableLabel.text = String("")
        
        guard let amount = labelDisplay.text else { return }
        
        newCalculator = true
        
        
        if amount == "" || amount == "Error" || amount == "nan" || amount == "inf" {
            return
        }else {
            
            
            if stored_mRecall.count > 0 {
                
                let divide_to_mRecall = Double(stored_mRecall.removeLast())! / Double(amount)!
                
                stored_mRecall.append(String(divide_to_mRecall))
                
            } else {
                
                stored_mRecall.append(String(amount))
                
            }
            
        }
        
    }
    
    
    // cyan functions
    @objc func AreaOfCircleGivenRadiusFunction(notification: NSNotification) {
        variableLabel.text = String("")
        calcDisplay.text = String("")
        
        guard let amount = labelDisplay.text else { return }
        //    guard let varDisplay = variableLabel.text else { return }
        
        newCalculator = true
        
        if amount == "" {
            return
        }else {
            let am = Double(amount)
            let result = Double(3.141592653589790 * am! * am!)
            labelDisplay.text = String(formatNumber(result))
            variableLabel.text = String("Radius (r)")
            calcDisplay.text = String("Area (A) of Circle")
        }

    }
    
    
    @objc func circumferenceOfCircleGivenRadiusFunction(notification: NSNotification) {
        variableLabel.text = String("")
        calcDisplay.text = String("")
        
        guard let amount = labelDisplay.text else { return }
        //    guard let varDisplay = variableLabel.text else { return }
        
        newCalculator = true
        
        if amount == "" {
            return
        }else {
            let am = Double(amount)
            let result = Double(2 * 3.141592653589790 * am!)
            labelDisplay.text = String(formatNumber(result))
            variableLabel.text = String("Radius (r)")
            calcDisplay.text = String("Circumference (C) of Circle")
        }
        
    }
    
    @objc func radiusOfCircleGivenDiameterFunction(notification: NSNotification) {
        variableLabel.text = String("")
        calcDisplay.text = String("")
        
        
        guard let amount = labelDisplay.text else { return }
        //    guard let varDisplay = variableLabel.text else { return }
        
        newCalculator = true
        
        if amount == "" {
            return
        }else {
            let am = Double(amount)
            let result = Double(am! / 2)
            labelDisplay.text = String(formatNumber(result))
            variableLabel.text = String("Diameter (d)")
            calcDisplay.text = String("Radius (r) of Circle")
        }
        
    }
    
    @objc func radiusOfCircleGivenAreaFunction(notification: NSNotification) {
        variableLabel.text = String("")
        calcDisplay.text = String("")
        
        
        guard let amount = labelDisplay.text else { return }
        //    guard let varDisplay = variableLabel.text else { return }
        
        newCalculator = true
        
        if amount == "" {
            return
        }else {
            //√(A/π)
            let am = Double(amount)
            let result = Double(pow(am! / 3.141592653589790, 0.5))
            labelDisplay.text = String(formatNumber(result))
            variableLabel.text = String("Area (A)")
            calcDisplay.text = String("Radius (r) of Circle")
        }
        
    }
    
    @objc func volumeOfSphereGivenRadiusFunction(notification: NSNotification) {
        variableLabel.text = String("")
        calcDisplay.text = String("")
        
        
        guard let amount = labelDisplay.text else { return }
        //    guard let varDisplay = variableLabel.text else { return }
        
        newCalculator = true
       
        if amount == "" {
            return
        }else {
        //1.25πr³
            let am = Double(amount)
            let result = Double(1.25 * 3.141592653589790 * am! * am! * am!)
            labelDisplay.text = String(formatNumber(result))
            variableLabel.text = String("Radius (r)")
            calcDisplay.text = String("Volume (V) of Sphere")
        }
    }
    
    @objc func areaOfSphereGivenRadiusFunction(notification: NSNotification) {
        variableLabel.text = String("")
        calcDisplay.text = String("")
        
        
        guard let amount = labelDisplay.text else { return }
        //    guard let varDisplay = variableLabel.text else { return }
        
        newCalculator = true
        
        if amount == "" {
            return
        }else {
           // A = 4πr²
            let am = Double(amount)
            let result = Double(4 * 3.141592653589790 * am! * am!)
            labelDisplay.text = String(formatNumber(result))
            variableLabel.text = String("Radius (r)")
              calcDisplay.text = String("Area (A) of Sphere")
            
        }
    }
    
    @objc func radiusOfSphereGivenVolumeFunction(notification: NSNotification) {
        variableLabel.text = String("")
        calcDisplay.text = String("")
        
        guard let amount = labelDisplay.text else { return }
        //    guard let varDisplay = variableLabel.text else { return }
        
        newCalculator = true
        
        if amount == "" {
            return
        }else {
            
            // r = ∛(V/1.25π)
            let am = Double(amount)
            let result = Double(pow(am! / 1.25 / 3.141592653589790,1.0/3.0))
            labelDisplay.text = String(formatNumber(result))
            variableLabel.text = String("Volume (V)")
            calcDisplay.text = String("Radius (r) of Sphere")
            
        }
    }
    
    
    
    @objc func radiusOfSphereGivenAreaFunction(notification: NSNotification) {
        variableLabel.text = String("")
        calcDisplay.text = String("")
        
        guard let amount = labelDisplay.text else { return }
        //    guard let varDisplay = variableLabel.text else { return }
        
        newCalculator = true
        
        if amount == "" {
            return
        }else {
            // r = √(A/4π)
            let am = Double(amount)
            let result = Double(pow(am! / 4.0 / 3.141592653589790, 0.5))
            labelDisplay.text = String(formatNumber(result))
            variableLabel.text = String("Area (A)")
             calcDisplay.text = String("Radius (r) of Sphere")
            
        }
    }
    
    
    @objc func volumeOfCylinderGivenRadiusAndHeightFunction(notification: NSNotification) {
         variableLabel.text = String("")
         calcDisplay.text = String("")
        
        guard let amount = labelDisplay.text else { return }
        
        if amount == "" {
            return
        }else {
            
            print("stored_varsFor_volumeOfCylinderGivenRadiusAndHeightFunction.count: \(stored_varsFor_volumeOfCylinderGivenRadiusAndHeightFunction.count)")
            
            if stored_varsFor_volumeOfCylinderGivenRadiusAndHeightFunction.count > 0 {
                
                
                if stored_varsFor_volumeOfCylinderGivenRadiusAndHeightFunction.count == 1 {
                    stored_varsFor_volumeOfCylinderGivenRadiusAndHeightFunction.append(String(amount)) // adds Radius (r)
                    

              
                        // V = πr²h
                        let radius_r = Double(stored_varsFor_volumeOfCylinderGivenRadiusAndHeightFunction.removeLast())! // removes Radius (r)
                        let height_H = Double(stored_varsFor_volumeOfCylinderGivenRadiusAndHeightFunction.removeLast())! // removes Height (r)
                        let result = Double(3.141592653589790 * radius_r * radius_r * height_H)
                        labelDisplay.text = String(formatNumber(result))
                    variableLabel.text = String("Height (h), Radius (r)")
                    calcDisplay.text = String("Volume (V) of Cylinder")
                    stored_varsFor_volumeOfCylinderGivenRadiusAndHeightFunction.removeAll()
                     newCalculator = true
                    
                }
              /////////  variableLabel.text = String("Area (A)")

                
            } else {
                stored_varsFor_volumeOfCylinderGivenRadiusAndHeightFunction.append(String(amount))
                     variableLabel.text = String("Height (h)")
                    labelDisplay.text = ""
            }
            
        }
    }
    
    
    
    @objc func areaOfCylinderGivenRadiusAndHeightFunction(notification: NSNotification) {
        variableLabel.text = String("")
         calcDisplay.text = String("")
        
        guard let amount = labelDisplay.text else { return }
        
        if amount == "" {
            return
        }else {
            
            print("stored_varsFor_areaOfCylinderGivenRadiusAndHeightFunction.count: \(stored_varsFor_areaOfCylinderGivenRadiusAndHeightFunction.count)")
            
            if stored_varsFor_areaOfCylinderGivenRadiusAndHeightFunction.count > 0 {
                
                
                if stored_varsFor_areaOfCylinderGivenRadiusAndHeightFunction.count == 1 {
                    stored_varsFor_areaOfCylinderGivenRadiusAndHeightFunction.append(String(amount)) // adds Radius (r)
                    
                    
                    
                    // A = 2πr²+2πrh
                    let radius_r = Double(stored_varsFor_areaOfCylinderGivenRadiusAndHeightFunction.removeLast())! // removes Radius (r)
                    let height_H = Double(stored_varsFor_areaOfCylinderGivenRadiusAndHeightFunction.removeLast())! // removes Height (h)
                    let result = Double(2.0 * 3.141592653589790 * radius_r * radius_r + 2.0 * 3.141592653589790 * radius_r * height_H)
                    labelDisplay.text = String(formatNumber(result))
                    variableLabel.text = String("Height (h), Radius (r)")
                   calcDisplay.text = String("Area (A) of Cylinder")
                    stored_varsFor_areaOfCylinderGivenRadiusAndHeightFunction.removeAll()
                    newCalculator = true
                    
                }
                /////////  variableLabel.text = String("Area (A)")
                
                
            } else {
            stored_varsFor_areaOfCylinderGivenRadiusAndHeightFunction.append(String(amount))
                variableLabel.text = String("Height (h)")
                labelDisplay.text = ""
            }
            
        }
    }
    
    
    
    
    
    @objc func radiusOfCylinderGivenAreaAndHeightFunction(notification: NSNotification) {
        variableLabel.text = String("")
        calcDisplay.text = String("")
        
        
        guard let amount = labelDisplay.text else { return }
        
        if amount == "" {
            return
        }else {
            print("stored_varsFor_radiusOfCylinderGivenAreaAndHeightFunction.count: \(stored_varsFor_radiusOfCylinderGivenAreaAndHeightFunction.count)")
            
            if stored_varsFor_radiusOfCylinderGivenAreaAndHeightFunction.count > 0 {
                
                
                if stored_varsFor_radiusOfCylinderGivenAreaAndHeightFunction.count == 1 {
                stored_varsFor_radiusOfCylinderGivenAreaAndHeightFunction.append(String(amount)) // adds Height (h)
                    
                    
                    
                    // r = 0.5√(h²+2A/π) - h/2
                    let Height_H = Double(stored_varsFor_radiusOfCylinderGivenAreaAndHeightFunction.removeLast())! // removes Height (h)
                    let Area_A = Double(stored_varsFor_radiusOfCylinderGivenAreaAndHeightFunction.removeLast())! // removes Radius (r)
                    let result = Double(0.5 * pow(Height_H * Height_H + 2*Area_A/3.141592653589790, 0.5) - Height_H/2)
                    labelDisplay.text = String(formatNumber(result))
                    variableLabel.text = String("Area (A), Height (h)")
                    calcDisplay.text = String("Radius (r) of Cylinder")
                    stored_varsFor_radiusOfCylinderGivenAreaAndHeightFunction.removeAll()
                    newCalculator = true
                    
                }
                /////////  variableLabel.text = String("Area (A)")
                
                
            } else {
            stored_varsFor_radiusOfCylinderGivenAreaAndHeightFunction.append(String(amount))
                variableLabel.text = String("Area (A)")
                labelDisplay.text = ""
            }
            
        }
    }
    
    @objc func heightOfCylinderGivenAreaAndRadiusFunction(notification: NSNotification) {
        variableLabel.text = String("")
        calcDisplay.text = String("")
        
        
        guard let amount = labelDisplay.text else { return }
        
        if amount == "" {
            return
        }else {
            print("stored_varsFor_heightOfCylinderGivenAreaAndRadiusFunction.count: \(stored_varsFor_heightOfCylinderGivenAreaAndRadiusFunction.count)")
            
            if stored_varsFor_heightOfCylinderGivenAreaAndRadiusFunction.count > 0 {
                
                
                if stored_varsFor_heightOfCylinderGivenAreaAndRadiusFunction.count == 1 {
                    stored_varsFor_heightOfCylinderGivenAreaAndRadiusFunction.append(String(amount)) // adds Radius (r)
                    
                    
                    
                    // h = (A/2πr)-r
                    let Radius_r = Double(stored_varsFor_heightOfCylinderGivenAreaAndRadiusFunction.removeLast())! // removes Radius (r)
                    let Area_A = Double(stored_varsFor_heightOfCylinderGivenAreaAndRadiusFunction.removeLast())! // removes Area_A (A)
                    let result = Double(Area_A/2.0/3.141592653589790/Radius_r - Radius_r)
                    labelDisplay.text = String(formatNumber(result))
                    variableLabel.text = String("Area (A), Radius (r)")
                    calcDisplay.text = String("Height (h) of Cylinder")
                    stored_varsFor_heightOfCylinderGivenAreaAndRadiusFunction.removeAll()
                    newCalculator = true
                    
                }
                /////////  variableLabel.text = String("Area (A)")
                
                
            } else {
            stored_varsFor_heightOfCylinderGivenAreaAndRadiusFunction.append(String(amount))
                variableLabel.text = String("Area (A)")
                labelDisplay.text = ""
            }
            
        }
    }
    
    
    @objc func areaofTriangleGivenHeightAndBaseFunction(notification: NSNotification) {
        variableLabel.text = String("")
        calcDisplay.text = String("")
        
        guard let amount = labelDisplay.text else { return }
        
        if amount == "" {
            return
        }else {
            print("stored_varsFor_areaofTriangleGivenHeightAndBaseFunction.count: \(stored_varsFor_areaofTriangleGivenHeightAndBaseFunction.count)")
            
            if stored_varsFor_areaofTriangleGivenHeightAndBaseFunction.count > 0 {
                
                
                if stored_varsFor_areaofTriangleGivenHeightAndBaseFunction.count == 1 {
                    stored_varsFor_areaofTriangleGivenHeightAndBaseFunction.append(String(amount)) // adds Side (b)
                    
                    
                    
                    // A = ab/2 [R. Triangle]
                    let side_b = Double(stored_varsFor_areaofTriangleGivenHeightAndBaseFunction.removeLast())! // removes Side (b)
                    let side_a = Double(stored_varsFor_areaofTriangleGivenHeightAndBaseFunction.removeLast())! // removes Side (a)
                    let result = Double(side_a * side_b / 2)
                    labelDisplay.text = String(formatNumber(result))
                    variableLabel.text = String("Side (a), Side (b)")
                    calcDisplay.text = String("Area (A) of Right Triangle")
                    stored_varsFor_areaofTriangleGivenHeightAndBaseFunction.removeAll()
                    newCalculator = true
                    
                }

                
            } else {
            stored_varsFor_areaofTriangleGivenHeightAndBaseFunction.append(String(amount))
                variableLabel.text = String("Side (a)")
                labelDisplay.text = ""
                
            }
            
        }
    }
    
    @objc func hypotenuseofRightTriangleGivenSidesFunction(notification: NSNotification) {
        variableLabel.text = String("")
        calcDisplay.text = String("")
        
        
        guard let amount = labelDisplay.text else { return }
        
        if amount == "" {
            return
        }else {
            print("stored_varsFor_hypotenuseofRightTriangleGivenSidesFunction.count: \(stored_varsFor_hypotenuseofRightTriangleGivenSidesFunction.count)")
            
            if stored_varsFor_hypotenuseofRightTriangleGivenSidesFunction.count > 0 {
                
                
                if stored_varsFor_hypotenuseofRightTriangleGivenSidesFunction.count == 1 {
                    stored_varsFor_hypotenuseofRightTriangleGivenSidesFunction.append(String(amount)) // adds Side (b)
                    
                    
                    
                    // c = √(a²+b²) [R. Triangle]
                    let side_b = Double(stored_varsFor_hypotenuseofRightTriangleGivenSidesFunction.removeLast())! // removes Side (b)
                    let side_a = Double(stored_varsFor_hypotenuseofRightTriangleGivenSidesFunction.removeLast())! // removes Side (a)
                    let result = Double(pow(side_a * side_a + side_b * side_b,0.5))
                    labelDisplay.text = String(formatNumber(result))
                    variableLabel.text = String("Side (a), Side (b)")
                    calcDisplay.text = String("Hypotenuse (c) of Right Triangle")
                    stored_varsFor_hypotenuseofRightTriangleGivenSidesFunction.removeAll()
                    newCalculator = true
                    
                }
                /////////  variableLabel.text = String("Area (A)")
                
                
            } else {
            stored_varsFor_hypotenuseofRightTriangleGivenSidesFunction.append(String(amount))
                variableLabel.text = String("Side (a)")
                labelDisplay.text = ""
            }
            
        }
    }
    
    
    
    @objc func sideOfRightTriangleGivenHypotenuseAndKnownSideFunction(notification: NSNotification) {
        variableLabel.text = String("")
        calcDisplay.text = String("")
        
        
        guard let amount = labelDisplay.text else { return }
        
        if amount == "" {
            return
        }else {
            print("stored_varsFor_sideOfRightTriangleGivenHypotenuseAndKnownSideFunction.count: \(stored_varsFor_sideOfRightTriangleGivenHypotenuseAndKnownSideFunction.count)")
            
            if stored_varsFor_sideOfRightTriangleGivenHypotenuseAndKnownSideFunction.count > 0 {
                
                
                if stored_varsFor_sideOfRightTriangleGivenHypotenuseAndKnownSideFunction.count == 1 {
                    stored_varsFor_sideOfRightTriangleGivenHypotenuseAndKnownSideFunction.append(String(amount)) // adds Hypotenuse Side (c)
                    
                    
                    
                    // a = √(c²-b²) [R. Triangle]
                    let hypotenuseSide_c = Double(stored_varsFor_sideOfRightTriangleGivenHypotenuseAndKnownSideFunction.removeLast())! // removes Height (h)
                    let side_b = Double(stored_varsFor_sideOfRightTriangleGivenHypotenuseAndKnownSideFunction.removeLast())! // removes Radius (r)
                    let result = Double(pow(hypotenuseSide_c * hypotenuseSide_c - side_b * side_b, 0.5))
                    labelDisplay.text = String(formatNumber(result))
                    variableLabel.text = String("Side (b), Hypotenuse Side (c)")
                    calcDisplay.text = String("Side (a) of Right Triangle")
                    
                    stored_varsFor_sideOfRightTriangleGivenHypotenuseAndKnownSideFunction.removeAll()
                    
                    newCalculator = true
                    
                }
                /////////  variableLabel.text = String("Area (A)")
                
                
            } else {
            stored_varsFor_sideOfRightTriangleGivenHypotenuseAndKnownSideFunction.append(String(amount))
                variableLabel.text = String("Side (b)")
                labelDisplay.text = ""
                
                
            }
            
        }
    }
    
    @objc func areaOfEquilateralTriangleGivenLengthFunction(notification: NSNotification) {
        
        variableLabel.text = String("")
        calcDisplay.text = ""
        
        
        guard let amount = labelDisplay.text else { return }
        //    guard let varDisplay = variableLabel.text else { return }
        
        newCalculator = true
        
        if amount == "" {
            return
        }else {
            
            // A = 0.433a² [Eq. Triangle]
            let am = Double(amount)
            let result = Double(0.433 * am! * am!)
            labelDisplay.text = String(formatNumber(result))
            variableLabel.text = String("Side (a)")
            calcDisplay.text = String("Area (A) of Equilateral Triangle")
            
        }
    }
    


    
    
    // end cyan functions
    
    
    
//    @objc func didTapViewFunction(notification: NSNotification) {
//       self.view.endEditing(true)
//
//    }
    
    
    
    
    
    //::::
    
    
//    @IBOutlet var testDisplay: UILabel!
    var calcTape = Array<String>()
    var calcArithmeticArray = Array<String>()
    var calcEqualArray = Array<String>()
    var calcArithANDEqualConCat = Array<String>()
    var calcResult = Array<String>()
    


    //********** start 1
   // var initialConstraints_for_theView2 = [NSLayoutConstraint]()
    //var initialConstraints_for_mainOperatingButtonsStackView_under_theView2 = [NSLayoutConstraint]()

 //   var widthConstraint : NSLayoutConstraint? // theView2
   // var leftConstraint : NSLayoutConstraint?  // theView2
 //   var rightConstraint : NSLayoutConstraint? // theView2

    var topConstraint_theView3 : NSLayoutConstraint?
 //   var widthConstraint_forPortrait : NSLayoutConstraint?

    var stored_mRecall = [String]()
    
    var stored_xRaisedToY = [String]()
    var stored_yRaisedToX = [String]()
    var stored_logyx = [String]()
    var stored_ySqrtX = [String]()
    var stored_EE = [String]()
    var stored_varsFor_volumeOfCylinderGivenRadiusAndHeightFunction = [String]()
    var stored_varsFor_areaOfCylinderGivenRadiusAndHeightFunction = [String]()
    var stored_varsFor_radiusOfCylinderGivenAreaAndHeightFunction = [String]()
    var stored_varsFor_heightOfCylinderGivenAreaAndRadiusFunction = [String]()
    var stored_varsFor_areaofTriangleGivenHeightAndBaseFunction = [String]()
    var stored_varsFor_hypotenuseofRightTriangleGivenSidesFunction = [String]()
    var stored_varsFor_sideOfRightTriangleGivenHypotenuseAndKnownSideFunction = [String]()
    
    var stored_pnr = [String]()
    var stored_cnr = [String]()
    var stored_gcf = [String]()
    var stored_lcm = [String]()
    var stored_avg = [String]()
    
    var numerator_n_pnrANDcnrFunction = Double()
    var denominator_nMinusr_pnrANDcnrFunction = Double()
    var denominator_r_cnrFunction = Double()


    var x_in_xRaisedToY = String()
    var x_in_yRaisedToY = String()
    var buttonIsSelected = false
    
    var stored_leftParenthesis = [String]()
    var stored_rightParenthesis = [String]()

    var stored_stoOne = String()

    
    
    
    
    @IBOutlet weak var theView2: UIView!
    @IBOutlet weak var theView3: UIView!
    @IBOutlet weak var displayView: UIView!
    @IBOutlet weak var calcDisplay: UILabel!
    @IBOutlet var labelDisplay: UILabel!
    // NSUserDefaults.standardUserDefaults().setObject(labelDisplay.text!, forKey: "YourStringKey")

    
    
    @IBOutlet weak var containerView_UNDER_theView3: UIView!
    

//
    
    @IBOutlet weak var mainOperatingButtonsStackView_under_theView2: UIStackView!
    
    
    @IBOutlet weak var tag1_Button: UIButton!
    
    
    @IBOutlet weak var tag2_Button: UIButton!
    
    @IBOutlet weak var tag3_Button: UIButton!
    
    @IBOutlet weak var tag4_Button: UIButton!
    
    
    @IBOutlet weak var tag5_Button: UIButton!
    
    @IBOutlet weak var tag6_Button: UIButton!
    
    @IBOutlet weak var tag7_Button: UIButton!
    
    @IBOutlet weak var tag8_Button: UIButton!
    
    
    @IBOutlet weak var tag9_Button: UIButton!
    
    
    @IBOutlet weak var tag10_Button: UIButton!
    
    @IBOutlet weak var tag11_Button: UIButton!
    
    
    @IBOutlet weak var tag12_Button: UIButton!
    
    
    @IBOutlet weak var tag13_Button: UIButton!
    
    
    
    @IBOutlet weak var tag14_Button: UIButton!
    
    
    @IBOutlet weak var tag15_Button: UIButton!
    
    @IBOutlet weak var tag16_Button: UIButton!
    
    
    @IBOutlet weak var tag17_Button: UIButton!
    
    @IBOutlet weak var tag18_Button: UIButton!
    
    
    @IBOutlet weak var tag19_Button: UIButton!
    
    
    
    @IBOutlet var trig_DegOrRad_label: UILabel!
    @IBOutlet var variableLabel: UILabel!
    
    
    
    
    @IBOutlet var leftANDright_barButtonItems: [UIBarButtonItem]!
    
    
    
    //********** end 1
    //;;;;;; start
    @IBOutlet weak var theView3topConstraint: NSLayoutConstraint!
    @IBOutlet weak var theView3topConstraint_duplicate: NSLayoutConstraint!
    @IBOutlet weak var theView2topConstraint: NSLayoutConstraint!
    @IBOutlet weak var theView2topConstraint_duplicate: NSLayoutConstraint!
    
    //;;;;;; end
    
    
    
    
    
    // ||||||||||||||||||||||||
 
    var calculatorTape_write_ARRAY: [String] = []
    
    // ||||||||||||||||||||||||

    
    var ARRAY_for_Parantheses_calcs: [String] = []

    
    
    
    

    // #############################################                https://stackoverflow.com/questions/46154208/what-is-the-default-value-of-basic-bool-in-swift
    
    var numberOnScreen: String?
    var numberOnSecondScreen: String?
    var previousSign: String = "+"
    var newCalculator: Bool? = true
    var previousButton: String = ""
    
    var result: Double = 0

    var activeNumber: Bool? = true

    
    var activeLandscape: Bool? = true
    
  //  var an_iPad_Device: Bool? = false
    
  //  var cornerRadius_basedOnclearButtonDimensions: Double = 0
    var cornerRadius_forSmallButtons_landscape: Double = 0
    var cornerRadius_forSmallButtons_portrait: Double = 0
    // ################################################
    
    
    
    @IBAction func numberTap(_ sender: UIButton) {
        sender.flash() // button animation
        
        
        print("sender.titleLabel: \(sender.titleLabel!.text!)")
        print("sender.title(for: .normal): \(sender.title(for: .normal))")
        print("sender.titleLabel!.text!: \(sender.titleLabel!.text!)")
        
        
       
        
        
        
        //   ARRAY_for_Parantheses_calcs.append()
      //  tag1_Button.setTitle("C", for: UIControlState.normal)
        tag1_Button.titleLabel?.textAlignment = .center
        tag1_Button.contentHorizontalAlignment = .center
        tag1_Button.titleLabel?.numberOfLines = 1
      //  tag1_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
        let str_tag1_Button = NSMutableAttributedString(string: "C")
        str_tag1_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 1)) //range of text to change font size
        str_tag1_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0), range: NSMakeRange(0, 1))
        tag1_Button.setAttributedTitle(str_tag1_Button, for: .normal)
        tag1_Button.backgroundColor = UIColor(red: 40/255.0, green: 247/255.0, blue: 45/255.0, alpha: 1.0)
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        if previousButton == "+" || previousButton == "-" || previousButton == "×" || previousButton == "÷" || previousButton == "%"{
            print("func_numberTap_previousButton: \(previousButton)")
            newCalculator = false
            variableLabel.text = String("")
        }
        
        
        
        
        
        if newCalculator! {
            self.clearScreen()
            variableLabel.text = String("")
            
        }
        
        newCalculator = false
        
        
        
        numberOnScreen = labelDisplay.text
        if sender.titleLabel!.text! == "." {
            if labelDisplay.text!.contains(".") {
                
                return
            }
            if numberOnScreen == "0" {
                labelDisplay.text = numberOnScreen! + sender.titleLabel!.text!
                return
            }
        }
        if numberOnScreen == "0" {
            numberOnScreen = ""
        }
        
        
        
        
        
        
        labelDisplay.text = numberOnScreen! + sender.titleLabel!.text!
        print(labelDisplay.text!)
        previousButton = sender.titleLabel!.text!
        print("previousButton in numberTap function: \(previousButton)")
        //print("ARRAY_for_Parantheses_calcs.append(previousButton): \(ARRAY_for_Parantheses_calcs.append(previousButton))")
        
        
        calculatorTape_write_ARRAY.append(labelDisplay.text!)
        //  ARRAY_for_Parantheses_calcs.append(labelDisplay.text!)
        // print("ARRAY_for_Parantheses_calcs.append(previousButton): \(ARRAY_for_Parantheses_calcs.append(previousButton))")
        //  print("\(tapeArray_write)")
        print("\(calculatorTape_write_ARRAY)")
        
        GlobalVariable.myStruct.append(labelDisplay.text!)
        GlobalVariable.myString = "Hello";
        print("Saved");
        
        // ...........................................2a end
    } // end ---> numberTap
    
    
    @IBAction func operatorTap(_ sender: UIButton) {
        sender.flash() //button animation
        
        if (previousButton == "+" || previousButton == "-" || previousButton == "×" || previousButton == "÷") && sender.titleLabel!.text! != "=" {
            
            variableLabel.text = String("")
            
            
            
            
            
            
            
            calcDisplay.text = "\(formatNumber(result)) \(sender.titleLabel!.text!) " // writes the result and the operator sign EXCEPT the equal operator
            print("calcTape under operatorTap: \(calcTape)")
            previousButton = sender.titleLabel!.text!
            previousSign = previousButton
            return
        }
        
        if sender.titleLabel!.text! == "=" {
            variableLabel.text = String("")
            
            
            if calcDisplay.text! == "" || previousButton == "=" {
                return
            }
            
        }
        
        numberOnSecondScreen = calcDisplay.text!
        
        if sender.titleLabel!.text! != "=" {
            variableLabel.text = String("")
            
            if numberOnSecondScreen == "" {
                numberOnSecondScreen = labelDisplay.text!
                calcDisplay.text = numberOnSecondScreen! + sender.titleLabel!.text!
            } else {
                numberOnSecondScreen = calcDisplay.text!
                calcDisplay.text = numberOnSecondScreen! + labelDisplay.text! + sender.titleLabel!.text!
            }
        } else {
            if numberOnSecondScreen == "" {
                numberOnSecondScreen = labelDisplay.text!
                calcDisplay.text = numberOnSecondScreen!
            } else {
                numberOnSecondScreen = calcDisplay.text!
                calcDisplay.text = numberOnSecondScreen! + labelDisplay.text!
            }
        }
        
        
        //        guard let amount = labelDisplay.text else { return }
        //
        //        if amount == "" {
        //            return
        //        }else {
        //            let am = Double(amount)
        //            let result = Double(cos(am!))
        //            labelDisplay.text = String(result)
        //        }
        guard let labelDisplay_check = labelDisplay.text else { return }
        //
        
        if labelDisplay_check == "" || labelDisplay_check == "." || labelDisplay.text!.contains("Error") || labelDisplay.text!.contains("Err") || labelDisplay.text!.contains("inf") || labelDisplay.text!.contains("nan")  {
            return
        } else {
            
            
            
            switch previousSign {
            case "+":
                result += Double(labelDisplay.text!)!
            case "-":
                result -= Double(labelDisplay.text!)!
            case "×":
                result *= Double(labelDisplay.text!)!
            case "÷":
                result /= Double(labelDisplay.text!)!
                
            default:
                print("Error")
            }
            
            
        }
        
        
        if sender.titleLabel!.text! == "=" {
            
            variableLabel.text = String("")
            
            
            
            
            
            
            calcDisplay.text = "\(calcDisplay.text!)"
            labelDisplay.text = "\(formatNumber(result)) | "
            calcArithmeticArray = [calcDisplay.text!]
            ////////// for parenthesis ------
     //       paranthesis_calcArithmeticArray = [calcDisplay.text!]
            //   ARRAY_for_Parantheses_calcs = [calcDisplay.text!]
       //     paranthesis_calcResult = [labelDisplay.text!]
            //paranthesis_calcResult_withParanthesis_ARRAY = paranthesis_calcResult + paranthesis_calcResult
            
            //print("paranthesis_calcResult_withParanthesis_ARRAY under '=' sender: \(paranthesis_calcResult_withParanthesis_ARRAY)")
            //////////--------------
            
            calcEqualArray = [sender.titleLabel!.text!]
            calcResult = [labelDisplay.text!]
            calcArithANDEqualConCat = calcArithmeticArray + calcEqualArray + calcResult
            let calcArithANDEqualConCat_withSpaces = calcArithANDEqualConCat.joined(separator: " ")
            
            
            calcTape.append(calcArithANDEqualConCat_withSpaces)
            print(calcArithANDEqualConCat)
            
            if formatNumber(result) == "inf" || formatNumber(result) == "nan" {
                labelDisplay.text = "Error"
            } else {
                labelDisplay.text = formatNumber(result)
            }
            self.resetCalculator()
        } else {
            
            //            if sender.titleLabel!.text! == "%" {
            //
            //            calcDisplay.text = "\(formatNumber(result / 100)) "
            //            previousSign = sender.titleLabel!.text!
            //
            //            labelDisplay.text = ""
            //            //             labelDisplay.text = "0" //// DEFAULT
            //            } else {
            
            
            
            calcDisplay.text = "\(formatNumber(result)) \(sender.titleLabel!.text!) "
            previousSign = sender.titleLabel!.text!
            
            // labelDisplay.text = ""
            
            
            //     ARRAY_for_Parantheses_calcs.append(labelDisplay.text!)
            //   ARRAY_for_Parantheses_calcs.append(formatNumber(result))
            //
            
            
            ARRAY_for_Parantheses_calcs.append(sender.titleLabel!.text!)
            
            
            
            print("ARRAY_for_Parantheses_calcs under operatorTap: \(ARRAY_for_Parantheses_calcs)")
            
            labelDisplay.text = ""
            
            
            
        }
        previousButton = sender.titleLabel!.text!
    }// operatorTap end
    
    
    
    
    @IBAction func otherButtonTapped(_ sender: UIButton) {
        sender.flash() // button animation
        
        
        variableLabel.text = String("")
                if sender.titleLabel!.text! == "C" || sender.titleLabel!.text! == "AC" {
                        calcDisplay.text = ""
                        labelDisplay.text = ""
                 //       leftParanthesisActive = false
                   //     rightParanthesisActive = false
        }

        
 
//
            //   tag1_Button.setTitle("", for: <#T##UIControlState#>)
            print("previousSign_354: \(previousSign)")
            
            if sender.titleLabel!.text! == "C" {
               // sender.setTitle("AC", for: UIControlState.normal)
                
                sender.titleLabel?.textAlignment = .center
                sender.contentHorizontalAlignment = .center
                sender.titleLabel?.numberOfLines = 1
             //   sender.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
                let str_sender = NSMutableAttributedString(string: "AC")
                str_sender.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 2)) //range of text to change font size
                str_sender.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0), range: NSMakeRange(0, 2))
                sender.setAttributedTitle(str_sender, for: .normal)
                sender.backgroundColor = UIColor(red: 40/255.0, green: 247/255.0, blue: 45/255.0, alpha: 1.0)
                
                
                
                let uspGrades = "Calculator Cleared | "
                
                
                calcTape.append(uspGrades)
                //      calcTape.textColor = .yellow
                
                
                self.clearScreen()
                
                
                
            } else if sender.titleLabel!.text! == "AC" {
                ARRAY_for_Parantheses_calcs.removeAll()
            } else if sender.titleLabel!.text! == "+/-"  {
                if calcDisplay.text!.contains("of") {
                    //this is to clear the calcDisplay if the geometry buttons were recently used.
                    calcDisplay.text = ""
                }
                
                if labelDisplay.text == "" {
                    return
                } else {
                    if labelDisplay.text!.contains("Error") {
                        return
                    }else {
                        
                        print("labelDisplay.text +/- : \(labelDisplay)")
                        var tempNum = Double(labelDisplay.text!)!
                        tempNum = -tempNum
                        labelDisplay.text = self.formatNumber(tempNum)
                    }
                }
                
            } else if sender.titleLabel!.text! == "%"  {
                if labelDisplay.text == "" {
                    return
                } else {
                    //   print("labelDisplay.text +/- : \(labelDisplay)")
                    if labelDisplay.text!.contains("Error") {
                        return
                    }else{
                        var tempNum = Double(labelDisplay.text!)!
                        tempNum = tempNum / 100.0
                        labelDisplay.text = self.formatNumber(tempNum)
                    }
                }
                
                
            }
            
            previousButton = sender.titleLabel!.text!
            
        
        
        
        
        
        
    } //otherButtonTapped  ----> end
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    func clearScreen() -> Void {
        variableLabel.text = String("")

        calcDisplay.text = ""
      //  labelDisplay.text = ""
      labelDisplay.text = "0" //// DEFAULT

        result = 0
        previousSign = "+"
        newCalculator = true
    }
    
    func resetCalculator() -> Void {
        variableLabel.text = String("")

        previousSign = "+"
        newCalculator = true
        result = 0
        
    }
    
    func formatNumber(_ number: Double) -> String {
        return String(format: "%g", number)
    }
    
    
    @IBAction func library_barButtonItem(_ sender: UIBarButtonItem) {
       // UINavigationBar.setAnimationsEnabled(false)
        performSegue(withIdentifier: "SearchEngineeringGoToDisciplineViewController", sender: self)
       // UINavigationBar.setAnimationsEnabled(true)
        
    }
    
    
    
    
    
    
    
    
    
    
    // %%%%%%%%%%%%%% I ADDED too %%%%%%%%%%%%%%%%%
    var cornerRadius_forButtons: Double = 0

    var fontConstant = CGFloat()
    var fontConstantFor_trigANDvar_Label = CGFloat()
    var fontConstantFor_labelDisplay_and_calcDisplay = CGFloat()
    
    var myFaceUpOrDown_madeUpBool: Bool = true
    var myPortrait_madeUpBool: Bool = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createObservers()
      //  viewWillTransition(to: d)
//        tag1_Button.layoutSubviews()
//        tag2_Button.layoutSubviews()
//        tag3_Button.layoutSubviews()
//        tag4_Button.layoutSubviews()
//        tag5_Button.layoutSubviews()
//        tag6_Button.layoutSubviews()
//        tag7_Button.layoutSubviews()
//        tag8_Button.layoutSubviews()
//        tag9_Button.layoutSubviews()
//        tag10_Button.layoutSubviews()
//        tag11_Button.layoutSubviews()
//        tag12_Button.layoutSubviews()
//        tag13_Button.layoutSubviews()
//        tag14_Button.layoutSubviews()
//        tag15_Button.layoutSubviews()
//        tag16_Button.layoutSubviews()
//        tag17_Button.layoutSubviews()
//        tag18_Button.layoutSubviews()
//        tag19_Button.layoutSubviews()
        

        
        
        
        // -----
        let label = UILabel(frame: CGRect(x:0, y:0, width:10, height:50))
        
        label.backgroundColor = .white
        
        label.numberOfLines = 1
        
      //  label.font = UIFont.boldSystemFont(ofSize: 17.0)
        
        label.textAlignment = .center
        
        label.textColor = .black
        
        label.text = "Calculator"
        
        label.font = UIFont(name: "HelveticaNeue", size: 20)
        
        
        
       self.navigationItem.titleView = label /////NORMAL/DEFAULT
        
        let labelBounds_UIScreenMainBounds = label.bounds
        let width_label = labelBounds_UIScreenMainBounds.width
        let height_label = labelBounds_UIScreenMainBounds.height
        print(labelBounds_UIScreenMainBounds)
        print(width_label)
        print(height_label)
    
        // NEED NEED NEEDDDDDDDDDDDD start 4
       customizeNavBar()
        // NEED NEED NEEDDDDDDDDDDDD end 4
        


        //``````````````````````````````````````````````````
        //````````````````````````````````````````````````
        //``````````theView2 Button Constraints```````````````
        //``````````````````````````````````````````````````
        //````````````````````````````````````````````````` start
        ////mainOperatingButtonsStackView_under_theView2.translatesAutoresizingMaskIntoConstraints = false   // CONSTRAINTS do NOT WORK WITHOUT THIS
     self.theView2.addSubview(mainOperatingButtonsStackView_under_theView2)
        
      //  let leadingConstraint_for_mainOperatingButtonsStackView_under_theView2 = mainOperatingButtonsStackView_under_theView2.leadingAnchor.constraint(equalTo: self.theView2.leadingAnchor, constant: 15) // was getting an error rotating quickly if setting a constant equal to "10"??? 10312018 0111
       // let trailingConstraint_for_mainOperatingButtonsStackView_under_theView2 = mainOperatingButtonsStackView_under_theView2.trailingAnchor.constraint(equalTo: self.theView2.trailingAnchor, constant: -15) // was getting an error rotating quickly if setting a constant equal to "-10"??? 10312018 0111
     //   let topConstraint_for_mainOperatingButtonsStackView_under_theView2 = mainOperatingButtonsStackView_under_theView2.heightAnchor.constraint(equalTo: self.theView2.heightAnchor, multiplier: 0.60)
//        let bottomConstraint_for_mainOperatingButtonsStackView_under_theView2 = mainOperatingButtonsStackView_under_theView2.bottomAnchor.constraint(equalTo: self.theView2.bottomAnchor)

        //initialConstraints_for_mainOperatingButtonsStackView_under_theView2.append(contentsOf: [topConstraint_for_mainOperatingButtonsStackView_under_theView2])
        
        // removed bottomConstraint_for_mainOperatingButtonsStackView_under_theView2 trailingConstraint_for_mainOperatingButtonsStackView_under_theView2 leadingConstraint_for_mainOperatingButtonsStackView_under_theView2
        //``````````````````````````````````````````````````
        //`````````````````````````````````````````````````` end
        
        // ################################################
        // ######### theView2 displayView ###############
        // ############################################# start
    //    displayView.translatesAutoresizingMaskIntoConstraints = false   // CONSTRAINTS do NOT WORK WITHOUT THIS
        self.theView2.addSubview(displayView)
        
        
        displayView.backgroundColor = UIColor.white.withAlphaComponent(0.0) //INVISIBLE
        
        
        
       // let leadingConstraint_for_displayView = displayView.leadingAnchor.constraint(equalTo: self.theView2.leadingAnchor)
      //  let trailingConstraint_for_displayView = displayView.trailingAnchor.constraint(equalTo: self.theView2.trailingAnchor)
       // let topConstraint_for_displayView = displayView.heightAnchor.constraint(equalTo: self.theView2.heightAnchor, multiplier: 0.40)
       // let bottomConstraint_for_displayView = displayView.bottomAnchor.constraint(equalTo: self.mainOperatingButtonsStackView_under_theView2.topAnchor)
        
        
        // initialConstraints_for_mainOperatingButtonsStackView_under_theView2.append(contentsOf: [leadingConstraint_for_displayView,trailingConstraint_for_displayView,topConstraint_for_displayView,bottomConstraint_for_displayView])
        
        // ################################################
        // ################################################
        // ############################################# end
        
       // &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
        // &&&& labelDisplay inside displayView &&&&&
        // &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& start
     //   labelDisplay.translatesAutoresizingMaskIntoConstraints = false   // CONSTRAINTS do NOT WORK WITHOUT THIS
        self.displayView.addSubview(labelDisplay)
        
        
//        labelDisplay.backgroundColor = UIColor.darkGray
        labelDisplay.backgroundColor = UIColor.white.withAlphaComponent(0.0)
        labelDisplay.textColor =  UIColor.white
        labelDisplay.textAlignment = .right
        
        labelDisplay.adjustsFontSizeToFitWidth = true
        labelDisplay.minimumScaleFactor = 0.2
       // labelDisplay.font = UIFont(name: "System Ultra Thin", size: 72) //PORTRAIT
        
      ////  let bottomConstraint_for_labelDisplay = labelDisplay.bottomAnchor.constraint(equalTo: self.mainOperatingButtonsStackView_under_theView2.topAnchor)
       // let topConstraint_for_labelDisplay = labelDisplay.heightAnchor.constraint(equalTo: self.displayView.heightAnchor, multiplier: 0.30)
       // let rightConstraint_for_labelDisplay = labelDisplay.rightAnchor.constraint(equalTo: self.displayView.rightAnchor)
//let leftConstraint_for_labelDisplay = labelDisplay.leftAnchor.constraint(equalTo: self.displayView.leftAnchor)
        
//initialConstraints_for_mainOperatingButtonsStackView_under_theView2.append(contentsOf: [topConstraint_for_labelDisplay,bottomConstraint_for_labelDisplay,rightConstraint_for_labelDisplay, leftConstraint_for_labelDisplay])
        
        // &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
        // &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
        // &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& end

        // &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
        // &&&& calcDisplay inside displayView &&&&&
        // &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& start
       // calcDisplay.translatesAutoresizingMaskIntoConstraints = false   // CONSTRAINTS do NOT WORK WITHOUT THIS
        self.displayView.addSubview(calcDisplay)
        

        calcDisplay.backgroundColor = UIColor.white.withAlphaComponent(0.0)
        calcDisplay.textColor = UIColor.white
        calcDisplay.textAlignment = .center
    //     calcDisplay.font = UIFont(name: "System Ultra Thin", size: 24) //PORTRAIT
        
//        let bottomConstraint_for_calcDisplay = calcDisplay.heightAnchor.constraint(equalTo: self.displayView.heightAnchor, multiplier: 0.70)
//
//        let topAnchor_for_calcDisplay = calcDisplay.topAnchor.constraint(equalTo: self.displayView.topAnchor)
//        let rightConstraint_for_calcDisplay = calcDisplay.rightAnchor.constraint(equalTo: self.displayView.rightAnchor)
//        let leftConstraint_for_calcDisplay = calcDisplay.leftAnchor.constraint(equalTo: self.displayView.leftAnchor)
//
//
//
//
//        initialConstraints_for_mainOperatingButtonsStackView_under_theView2.append(contentsOf: [bottomConstraint_for_calcDisplay,topAnchor_for_calcDisplay,rightConstraint_for_calcDisplay,leftConstraint_for_calcDisplay])  // calcDisplay and labelDisplay
        // &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
        // &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
        // &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& end
    
        //NSLayoutConstraint.activate(initialConstraints_for_mainOperatingButtonsStackView_under_theView2)
 
       // self.theView3.addSubview(labelDisplay)
        
        
        //        labelDisplay.backgroundColor = UIColor.darkGray
       
        //********** end 2
        
        let mainButtons_theView2_bounds_viewDidLoad = mainOperatingButtonsStackView_under_theView2.bounds
        
        let mainButtons_theView2_boundsHEIGHT_viewDidLoad = mainButtons_theView2_bounds_viewDidLoad.height
        
        print("mainButtons_theView2_boundsHEIGHT_viewDidLoad: \(mainButtons_theView2_boundsHEIGHT_viewDidLoad)")
        
  
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
       
        
       
        
        
        
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
//        if activeLandscape == false || activeLandscape == true {
            // NEED NEED NEEDDDDDDDDDDDD start 1
            
//            print("cornerRadius_forButtons in Main Button View: \(cornerRadius_forButtons)")

//            tag1_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//
//
//            tag2_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag3_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag4_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag5_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag6_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag7_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//
//            tag8_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//
//            tag9_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//
//            tag10_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//
//            tag11_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//
//            tag12_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
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
//            tag19_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            
            let screenSize = UIScreen.main.bounds
            print("screenSize: \(screenSize)")
            print("screenSizeWidth: \(screenSize.width)") // this is really the height
            print("screenSizeHeight: \(screenSize.height)") // this is really the width
            // Update corner radius here
         
            
            let screenSizeHeightIfReallyPortrait = screenSize.width
            let screenSizeWidthIfReallyPortrait = screenSize.height
            
            if (screenSizeHeightIfReallyPortrait == 896.0 && screenSizeWidthIfReallyPortrait == 414.0) || (screenSizeHeightIfReallyPortrait == 414.0 && screenSizeWidthIfReallyPortrait == 896.0) {
                //            iPhone XS Max || iPhone XR
                //            414 x 896 - note: i found this via code, print statement
                fontConstant = 2.5
                fontConstantFor_trigANDvar_Label = 1.3
                fontConstantFor_labelDisplay_and_calcDisplay = 0.9
                
            } else if (screenSizeHeightIfReallyPortrait == 812.0 && screenSizeWidthIfReallyPortrait == 375.0) || (screenSizeHeightIfReallyPortrait == 375.0 && screenSizeWidthIfReallyPortrait == 812.0) {
                //            iPhone X
                //            375 x 812
                fontConstant = 2.3
                fontConstantFor_trigANDvar_Label = 1.1
                fontConstantFor_labelDisplay_and_calcDisplay = 0.9
                
                
            } else if (screenSizeHeightIfReallyPortrait == 736.0 && screenSizeWidthIfReallyPortrait == 414.0) || (screenSizeHeightIfReallyPortrait == 414.0 && screenSizeWidthIfReallyPortrait == 736.0)  {
                //            iPhone 8 Plus, iPhone 7 Plus, iPhone 6s Plus???
                //            414 x 736
                fontConstant = 2.3
                fontConstantFor_trigANDvar_Label = 1.2
                fontConstantFor_labelDisplay_and_calcDisplay = 0.9
                
                
            } else if (screenSizeHeightIfReallyPortrait == 667.0 && screenSizeWidthIfReallyPortrait == 375.0) || (screenSizeHeightIfReallyPortrait == 375.0 && screenSizeWidthIfReallyPortrait == 667.0) {
                //            iPhone 8 |  iPhone 6 Plus | iPhone 7 | iPhone 6s | iphone 6
                //            375 x 667
                fontConstant = 1.9
                fontConstantFor_trigANDvar_Label = 1.2
                fontConstantFor_labelDisplay_and_calcDisplay = 0.8
                
                
            }   else if (screenSizeHeightIfReallyPortrait == 568.0 && screenSizeWidthIfReallyPortrait == 320.0) || (screenSizeHeightIfReallyPortrait == 320.0 && screenSizeWidthIfReallyPortrait == 568.0) {
                //            iPhone SE  | iPhone 5s
                //            320 x 568
                fontConstant = 1.9
                fontConstantFor_trigANDvar_Label = 1
                fontConstantFor_labelDisplay_and_calcDisplay = 0.7
                
                
            } else if (screenSizeHeightIfReallyPortrait == 1366.0 && screenSizeWidthIfReallyPortrait == 1024.0) || (screenSizeHeightIfReallyPortrait == 1024.0 && screenSizeWidthIfReallyPortrait == 1366.0) {
              //  an_iPad_Device = true
                //            iPad Pro 12.9-inch (2nd generation) | iPad Pro (12.9-inch)
                //            1024 x 1366
                fontConstant = 3.4
                fontConstantFor_trigANDvar_Label = 1.6
                fontConstantFor_labelDisplay_and_calcDisplay = 0.8
//                @IBOutlet weak var theView3topConstraint: NSLayoutConstraint!
//                @IBOutlet weak var theView3topConstraint_duplicate: NSLayoutConstraint!
//                @IBOutlet weak var theView2topConstraint: NSLayoutConstraint!
//                @IBOutlet weak var theView2topConstraint_duplicate: NSLayoutConstraint!
                self.theView3topConstraint.constant = 755
                self.theView3topConstraint_duplicate.constant = 755
                self.theView2topConstraint.constant = 755
                self.theView2topConstraint_duplicate.constant = 755
                
            } else if (screenSizeHeightIfReallyPortrait == 834.0 && screenSizeWidthIfReallyPortrait == 1112.0) || (screenSizeHeightIfReallyPortrait == 1112.0 && screenSizeWidthIfReallyPortrait == 834.0) {
              //  an_iPad_Device = true
                //            iPad Pro 10.5-inch
                //            1112 x 834
                fontConstant = 2.8
                fontConstantFor_trigANDvar_Label = 1.6
                fontConstantFor_labelDisplay_and_calcDisplay = 0.7
                self.theView3topConstraint.constant = 580
                self.theView3topConstraint_duplicate.constant = 580
                self.theView2topConstraint.constant = 580
                self.theView2topConstraint_duplicate.constant = 580
                
            } else if (screenSizeHeightIfReallyPortrait == 1024.0 && screenSizeWidthIfReallyPortrait == 768.0) || (screenSizeHeightIfReallyPortrait == 768.0 && screenSizeWidthIfReallyPortrait == 1024.0) {
           //an_iPad_Device = true
                //            iPad Pro (9.7-inch) | iPad Air 2 | iPad Mini 4 | iPad Air (I added)
                //            768 x 1024
                fontConstant = 2.5
                fontConstantFor_trigANDvar_Label = 1.3
                fontConstantFor_labelDisplay_and_calcDisplay = 0.6
                self.theView3topConstraint.constant = 520
                self.theView3topConstraint_duplicate.constant = 520
                self.theView2topConstraint.constant = 520
                self.theView2topConstraint_duplicate.constant = 520
                
                
            } else {
                fontConstant = 1
                fontConstantFor_trigANDvar_Label = 1
                fontConstantFor_labelDisplay_and_calcDisplay = 1
                
            }
            
        
        
        
        trig_DegOrRad_label.backgroundColor = UIColor.white.withAlphaComponent(0.0)
        trig_DegOrRad_label.textColor =  UIColor.white
        trig_DegOrRad_label.textAlignment = .left
        trig_DegOrRad_label.font = UIFont(name: "HelveticaNeue-Light", size: 10 * fontConstantFor_trigANDvar_Label) //PORTRAIT
        trig_DegOrRad_label.font = labelDisplay.font.withSize(10 * fontConstantFor_trigANDvar_Label) // i think this is the only one that actually changes it
        trig_DegOrRad_label.adjustsFontSizeToFitWidth = true
        trig_DegOrRad_label.minimumScaleFactor = 0.2
        trig_DegOrRad_label.text = "Rad"
        
        variableLabel.backgroundColor = UIColor.white.withAlphaComponent(0.0)
        variableLabel.textColor =  UIColor.white
        variableLabel.textAlignment = .right
        variableLabel.font = UIFont(name: "HelveticaNeue-Light", size: 10 * fontConstantFor_trigANDvar_Label) //PORTRAIT
        variableLabel.font = labelDisplay.font.withSize(10 * fontConstantFor_trigANDvar_Label)
        variableLabel.adjustsFontSizeToFitWidth = true
        variableLabel.minimumScaleFactor = 0.2
        variableLabel.text = ""

        
        
   //    let tag1_Button = myCircularButtons()
        
        tag1_Button.titleLabel?.textAlignment = .center
        tag1_Button.contentHorizontalAlignment = .center
        tag1_Button.titleLabel?.numberOfLines = 1
        //tag1_Button.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 10 * fontConstant)
        //   tag1_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
        let str_tag1_Button = NSMutableAttributedString(string: "AC")
        str_tag1_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 2)) //range of text to change font size
        str_tag1_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0), range: NSMakeRange(0, 2))
        tag1_Button.setAttributedTitle(str_tag1_Button, for: .normal)
        tag1_Button.backgroundColor = UIColor(red: 40/255.0, green: 247/255.0, blue: 45/255.0, alpha: 1.0)
  //      self.theView2.addSubview(tag1_Button)

        tag2_Button.titleLabel?.textAlignment = .center
        tag2_Button.contentHorizontalAlignment = .center
        tag2_Button.titleLabel?.numberOfLines = 1
     //   tag2_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
        let str_tag2_Button = NSMutableAttributedString(string: "+/-")
        str_tag2_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 3)) //range of text to change font size
        str_tag2_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0), range: NSMakeRange(0, 3))
        tag2_Button.setAttributedTitle(str_tag2_Button, for: .normal)
      tag2_Button.backgroundColor = UIColor(red: 40/255.0, green: 247/255.0, blue: 45/255.0, alpha: 1.0)


        tag3_Button.titleLabel?.textAlignment = .center
        tag3_Button.contentHorizontalAlignment = .center
        tag3_Button.titleLabel?.numberOfLines = 1
   //     tag3_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
        let str_tag3_Button = NSMutableAttributedString(string: "%")
        str_tag3_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 1)) //range of text to change font size
        str_tag3_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0), range: NSMakeRange(0, 1))
        tag3_Button.setAttributedTitle(str_tag3_Button, for: .normal)
        tag3_Button.backgroundColor = UIColor(red: 40/255.0, green: 247/255.0, blue: 45/255.0, alpha: 1.0)
//        labelDisplay.font = UIFont(name: "HelveticaNeue-Light", size: 32 * fontConstantFor_labelDisplay_and_calcDisplay) // LANDSCAPE
//        labelDisplay.font = labelDisplay.font.withSize(32 * fontConstantFor_labelDisplay_and_calcDisplay)

        tag4_Button.titleLabel?.textAlignment = .center
        tag4_Button.contentHorizontalAlignment = .center
        tag4_Button.titleLabel?.numberOfLines = 1
      //  tag4_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
        let str_tag4_Button = NSMutableAttributedString(string: "÷")
        str_tag4_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 1)) //range of text to change font size
        str_tag4_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 1))
        tag4_Button.setAttributedTitle(str_tag4_Button, for: .normal)
        tag4_Button.backgroundColor = UIColor(red: 94/255.0, green: 94/255.0, blue: 94/255.0, alpha: 1.0)

        tag5_Button.titleLabel?.textAlignment = .center
        tag5_Button.contentHorizontalAlignment = .center
        tag5_Button.titleLabel?.numberOfLines = 1
   //     tag5_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
        let str_tag5_Button = NSMutableAttributedString(string: "7")
        str_tag5_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 1)) //range of text to change font size
        str_tag5_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0), range: NSMakeRange(0, 1))
        tag5_Button.setAttributedTitle(str_tag5_Button, for: .normal)
        tag5_Button.backgroundColor = UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0)


        tag6_Button.titleLabel?.textAlignment = .center
        tag6_Button.contentHorizontalAlignment = .center
        tag6_Button.titleLabel?.numberOfLines = 1
  //      tag6_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
        let str_tag6_Button = NSMutableAttributedString(string: "8")
        str_tag6_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 1)) //range of text to change font size
        str_tag6_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0), range: NSMakeRange(0, 1))
        tag6_Button.setAttributedTitle(str_tag6_Button, for: .normal)
        tag6_Button.backgroundColor = UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0)



        // let myString = "sin"
        tag7_Button.titleLabel?.textAlignment = .center
        tag7_Button.contentHorizontalAlignment = .center
        tag7_Button.titleLabel?.numberOfLines = 1
  //      tag7_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
        let str_tag7_Button = NSMutableAttributedString(string: "9")
        str_tag7_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 1)) //range of text to change font size
        str_tag7_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0), range: NSMakeRange(0, 1))
        tag7_Button.setAttributedTitle(str_tag7_Button, for: .normal)
        tag7_Button.backgroundColor = UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0)






        tag8_Button.titleLabel?.textAlignment = .center
        tag8_Button.contentHorizontalAlignment = .center
        tag8_Button.titleLabel?.numberOfLines = 1
   //     tag8_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
        let str_tag8_Button = NSMutableAttributedString(string: "×")
        str_tag8_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 1)) //range of text to change font size
        str_tag8_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 1))
        tag8_Button.setAttributedTitle(str_tag8_Button, for: .normal)
        tag8_Button.backgroundColor = UIColor(red: 94/255.0, green: 94/255.0, blue: 94/255.0, alpha: 1.0)




        tag9_Button.titleLabel?.textAlignment = .center
        tag9_Button.contentHorizontalAlignment = .center
        tag9_Button.titleLabel?.numberOfLines = 1
  //      tag9_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
        let str_tag9_Button = NSMutableAttributedString(string: "4")
        str_tag9_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 1)) //range of text to change font size
        str_tag9_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0), range: NSMakeRange(0, 1))
        tag9_Button.setAttributedTitle(str_tag9_Button, for: .normal)
        tag9_Button.backgroundColor = UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0)


        tag10_Button.titleLabel?.textAlignment = .center
        tag10_Button.contentHorizontalAlignment = .center
        tag10_Button.titleLabel?.numberOfLines = 1
  //      tag10_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
        let str_tag10_Button = NSMutableAttributedString(string: "5")
        str_tag10_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 1)) //range of text to change font size
        str_tag10_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0), range: NSMakeRange(0, 1))
        tag10_Button.setAttributedTitle(str_tag10_Button, for: .normal)
        tag10_Button.backgroundColor = UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0)


        tag11_Button.titleLabel?.textAlignment = .center
        tag11_Button.contentHorizontalAlignment = .center
        tag11_Button.titleLabel?.numberOfLines = 1
   //     tag11_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
        let str_tag11_Button = NSMutableAttributedString(string: "6")
        str_tag11_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 1)) //range of text to change font size
        str_tag11_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0), range: NSMakeRange(0, 1))
        tag11_Button.setAttributedTitle(str_tag11_Button, for: .normal)
        tag11_Button.backgroundColor = UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0)


        tag12_Button.titleLabel?.textAlignment = .center
        tag12_Button.contentHorizontalAlignment = .center
        tag12_Button.titleLabel?.numberOfLines = 1
 //       tag12_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
        let str_tag12_Button = NSMutableAttributedString(string: "-")
        str_tag12_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 1)) //range of text to change font size
        str_tag12_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 1))
        tag12_Button.setAttributedTitle(str_tag12_Button, for: .normal)
        tag12_Button.backgroundColor = UIColor(red: 94/255.0, green: 94/255.0, blue: 94/255.0, alpha: 1.0)

        tag13_Button.titleLabel?.textAlignment = .center
        tag13_Button.contentHorizontalAlignment = .center
        tag13_Button.titleLabel?.numberOfLines = 1
  //      tag13_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
        let str_tag13_Button = NSMutableAttributedString(string: "1")
        str_tag13_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 1)) //range of text to change font size
        str_tag13_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0), range: NSMakeRange(0, 1))
        tag13_Button.setAttributedTitle(str_tag13_Button, for: .normal)
        tag13_Button.backgroundColor = UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0)


        tag14_Button.titleLabel?.textAlignment = .center
        tag14_Button.contentHorizontalAlignment = .center
        tag14_Button.titleLabel?.numberOfLines = 1
 //       tag14_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
        let str_tag14_Button = NSMutableAttributedString(string: "2")
        str_tag14_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 1)) //range of text to change font size
        str_tag14_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0), range: NSMakeRange(0, 1))
        tag14_Button.setAttributedTitle(str_tag14_Button, for: .normal)
        tag14_Button.backgroundColor = UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0)


        tag15_Button.titleLabel?.textAlignment = .center
        tag15_Button.contentHorizontalAlignment = .center
        tag15_Button.titleLabel?.numberOfLines = 1
 //       tag15_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
        let str_tag15_Button = NSMutableAttributedString(string: "3")
        str_tag15_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 1)) //range of text to change font size
        str_tag15_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0), range: NSMakeRange(0, 1))
        tag15_Button.setAttributedTitle(str_tag15_Button, for: .normal)
        tag15_Button.backgroundColor = UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0)


        tag16_Button.titleLabel?.textAlignment = .center
        tag16_Button.contentHorizontalAlignment = .center
        tag16_Button.titleLabel?.numberOfLines = 1
 //       tag16_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
        let str_tag16_Button = NSMutableAttributedString(string: "+")
        str_tag16_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 1)) //range of text to change font size
        str_tag16_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 1))
        tag16_Button.setAttributedTitle(str_tag16_Button, for: .normal)
        tag16_Button.backgroundColor = UIColor(red: 94/255.0, green: 94/255.0, blue: 94/255.0, alpha: 1.0)


        tag17_Button.titleLabel?.textAlignment = .center
        tag17_Button.contentHorizontalAlignment = .center
        tag17_Button.titleLabel?.numberOfLines = 1
    //    tag17_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
        let str_tag17_Button = NSMutableAttributedString(string: "0")
        str_tag17_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 1)) //range of text to change font size
        str_tag17_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0), range: NSMakeRange(0, 1))
        tag17_Button.setAttributedTitle(str_tag17_Button, for: .normal)
        tag17_Button.backgroundColor = UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0)

        tag18_Button.titleLabel?.textAlignment = .center
        tag18_Button.contentHorizontalAlignment = .center
        tag18_Button.titleLabel?.numberOfLines = 1
   //     tag18_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
        let str_tag18_Button = NSMutableAttributedString(string: ".")
        str_tag18_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 1)) //range of text to change font size
        str_tag18_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0), range: NSMakeRange(0, 1))
        tag18_Button.setAttributedTitle(str_tag18_Button, for: .normal)
        tag18_Button.backgroundColor = UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0)

        tag19_Button.titleLabel?.textAlignment = .center
        tag19_Button.contentHorizontalAlignment = .center
        tag19_Button.titleLabel?.numberOfLines = 1
  //      tag19_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
        let str_tag19_Button = NSMutableAttributedString(string: "=")
        str_tag19_Button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 1)) //range of text to change font size
        str_tag19_Button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 1))
        tag19_Button.setAttributedTitle(str_tag19_Button, for: .normal)
        tag19_Button.backgroundColor = UIColor(red: 94/255.0, green: 94/255.0, blue: 94/255.0, alpha: 1.0)
       
        
        
//        }
        
        
        
        
        
        
    }
    
 
    //------------------------
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        UIDevice.current.beginGeneratingDeviceOrientationNotifications()
//         NotificationCenter.default.addObserver(self, selector: #selector(deviceOrientationDidChange), name: NSNotification.Name.UIDeviceOrientationDidChange, object: nil)
//    }
    
//    deinit {
//        NotificationCenter.default.removeObserver(self)
//    }
    
    override func viewWillAppear(_ animated: Bool) {

    }
    
    @objc func deviceOrientationDidChange() {
        print("UIDevice.current.orientation.rawValue: \(UIDevice.current.orientation.rawValue)")
        

//        if UIDevice.current.orientation.rawValue == 1 {
//
//            cornerRadius_forButtons = Double(tag1_Button.bounds.height / 2.0)
//
//            print("cornerRadius_forButtons rawValue 1 location - myCalculatorViewController: \(cornerRadius_forButtons)")
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
//
//
//
//        } else {
//
//            cornerRadius_forButtons = Double(tag1_Button.bounds.height / 2.0)
//            print("cornerRadius_forButtons rawValue 3 location- myCalculatorViewController: \(cornerRadius_forButtons)")
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
//
//        }
    
        
    }
    
    
//    override func viewDidAppear(_ animated: Bool) {
//        if UIDevice.current.orientation == UIDeviceOrientation.landscapeLeft{
//            activeLandscape = true
//
//
//        }
//        else if UIDevice.current.orientation == UIDeviceOrientation.landscapeRight{
//            activeLandscape = true
//
//
//        } else {
//            //PORTRAIT
//            activeLandscape = false
//
//        }
//    }
    
    // %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
//    override func viewWillLayoutSubviews() {
//
//        if UIDevice.current.orientation == UIDeviceOrientation.landscapeLeft{
//            activeLandscape = true
//            cornerRadius_forSmallButtons_landscape = Double(tag1_Button.bounds.height / 2.0)
//
//            labelDisplay.font = UIFont(name: "System Ultra Thin", size: 32) // LANDSCAPE
//              labelDisplay.font = labelDisplay.font.withSize(32)
//            labelDisplay.adjustsFontSizeToFitWidth = true
//            labelDisplay.minimumScaleFactor = 0.2
//            calcDisplay.font = UIFont(name: "System Ultra Thin", size: 18) // LANDSCAPE
//              calcDisplay.font = calcDisplay.font.withSize(18)
//
//        }
//        else if UIDevice.current.orientation == UIDeviceOrientation.landscapeRight{
//            activeLandscape = true
//            cornerRadius_forSmallButtons_landscape = Double(tag1_Button.bounds.height / 2.0)
//            labelDisplay.font = UIFont(name: "System Ultra Thin", size: 32) // LANDSCAPE
//               labelDisplay.font = labelDisplay.font.withSize(32)
//            labelDisplay.adjustsFontSizeToFitWidth = true
//            labelDisplay.minimumScaleFactor = 0.2
//            calcDisplay.font = UIFont(name: "System Ultra Thin", size: 18) // LANDSCAPE
//              calcDisplay.font = calcDisplay.font.withSize(18)
//        } else {
//            //PORTRAIT
//            activeLandscape = false
//            cornerRadius_forSmallButtons_portrait = Double(tag1_Button.bounds.height / 2.0)
//            labelDisplay.font = UIFont(name: "System Ultra Thin", size: 72) // PORTRAIT
//            labelDisplay.font = labelDisplay.font.withSize(72)
//            labelDisplay.adjustsFontSizeToFitWidth = true
//            labelDisplay.minimumScaleFactor = 0.2
//            calcDisplay.font = UIFont(name: "System Ultra Thin", size: 25) //PORTRAIT
//             calcDisplay.font = calcDisplay.font.withSize(25)
//        }
//
//
//
//
//
//
//
//        if activeLandscape == false {
//        // NEED NEED NEEDDDDDDDDDDDD start 1
//
//
//
//
//
//        let navBar_bounds_test = self.navigationController!.navigationBar.bounds
//        print("navBar_bounds_test: \(navBar_bounds_test)")
//        // NEED NEED NEEDDDDDDDDDDDD end 1
//
//        let screenBounds_UIScreenMainBounds = UIScreen.main.bounds
//        let width = screenBounds_UIScreenMainBounds.width
//        let height = screenBounds_UIScreenMainBounds.height
//        print(screenBounds_UIScreenMainBounds)
//        print(width)
//        print(height)
//
//
//        let mainButtonsStackView_under_theView2_bounds = mainOperatingButtonsStackView_under_theView2.bounds
//        let mainButtonsStackViewWidth_under_theView2_bounds = mainButtonsStackView_under_theView2_bounds.width
//        let mainButtonsStackViewHeight_under_theView2_bounds = mainButtonsStackView_under_theView2_bounds.height
//        print(mainButtonsStackView_under_theView2_bounds)
//        print(mainButtonsStackViewWidth_under_theView2_bounds)
//        print(mainButtonsStackViewHeight_under_theView2_bounds)  // THIS GRABS the MAIN Button StackView Height for all orientations.
//
//      //  let cornerRadius_forBoth_LandscapeANDPortrait = Double(cornerRadius_forSmallButtons_portrait) // getting half of the height of each button. by using this as the corner radius we can have round buttons for both landscape and portrait mode
//
//
//         // NEED NEED NEEDDDDDDDDDDDD start 5
//        tag1_Button.layer.cornerRadius = CGFloat(cornerRadius_forSmallButtons_portrait)
//
//
//        tag2_Button.layer.cornerRadius = CGFloat(cornerRadius_forSmallButtons_portrait)
//        //
//        tag3_Button.layer.cornerRadius = CGFloat(cornerRadius_forSmallButtons_portrait)
//        //
//        tag4_Button.layer.cornerRadius = CGFloat(cornerRadius_forSmallButtons_portrait)
//        //
//
//        tag5_Button.layer.cornerRadius = CGFloat(cornerRadius_forSmallButtons_portrait)
//        tag6_Button.layer.cornerRadius = CGFloat(cornerRadius_forSmallButtons_portrait)
//        tag7_Button.layer.cornerRadius = CGFloat(cornerRadius_forSmallButtons_portrait)
//        //
//        tag8_Button.layer.cornerRadius = CGFloat(cornerRadius_forSmallButtons_portrait)
//        //
//        tag9_Button.layer.cornerRadius = CGFloat(cornerRadius_forSmallButtons_portrait)
//        //
//        //
//        tag10_Button.layer.cornerRadius = CGFloat(cornerRadius_forSmallButtons_portrait)
//
//
//        tag11_Button.layer.cornerRadius = CGFloat(cornerRadius_forSmallButtons_portrait)
//
//        tag12_Button.layer.cornerRadius = CGFloat(cornerRadius_forSmallButtons_portrait)
//
//        tag13_Button.layer.cornerRadius = CGFloat(cornerRadius_forSmallButtons_portrait)
//
//        tag14_Button.layer.cornerRadius = CGFloat(cornerRadius_forSmallButtons_portrait)
//
//        tag15_Button.layer.cornerRadius = CGFloat(cornerRadius_forSmallButtons_portrait)
//
//        tag16_Button.layer.cornerRadius = CGFloat(cornerRadius_forSmallButtons_portrait)
//
//        tag17_Button.layer.cornerRadius = CGFloat(cornerRadius_forSmallButtons_portrait)
//
//        tag18_Button.layer.cornerRadius = CGFloat(cornerRadius_forSmallButtons_portrait)
//
//        tag19_Button.layer.cornerRadius = CGFloat(cornerRadius_forSmallButtons_portrait)
//            print("cornerRadius_forSmallButtons_portrait: \(cornerRadius_forSmallButtons_portrait)")
//
//        } else {
//            tag1_Button.layer.cornerRadius = CGFloat(cornerRadius_forSmallButtons_landscape)
//
//
//            tag2_Button.layer.cornerRadius = CGFloat(cornerRadius_forSmallButtons_landscape)
//            //
//            tag3_Button.layer.cornerRadius = CGFloat(cornerRadius_forSmallButtons_landscape)
//            //
//            tag4_Button.layer.cornerRadius = CGFloat(cornerRadius_forSmallButtons_landscape)
//            //
//
//            tag5_Button.layer.cornerRadius = CGFloat(cornerRadius_forSmallButtons_landscape)
//            tag6_Button.layer.cornerRadius = CGFloat(cornerRadius_forSmallButtons_landscape)
//            tag7_Button.layer.cornerRadius = CGFloat(cornerRadius_forSmallButtons_landscape)
//            //
//            tag8_Button.layer.cornerRadius = CGFloat(cornerRadius_forSmallButtons_landscape)
//            //
//            tag9_Button.layer.cornerRadius = CGFloat(cornerRadius_forSmallButtons_landscape)
//            //
//            //
//            tag10_Button.layer.cornerRadius = CGFloat(cornerRadius_forSmallButtons_landscape)
//
//
//            tag11_Button.layer.cornerRadius = CGFloat(cornerRadius_forSmallButtons_landscape)
//
//            tag12_Button.layer.cornerRadius = CGFloat(cornerRadius_forSmallButtons_landscape)
//
//            tag13_Button.layer.cornerRadius = CGFloat(cornerRadius_forSmallButtons_landscape)
//
//            tag14_Button.layer.cornerRadius = CGFloat(cornerRadius_forSmallButtons_landscape)
//
//            tag15_Button.layer.cornerRadius = CGFloat(cornerRadius_forSmallButtons_landscape)
//
//            tag16_Button.layer.cornerRadius = CGFloat(cornerRadius_forSmallButtons_landscape)
//
//            tag17_Button.layer.cornerRadius = CGFloat(cornerRadius_forSmallButtons_landscape)
//
//            tag18_Button.layer.cornerRadius = CGFloat(cornerRadius_forSmallButtons_landscape)
//
//            tag19_Button.layer.cornerRadius = CGFloat(cornerRadius_forSmallButtons_landscape)
//            print("cornerRadius_forSmallButtons_landscape: \(cornerRadius_forSmallButtons_landscape)")
//        }
    
        
//        let tapRecognizer = UITapGestureRecognizer()
//        tapRecognizer.addTarget(self, action: "didTapView")
//        self.view.addGestureRecognizer(tapRecognizer)
//
        
        
        
        //section not related to above, this is just for the variableLabel
      
            
        
        
        
        
        
        
        
        
//    }
//~~~~~~~~~~~~~https://stackoverflow.com/questions/47082655/swift-changing-constraints-depending-on-device-orientation ~~~~~~~~~~~~ start 2

    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        if UIDevice.current.orientation.isLandscape {
            
       //     activeLandscape = true
            
            print(UIDevice.current.orientation.isLandscape)
            print("Yolo, landscpae")
            

            //Good to know for iPhone X: 375×812 points (1125×2436 pixels)
            let theView3LANDSCAPEbounds = theView3.bounds
            print("theView3LANDSCAPEbounds: \(theView3LANDSCAPEbounds)")
            let theView2LANDSCAPEbounds = theView2.bounds
            print("theView2LANDSCAPEbounds: \(theView2LANDSCAPEbounds)")

            
            

//            labelDisplay.font = UIFont(name: "System Ultra Thin", size: 32) // LANDSCAPE
//             labelDisplay.font = labelDisplay.font.withSize(32)
//            labelDisplay.adjustsFontSizeToFitWidth = true
//            labelDisplay.minimumScaleFactor = 0.2
//            calcDisplay.font = UIFont(name: "System Ultra Thin", size: 18) // LANDSCAPE
//            calcDisplay.font = calcDisplay.font.withSize(18)
//
            
            // NEED NEED NEEDDDDDDDDDDDD start 2
            let navBar_bounds_portrait = self.navigationController!.navigationBar.bounds  //NEED
            print("navBar_bounds_portrait: \(navBar_bounds_portrait)")
            // NEED NEED NEEDDDDDDDDDDDD end 2
            
//            viewWillLayoutSubviews()

        } else {
            
//            activeLandscape = false
          
            print("Yo portrait")
//            labelDisplay.font = UIFont(name: "System Ultra Thin", size: 72) // PORTRAIT
//                labelDisplay.font = labelDisplay.font.withSize(72)
//            labelDisplay.adjustsFontSizeToFitWidth = true
//            labelDisplay.minimumScaleFactor = 0.2
//            calcDisplay.font = UIFont(name: "System Ultra Thin", size: 25) //PORTRAIT
//            calcDisplay.font = calcDisplay.font.withSize(25)

            let theView3PORTRAITbounds = theView3.bounds
            print("theView3PORTRAITbounds: \(theView3PORTRAITbounds)")
            let theView2PORTRAITbounds = theView2.bounds
            print("theView2PORTRAITbounds: \(theView2PORTRAITbounds)")
            
            

        }
    }
    
    
    override func viewWillLayoutSubviews() {
       
//        print("UIDeviceOrientation.landscapeRight.isFlat: \(UIDeviceOrientation.landscapeRight.isFlat)")
//        print("UIDeviceOrientation.landscapeLeft.isFlat: \(UIDeviceOrientation.landscapeLeft.isFlat)")
//
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
        
        
        
          print("tag4_Button.bounds in viewWillLayoutSubviews in myCalculatorViewController: \(tag4_Button.bounds)")
            // NEED NEED NEEDDDDDDDDDDDD start 5
            
        if UIDevice.current.orientation == UIDeviceOrientation.landscapeLeft    {
            //  activeLandscape = true
//            myFaceUpOrDown_madeUpBool = true
//            myPortrait_madeUpBool = false

           
            self.cornerRadius_forButtons = Double(self.tag1_Button.bounds.height / 2.0)
            
            
            
            
        }
        else if UIDevice.current.orientation == UIDeviceOrientation.landscapeRight {
            
//            myFaceUpOrDown_madeUpBool = true
//            myPortrait_madeUpBool = false
//
            
            
            // activeLandscape = true
//            print("UIDeviceOrientation.landscapeRight.isFlat: \(UIDeviceOrientation.landscapeRight.isFlat)")
//
            cornerRadius_forButtons = Double(tag1_Button.bounds.height / 2.0)
            
            
//            labelDisplay.font = UIFont(name: "HelveticaNeue-Light", size: 32 * fontConstantFor_labelDisplay_and_calcDisplay) // LANDSCAPE
//            labelDisplay.font = labelDisplay.font.withSize(32 * fontConstantFor_labelDisplay_and_calcDisplay)
//            labelDisplay.adjustsFontSizeToFitWidth = true
//            labelDisplay.minimumScaleFactor = 0.2
//
//            calcDisplay.font = UIFont(name: "HelveticaNeue-Light", size: 14 * fontConstantFor_labelDisplay_and_calcDisplay) // LANDSCAPE
//            calcDisplay.font = labelDisplay.font.withSize(14 * fontConstantFor_labelDisplay_and_calcDisplay)
            
            
            
        } else {
            
            
            
            //PORTRAIT
//            myFaceUpOrDown_madeUpBool = false
//            myPortrait_madeUpBool = true
//
            // an_iPad_Device = false
            //  activeLandscape = false
            cornerRadius_forButtons = Double(tag1_Button.bounds.height / 2.0)
            
          
            
        }
        
        print("cornerRadius_forButtons check 1 location: \(cornerRadius_forButtons)")
       
//
//        tag1_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//        tag2_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//        tag3_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//        tag4_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//        tag5_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//        tag6_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//        tag7_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//        tag8_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//        tag9_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//        tag10_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//        tag11_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//        tag12_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//        tag13_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//        tag14_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//        tag15_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//        tag16_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//        tag17_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//        tag18_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//        tag19_Button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//
        
        
        
        
        
            // viewDidLoad()
        
    }
    
    
    override func viewDidLayoutSubviews() {

    }
    
    
/// ~~~~~~~ end 2

// ...........................................1a
    
    struct GlobalVariable {
        static var myStruct = [String]()
        static var myString = String()
        
    }
    
// ...........................................1a end
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SegueToCalcTape" {
            let vc = segue.destination as! CalculatorTapeViewController
           vc.getTape = calcTape
            print(calcTape)
            
            
        }
    }
    
    // ------- Might be a redundant section (need too look up how to acccess func from a sidifferent class e.g. sideMenus() -------------
    
    
    // NEED NEED NEEDDDDDDDDDDDD start 3
    func customizeNavBar() {
        navigationController?.navigationBar.tintColor = .black //UIColor(colorLiteralRed: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        navigationController?.navigationBar.barTintColor = .white //UIColor(colorLiteralRed: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        self.navigationController?.navigationBar.isTranslucent = false // changing to "true", instead of "false" fixed the invisible space under navigation bar. It made the space go away.
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]

    }
    // NEED NEED NEEDDDDDDDDDDDD end  3
    let arr = [9, 8, 7]

    /////// FACTORIAL /////////
//    func carryAll(_ arr: [Int]) -> [Int] {
//        let arr = [9, 8, 7]
//
//        var result = [Int]()
//
//        var carry = 0
//        for val in arr.reversed() {
//            let total = val + carry
//            let digit = total % 10
//            carry = total / 10
//            result.append(digit)
//        }
//
//        while carry > 0 {
//            let digit = carry % 10
//            carry = carry / 10
//            result.append(digit)
//        }
//
//        return result.reversed()
//    }
//
//
//
//    func factorial(_ n: Int) -> String {
//        var result = [1]
//        for i in 2...n {
//            result = result.map { $0 * i }
//            result = carryAll(result)
//        }
//
//        return result.map(String.init).joined()
//    }
    
  //  print(factorial(1000))
    ///////////////////////////
//    func factorial(_ n: Int) -> Int {
//        if n == 0 {
//            return 1
//        }
//        else {
//            return n * factorial(n - 1)
//        }
//    }
//
//


}




//################# Start gradient uiviews #######################!!
// THIS OVERRIDES THE UI VIEWS COLORS!!
class GradientView: UIView {
    
    override open class var layerClass: AnyClass {
        return CAGradientLayer.classForCoder()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        let gradientLayer = layer as! CAGradientLayer
//        gradientLayer.colors = [UIColor.white.cgColor, UIColor.black.cgColor]

        let colorTop =  UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0).cgColor
        let colorBottom = UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0).cgColor

    //    let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
     //   gradientLayer.frame = self.view.bounds

    }
}
//################# end gradient uiviews #######################!!

//
//@IBDesignable
//class RoundedButton: UIButton {
//
//    override func layoutSubviews() {
//        super.layoutSubviews()
//
//        let radius = min(bounds.width, bounds.height) / 2
//        layer.cornerRadius = radius
//    }
//
//}





//extension myCalculatorViewController: magentaOperatorTapDelegate {
//    func didTapChoice(name: String) {
//        print(name)
//        labelDisplay.text = name
//    }
//}


// MARK: Double Extension

public extension Double {
    
    /// Returns a random floating point number between 0.0 and 1.0, inclusive.
    public static var random: Double {
        return Double(arc4random()) / 0xFFFFFFFF
    }
    
    /// Random double between 0 and n-1.
    ///
    /// - Parameter n:  Interval max
    /// - Returns:      Returns a random double point number between 0 and n max
    public static func random(min: Double, max: Double) -> Double {
        return Double.random * (max - min) + min
    }
}


// LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL   start  LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL//
/// if error occur in the future for something to do with dismissing keyboard or some other object? check here, I implemented this so when I press the right side (view2) while having the unit converter text field active in instantiatedYellowViewController the user will be able to dismiss the keyboard by pressing on the right hand side of the screen. The actual instantiatedYellowViewController uses a different method to get rid of the keyboard when pressing on the left hand side (to reiterate, this take place in the instantiatedYellowViewController). Getting rid of the keyboard by pressing on the right hand side is working by using the extension below. just not sure if it is going to cause any errors in the future.
extension UIViewController {
    open override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
// LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL   end    LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL//


struct GlobalVariable_masterParenthesisStruct {
    static var masterParenthesesStruct = [String]()
    //static var myString = String()
    
}





