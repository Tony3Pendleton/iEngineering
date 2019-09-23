//
//  instantiatedMagentaViewController.swift
//  StackOverFlowQuestionPageViewEmbedByContainer
//
//  Created by Anthony Pendleton on 9/22/18.
//  Copyright © 2018 Jawbone. All rights reserved.
//

import UIKit



class instantiatedYellowViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    let tempList = Unit.allCases()
    let massList = massUnit.allCases()
    let lengthList = lengthUnit.allCases()
    let pressureList = pressureUnit.allCases()
    let prefixList = prefixUnit.allCases()
    let densityList = densityUnit.allCases()
    let volumeList = volumeUnit.allCases()
    let forceList = forceUnit.allCases()
    let energyList = energyUnit.allCases()
    let powerList = powerUnit.allCases()
    let planeAngleList = planeAngleUnit.allCases()
    let frequencyList = frequencyUnit.allCases()
    let speedList = speedUnit.allCases()
    let areaList = areaUnit.allCases()
    let digitalStorageList = digitalStorageUnit.allCases()
    let timeList = timeUnit.allCases()
    
    var unitButtonPressCheck: Bool? = false
    
    var whichButton = String()
    var titleData = String()
    var resultListCount = Int()
    var resultRowCount = String()
    
    //''''''
    @IBOutlet weak var allButtonStackView: UIStackView!
    
    @IBOutlet weak var tag1_button: UIButton!
    @IBOutlet weak var tag2_button: UIButton!
    @IBOutlet weak var tag3_button: UIButton!
    @IBOutlet weak var tag4_button: UIButton!
    @IBOutlet weak var tag5_button: UIButton!
    @IBOutlet weak var tag6_button: UIButton!
    @IBOutlet weak var tag7_button: UIButton!
    @IBOutlet weak var tag8_button: UIButton!
    @IBOutlet weak var tag9_button: UIButton!
    @IBOutlet weak var tag10_button: UIButton!
    @IBOutlet weak var tag11_button: UIButton!
    @IBOutlet weak var tag12_button: UIButton!
    @IBOutlet weak var tag13_button: UIButton!
    @IBOutlet weak var tag14_button: UIButton!
    @IBOutlet weak var tag15_button: UIButton!
    @IBOutlet weak var tag16_button: UIButton!
    
    
    
    
    @IBOutlet weak var tag17_button: UIButton!
    
    
    //''''''
    
    
    
    
    
    
    
    
    @IBAction func convertUnits(_ sender: Any) {
        
        
        if input.text!.isEmpty || unitButtonPressCheck == false {
            return
        }else {
            let fromUnitIdx = picker.selectedRow(inComponent: 0)
            let toUnitIdx = picker.selectedRow(inComponent: 1)
            
            
//            let decimalChar: Character = "."
//            let decimalCount = input.text?.lowercaseStringWith.characters.filter { $0 == Character(String(decimalChar).lowercaseString) } // case-insensitive filtering
//            print("decimalCount: \(decimalCount)")
//                //   https://riptutorial.com/swift/example/5841/count-occurrences-of-a-character-into-a-string
            
            let occurrenciesOfDecimalChar = input.text!.filter { $0 == "." }.count // 2
            print("occurrenciesOfDecimalChar: \(occurrenciesOfDecimalChar)")
            
            
            
            if whichButton == "tempButton" {
                let fromUnit = Unit.fromString(tempList[fromUnitIdx])!
                let toUnit = Unit.fromString(tempList[toUnitIdx])!
                
                if let inputText = input.text {
                    if !inputText.isEmpty {
                        let inputNum = Double(inputText)!
                        let outputNum = fromUnit.convertTo(unit: toUnit, value: inputNum)
                        output.text = String(outputNum)
                    }
                }
                
                
            } else if whichButton == "massButton" {
                let fromUnit = massUnit.fromString(massList[fromUnitIdx])!
                let toUnit = massUnit.fromString(massList[toUnitIdx])!
                if let inputText = input.text {
                    if (!inputText.isEmpty && inputText != ".") && (occurrenciesOfDecimalChar == 1 || occurrenciesOfDecimalChar == 0) {
                        let inputNum = Double(inputText)!
                        let outputNum = fromUnit.convertTo(unit: toUnit, value: inputNum)
                        output.text = String(outputNum)
                    }
                }
            }  else if whichButton == "lengthButton" {
                let fromUnit = lengthUnit.fromString(lengthList[fromUnitIdx])!
                let toUnit = lengthUnit.fromString(lengthList[toUnitIdx])!
                if let inputText = input.text {
                    if (!inputText.isEmpty && inputText != ".") && (occurrenciesOfDecimalChar == 1 || occurrenciesOfDecimalChar == 0) {
                        let inputNum = Double(inputText)!
                        let outputNum = fromUnit.convertTo(unit: toUnit, value: inputNum)
                        output.text = String(outputNum)
                    }
                }
            }  else if whichButton == "pressureButton" {
                let fromUnit = pressureUnit.fromString(pressureList[fromUnitIdx])!
                let toUnit = pressureUnit.fromString(pressureList[toUnitIdx])!
                if let inputText = input.text {
                   if (!inputText.isEmpty && inputText != ".") && (occurrenciesOfDecimalChar == 1 || occurrenciesOfDecimalChar == 0) {
                        let inputNum = Double(inputText)!
                        let outputNum = fromUnit.convertTo(unit: toUnit, value: inputNum)
                        output.text = String(outputNum)
                    }
                }
            }   else if whichButton == "prefixButton" {
                let fromUnit = prefixUnit.fromString(prefixList[fromUnitIdx])!
                let toUnit = prefixUnit.fromString(prefixList[toUnitIdx])!
                if let inputText = input.text {
                    if (!inputText.isEmpty && inputText != ".") && (occurrenciesOfDecimalChar == 1 || occurrenciesOfDecimalChar == 0) {
                        let inputNum = Double(inputText)!
                        let outputNum = fromUnit.convertTo(unit: toUnit, value: inputNum)
                        output.text = String(outputNum)
                    }
                }
            }   else if whichButton == "densityButton" {
                let fromUnit = densityUnit.fromString(densityList[fromUnitIdx])!
                let toUnit = densityUnit.fromString(densityList[toUnitIdx])!
                if let inputText = input.text {
                    if (!inputText.isEmpty && inputText != ".") && (occurrenciesOfDecimalChar == 1 || occurrenciesOfDecimalChar == 0) {
                        let inputNum = Double(inputText)!
                        let outputNum = fromUnit.convertTo(unit: toUnit, value: inputNum)
                        output.text = String(outputNum)
                    }
                }
            }    else if whichButton == "volumeButton" {
                let fromUnit = volumeUnit.fromString(volumeList[fromUnitIdx])!
                let toUnit = volumeUnit.fromString(volumeList[toUnitIdx])!
                if let inputText = input.text {
                    if (!inputText.isEmpty && inputText != ".") && (occurrenciesOfDecimalChar == 1 || occurrenciesOfDecimalChar == 0) {
                        let inputNum = Double(inputText)!
                        let outputNum = fromUnit.convertTo(unit: toUnit, value: inputNum)
                        output.text = String(outputNum)
                    }
                }
            } else if whichButton == "forceButton" {
                let fromUnit = forceUnit.fromString(forceList[fromUnitIdx])!
                let toUnit = forceUnit.fromString(forceList[toUnitIdx])!
                if let inputText = input.text {
                    if (!inputText.isEmpty && inputText != ".") && (occurrenciesOfDecimalChar == 1 || occurrenciesOfDecimalChar == 0) {
                        let inputNum = Double(inputText)!
                        let outputNum = fromUnit.convertTo(unit: toUnit, value: inputNum)
                        output.text = String(outputNum)
                    }
                }
            } else if whichButton == "energyButton" {
                let fromUnit = energyUnit.fromString(energyList[fromUnitIdx])!
                let toUnit = energyUnit.fromString(energyList[toUnitIdx])!
                if let inputText = input.text {
                    if (!inputText.isEmpty && inputText != ".") && (occurrenciesOfDecimalChar == 1 || occurrenciesOfDecimalChar == 0) {
                        let inputNum = Double(inputText)!
                        let outputNum = fromUnit.convertTo(unit: toUnit, value: inputNum)
                        output.text = String(outputNum)
                    }
                }
            }  else if whichButton == "powerButton" {
                let fromUnit = powerUnit.fromString(powerList[fromUnitIdx])!
                let toUnit = powerUnit.fromString(powerList[toUnitIdx])!
                if let inputText = input.text {
                    if (!inputText.isEmpty && inputText != ".") && (occurrenciesOfDecimalChar == 1 || occurrenciesOfDecimalChar == 0) {
                        let inputNum = Double(inputText)!
                        let outputNum = fromUnit.convertTo(unit: toUnit, value: inputNum)
                        output.text = String(outputNum)
                    }
                }
            }
            else if whichButton == "planeAngleButton" {
                let fromUnit = planeAngleUnit.fromString(planeAngleList[fromUnitIdx])!
                let toUnit = planeAngleUnit.fromString(planeAngleList[toUnitIdx])!
                if let inputText = input.text {
                    if (!inputText.isEmpty && inputText != ".") && (occurrenciesOfDecimalChar == 1 || occurrenciesOfDecimalChar == 0) {
                        let inputNum = Double(inputText)!
                        let outputNum = fromUnit.convertTo(unit: toUnit, value: inputNum)
                        output.text = String(outputNum)
                    }
                }
            }
            else if whichButton == "frequencyButton" {
                let fromUnit = frequencyUnit.fromString(frequencyList[fromUnitIdx])!
                let toUnit = frequencyUnit.fromString(frequencyList[toUnitIdx])!
                if let inputText = input.text {
                    if (!inputText.isEmpty && inputText != ".") && (occurrenciesOfDecimalChar == 1 || occurrenciesOfDecimalChar == 0) {
                        let inputNum = Double(inputText)!
                        let outputNum = fromUnit.convertTo(unit: toUnit, value: inputNum)
                        output.text = String(outputNum)
                    }
                }
            }
            else if whichButton == "speedButton" {
                let fromUnit = speedUnit.fromString(speedList[fromUnitIdx])!
                let toUnit = speedUnit.fromString(speedList[toUnitIdx])!
                if let inputText = input.text {
                    if (!inputText.isEmpty && inputText != ".") && (occurrenciesOfDecimalChar == 1 || occurrenciesOfDecimalChar == 0) {
                        let inputNum = Double(inputText)!
                        let outputNum = fromUnit.convertTo(unit: toUnit, value: inputNum)
                        output.text = String(outputNum)
                    }
                }
            }
            else if whichButton == "areaButton" {
                let fromUnit = areaUnit.fromString(areaList[fromUnitIdx])!
                let toUnit = areaUnit.fromString(areaList[toUnitIdx])!
                if let inputText = input.text {
                    if (!inputText.isEmpty && inputText != ".") && (occurrenciesOfDecimalChar == 1 || occurrenciesOfDecimalChar == 0) {
                        let inputNum = Double(inputText)!
                        let outputNum = fromUnit.convertTo(unit: toUnit, value: inputNum)
                        output.text = String(outputNum)
                    }
                }
            }
            else if whichButton == "digitalStorageButton" {
                let fromUnit = digitalStorageUnit.fromString(digitalStorageList[fromUnitIdx])!
                let toUnit = digitalStorageUnit.fromString(digitalStorageList[toUnitIdx])!
                if let inputText = input.text {
                    if (!inputText.isEmpty && inputText != ".") && (occurrenciesOfDecimalChar == 1 || occurrenciesOfDecimalChar == 0) {
                        let inputNum = Double(inputText)!
                        let outputNum = fromUnit.convertTo(unit: toUnit, value: inputNum)
                        output.text = String(outputNum)
                    }
                }
            }  else if whichButton == "timeButton" {
                let fromUnit = timeUnit.fromString(timeList[fromUnitIdx])!
                let toUnit = timeUnit.fromString(timeList[toUnitIdx])!
                if let inputText = input.text {
                    if (!inputText.isEmpty && inputText != ".") && (occurrenciesOfDecimalChar == 1 || occurrenciesOfDecimalChar == 0) {
                        let inputNum = Double(inputText)!
                        let outputNum = fromUnit.convertTo(unit: toUnit, value: inputNum)
                        output.text = String(outputNum)
                    }
                }
            }
            
            
        }
        
        
        
    }
    
    
    // @IBOutlet weak var menuButton: UIBarButtonItem!
    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var output: UITextField!
    @IBOutlet weak var picker: UIPickerView!
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    
    
    // func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        if whichButton == "tempButton"  {
            titleData = tempList[row]
        } else if whichButton == "massButton" {
            titleData = massList[row]
        }  else if whichButton == "lengthButton" {
            titleData = lengthList[row]
        } else if whichButton == "pressureButton" {
            titleData = pressureList[row]
        } else if whichButton == "prefixButton" {
            titleData = prefixList[row]
        } else if whichButton == "densityButton" {
            titleData = densityList[row]
        }  else if whichButton == "volumeButton" {
            titleData = volumeList[row]
        }   else if whichButton == "forceButton" {
            titleData = forceList[row]
        }   else if whichButton == "energyButton" {
            titleData = energyList[row]
        }    else if whichButton == "powerButton" {
            titleData = powerList[row]
        }   else if whichButton == "planeAngleButton" {
            titleData = planeAngleList[row]
        }      else if whichButton == "frequencyButton" {
            titleData = frequencyList[row]
        }        else if whichButton == "speedButton" {
            titleData = speedList[row]
        }       else if whichButton == "areaButton" {
            titleData = areaList[row]
        }        else if whichButton == "digitalStorageButton" {
            titleData = digitalStorageList[row]
        }         else if whichButton == "timeButton" {
            titleData = timeList[row]
        }
        
        
        var label = UILabel()
        if let v = view as? UILabel { label = v }
        label.font = UIFont (name: "Helvetica Neue", size: 20)
        label.text =  titleData
        label.textColor = .white
        label.textAlignment = .center
        return label
    }
    //       //var myAttribute = [ NSAttributedStringKey.font: UIFont(name: "Helvetica", size: 8.0)!, NSAttributedStringKey.foregroundColor: UIColor.white]
    //        let attributes = [NSAttributedStringKey.font: UIFont(name: "HelveticaNeue-Light", size: 6)!,
    //                          NSAttributedStringKey.foregroundColor: UIColor.white]
    //    // var attributedString = NSMutableAttributedString(string:"\(titleData)")
    //    //var attrs = [NSFontAttributeName : UIFont.systemFontOfSize(9.0)]
    //    let myTitle = NSMutableAttributedString(string: titleData, attributes: attributes)
    //     //   attributedString.appendAttributedString(gString)
    //   //     let myTitle.attributedText = attributedString
    //
    //       // let myTitle = NSAttributedString(string: titleData, size: 12, attributes: [NSAttributedStringKey.foregroundColor: UIColor.white])
    //       // let myTitle = NSAttributedString(string: titleData, attributes: myAttribute)
    //
    //     //   let myTitle = [ NSFontAttributeName: UIFont(name: "Chalkduster", size: 18.0)! ]
    //        return myTitle
    //    }
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if whichButton == "tempButton"  {
            resultListCount = tempList.count
        } else if whichButton == "massButton" {
            resultListCount = massList.count
        } else if whichButton == "lengthButton" {
            resultListCount = lengthList.count
        } else if whichButton == "pressureButton" {
            resultListCount = pressureList.count
        }  else if whichButton == "prefixButton" {
            resultListCount = prefixList.count
        } else if whichButton == "densityButton" {
            resultListCount = densityList.count
        }  else if whichButton == "volumeButton" {
            resultListCount = volumeList.count
        }   else if whichButton == "forceButton" {
            resultListCount = forceList.count
        } else if whichButton == "energyButton" {
            resultListCount = energyList.count
        }  else if whichButton == "powerButton" {
            resultListCount = powerList.count
        }   else if whichButton == "planeAngleButton" {
            resultListCount = planeAngleList.count
        }   else if whichButton == "frequencyButton" {
            resultListCount = frequencyList.count
        }     else if whichButton == "speedButton" {
            resultListCount = speedList.count
        }     else if whichButton == "areaButton" {
            resultListCount = areaList.count
        }      else if whichButton == "digitalStorageButton" {
            resultListCount = digitalStorageList.count
        }       else if whichButton == "timeButton" {
            resultListCount = timeList.count
        }
        
        
        
        
        
        
        return resultListCount
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if whichButton == "tempButton"  {
            resultRowCount = tempList[row]
        } else if whichButton == "massButton" {
            resultRowCount = massList[row]
        }  else if whichButton == "lengthButton" {
            resultRowCount = lengthList[row]
        } else if whichButton == "pressureButton" {
            resultRowCount = pressureList[row]
        } else if whichButton == "prefixButton" {
            resultRowCount = prefixList[row]
        } else if whichButton == "densityButton" {
            resultRowCount = densityList[row]
        }  else if whichButton == "volumeButton" {
            resultRowCount = volumeList[row]
        }   else if whichButton == "forceButton" {
            resultRowCount = forceList[row]
        }   else if whichButton == "energyButton" {
            resultRowCount = energyList[row]
        }    else if whichButton == "powerButton" {
            resultRowCount = powerList[row]
        }   else if whichButton == "planeAngleButton" {
            resultRowCount = planeAngleList[row]
        }      else if whichButton == "frequencyButton" {
            resultRowCount = frequencyList[row]
        }    else if whichButton == "speedButton" {
            resultRowCount = speedList[row]
        }    else if whichButton == "areaButton" {
            resultRowCount = areaList[row]
        } else if whichButton == "digitalStorageButton" {
            resultRowCount = digitalStorageList[row]
        }  else if whichButton == "timeButton" {
            resultRowCount = timeList[row]
        }
        
        
        
        return resultRowCount
    }
    
    
    var fontConstant = CGFloat()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let allButtonStackViewDimensions = allButtonStackView.bounds
        print("allButtonStackViewDimensions: \(allButtonStackViewDimensions)")
        
        
        let  topLeftButtonDimensions_Height = tag1_button.bounds.height
        print("topLeftButtonDimensions_Height: \(topLeftButtonDimensions_Height)")
        let  topLeftButtonDimensions_Width = tag1_button.bounds.width
        print("topLeftButtonDimensions_Width: \(topLeftButtonDimensions_Width)")
        
        
        let randomConstant = CGFloat(1) // NOTE!! This value matches the height constant "multiple" in the picker in Storyboard. The corner radius is being calculated as if the buttons take up the full height (100 % or multipe = 1)
        
        
     //   let cornerRadius_forBoth_LandscapeANDPortrait = Double((topLeftButtonDimensions_Height * randomConstant)/2)
        
        //    let cornerRadius_forBoth_LandscapeANDPortrait_forConvertButton = Double(cornerRadius_forBoth_LandscapeANDPortrait*4) //scaling because it takes width of four buttons on that screen
        
        
        
        
        // sideMenus()
        let tapRecognizer = UITapGestureRecognizer()
        tapRecognizer.addTarget(self, action: #selector(instantiatedYellowViewController.didTapView))
        self.view.addGestureRecognizer(tapRecognizer)
        
        
//        if UIDevice.current.orientation == UIDeviceOrientation.landscapeLeft {
//            activeLandscape = true
//            let  topLeftButtonDimensions = tag1_button.bounds
//            print("topLeftButtonDimensions: \(topLeftButtonDimensions)")
//            cornerRadius_forButtons = Double(tag1_button.bounds.height / 2.0)
//        }
//        else if UIDevice.current.orientation == UIDeviceOrientation.landscapeRight {
//            activeLandscape = true
//            cornerRadius_forButtons = Double(tag1_button.bounds.height / 2.0)
//
//        } else {
//            //PORTRAIT
//            activeLandscape = false
//            cornerRadius_forButtons = Double(tag1_button.bounds.height / 2.0)
//
//        }
        
        
        
        
        
        
        
        
        
    //    if activeLandscape == false || activeLandscape == true {
            // NEED NEED NEEDDDDDDDDDDDD start 1
            
            
            
            print("cornerRadius_forButtons in Magenta View: \(cornerRadius_forButtons)")
            
            
            
            
            // NEED NEED NEEDDDDDDDDDDDD start 5
//            tag1_button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag2_button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag3_button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag4_button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag5_button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag6_button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag7_button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag8_button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag9_button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag10_button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag11_button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag12_button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag13_button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag14_button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag15_button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag16_button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//            tag17_button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
        
        print("cornerRadius_forButtons in Magenta View: \(cornerRadius_forButtons)")
            
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
                
            } else if (screenSizeHeightIfReallyPortrait == 812.0 && screenSizeWidthIfReallyPortrait == 375.0) || (screenSizeHeightIfReallyPortrait == 375.0 && screenSizeWidthIfReallyPortrait == 812.0) {
                //            iPhone X
                //            375 x 812
                fontConstant = 1.6
                
            } else if (screenSizeHeightIfReallyPortrait == 736.0 && screenSizeWidthIfReallyPortrait == 414.0) || (screenSizeHeightIfReallyPortrait == 414.0 && screenSizeWidthIfReallyPortrait == 736.0) {
                //            iPhone 8 Plus, iPhone 7 Plus, iPhone 6s Plus???
                //            414 x 736
                fontConstant = 1.7
                
            } else if (screenSizeHeightIfReallyPortrait == 667.0 && screenSizeWidthIfReallyPortrait == 375.0) || (screenSizeHeightIfReallyPortrait == 375.0 && screenSizeWidthIfReallyPortrait == 667.0) {
                //            iPhone 8 | iPhone 6 Plus | iPhone 7 | iPhone 6s | iPhone 6
                //            375 x 667
                fontConstant = 1.5
                
            }  else if (screenSizeHeightIfReallyPortrait == 568.0 && screenSizeWidthIfReallyPortrait == 320.0) || (screenSizeHeightIfReallyPortrait == 320.0 && screenSizeWidthIfReallyPortrait == 568.0) {
                //            iPhone SE | iPhone 5s
                //            320 x 568
                fontConstant = 1.4
                
            } else if (screenSizeHeightIfReallyPortrait == 1366.0 && screenSizeWidthIfReallyPortrait == 1024.0) || (screenSizeHeightIfReallyPortrait == 1024.0 && screenSizeWidthIfReallyPortrait == 1366.0) {
                //            iPad Pro 12.9-inch (2nd generation) | iPad Pro (12.9-inch)
                //            1024 x 1366
                fontConstant = 3.1
                print("I am here")
                
            } else if (screenSizeHeightIfReallyPortrait == 834.0 && screenSizeWidthIfReallyPortrait == 1112.0) || (screenSizeHeightIfReallyPortrait == 1112.0 && screenSizeWidthIfReallyPortrait == 834.0) {
                //            iPad Pro 10.5-inch
                //            1112 x 834
                fontConstant = 2.5
                
            }  else if (screenSizeHeightIfReallyPortrait == 1024.0 && screenSizeWidthIfReallyPortrait == 768.0) || (screenSizeHeightIfReallyPortrait == 768.0 && screenSizeWidthIfReallyPortrait == 1024.0) {
                //            iPad Pro (9.7-inch) |  iPad Air 2 | iPad Mini 4
                //            768 x 1024
                fontConstant = 2.4
                
            } else {
                fontConstant = 1
            }
            
            
            
            
            tag1_button.titleLabel?.textAlignment = .center
            tag1_button.contentHorizontalAlignment = .center
            tag1_button.titleLabel?.numberOfLines = 1
        //    tag1_button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag1_button = NSMutableAttributedString(string: "Length")
            str_tag1_button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 6)) //range of text to change font size
            str_tag1_button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 6))
            tag1_button.setAttributedTitle(str_tag1_button, for: .normal)
            
            tag2_button.titleLabel?.textAlignment = .center
            tag2_button.contentHorizontalAlignment = .center
            tag2_button.titleLabel?.numberOfLines = 1
      //      tag2_button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag2_button = NSMutableAttributedString(string: "Mass")
            str_tag2_button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 4)) //range of text to change font size
            str_tag2_button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 4))
            tag2_button.setAttributedTitle(str_tag2_button, for: .normal)
            
            
            tag3_button.titleLabel?.textAlignment = .center
            tag3_button.contentHorizontalAlignment = .center
            tag3_button.titleLabel?.numberOfLines = 1
      //      tag3_button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag3_button = NSMutableAttributedString(string: "Temp.")
            str_tag3_button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 5)) //range of text to change font size
            str_tag3_button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 5))
            tag3_button.setAttributedTitle(str_tag3_button, for: .normal)
            
            tag4_button.titleLabel?.textAlignment = .center
            tag4_button.contentHorizontalAlignment = .center
            tag4_button.titleLabel?.numberOfLines = 1
      //      tag4_button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag4_button = NSMutableAttributedString(string: "Pressure")
            str_tag4_button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 8)) //range of text to change font size
            str_tag4_button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 8))
            tag4_button.setAttributedTitle(str_tag4_button, for: .normal)
            
            tag5_button.titleLabel?.textAlignment = .center
            tag5_button.contentHorizontalAlignment = .center
            tag5_button.titleLabel?.numberOfLines = 1
    //        tag5_button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag5_button = NSMutableAttributedString(string: "Volume")
            str_tag5_button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 6)) //range of text to change font size
            str_tag5_button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 6))
            tag5_button.setAttributedTitle(str_tag5_button, for: .normal)
            
            tag6_button.titleLabel?.textAlignment = .center
            tag6_button.contentHorizontalAlignment = .center
            tag6_button.titleLabel?.numberOfLines = 1
   //         tag6_button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag6_button = NSMutableAttributedString(string: "Force")
            str_tag6_button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 5)) //range of text to change font size
            str_tag6_button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 5))
            tag6_button.setAttributedTitle(str_tag6_button, for: .normal)
            
            tag7_button.titleLabel?.textAlignment = .center
            tag7_button.contentHorizontalAlignment = .center
            tag7_button.titleLabel?.numberOfLines = 1
   //        tag7_button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag7_button = NSMutableAttributedString(string: "Energy")
            str_tag7_button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 6)) //range of text to change font size
            str_tag7_button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 6))
            tag7_button.setAttributedTitle(str_tag7_button, for: .normal)
            
            tag8_button.titleLabel?.textAlignment = .center
            tag8_button.contentHorizontalAlignment = .center
            tag8_button.titleLabel?.numberOfLines = 1
      //      tag8_button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag8_button = NSMutableAttributedString(string: "Power")
            str_tag8_button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 5)) //range of text to change font size
            str_tag8_button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 5))
            tag8_button.setAttributedTitle(str_tag8_button, for: .normal)
            
            tag9_button.titleLabel?.textAlignment = .center
            tag9_button.contentHorizontalAlignment = .center
            tag9_button.titleLabel?.numberOfLines = 1
   //         tag9_button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag9_button = NSMutableAttributedString(string: "Area")
            str_tag9_button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 4)) //range of text to change font size
            str_tag9_button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 4))
            tag9_button.setAttributedTitle(str_tag9_button, for: .normal)
            
            tag10_button.titleLabel?.textAlignment = .center
            tag10_button.contentHorizontalAlignment = .center
            tag10_button.titleLabel?.numberOfLines = 1
     //       tag10_button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag10_button = NSMutableAttributedString(string: "Speed")
            str_tag10_button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 5)) //range of text to change font size
            str_tag10_button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 5))
            tag10_button.setAttributedTitle(str_tag10_button, for: .normal)
            
            tag11_button.titleLabel?.textAlignment = .center
            tag11_button.contentHorizontalAlignment = .center
            tag11_button.titleLabel?.numberOfLines = 1
   //         tag11_button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag11_button = NSMutableAttributedString(string: "Freq.")
            str_tag11_button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 5)) //range of text to change font size
            str_tag11_button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 5))
            tag11_button.setAttributedTitle(str_tag11_button, for: .normal)
            
            tag12_button.titleLabel?.textAlignment = .center
            tag12_button.contentHorizontalAlignment = .center
            tag12_button.titleLabel?.numberOfLines = 1
    //        tag12_button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag12_button = NSMutableAttributedString(string: "Density")
            str_tag12_button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 7)) //range of text to change font size
            str_tag12_button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 7))
            tag12_button.setAttributedTitle(str_tag12_button, for: .normal)
            
            tag13_button.titleLabel?.textAlignment = .center
            tag13_button.contentHorizontalAlignment = .center
            tag13_button.titleLabel?.numberOfLines = 1
     //       tag13_button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag13_button = NSMutableAttributedString(string: "Time")
            str_tag13_button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 4)) //range of text to change font size
            str_tag13_button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 4))
            tag13_button.setAttributedTitle(str_tag13_button, for: .normal)
            
            tag14_button.titleLabel?.textAlignment = .center
            tag14_button.contentHorizontalAlignment = .center
            tag14_button.titleLabel?.numberOfLines = 1
    //        tag14_button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag14_button = NSMutableAttributedString(string: "Dig. Sto.")
            str_tag14_button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 9)) //range of text to change font size
            str_tag14_button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 9))
            tag14_button.setAttributedTitle(str_tag14_button, for: .normal)
            
            tag15_button.titleLabel?.textAlignment = .center
            tag15_button.contentHorizontalAlignment = .center
            tag15_button.titleLabel?.numberOfLines = 1
    //        tag15_button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag15_button = NSMutableAttributedString(string: "Angle")
            str_tag15_button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 5)) //range of text to change font size
            str_tag15_button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 5))
            tag15_button.setAttributedTitle(str_tag15_button, for: .normal)
            
            tag16_button.titleLabel?.textAlignment = .center
            tag16_button.contentHorizontalAlignment = .center
            tag16_button.titleLabel?.numberOfLines = 1
   //         tag16_button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag16_button = NSMutableAttributedString(string: "Prefix")
            str_tag16_button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 6)) //range of text to change font size
            str_tag16_button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1.0), range: NSMakeRange(0, 6))
            tag16_button.setAttributedTitle(str_tag16_button, for: .normal)
            
            tag17_button.titleLabel?.textAlignment = .center
            tag17_button.contentHorizontalAlignment = .center
            tag17_button.titleLabel?.numberOfLines = 1
   //         tag17_button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
            let str_tag17_button = NSMutableAttributedString(string: "Convert")
            str_tag17_button.addAttribute(NSAttributedStringKey.font, value: UIFont.systemFont(ofSize: 10 * fontConstant), range: NSMakeRange(0, 7)) //range of text to change font size
            str_tag17_button.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0), range: NSMakeRange(0, 7))
            tag17_button.setAttributedTitle(str_tag17_button, for: .normal)
            
            
       // }
        
        
        
        
        
        
        
        
        
        
    }
    
    @objc func didTapView(){
        self.view.endEditing(true)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func unitSystemButtons(_ sender: UIButton) {
        sender.flash() // button animation
        
        
        if sender.tag == 3 {
            unitButtonPressCheck = true
            whichButton = "tempButton"
            picker.delegate = self
            picker.dataSource = self
        } else if sender.tag == 2 {
            unitButtonPressCheck = true
            whichButton = "massButton"
            picker.delegate = self
            picker.dataSource = self
        }
        else if sender.tag == 1 {
            unitButtonPressCheck = true
            whichButton = "lengthButton"
            picker.delegate = self
            picker.dataSource = self
        }  else if sender.tag == 4 {
            unitButtonPressCheck = true
            whichButton = "pressureButton"
            picker.delegate = self
            picker.dataSource = self
        } else if sender.tag == 16 {
            unitButtonPressCheck = true
            whichButton = "prefixButton"
            picker.delegate = self
            picker.dataSource = self
        } else if sender.tag == 12 {
            unitButtonPressCheck = true
            whichButton = "densityButton"
            picker.delegate = self
            picker.dataSource = self
        } else if sender.tag == 5 {
            unitButtonPressCheck = true
            whichButton = "volumeButton"
            picker.delegate = self
            picker.dataSource = self
        }  else if sender.tag == 6 {
            unitButtonPressCheck = true
            whichButton = "forceButton"
            picker.delegate = self
            picker.dataSource = self
        } else if sender.tag == 7 {
            unitButtonPressCheck = true
            whichButton = "energyButton"
            picker.delegate = self
            picker.dataSource = self
        }  else if sender.tag == 8 {
            unitButtonPressCheck = true
            whichButton = "powerButton"
            picker.delegate = self
            picker.dataSource = self
        }  else if sender.tag == 9 {
            unitButtonPressCheck = true
            whichButton = "areaButton"
            picker.delegate = self
            picker.dataSource = self
        } else if sender.tag == 10 {
            unitButtonPressCheck = true
            whichButton = "speedButton"
            picker.delegate = self
            picker.dataSource = self
        }  else if sender.tag == 11 {
            unitButtonPressCheck = true
            whichButton = "frequencyButton"
            picker.delegate = self
            picker.dataSource = self
        } else if sender.tag == 13 {
            unitButtonPressCheck = true
            whichButton = "timeButton"
            picker.delegate = self
            picker.dataSource = self
        }  else if sender.tag == 14 {
            unitButtonPressCheck = true
            whichButton = "digitalStorageButton"
            picker.delegate = self
            picker.dataSource = self
        } else if sender.tag == 15 {
            unitButtonPressCheck = true
            whichButton = "planeAngleButton"
            picker.delegate = self
            picker.dataSource = self
        }
        
        
        
        
        
        
    }
    
    
    
    
    
    enum Unit: Int {
        
        
        case Kelvin = 0, Celsius, Fahrenheit
        
        func description() -> String {
            switch self {
            case .Kelvin:
                return "Kelvin (K)"
            case .Celsius:
                return "Celsius (°C)"
            case .Fahrenheit:
                return "Fahrenheit (°F)"
            }
        }
        
        
        func convertTo(unit to: Unit, value val: Double) -> Double {
            var convert = val
            
            switch self {
            case .Kelvin:
                if to == .Kelvin {
                    convert = convert + 0
                } else if to == .Celsius {
                    convert = convert - 273.15
                } else if to == .Fahrenheit {
                    convert = (convert - 273.15) * 9/5 + 32
                }
                
            case .Celsius:
                if to == .Kelvin {
                    convert = convert + 273.15
                } else if to == .Celsius {
                    convert = convert + 0
                } else if to == .Fahrenheit {
                    convert = convert * 1.8 + 32
                }
                
            case .Fahrenheit:
                if to == .Kelvin {
                    convert = (convert + 459.67) * (5/9)
                } else if to == .Celsius {
                    convert = (convert - 32) / 1.8
                } else if to == .Fahrenheit {
                    convert = convert + 0
                }
            }
            
            return convert
        }
        
        
        
        
        
        
        
        
        static func fromString(_ string: String) -> Unit? {
            if string == "Kelvin (K)" {
                return .Kelvin
            } else if string == "Celsius (°C)" {
                return .Celsius
            } else if string == "Fahrenheit (°F)" {
                return .Fahrenheit
            } else {
                return nil
            }
        }
        
        static func allCases() -> [String] {
            var i = 0
            var list = [String]()
            while let unit = Unit(rawValue: i) {
                list.append(unit.description())
                i = i + 1
            }
            return list
        }
        
        
    }
    
    
    enum massUnit: Int {
        
        
        case Kilogram = 0, Pound, Gram, Ounce, Milligram, Microgram, ImperialTon, MetricTon, USTon, Stone
        
        func description() -> String {
            switch self {
            case .Kilogram:
                return "Kilogram (kg)"
            case .Pound:
                return "Pound (lbm)"
            case .Gram:
                return "Gram (g)"
            case .Ounce:
                return "Ounce (oz)"
            case .Milligram:
                return "Milligram (mg)"
            case .Microgram:
                return "Microgram (μg)"
            case .ImperialTon:
                return "Imp. Ton (long ton)"
            case .MetricTon:
                return "Met. Ton (t)"
            case .USTon:
                return "US Ton (short ton)"
            case .Stone:
                return "Stone (st)"
            }
        }
        
        
        func convertTo(unit to: massUnit, value val: Double) -> Double {
            var convert = val
            
            switch self {
            case .Kilogram:
                
                if to == .Kilogram {
                    convert = convert + 0
                } else if to == .Gram {
                    convert = convert * 1000.0
                } else if to == .Pound {
                    convert = convert * 2.20462
                } else if to == .Ounce {
                    convert = convert * 35.274
                } else if to == .Milligram {
                    convert = convert * 1e+6
                } else if to == .Microgram {
                    convert = convert * 1e+9
                } else if to == .ImperialTon {
                    convert = convert * 0.000984207
                } else if to == .MetricTon {
                    convert = convert * 0.001
                } else if to == .USTon {
                    convert = convert * 0.00110231
                } else if to == .Stone {
                    convert = convert * 0.157473
                }
                
                
                
                
                
                
                
                
                
            case .Gram:
                if to == .Kilogram {
                    convert = convert * 0.001
                } else if to == .Gram {
                    convert = convert + 0
                } else if to == .Pound {
                    convert = convert * 0.00220462
                } else if to == .Ounce {
                    convert = convert * 0.035274
                } else if to == .Milligram {
                    convert = convert * 1000
                } else if to == .Microgram {
                    convert = convert * 1e+6
                } else if to == .ImperialTon {
                    convert = convert * 9.8421e-7
                } else if to == .MetricTon {
                    convert = convert * 1e-6
                } else if to == .USTon {
                    convert = convert * 1.1023e-6
                } else if to == .Stone {
                    convert = convert * 0.000157473
                }
                
            case .Pound:
                if to == .Kilogram {
                    convert = convert * 0.453592
                } else if to == .Gram {
                    convert = convert * 453.592
                } else if to == .Pound {
                    convert = convert + 0
                } else if to == .Ounce {
                    convert = convert * 16
                } else if to == .Milligram {
                    convert = convert * 453592
                } else if to == .Microgram {
                    convert = convert * 4.536e+8
                } else if to == .ImperialTon {
                    convert = convert * 0.000446429
                } else if to == .MetricTon {
                    convert = convert * 0.000453592
                } else if to == .USTon {
                    convert = convert * 0.0005
                } else if to == .Stone {
                    convert = convert * 0.0714286
                }
                
            case .Ounce:
                if to == .Kilogram {
                    convert = convert * 0.0283495
                } else if to == .Gram {
                    convert = convert * 28.3495
                } else if to == .Pound {
                    convert = convert * 0.0625
                } else if to == .Ounce {
                    convert = convert + 0
                } else if to == .Milligram {
                    convert = convert * 28349.5
                } else if to == .Microgram {
                    convert = convert * 2.835e+7
                } else if to == .ImperialTon {
                    convert = convert * 2.7902e-5
                } else if to == .MetricTon {
                    convert = convert * 2.835e-5
                } else if to == .USTon {
                    convert = convert * 3.125e-5
                } else if to == .Stone {
                    convert = convert * 0.00446429
                }
                
            case .Milligram:
                if to == .Kilogram {
                    convert = convert * 1e-6
                } else if to == .Gram {
                    convert = convert * 0.001
                } else if to == .Pound {
                    convert = convert * 2.2046e-6
                } else if to == .Ounce {
                    convert = convert * 3.5274e-5
                } else if to == .Milligram {
                    convert = convert + 0
                } else if to == .Microgram {
                    convert = convert * 1000
                } else if to == .ImperialTon {
                    convert = convert * 9.8421e-10
                } else if to == .MetricTon {
                    convert = convert * 1e-9
                } else if to == .USTon {
                    convert = convert * 1.1023e-9
                } else if to == .Stone {
                    convert = convert * 1.5747e-7
                }
                
            case .Microgram:
                if to == .Kilogram {
                    convert = convert * 1e-9
                } else if to == .Gram {
                    convert = convert * 1e-6
                } else if to == .Pound {
                    convert = convert * 2.2046e-9
                } else if to == .Ounce {
                    convert = convert * 3.5274e-8
                } else if to == .Milligram {
                    convert = convert * 0.001
                } else if to == .Microgram {
                    convert = convert + 0
                } else if to == .ImperialTon {
                    convert = convert * 9.8421e-13
                } else if to == .MetricTon {
                    convert = convert * 1e-12
                } else if to == .USTon {
                    convert = convert * 1.1023e-12
                } else if to == .Stone {
                    convert = convert * 1.5747e-10
                }
                
            case .ImperialTon:
                if to == .Kilogram {
                    convert = convert * 1016.05
                } else if to == .Gram {
                    convert = convert * 1.016e+6
                } else if to == .Pound {
                    convert = convert * 2240
                } else if to == .Ounce {
                    convert = convert * 35840
                } else if to == .Milligram {
                    convert = convert * 1.016e+9
                } else if to == .Microgram {
                    convert = convert * 1.016e+12
                } else if to == .ImperialTon {
                    convert = convert + 0
                } else if to == .MetricTon {
                    convert = convert * 1.01605
                } else if to == .USTon {
                    convert = convert * 1.12
                } else if to == .Stone {
                    convert = convert * 160
                }
                
            case .MetricTon:
                if to == .Kilogram {
                    convert = convert * 1000
                } else if to == .Gram {
                    convert = convert * 1e+6
                } else if to == .Pound {
                    convert = convert * 2204.62
                } else if to == .Ounce {
                    convert = convert * 35274
                } else if to == .Milligram {
                    convert = convert * 1e+9
                } else if to == .Microgram {
                    convert = convert * 1e+12
                } else if to == .ImperialTon {
                    convert = convert * 0.984207
                } else if to == .MetricTon {
                    convert = convert + 0
                } else if to == .USTon {
                    convert = convert * 1.10231
                } else if to == .Stone {
                    convert = convert * 157.473
                }
                
            case .USTon:
                if to == .Kilogram {
                    convert = convert * 907.185
                } else if to == .Gram {
                    convert = convert * 907185
                } else if to == .Pound {
                    convert = convert * 2000
                } else if to == .Ounce {
                    convert = convert * 32000
                } else if to == .Milligram {
                    convert = convert * 9.072e+8
                } else if to == .Microgram {
                    convert = convert * 9.072e+11
                } else if to == .ImperialTon {
                    convert = convert * 0.892857
                } else if to == .MetricTon {
                    convert = convert * 0.907185
                } else if to == .USTon {
                    convert = convert + 0
                } else if to == .Stone {
                    convert = convert * 142.857
                }
                
            case .Stone:
                
                if to == .Kilogram {
                    convert = convert * 6.35029
                } else if to == .Gram {
                    convert = convert * 6350.29
                } else if to == .Pound {
                    convert = convert * 14
                } else if to == .Ounce {
                    convert = convert * 224
                } else if to == .Milligram {
                    convert = convert * 6.35e+6
                } else if to == .Microgram {
                    convert = convert * 6.35e+9
                } else if to == .ImperialTon {
                    convert = convert * 0.00625
                } else if to == .MetricTon {
                    convert = convert * 0.00635029
                } else if to == .USTon {
                    convert = convert * 0.007
                } else if to == .Stone {
                    convert = convert + 0
                }
                
                
                
                
                
                
            }
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            return convert
        }
        
        
        
        
        
        
        static func fromString(_ string: String) -> massUnit? {
            
            if string == "Kilogram (kg)" {
                return .Kilogram
            } else if string == "Gram (g)" {
                return .Gram
            } else if string == "Pound (lbm)" {
                return .Pound
            } else if string == "Ounce (oz)" {
                return .Ounce
            } else if string == "Milligram (mg)" {
                return .Milligram
            } else if string == "Microgram (μg)" {
                return .Microgram
            } else if string == "Imp. Ton (long ton)" {
                return .ImperialTon
            } else if string == "Met. Ton (t)" {
                return .MetricTon
            } else if string == "US Ton (short ton)" {
                return .USTon
            } else if string == "Stone (st)" {
                return .Stone
            }
                
                
                
                
            else {
                return nil
            }
        }
        
        static func allCases() -> [String] {
            var i = 0
            var list = [String]()
            while let unit = massUnit(rawValue: i) {
                list.append(unit.description())
                i = i + 1
            }
            return list
        }
        
    }
    // -------------------------------------------
    
    // ------------------ LENGTH ------------------
    
    enum lengthUnit: Int {
        
        
        case Meter = 0, Foot, Inch, Kilometer, Centimeter, Millimeter, Micrometer, Nanometer, Yard, Mile, NauticalMile
        
        func description() -> String {
            switch self {
            case .Meter:
                return "Meter (m)"
            case .Foot:
                return "Foot (ft)"
            case .Inch:
                return "Inch (in)"
            case .Kilometer:
                return "Kilometer (km)"
            case .Centimeter:
                return "Centimeter (cm)"
            case .Millimeter:
                return "Millimeter (mm)"
            case .Micrometer:
                return "Micrometer (μm)"
            case .Nanometer:
                return "Nanometer (nm)"
            case .Yard:
                return "Yard (yd)"
            case .Mile:
                return "Mile (mi.)"
            case .NauticalMile:
                return "Nt. Mile (n.m.)"
            }
        }
        
        
        func convertTo(unit to: lengthUnit, value val: Double) -> Double {
            var convert = val
            
            switch self {
            case .Meter:
                if to == .Meter {
                    convert = convert + 0
                } else if to == .Foot {
                    convert = convert * 3.28084
                } else if to == .Inch {
                    convert = convert * 39.3701
                } else if to == .Kilometer {
                    convert = convert * 0.001
                } else if to == .Centimeter {
                    convert = convert * 100
                } else if to == .Millimeter {
                    convert = convert * 1000
                } else if to == .Micrometer {
                    convert = convert * 1e+6
                } else if to == .Nanometer {
                    convert = convert * 1e+9
                } else if to == .Yard {
                    convert = convert * 1.09361
                } else if to == .Mile {
                    convert = convert * 0.000621371
                } else if to == .NauticalMile {
                    convert = convert * 0.000539957
                }
                
            case .Foot:
                if to == .Meter {
                    convert = convert * 0.3048
                } else if to == .Foot {
                    convert = convert + 0
                } else if to == .Inch {
                    convert = convert * 12
                } else if to == .Kilometer {
                    convert = convert * 0.0003048
                } else if to == .Centimeter {
                    convert = convert * 30.48
                } else if to == .Millimeter {
                    convert = convert * 304.8
                } else if to == .Micrometer {
                    convert = convert * 304800
                } else if to == .Nanometer {
                    convert = convert * 3.048e+8
                } else if to == .Yard {
                    convert = convert * 0.333333
                } else if to == .Mile {
                    convert = convert * 0.000189394
                } else if to == .NauticalMile {
                    convert = convert * 0.000164579
                }
                
                
            case .Inch:
                if to == .Meter {
                    convert = convert * 0.0254
                } else if to == .Foot {
                    convert = convert * 0.0833333
                } else if to == .Inch {
                    convert = convert + 0
                } else if to == .Kilometer {
                    convert = convert * 2.54e-5
                } else if to == .Centimeter {
                    convert = convert * 2.54
                } else if to == .Millimeter {
                    convert = convert * 25.4
                } else if to == .Micrometer {
                    convert = convert * 25400
                } else if to == .Nanometer {
                    convert = convert * 2.54e+7
                } else if to == .Yard {
                    convert = convert * 0.0277778
                } else if to == .Mile {
                    convert = convert * 1.5783e-5
                } else if to == .NauticalMile {
                    convert = convert * 1.3715e-5
                }
                
            case .Kilometer:
                if to == .Meter {
                    convert = convert * 1000
                } else if to == .Foot {
                    convert = convert * 3280.84
                } else if to == .Inch {
                    convert = convert * 39370.1
                } else if to == .Kilometer {
                    convert = convert + 0
                } else if to == .Centimeter {
                    convert = convert * 100000
                } else if to == .Millimeter {
                    convert = convert * 1e+6
                } else if to == .Micrometer {
                    convert = convert * 1e+9
                } else if to == .Nanometer {
                    convert = convert * 1e+12
                } else if to == .Yard {
                    convert = convert * 1093.61
                } else if to == .Mile {
                    convert = convert * 0.621371
                } else if to == .NauticalMile {
                    convert = convert * 0.539957
                }
                
            case .Centimeter:
                if to == .Meter {
                    convert = convert * 0.01
                } else if to == .Foot {
                    convert = convert * 0.0328084
                } else if to == .Inch {
                    convert = convert * 0.393701
                } else if to == .Kilometer {
                    convert = convert * 1e-5
                } else if to == .Centimeter {
                    convert = convert + 0
                } else if to == .Millimeter {
                    convert = convert * 10
                } else if to == .Micrometer {
                    convert = convert * 10000
                } else if to == .Nanometer {
                    convert = convert * 1e+7
                } else if to == .Yard {
                    convert = convert * 0.0109361
                } else if to == .Mile {
                    convert = convert * 6.2137e-6
                } else if to == .NauticalMile {
                    convert = convert * 5.3996e-6
                }
                
            case .Millimeter:
                if to == .Meter {
                    convert = convert * 0.001
                } else if to == .Foot {
                    convert = convert * 0.00328084
                } else if to == .Inch {
                    convert = convert * 0.0393701
                } else if to == .Kilometer {
                    convert = convert * 1e-6
                } else if to == .Centimeter {
                    convert = convert * 0.1
                } else if to == .Millimeter {
                    convert = convert + 0
                } else if to == .Micrometer {
                    convert = convert * 1000
                } else if to == .Nanometer {
                    convert = convert * 1e+6
                } else if to == .Yard {
                    convert = convert * 0.00109361
                } else if to == .Mile {
                    convert = convert * 6.2137e-7
                } else if to == .NauticalMile {
                    convert = convert * 5.3996e-7
                }
                
            case .Micrometer:
                
                if to == .Meter {
                    convert = convert * 1e-6
                } else if to == .Foot {
                    convert = convert * 3.2808e-6
                } else if to == .Inch {
                    convert = convert * 3.937e-5
                } else if to == .Kilometer {
                    convert = convert * 1e-9
                } else if to == .Centimeter {
                    convert = convert * 1e-4
                } else if to == .Millimeter {
                    convert = convert * 0.001
                } else if to == .Micrometer {
                    convert = convert + 0
                } else if to == .Nanometer {
                    convert = convert * 1000
                } else if to == .Yard {
                    convert = convert * 1.0936e-6
                } else if to == .Mile {
                    convert = convert * 6.2137e-10
                } else if to == .NauticalMile {
                    convert = convert * 5.3996e-10
                }
                
            case .Nanometer:
                
                if to == .Meter {
                    convert = convert * 1e-9
                } else if to == .Foot {
                    convert = convert * 3.2808e-9
                } else if to == .Inch {
                    convert = convert * 3.937e-8
                } else if to == .Kilometer {
                    convert = convert * 1e-12
                } else if to == .Centimeter {
                    convert = convert * 1e-7
                } else if to == .Millimeter {
                    convert = convert * 1e-6
                } else if to == .Micrometer {
                    convert = convert * 0.001
                } else if to == .Nanometer {
                    convert = convert + 0
                } else if to == .Yard {
                    convert = convert * 1.0936e-9
                } else if to == .Mile {
                    convert = convert * 6.2137e-13
                } else if to == .NauticalMile {
                    convert = convert * 5.3996e-13
                }
                
            case .Yard:
                
                if to == .Meter {
                    convert = convert * 0.9144
                } else if to == .Foot {
                    convert = convert * 3
                } else if to == .Inch {
                    convert = convert * 36
                } else if to == .Kilometer {
                    convert = convert * 0.0009144
                } else if to == .Centimeter {
                    convert = convert * 91.44
                } else if to == .Millimeter {
                    convert = convert * 914.4
                } else if to == .Micrometer {
                    convert = convert * 914400
                } else if to == .Nanometer {
                    convert = convert * 9.144e+8
                } else if to == .Yard {
                    convert = convert + 0
                } else if to == .Mile {
                    convert = convert * 0.000568182
                } else if to == .NauticalMile {
                    convert = convert * 0.000493737
                }
                
            case .Mile:
                
                if to == .Meter {
                    convert = convert * 1609.34
                } else if to == .Foot {
                    convert = convert * 5280
                } else if to == .Inch {
                    convert = convert * 63360
                } else if to == .Kilometer {
                    convert = convert * 1.60934
                } else if to == .Centimeter {
                    convert = convert * 160934
                } else if to == .Millimeter {
                    convert = convert * 1.609e+6
                } else if to == .Micrometer {
                    convert = convert * 1.609e+9
                } else if to == .Nanometer {
                    convert = convert * 1.609e+12
                } else if to == .Yard {
                    convert = convert * 1760
                } else if to == .Mile {
                    convert = convert + 0
                } else if to == .NauticalMile {
                    convert = convert * 0.868976
                }
                
                
            case .NauticalMile:
                
                if to == .Meter {
                    convert = convert * 1852
                } else if to == .Foot {
                    convert = convert * 6076.12
                } else if to == .Inch {
                    convert = convert * 72913.4
                } else if to == .Kilometer {
                    convert = convert * 1.852
                } else if to == .Centimeter {
                    convert = convert * 185200
                } else if to == .Millimeter {
                    convert = convert * 1.852e+6
                } else if to == .Micrometer {
                    convert = convert * 1.852e+9
                } else if to == .Nanometer {
                    convert = convert * 1.852e+12
                } else if to == .Yard {
                    convert = convert * 2025.37
                } else if to == .Mile {
                    convert = convert * 1.15078
                } else if to == .NauticalMile {
                    convert = convert + 0
                }
                
                
                
                
            }
            
            return convert
        }
        
        
        
        
        
        
        
        
        static func fromString(_ string: String) -> lengthUnit? {
            if string == "Meter (m)" {
                return .Meter
            } else if string == "Foot (ft)" {
                return .Foot
            } else if string == "Inch (in)" {
                return .Inch
            } else if string == "Kilometer (km)" {
                return .Kilometer
            } else if string == "Centimeter (cm)" {
                return .Centimeter
            } else if string == "Millimeter (mm)" {
                return .Millimeter
            } else if string == "Micrometer (μm)" {
                return .Micrometer
            } else if string == "Nanometer (nm)" {
                return .Nanometer
            } else if string == "Yard (yd)" {
                return .Yard
            } else if string == "Mile (mi.)" {
                return .Mile
            } else if string == "Nt. Mile (n.m.)" {
                return .NauticalMile
            }
            else {
                return nil
            }
        }
        
        static func allCases() -> [String] {
            var i = 0
            var list = [String]()
            while let unit = lengthUnit(rawValue: i) {
                list.append(unit.description())
                i = i + 1
            }
            return list
        }
        
        
    }
    // -------------------------------------------
    // ------------------ Pressure ------------------
    
    enum pressureUnit: Int {
        
        
        case Pascal = 0, PoundforcePerSquareInch, Atmosphere, Bar, Torr
        
        func description() -> String {
            switch self {
            case .Pascal:
                return "Pascal (Pa)"
            case .PoundforcePerSquareInch:
                return "(psia)"
            case .Atmosphere:
                return "Atmosphere (atm)"
            case .Bar:
                return "Bar (bar)"
            case .Torr:
                return "Torr (torr)"
                
            }
        }
        
        
        func convertTo(unit to: pressureUnit, value val: Double) -> Double {
            var convert = val
            
            switch self {
            case .Pascal:
                if to == .Pascal {
                    convert = convert + 0
                } else if to == .PoundforcePerSquareInch {
                    convert = convert * 0.000145038
                } else if to == .Atmosphere {
                    convert = convert * 9.8692e-6
                } else if to == .Bar {
                    convert = convert * 1e-5
                } else if to == .Torr {
                    convert = convert * 0.00750062
                }
                
            case .PoundforcePerSquareInch:
                if to == .Pascal {
                    convert = convert * 6894.76
                } else if to == .PoundforcePerSquareInch {
                    convert = convert + 0
                } else if to == .Atmosphere {
                    convert = convert * 0.068046
                } else if to == .Bar {
                    convert = convert * 0.0689476
                } else if to == .Torr {
                    convert = convert * 51.7149
                }
                
            case .Atmosphere:
                if to == .Pascal {
                    convert = convert * 101325
                } else if to == .PoundforcePerSquareInch {
                    convert = convert * 14.6959
                } else if to == .Atmosphere {
                    convert = convert + 0
                } else if to == .Bar {
                    convert = convert * 1.01325
                } else if to == .Torr {
                    convert = convert * 760
                }
                
            case .Bar:
                if to == .Pascal {
                    convert = convert * 100000
                } else if to == .PoundforcePerSquareInch {
                    convert = convert * 14.5038
                } else if to == .Atmosphere {
                    convert = convert * 0.986923
                } else if to == .Bar {
                    convert = convert + 0
                } else if to == .Torr {
                    convert = convert * 750.062
                }
            case .Torr:
                if to == .Pascal {
                    convert = convert * 133.322
                } else if to == .PoundforcePerSquareInch {
                    convert = convert * 0.0193368
                } else if to == .Atmosphere {
                    convert = convert * 0.00131579
                } else if to == .Bar {
                    convert = convert * 0.00133322
                } else if to == .Torr {
                    convert = convert + 0
                }
                
                
                
            }
            
            return convert
        }
        
        
        
        
        
        
        
        
        static func fromString(_ string: String) -> pressureUnit? {
            if string == "Pascal (Pa)" {
                return .Pascal
            } else if string == "(psia)" {
                return .PoundforcePerSquareInch
            } else if string == "Atmosphere (atm)" {
                return .Atmosphere
            } else if string == "Bar (bar)" {
                return .Bar
            } else if string == "Torr (torr)" {
                return .Torr
            }
            else {
                return nil
            }
        }
        
        static func allCases() -> [String] {
            var i = 0
            var list = [String]()
            while let unit = pressureUnit(rawValue: i) {
                list.append(unit.description())
                i = i + 1
            }
            return list
        }
        
        
    }
    // -------------------------------------------
    // ------------------ Prefix ------------------
    
    enum prefixUnit: Int {
        
        
        case BaseUnit = 0, Deca, Deci, Hecto, Centi, Kilo, Milli, Mega, Micro, Giga, Nano, Tera, Pico, Peta, Femto, Exa, Atto, Zetta, Zepto, Yotta, Yocto
        
        func description() -> String {
            switch self {
            case .BaseUnit:
                return "Base Unit"
            case .Deca:
                return "Deca (da), 10^1"
            case .Deci:
                return "Deci (d), 10^-1"
            case .Hecto:
                return "Hetco (h), 10^2"
            case .Centi:
                return "Centi (c), 10^-2"
            case .Kilo:
                return "Kilo (k), 10^3"
            case .Milli:
                return "Milli (m), 10^-3"
            case .Mega:
                return "Mega (M), 10^6"
            case .Micro:
                return "Micro (μ), 10^-6"
            case .Giga:
                return "Giga (G), 10^9"
            case .Nano:
                return "Nano (n), 10^-9"
            case .Tera:
                return "Tera (T), 10^12"
            case .Pico:
                return "Pico (p), 10^-12"
            case .Peta:
                return "Peta (P), 10^15"
            case .Femto:
                return "Femto (f), 10^-15"
            case .Exa:
                return "Exa (E), 10^18"
            case .Atto:
                return "Atto (a), 10^-18"
            case .Zetta:
                return "Zetta (Z), 10^21"
            case .Zepto:
                return "Zepto (z), 10^-21"
            case .Yotta:
                return "Yotta (Y), 10^24"
            case .Yocto:
                return "Yocto (y), 10^-24"
                
            }
        }
        
        
        func convertTo(unit to: prefixUnit, value val: Double) -> Double {
            var convert = val
            
            switch self {
                
                
            case .BaseUnit:
                
                if to == .BaseUnit {
                    convert = convert + 0
                } else if to == .Deca {
                    convert = convert / 10
                } else if to == .Deci {
                    convert = convert / 0.1
                } else if to == .Hecto {
                    convert = convert / 100
                } else if to == .Centi {
                    convert = convert / 0.01
                } else if to == .Kilo {
                    convert = convert / 1000
                } else if to == .Milli {
                    convert = convert / 0.001
                } else if to == .Mega {
                    convert = convert / 1000000
                } else if to == .Micro {
                    convert = convert / 0.000001
                } else if to == .Giga {
                    convert = convert / 1000000000
                } else if to == .Nano {
                    convert = convert / 0.000000001
                } else if to == .Tera {
                    convert = convert / 1000000000000
                } else if to == .Pico {
                    convert = convert / 0.000000000001
                } else if to == .Peta {
                    convert = convert / 1000000000000000
                } else if to == .Femto {
                    convert = convert / 0.000000000000001
                } else if to == .Exa {
                    convert = convert / 1000000000000000000
                } else if to == .Atto {
                    convert = convert / 0.000000000000000001
                } else if to == .Zetta {
                    convert = convert / 1000000000000000000000
                } else if to == .Zepto {
                    convert = convert / 0.000000000000000000001
                } else if to == .Yotta {
                    convert = convert / 1000000000000000000000000
                } else if to == .Yocto {
                    convert = convert / 0.000000000000000000000001
                }
                
            case .Deca:
                
                if to == .BaseUnit {
                    convert = convert / 0.1
                } else if to == .Deca {
                    convert = convert + 0
                } else if to == .Deci {
                    convert = convert / 0.01
                } else if to == .Hecto {
                    convert = convert / 10
                } else if to == .Centi {
                    convert = convert / 0.001
                } else if to == .Kilo {
                    convert = convert / 100
                } else if to == .Milli {
                    convert = convert / 0.0001
                } else if to == .Mega {
                    convert = convert / 100000
                } else if to == .Micro {
                    convert = convert / 1E-7
                } else if to == .Giga {
                    convert = convert / 100000000
                } else if to == .Nano {
                    convert = convert / 1E-10
                } else if to == .Tera {
                    convert = convert / 100000000000
                } else if to == .Pico {
                    convert = convert / 1E-13
                } else if to == .Peta {
                    convert = convert / 100000000000000
                } else if to == .Femto {
                    convert = convert / 1E-16
                } else if to == .Exa {
                    convert = convert / 100000000000000000
                } else if to == .Atto {
                    convert = convert / 1E-19
                } else if to == .Zetta {
                    convert = convert / 100000000000000000000
                } else if to == .Zepto {
                    convert = convert / 1E-22
                } else if to == .Yotta {
                    convert = convert / 1E+23
                } else if to == .Yocto {
                    convert = convert / 1E-25
                }
                
            case .Deci:
                
                if to == .BaseUnit {
                    convert = convert / 10
                } else if to == .Deca {
                    convert = convert / 100
                } else if to == .Deci {
                    convert = convert + 0
                } else if to == .Hecto {
                    convert = convert / 1000
                } else if to == .Centi {
                    convert = convert / 0.1
                } else if to == .Kilo {
                    convert = convert / 10000
                } else if to == .Milli {
                    convert = convert / 0.01
                } else if to == .Mega {
                    convert = convert / 10000000
                } else if to == .Micro {
                    convert = convert / 0.00001
                } else if to == .Giga {
                    convert = convert / 10000000000
                } else if to == .Nano {
                    convert = convert / 1e-8
                } else if to == .Tera {
                    convert = convert / 10000000000000
                } else if to == .Pico {
                    convert = convert / 1e-11
                } else if to == .Peta {
                    convert = convert / 10000000000000000
                } else if to == .Femto {
                    convert = convert / 1e-14
                } else if to == .Exa {
                    convert = convert / 10000000000000000000
                } else if to == .Atto {
                    convert = convert / 1e-17
                } else if to == .Zetta {
                    convert = convert / 1E+22
                } else if to == .Zepto {
                    convert = convert / 1e-20
                } else if to == .Yotta {
                    convert = convert / 1E+25
                } else if to == .Yocto {
                    convert = convert / 1e-23
                }
                
                
                
            case .Hecto:
                
                if to == .BaseUnit {
                    convert = convert / 0.01
                } else if to == .Deca {
                    convert = convert / 0.1
                } else if to == .Deci {
                    convert = convert / 0.001
                } else if to == .Hecto {
                    convert = convert + 0
                } else if to == .Centi {
                    convert = convert / 0.0001
                } else if to == .Kilo {
                    convert = convert / 10
                } else if to == .Milli {
                    convert = convert / 0.00001
                } else if to == .Mega {
                    convert = convert / 10000
                } else if to == .Micro {
                    convert = convert / 1E-8
                } else if to == .Giga {
                    convert = convert / 10000000
                } else if to == .Nano {
                    convert = convert / 1E-11
                } else if to == .Tera {
                    convert = convert / 10000000000
                } else if to == .Pico {
                    convert = convert / 1E-14
                } else if to == .Peta {
                    convert = convert / 10000000000000
                } else if to == .Femto {
                    convert = convert / 1E-17
                } else if to == .Exa {
                    convert = convert / 10000000000000000
                } else if to == .Atto {
                    convert = convert / 1E-20
                } else if to == .Zetta {
                    convert = convert / 10000000000000000000
                } else if to == .Zepto {
                    convert = convert / 1E-23
                } else if to == .Yotta {
                    convert = convert / 1E+22
                } else if to == .Yocto {
                    convert = convert / 1E-26
                }
                
            case .Centi:
                
                if to == .BaseUnit {
                    convert = convert / 0.1
                } else if to == .Deca {
                    convert = convert + 0
                } else if to == .Deci {
                    convert = convert / 0.01
                } else if to == .Hecto {
                    convert = convert / 10
                } else if to == .Centi {
                    convert = convert / 0.001
                } else if to == .Kilo {
                    convert = convert / 100
                } else if to == .Milli {
                    convert = convert / 0.0001
                } else if to == .Mega {
                    convert = convert / 10000
                } else if to == .Micro {
                    convert = convert / 0.0000001
                } else if to == .Giga {
                    convert = convert / 10000000
                } else if to == .Nano {
                    convert = convert / 0.0000000001
                } else if to == .Tera {
                    convert = convert / 10000000000
                } else if to == .Pico {
                    convert = convert / 0.0000000000001
                } else if to == .Peta {
                    convert = convert / 10000000000000
                } else if to == .Femto {
                    convert = convert / 0.0000000000000001
                } else if to == .Exa {
                    convert = convert / 10000000000000000
                } else if to == .Atto {
                    convert = convert / 0.0000000000000000001
                } else if to == .Zetta {
                    convert = convert / 10000000000000000000
                } else if to == .Zepto {
                    convert = convert / 0.0000000000000000000001
                } else if to == .Yotta {
                    convert = convert / 10000000000000000000000
                } else if to == .Yocto {
                    convert = convert / 0.0000000000000000000000001
                }
                
            case .Kilo:
                
                if to == .BaseUnit {
                    convert = convert / 0.001
                } else if to == .Deca {
                    convert = convert / 0.01
                } else if to == .Deci {
                    convert = convert / 0.0001
                } else if to == .Hecto {
                    convert = convert / 0.1
                } else if to == .Centi {
                    convert = convert / 0.00001
                } else if to == .Kilo {
                    convert = convert + 0
                } else if to == .Milli {
                    convert = convert / 0.000001
                } else if to == .Mega {
                    convert = convert / 1000
                } else if to == .Micro {
                    convert = convert / 1E-9
                } else if to == .Giga {
                    convert = convert / 1000000
                } else if to == .Nano {
                    convert = convert / 1E-12
                } else if to == .Tera {
                    convert = convert / 1000000000
                } else if to == .Pico {
                    convert = convert / 1E-15
                } else if to == .Peta {
                    convert = convert / 1000000000000
                } else if to == .Femto {
                    convert = convert / 1E-18
                } else if to == .Exa {
                    convert = convert / 1000000000000000
                } else if to == .Atto {
                    convert = convert / 1E-21
                } else if to == .Zetta {
                    convert = convert / 1000000000000000000
                } else if to == .Zepto {
                    convert = convert / 1E-24
                } else if to == .Yotta {
                    convert = convert / 1E+21
                } else if to == .Yocto {
                    convert = convert / 1E-27
                }
                
            case .Milli:
                
                if to == .BaseUnit {
                    convert = convert / 1000
                } else if to == .Deca {
                    convert = convert / 10000
                } else if to == .Deci {
                    convert = convert / 100
                } else if to == .Hecto {
                    convert = convert / 100000
                } else if to == .Centi {
                    convert = convert / 10
                } else if to == .Kilo {
                    convert = convert / 1000000
                } else if to == .Milli {
                    convert = convert + 0
                } else if to == .Mega {
                    convert = convert / 1000000000
                } else if to == .Micro {
                    convert = convert / 0.001
                } else if to == .Giga {
                    convert = convert / 1000000000000
                } else if to == .Nano {
                    convert = convert / 0.000001
                } else if to == .Tera {
                    convert = convert / 1000000000000000
                } else if to == .Pico {
                    convert = convert / 1E-9
                } else if to == .Peta {
                    convert = convert / 1000000000000000000
                } else if to == .Femto {
                    convert = convert / 1E-12
                } else if to == .Exa {
                    convert = convert / 1e+21
                } else if to == .Atto {
                    convert = convert / 1E-15
                } else if to == .Zetta {
                    convert = convert / 1E+24
                } else if to == .Zepto {
                    convert = convert / 1E-18
                } else if to == .Yotta {
                    convert = convert / 1E+27
                } else if to == .Yocto {
                    convert = convert / 1E-21
                }
                
            case .Mega:
                
                if to == .BaseUnit {
                    convert = convert / 0.000001
                } else if to == .Deca {
                    convert = convert / 0.00001
                } else if to == .Deci {
                    convert = convert / 1E-7
                } else if to == .Hecto {
                    convert = convert / 0.0001
                } else if to == .Centi {
                    convert = convert / 1E-8
                } else if to == .Kilo {
                    convert = convert / 0.001
                } else if to == .Milli {
                    convert = convert / 1E-9
                } else if to == .Mega {
                    convert = convert + 0
                } else if to == .Micro {
                    convert = convert / 1E-12
                } else if to == .Giga {
                    convert = convert / 1000
                } else if to == .Nano {
                    convert = convert / 1E-15
                } else if to == .Tera {
                    convert = convert / 1000000
                } else if to == .Pico {
                    convert = convert / 1E-18
                } else if to == .Peta {
                    convert = convert / 1000000000
                } else if to == .Femto {
                    convert = convert / 1E-21
                } else if to == .Exa {
                    convert = convert / 1000000000000
                } else if to == .Atto {
                    convert = convert / 1E-24
                } else if to == .Zetta {
                    convert = convert / 1000000000000000
                } else if to == .Zepto {
                    convert = convert / 1E-27
                } else if to == .Yotta {
                    convert = convert / 1000000000000000000
                } else if to == .Yocto {
                    convert = convert / 1E-30
                }
                
            case .Micro:
                
                if to == .BaseUnit {
                    convert = convert / 1000000
                } else if to == .Deca {
                    convert = convert / 10000000
                } else if to == .Deci {
                    convert = convert / 100000
                } else if to == .Hecto {
                    convert = convert / 100000000
                } else if to == .Centi {
                    convert = convert / 10000
                } else if to == .Kilo {
                    convert = convert / 1000000000
                } else if to == .Milli {
                    convert = convert / 1000
                } else if to == .Mega {
                    convert = convert / 1000000000000
                } else if to == .Micro {
                    convert = convert + 0
                } else if to == .Giga {
                    convert = convert / 1000000000000000
                } else if to == .Nano {
                    convert = convert / 0.001
                } else if to == .Tera {
                    convert = convert / 1000000000000000000
                } else if to == .Pico {
                    convert = convert / 0.000001
                } else if to == .Peta {
                    convert = convert / 1e+21
                } else if to == .Femto {
                    convert = convert / 1E-9
                } else if to == .Exa {
                    convert = convert / 1E+24
                } else if to == .Atto {
                    convert = convert / 1E-12
                } else if to == .Zetta {
                    convert = convert / 1E+27
                } else if to == .Zepto {
                    convert = convert / 1E-15
                } else if to == .Yotta {
                    convert = convert / 1E+30
                } else if to == .Yocto {
                    convert = convert / 1E-18
                }
                
            case .Giga:
                
                if to == .BaseUnit {
                    convert = convert / 1E-9
                } else if to == .Deca {
                    convert = convert / 1E-8
                } else if to == .Deci {
                    convert = convert / 1E-10
                } else if to == .Hecto {
                    convert = convert / 1E-7
                } else if to == .Centi {
                    convert = convert / 1E-11
                } else if to == .Kilo {
                    convert = convert / 0.000001
                } else if to == .Milli {
                    convert = convert / 1E-12
                } else if to == .Mega {
                    convert = convert / 0.001
                } else if to == .Micro {
                    convert = convert / 1E-15
                } else if to == .Giga {
                    convert = convert + 0
                } else if to == .Nano {
                    convert = convert / 1E-18
                } else if to == .Tera {
                    convert = convert / 1000
                } else if to == .Pico {
                    convert = convert / 1E-21
                } else if to == .Peta {
                    convert = convert / 1000000
                } else if to == .Femto {
                    convert = convert / 1E-24
                } else if to == .Exa {
                    convert = convert / 1000000000
                } else if to == .Atto {
                    convert = convert / 1E-27
                } else if to == .Zetta {
                    convert = convert / 1000000000000
                } else if to == .Zepto {
                    convert = convert / 1E-30
                } else if to == .Yotta {
                    convert = convert / 1000000000000000
                } else if to == .Yocto {
                    convert = convert / 1E-33
                }
                
            case .Nano:
                
                if to == .BaseUnit {
                    convert = convert / 1000000000
                } else if to == .Deca {
                    convert = convert / 10000000000
                } else if to == .Deci {
                    convert = convert / 100000000
                } else if to == .Hecto {
                    convert = convert / 100000000000
                } else if to == .Centi {
                    convert = convert / 10000000
                } else if to == .Kilo {
                    convert = convert / 1000000000000
                } else if to == .Milli {
                    convert = convert / 1000000
                } else if to == .Mega {
                    convert = convert / 1000000000000000
                } else if to == .Micro {
                    convert = convert / 1000
                } else if to == .Giga {
                    convert = convert / 1000000000000000000
                } else if to == .Nano {
                    convert = convert + 0
                } else if to == .Tera {
                    convert = convert / 1E+21
                } else if to == .Pico {
                    convert = convert / 0.001
                } else if to == .Peta {
                    convert = convert / 1E+24
                } else if to == .Femto {
                    convert = convert / 0.000001
                } else if to == .Exa {
                    convert = convert / 1E+27
                } else if to == .Atto {
                    convert = convert / 1E-9
                } else if to == .Zetta {
                    convert = convert / 1E+30
                } else if to == .Zepto {
                    convert = convert / 1E-12
                } else if to == .Yotta {
                    convert = convert / 1E+33
                } else if to == .Yocto {
                    convert = convert / 1E-15
                }
                
            case .Tera:
                
                if to == .BaseUnit {
                    convert = convert / 1E-12
                } else if to == .Deca {
                    convert = convert / 1E-11
                } else if to == .Deci {
                    convert = convert / 1E-13
                } else if to == .Hecto {
                    convert = convert / 1E-10
                } else if to == .Centi {
                    convert = convert / 1E-14
                } else if to == .Kilo {
                    convert = convert / 1E-9
                } else if to == .Milli {
                    convert = convert / 1E-15
                } else if to == .Mega {
                    convert = convert / 0.000001
                } else if to == .Micro {
                    convert = convert / 1E-18
                } else if to == .Giga {
                    convert = convert / 0.001
                } else if to == .Nano {
                    convert = convert / 1E-21
                } else if to == .Tera {
                    convert = convert + 0
                } else if to == .Pico {
                    convert = convert / 1E-24
                } else if to == .Peta {
                    convert = convert / 1000
                } else if to == .Femto {
                    convert = convert / 1E-27
                } else if to == .Exa {
                    convert = convert / 1000000
                } else if to == .Atto {
                    convert = convert / 1E-30
                } else if to == .Zetta {
                    convert = convert / 1000000000
                } else if to == .Zepto {
                    convert = convert / 1E-33
                } else if to == .Yotta {
                    convert = convert / 1000000000000
                } else if to == .Yocto {
                    convert = convert / 1E-36
                }
                
            case .Pico:
                
                if to == .BaseUnit {
                    convert = convert / 1000000000000
                } else if to == .Deca {
                    convert = convert / 10000000000000
                } else if to == .Deci {
                    convert = convert / 100000000000
                } else if to == .Hecto {
                    convert = convert / 100000000000000
                } else if to == .Centi {
                    convert = convert / 10000000000
                } else if to == .Kilo {
                    convert = convert / 1000000000000000
                } else if to == .Milli {
                    convert = convert / 1000000000
                } else if to == .Mega {
                    convert = convert / 1000000000000000000
                } else if to == .Micro {
                    convert = convert / 1000000
                } else if to == .Giga {
                    convert = convert / 1E+21
                } else if to == .Nano {
                    convert = convert / 1000
                } else if to == .Tera {
                    convert = convert / 1E+24
                } else if to == .Pico {
                    convert = convert + 0
                } else if to == .Peta {
                    convert = convert / 1E+27
                } else if to == .Femto {
                    convert = convert / 0.001
                } else if to == .Exa {
                    convert = convert / 1E+30
                } else if to == .Atto {
                    convert = convert / 0.000001
                } else if to == .Zetta {
                    convert = convert / 1E+33
                } else if to == .Zepto {
                    convert = convert / 1E-9
                } else if to == .Yotta {
                    convert = convert / 1E+36
                } else if to == .Yocto {
                    convert = convert / 1E-12
                }
                
            case .Peta:
                
                if to == .BaseUnit {
                    convert = convert / 1E-15
                } else if to == .Deca {
                    convert = convert / 1E-14
                } else if to == .Deci {
                    convert = convert / 1E-16
                } else if to == .Hecto {
                    convert = convert / 1E-13
                } else if to == .Centi {
                    convert = convert / 1E-17
                } else if to == .Kilo {
                    convert = convert / 1E-12
                } else if to == .Milli {
                    convert = convert / 1E-18
                } else if to == .Mega {
                    convert = convert / 1E-9
                } else if to == .Micro {
                    convert = convert / 1E-21
                } else if to == .Giga {
                    convert = convert / 0.000001
                } else if to == .Nano {
                    convert = convert / 1E-24
                } else if to == .Tera {
                    convert = convert / 0.001
                } else if to == .Pico {
                    convert = convert / 1E-27
                } else if to == .Peta {
                    convert = convert + 0
                } else if to == .Femto {
                    convert = convert / 1E-30
                } else if to == .Exa {
                    convert = convert / 1000
                } else if to == .Atto {
                    convert = convert / 1E-33
                } else if to == .Zetta {
                    convert = convert / 1000000
                } else if to == .Zepto {
                    convert = convert / 1E-36
                } else if to == .Yotta {
                    convert = convert / 1000000000
                } else if to == .Yocto {
                    convert = convert / 1E-39
                }
                
                
                
                
                
            case .Femto:
                
                if to == .BaseUnit {
                    convert = convert / 1000000000000000
                } else if to == .Deca {
                    convert = convert / 10000000000000000
                } else if to == .Deci {
                    convert = convert / 100000000000000
                } else if to == .Hecto {
                    convert = convert / 100000000000000000
                } else if to == .Centi {
                    convert = convert / 10000000000000
                } else if to == .Kilo {
                    convert = convert / 1000000000000000000
                } else if to == .Milli {
                    convert = convert / 1000000000000
                } else if to == .Mega {
                    convert = convert / 1E+21
                } else if to == .Micro {
                    convert = convert / 1000000000
                } else if to == .Giga {
                    convert = convert / 1E+24
                } else if to == .Nano {
                    convert = convert / 1000000
                } else if to == .Tera {
                    convert = convert / 1E+27
                } else if to == .Pico {
                    convert = convert / 1000
                } else if to == .Peta {
                    convert = convert / 1E+30
                } else if to == .Femto {
                    convert = convert + 0
                } else if to == .Exa {
                    convert = convert / 1E+33
                } else if to == .Atto {
                    convert = convert / 0.001
                } else if to == .Zetta {
                    convert = convert / 1E+36
                } else if to == .Zepto {
                    convert = convert / 0.000001
                } else if to == .Yotta {
                    convert = convert / 1E+39
                } else if to == .Yocto {
                    convert = convert / 1E-9
                }
                
            case .Exa:
                
                if to == .BaseUnit {
                    convert = convert / 1E-18
                } else if to == .Deca {
                    convert = convert / 1E-17
                } else if to == .Deci {
                    convert = convert / 1E-19
                } else if to == .Hecto {
                    convert = convert / 1E-16
                } else if to == .Centi {
                    convert = convert / 1E-20
                } else if to == .Kilo {
                    convert = convert / 1E-15
                } else if to == .Milli {
                    convert = convert / 1E-21
                } else if to == .Mega {
                    convert = convert / 1E-12
                } else if to == .Micro {
                    convert = convert / 1E-24
                } else if to == .Giga {
                    convert = convert / 1E-9
                } else if to == .Nano {
                    convert = convert / 1E-27
                } else if to == .Tera {
                    convert = convert / 0.000001
                } else if to == .Pico {
                    convert = convert / 1E-30
                } else if to == .Peta {
                    convert = convert / 0.001
                } else if to == .Femto {
                    convert = convert / 1E-33
                } else if to == .Exa {
                    convert = convert + 0
                } else if to == .Atto {
                    convert = convert / 1E-36
                } else if to == .Zetta {
                    convert = convert / 1000
                } else if to == .Zepto {
                    convert = convert / 1E-39
                } else if to == .Yotta {
                    convert = convert / 1000000
                } else if to == .Yocto {
                    convert = convert / 1E-42
                }
                
            case .Atto:
                
                if to == .BaseUnit {
                    convert = convert / 1000000000000000000
                } else if to == .Deca {
                    convert = convert / 10000000000000000000
                } else if to == .Deci {
                    convert = convert / 100000000000000000
                } else if to == .Hecto {
                    convert = convert / 100000000000000000000
                } else if to == .Centi {
                    convert = convert / 10000000000000000
                } else if to == .Kilo {
                    convert = convert / 1E+21
                } else if to == .Milli {
                    convert = convert / 1000000000000000
                } else if to == .Mega {
                    convert = convert / 1E+24
                } else if to == .Micro {
                    convert = convert / 1000000000000
                } else if to == .Giga {
                    convert = convert / 1E+27
                } else if to == .Nano {
                    convert = convert / 1000000000
                } else if to == .Tera {
                    convert = convert / 1E+30
                } else if to == .Pico {
                    convert = convert / 1000000
                } else if to == .Peta {
                    convert = convert / 1E+33
                } else if to == .Femto {
                    convert = convert / 1000
                } else if to == .Exa {
                    convert = convert / 1E+36
                } else if to == .Atto {
                    convert = convert + 0
                } else if to == .Zetta {
                    convert = convert / 1E+39
                } else if to == .Zepto {
                    convert = convert / 0.001
                } else if to == .Yotta {
                    convert = convert / 1E+42
                } else if to == .Yocto {
                    convert = convert / 0.000001
                }
                
            case .Zetta:
                
                if to == .BaseUnit {
                    convert = convert / 1E-21
                } else if to == .Deca {
                    convert = convert / 1E-20
                } else if to == .Deci {
                    convert = convert / 1E-22
                } else if to == .Hecto {
                    convert = convert / 1E-19
                } else if to == .Centi {
                    convert = convert / 1E-23
                } else if to == .Kilo {
                    convert = convert / 1E-18
                } else if to == .Milli {
                    convert = convert / 1E-24
                } else if to == .Mega {
                    convert = convert / 1E-15
                } else if to == .Micro {
                    convert = convert / 1E-27
                } else if to == .Giga {
                    convert = convert / 1E-12
                } else if to == .Nano {
                    convert = convert / 1E-30
                } else if to == .Tera {
                    convert = convert / 1E-9
                } else if to == .Pico {
                    convert = convert / 1E-33
                } else if to == .Peta {
                    convert = convert / 1E-6
                } else if to == .Femto {
                    convert = convert / 1E-36
                } else if to == .Exa {
                    convert = convert / 0.001
                } else if to == .Atto {
                    convert = convert / 1E-39
                } else if to == .Zetta {
                    convert = convert + 0
                } else if to == .Zepto {
                    convert = convert / 1E-42
                } else if to == .Yotta {
                    convert = convert / 1000
                } else if to == .Yocto {
                    convert = convert / 1E-45
                }
                
            case .Zepto:
                
                if to == .BaseUnit {
                    convert = convert / 1E+21
                } else if to == .Deca {
                    convert = convert / 1E+22
                } else if to == .Deci {
                    convert = convert / 100000000000000000000
                } else if to == .Hecto {
                    convert = convert / 1E+23
                } else if to == .Centi {
                    convert = convert / 10000000000000000000
                } else if to == .Kilo {
                    convert = convert / 1E+24
                } else if to == .Milli {
                    convert = convert / 1000000000000000000
                } else if to == .Mega {
                    convert = convert / 1E+27
                } else if to == .Micro {
                    convert = convert / 1000000000000000
                } else if to == .Giga {
                    convert = convert / 1E+30
                } else if to == .Nano {
                    convert = convert / 1000000000000
                } else if to == .Tera {
                    convert = convert / 1E+33
                } else if to == .Pico {
                    convert = convert / 1000000000
                } else if to == .Peta {
                    convert = convert / 1E+36
                } else if to == .Femto {
                    convert = convert / 1000000
                } else if to == .Exa {
                    convert = convert / 1E+39
                } else if to == .Atto {
                    convert = convert / 1000
                } else if to == .Zetta {
                    convert = convert / 1E+42
                } else if to == .Zepto {
                    convert = convert + 0
                } else if to == .Yotta {
                    convert = convert / 1E+45
                } else if to == .Yocto {
                    convert = convert / 0.001
                }
                
                
                
            case .Yotta:
                
                if to == .BaseUnit {
                    convert = convert / 1E-24
                } else if to == .Deca {
                    convert = convert / 1E-23
                } else if to == .Deci {
                    convert = convert / 1E-25
                } else if to == .Hecto {
                    convert = convert / 1E-22
                } else if to == .Centi {
                    convert = convert / 1E-26
                } else if to == .Kilo {
                    convert = convert / 1E-21
                } else if to == .Milli {
                    convert = convert / 1E-27
                } else if to == .Mega {
                    convert = convert / 1E-18
                } else if to == .Micro {
                    convert = convert / 1E-30
                } else if to == .Giga {
                    convert = convert / 1E-15
                } else if to == .Nano {
                    convert = convert / 1E-33
                } else if to == .Tera {
                    convert = convert / 1E-12
                } else if to == .Pico {
                    convert = convert / 1E-36
                } else if to == .Peta {
                    convert = convert / 1E-9
                } else if to == .Femto {
                    convert = convert / 1E-39
                } else if to == .Exa {
                    convert = convert / 0.000001
                } else if to == .Atto {
                    convert = convert / 1E-42
                } else if to == .Zetta {
                    convert = convert / 0.001
                } else if to == .Zepto {
                    convert = convert / 1E-45
                } else if to == .Yotta {
                    convert = convert + 0
                } else if to == .Yocto {
                    convert = convert / 1E-48
                }
                
            case .Yocto:
                
                if to == .BaseUnit {
                    convert = convert / 1E+24
                } else if to == .Deca {
                    convert = convert / 1E+25
                } else if to == .Deci {
                    convert = convert / 1E+23
                } else if to == .Hecto {
                    convert = convert / 1E+26
                } else if to == .Centi {
                    convert = convert / 1E+22
                } else if to == .Kilo {
                    convert = convert / 1E+27
                } else if to == .Milli {
                    convert = convert / 1E+21
                } else if to == .Mega {
                    convert = convert / 1E+30
                } else if to == .Micro {
                    convert = convert / 1000000000000000000
                } else if to == .Giga {
                    convert = convert / 1E+33
                } else if to == .Nano {
                    convert = convert / 1000000000000000
                } else if to == .Tera {
                    convert = convert / 1E+36
                } else if to == .Pico {
                    convert = convert / 1000000000000
                } else if to == .Peta {
                    convert = convert / 1E+39
                } else if to == .Femto {
                    convert = convert / 1000000000
                } else if to == .Exa {
                    convert = convert / 1E+42
                } else if to == .Atto {
                    convert = convert / 1000000
                } else if to == .Zetta {
                    convert = convert / 1E+45
                } else if to == .Zepto {
                    convert = convert / 1000
                } else if to == .Yotta {
                    convert = convert / 1E+48
                } else if to == .Yocto {
                    convert = convert + 0
                }
                
                
                
                
            }
            
            return convert
        }
        
        
        
        
        
        
        
        
        static func fromString(_ string: String) -> prefixUnit? {
            if string == "Base Unit" {
                return .BaseUnit
            } else if string == "Deca (da), 10^1" {
                return .Deca
            } else if string == "Deci (d), 10^-1" {
                return .Deci
            } else if string == "Hetco (h), 10^2" {
                return .Hecto
            } else if string == "Centi (c), 10^-2" {
                return .Centi
            } else if string == "Kilo (k), 10^3" {
                return .Kilo
            } else if string == "Milli (m), 10^-3" {
                return .Milli
            } else if string == "Mega (M), 10^6" {
                return .Mega
            } else if string == "Micro (μ), 10^-6" {
                return .Micro
            } else if string == "Giga (G), 10^9"{
                return .Giga
            } else if string == "Nano (n), 10^-9" {
                return .Nano
            } else if string == "Tera (T), 10^12" {
                return .Tera
            } else if string == "Pico (p), 10^-12" {
                return .Pico
            } else if string == "Peta (P), 10^15" {
                return .Peta
            } else if string == "Femto (f), 10^-15" {
                return .Femto
            } else if string == "Exa (E), 10^18" {
                return .Exa
            } else if string == "Atto (a), 10^-18" {
                return .Atto
            } else if string == "Zetta (Z), 10^21" {
                return .Zetta
            } else if string == "Zepto (z), 10^-21" {
                return .Zepto
            } else if string == "Yotta (Y), 10^24" {
                return .Yotta
            } else if string == "Yocto (y), 10^-24" {
                return .Yocto
            }
                
                
                
                
            else {
                return nil
            }
        }
        
        static func allCases() -> [String] {
            var i = 0
            var list = [String]()
            while let unit = prefixUnit(rawValue: i) {
                list.append(unit.description())
                i = i + 1
            }
            return list
        }
        
        
    }
    // -------------------------------------------
    // ------------------ Density ------------------
    
    enum densityUnit: Int {
        
        
        
        
        case kg_per_mCubed = 0, g_per_liter, g_per_cmCubed, oz_per_inCubed, oz_per_imperialGal, oz_per_usGal, slugs_per_ftCubed, lbm_per_ftCubed, lbm_per_inCubed, lbm_per_ydCubed, lbm_per_imperialGal, lbm_per_usGal, longImperialTon_per_yd3, shortUSTon_per_yd3
        
        func description() -> String {
            switch self {
            case .kg_per_mCubed:
                return "kg/m^3"
            case .g_per_liter:
                return "g/L"
            case .g_per_cmCubed:
                return "g/cm^3"
            case .oz_per_inCubed:
                return "oz/in^3"
            case .oz_per_imperialGal:
                return "oz/gal (Imperial)"
            case .oz_per_usGal:
                return "oz/gal (US)"
            case .slugs_per_ftCubed:
                return "slugs/ft^3"
            case .lbm_per_ftCubed:
                return "lbm/ft^3"
            case .lbm_per_inCubed:
                return "lbm/in^3"
            case .lbm_per_ydCubed:
                return "lbm/yd^3"
            case .lbm_per_imperialGal:
                return "lbm/gal (Imperial)"
            case .lbm_per_usGal:
                return "lbm/gal (US)"
            case .longImperialTon_per_yd3:
                return "long ton/yd^3 (Imperial)"
            case .shortUSTon_per_yd3:
                return "short ton/yd^3 (US)"
                
            }
        }
        
        
        func convertTo(unit to: densityUnit, value val: Double) -> Double {
            var convert = val
            //https://www.engineeringtoolbox.com/density-converter-d_1038.html
            
            
            
            
            
            
            
            
            
            switch self {
                
                
            case .kg_per_mCubed:
                
                if to == .kg_per_mCubed {
                    convert = convert + 0
                } else if to == .g_per_liter {
                    convert = convert * 1
                } else if to == .g_per_cmCubed {
                    convert = convert * 0.001
                } else if to == .oz_per_inCubed {
                    convert = convert * 0.000578
                } else if to == .oz_per_imperialGal {
                    convert = convert * 0.160358
                } else if to == .oz_per_usGal {
                    convert = convert * 0.133526
                } else if to == .slugs_per_ftCubed {
                    convert = convert * 0.00194
                } else if to == .lbm_per_ftCubed {
                    convert = convert * 0.062428
                } else if to == .lbm_per_inCubed {
                    convert = convert * 0.0000361
                } else if to == .lbm_per_ydCubed {
                    convert = convert * 1.68555
                } else if to == .lbm_per_imperialGal {
                    convert = convert * 0.0100224
                } else if to == .lbm_per_usGal {
                    convert = convert * 0.0083454
                } else if to == .longImperialTon_per_yd3 {
                    convert = convert * 0.0007525
                } else if to == .shortUSTon_per_yd3 {
                    convert = convert * 0.000842777
                }
                
            case .g_per_liter:
                
                if to == .kg_per_mCubed {
                    convert = convert * 1
                } else if to == .g_per_liter {
                    convert = convert + 0
                } else if to == .g_per_cmCubed {
                    convert = convert * 0.001
                } else if to == .oz_per_inCubed {
                    convert = convert * 0.000578
                } else if to == .oz_per_imperialGal {
                    convert = convert * 0.160358
                } else if to == .oz_per_usGal {
                    convert = convert * 0.133526
                } else if to == .slugs_per_ftCubed {
                    convert = convert * 0.00194
                } else if to == .lbm_per_ftCubed {
                    convert = convert * 0.062428
                } else if to == .lbm_per_inCubed {
                    convert = convert * 0.0000361
                } else if to == .lbm_per_ydCubed {
                    convert = convert * 1.68555
                } else if to == .lbm_per_imperialGal {
                    convert = convert * 0.0100224
                } else if to == .lbm_per_usGal {
                    convert = convert * 0.0083454
                } else if to == .longImperialTon_per_yd3 {
                    convert = convert * 0.0007525
                } else if to == .shortUSTon_per_yd3 {
                    convert = convert * 0.000842777
                }
                
            case .g_per_cmCubed:
                
                if to == .kg_per_mCubed {
                    convert = convert * 1000
                } else if to == .g_per_liter {
                    convert = convert * 1000
                } else if to == .g_per_cmCubed {
                    convert = convert + 0
                } else if to == .oz_per_inCubed {
                    convert = convert * 0.57804
                } else if to == .oz_per_imperialGal {
                    convert = convert * 160.358
                } else if to == .oz_per_usGal {
                    convert = convert * 133.526
                } else if to == .slugs_per_ftCubed {
                    convert = convert * 1.94
                } else if to == .lbm_per_ftCubed {
                    convert = convert * 62.428
                } else if to == .lbm_per_inCubed {
                    convert = convert * 0.036127
                } else if to == .lbm_per_ydCubed {
                    convert = convert * 1685.55
                } else if to == .lbm_per_imperialGal {
                    convert = convert * 10.0224
                } else if to == .lbm_per_usGal {
                    convert = convert * 8.3454
                } else if to == .longImperialTon_per_yd3 {
                    convert = convert * 0.752548
                } else if to == .shortUSTon_per_yd3 {
                    convert = convert * 0.842777
                }
                
            case .oz_per_inCubed:
                
                if to == .kg_per_mCubed {
                    convert = convert * 1729.9840841
                } else if to == .g_per_liter {
                    convert = convert * 1729.9840841
                } else if to == .g_per_cmCubed {
                    convert = convert * 1.7299841
                } else if to == .oz_per_inCubed {
                    convert = convert + 0
                } else if to == .oz_per_imperialGal {
                    convert = convert * 277.4167878
                } else if to == .oz_per_usGal {
                    convert = convert * 230.9978548
                } else if to == .slugs_per_ftCubed {
                    convert = convert * 3.3561691
                } else if to == .lbm_per_ftCubed {
                    convert = convert * 107.9994464
                } else if to == .lbm_per_inCubed {
                    convert = convert * 0.0624991
                } else if to == .lbm_per_ydCubed {
                    convert = convert * 2915.974673
                } else if to == .lbm_per_imperialGal {
                    convert = convert * 17.3385925
                } else if to == .lbm_per_usGal {
                    convert = convert * 14.4374092
                } else if to == .longImperialTon_per_yd3 {
                    convert = convert * 1.3018961
                } else if to == .shortUSTon_per_yd3 {
                    convert = convert * 1.458
                }
                
            case .oz_per_imperialGal:
                
                if to == .kg_per_mCubed {
                    convert = convert * 6.2360468
                } else if to == .g_per_liter {
                    convert = convert * 6.2360468
                } else if to == .g_per_cmCubed {
                    convert = convert * 0.006236
                } else if to == .oz_per_inCubed {
                    convert = convert * 0.0036047
                } else if to == .oz_per_imperialGal {
                    convert = convert + 0
                } else if to == .oz_per_usGal {
                    convert = convert * 0.8326744
                } else if to == .slugs_per_ftCubed {
                    convert = convert * 0.0120979
                } else if to == .lbm_per_ftCubed {
                    convert = convert * 0.3893039
                } else if to == .lbm_per_inCubed {
                    convert = convert * 0.0002253
                } else if to == .lbm_per_ydCubed {
                    convert = convert * 10.5111688
                } else if to == .lbm_per_imperialGal {
                    convert = convert * 0.0625002
                } else if to == .lbm_per_usGal {
                    convert = convert * 0.0520423
                } else if to == .longImperialTon_per_yd3 {
                    convert = convert * 0.0046929
                } else if to == .shortUSTon_per_yd3 {
                    convert = convert * (1/0.0059460612058264) * (3.125e-5/1)
                }
                
            case .oz_per_usGal:
                
                if to == .kg_per_mCubed {
                    convert = convert * 7.4891781
                } else if to == .g_per_liter {
                    convert = convert * 7.4891781
                } else if to == .g_per_cmCubed {
                    convert = convert * 0.0074892
                } else if to == .oz_per_inCubed {
                    convert = convert * 0.004329
                } else if to == .oz_per_imperialGal {
                    convert = convert * 1.2009496
                } else if to == .oz_per_usGal {
                    convert = convert + 0
                } else if to == .slugs_per_ftCubed {
                    convert = convert * 0.014529
                } else if to == .lbm_per_ftCubed {
                    convert = convert * 0.4675344
                } else if to == .lbm_per_inCubed {
                    convert = convert * 0.0002706
                } else if to == .lbm_per_ydCubed {
                    convert = convert * 12.6233842
                } else if to == .lbm_per_imperialGal {
                    convert = convert * 0.0750595
                } else if to == .lbm_per_usGal {
                    convert = convert * 0.0625002
                } else if to == .longImperialTon_per_yd3 {
                    convert = convert * 0.005636
                } else if to == .shortUSTon_per_yd3 {
                    convert = convert * 0.00631169
                }
                
            case .slugs_per_ftCubed:
                
                if to == .kg_per_mCubed {
                    convert = convert * 515.4639175
                } else if to == .g_per_liter {
                    convert = convert * 515.4639175
                } else if to == .g_per_cmCubed {
                    convert = convert * 0.5154639
                } else if to == .oz_per_inCubed {
                    convert = convert * 0.2979588
                } else if to == .oz_per_imperialGal {
                    convert = convert * 82.6587629
                } else if to == .oz_per_usGal {
                    convert = convert * 68.8278351
                } else if to == .slugs_per_ftCubed {
                    convert = convert + 0
                } else if to == .lbm_per_ftCubed {
                    convert = convert * 32.1793814
                } else if to == .lbm_per_inCubed {
                    convert = convert * 0.0186222
                } else if to == .lbm_per_ydCubed {
                    convert = convert * 868.8402062
                } else if to == .lbm_per_imperialGal {
                    convert = convert * 5.1661856
                } else if to == .lbm_per_usGal {
                    convert = convert * 4.3017526
                } else if to == .longImperialTon_per_yd3 {
                    convert = convert * 0.3879113
                } else if to == .shortUSTon_per_yd3 {
                    convert = convert * 0.43435
                }
                
            case .lbm_per_ftCubed:
                
                if to == .kg_per_mCubed {
                    convert = convert * 16.0184533
                } else if to == .g_per_liter {
                    convert = convert * 16.0184533
                } else if to == .g_per_cmCubed {
                    convert = convert * 0.0160185
                } else if to == .oz_per_inCubed {
                    convert = convert * 0.0092593
                } else if to == .oz_per_imperialGal {
                    convert = convert * 2.5686871
                } else if to == .oz_per_usGal {
                    convert = convert * 2.13888
                } else if to == .slugs_per_ftCubed {
                    convert = convert * 0.0310758
                } else if to == .lbm_per_ftCubed {
                    convert = convert + 0
                } else if to == .lbm_per_inCubed {
                    convert = convert * 0.0005787
                } else if to == .lbm_per_ydCubed {
                    convert = convert * 26.9999039
                } else if to == .lbm_per_imperialGal {
                    convert = convert * 0.1605433
                } else if to == .lbm_per_usGal {
                    convert = convert * 0.1336804
                } else if to == .longImperialTon_per_yd3 {
                    convert = convert * 0.0120547
                } else if to == .shortUSTon_per_yd3 {
                    convert = convert * 0.0135
                }
                
                
            case .lbm_per_inCubed:
                
                if to == .kg_per_mCubed {
                    convert = convert * 27680.1284358
                } else if to == .g_per_liter {
                    convert = convert * 27680.1284358
                } else if to == .g_per_cmCubed {
                    convert = convert * 27.6801284
                } else if to == .oz_per_inCubed {
                    convert = convert * 16.0002214
                } else if to == .oz_per_imperialGal {
                    convert = convert * 4438.7300357
                } else if to == .oz_per_usGal {
                    convert = convert * 3696.0168295
                } else if to == .slugs_per_ftCubed {
                    convert = convert * 53.6994492
                } else if to == .lbm_per_ftCubed {
                    convert = convert * 1728.015058
                } else if to == .lbm_per_inCubed {
                    convert = convert + 0
                } else if to == .lbm_per_ydCubed {
                    convert = convert * 46656.240485
                } else if to == .lbm_per_imperialGal {
                    convert = convert * 277.4213192
                } else if to == .lbm_per_usGal {
                    convert = convert * 231.0017438
                } else if to == .longImperialTon_per_yd3 {
                    convert = convert * 20.8306253
                } else if to == .shortUSTon_per_yd3 {
                    convert = convert * 23.328
                }
                
            case .lbm_per_ydCubed:
                
                if to == .kg_per_mCubed {
                    convert = convert * 0.5932782
                } else if to == .g_per_liter {
                    convert = convert * 0.5932782
                } else if to == .g_per_cmCubed {
                    convert = convert * 0.0005933
                } else if to == .oz_per_inCubed {
                    convert = convert * 0.0003429
                } else if to == .oz_per_imperialGal {
                    convert = convert * 0.0951369
                } else if to == .oz_per_usGal {
                    convert = convert * 0.0792181
                } else if to == .slugs_per_ftCubed {
                    convert = convert * 0.001151
                } else if to == .lbm_per_ftCubed {
                    convert = convert * 0.0370372
                } else if to == .lbm_per_inCubed {
                    convert = convert * 0.0000214
                } else if to == .lbm_per_ydCubed {
                    convert = convert + 0
                } else if to == .lbm_per_imperialGal {
                    convert = convert * 0.0059461
                } else if to == .lbm_per_usGal {
                    convert = convert * 0.0049511
                } else if to == .longImperialTon_per_yd3 {
                    convert = convert * 0.0004465
                } else if to == .shortUSTon_per_yd3 {
                    convert = convert * 0.0005
                }
                
            case .lbm_per_imperialGal:
                
                if to == .kg_per_mCubed {
                    convert = convert * 99.7765006
                } else if to == .g_per_liter {
                    convert = convert * 99.7765006
                } else if to == .g_per_cmCubed {
                    convert = convert * 0.0997765
                } else if to == .oz_per_inCubed {
                    convert = convert * 0.0576748
                } else if to == .oz_per_imperialGal {
                    convert = convert * 15.9999601
                } else if to == .oz_per_usGal {
                    convert = convert * 13.322757
                } else if to == .slugs_per_ftCubed {
                    convert = convert * 0.1935664
                } else if to == .lbm_per_ftCubed {
                    convert = convert * 6.2288474
                } else if to == .lbm_per_inCubed {
                    convert = convert * 0.0036046
                } else if to == .lbm_per_ydCubed {
                    convert = convert * 168.1782807
                } else if to == .lbm_per_imperialGal {
                    convert = convert + 0
                } else if to == .lbm_per_usGal {
                    convert = convert * 0.8326748
                } else if to == .longImperialTon_per_yd3 {
                    convert = convert * 0.0750866
                } else if to == .shortUSTon_per_yd3 {
                    convert = convert * (1/0.0059460612058264) * (0.0005/1)
                }
                
            case .lbm_per_usGal:
                
                if to == .kg_per_mCubed {
                    convert = convert * 119.8264912
                } else if to == .g_per_liter {
                    convert = convert * 119.8264912
                } else if to == .g_per_cmCubed {
                    convert = convert * 0.1198265
                } else if to == .oz_per_inCubed {
                    convert = convert * 0.0692645
                } else if to == .oz_per_imperialGal {
                    convert = convert * 19.2151365
                } else if to == .oz_per_usGal {
                    convert = convert * 15.9999521
                } else if to == .slugs_per_ftCubed {
                    convert = convert * 0.2324634
                } else if to == .lbm_per_ftCubed {
                    convert = convert * 7.4805282
                } else if to == .lbm_per_inCubed {
                    convert = convert * 0.004329
                } else if to == .lbm_per_ydCubed {
                    convert = convert * 201.9735423
                } else if to == .lbm_per_imperialGal {
                    convert = convert * 1.200949
                } else if to == .lbm_per_usGal {
                    convert = convert + 0
                } else if to == .longImperialTon_per_yd3 {
                    convert = convert * 0.0901752
                } else if to == .shortUSTon_per_yd3 {
                    convert = convert * 0.100987
                }
                
            case .longImperialTon_per_yd3:
                
                if to == .kg_per_mCubed {
                    convert = convert * 1328.94
                } else if to == .g_per_liter {
                    convert = convert * 1328.94
                } else if to == .g_per_cmCubed {
                    convert = convert * 1.32894
                } else if to == .oz_per_inCubed {
                    convert = convert * 0.768176
                } else if to == .oz_per_imperialGal {
                    convert = convert * 213.107
                } else if to == .oz_per_usGal {
                    convert = convert * 177.449
                } else if to == .slugs_per_ftCubed {
                    convert = convert * (69.6213/1) * (1/27)
                } else if to == .lbm_per_ftCubed {
                    convert = convert * 82.9630
                } else if to == .lbm_per_inCubed {
                    convert = convert * 0.0480110
                } else if to == .lbm_per_ydCubed {
                    convert = convert * 2240
                } else if to == .lbm_per_imperialGal {
                    convert = convert * 13.3192
                } else if to == .lbm_per_usGal {
                    convert = convert * 11.0905
                } else if to == .longImperialTon_per_yd3 {
                    convert = convert + 0
                } else if to == .shortUSTon_per_yd3 {
                    convert = convert * (1.12/1)
                }
                
            case .shortUSTon_per_yd3:
                
                if to == .kg_per_mCubed {
                    convert = convert / 0.000842777
                } else if to == .g_per_liter {
                    convert = convert / 0.000842777
                } else if to == .g_per_cmCubed {
                    convert = convert / 0.842777
                } else if to == .oz_per_inCubed {
                    convert = convert / 1.458
                } else if to == .oz_per_imperialGal {
                    convert = convert / (1/0.0059460612058264) / (3.125e-5/1)
                } else if to == .oz_per_usGal {
                    convert = convert / 0.00631169
                } else if to == .slugs_per_ftCubed {
                    convert = convert / 0.43435
                } else if to == .lbm_per_ftCubed {
                    convert = convert / 0.0135
                } else if to == .lbm_per_inCubed {
                    convert = convert / 23.328
                } else if to == .lbm_per_ydCubed {
                    convert = convert / 0.0005
                } else if to == .lbm_per_imperialGal {
                    convert = convert / (1/0.0059460612058264) / (0.0005/1)
                } else if to == .lbm_per_usGal {
                    convert = convert / 0.100987
                } else if to == .longImperialTon_per_yd3 {
                    convert = convert / (1.12/1)
                } else if to == .shortUSTon_per_yd3 {
                    convert = convert + 0
                }
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
            }
            
            return convert
        }
        
        
        
        
        
        
        
        
        static func fromString(_ string: String) -> densityUnit? {
            
            
            if string == "kg/m^3" {
                return .kg_per_mCubed
            } else if string == "g/L" {
                return .g_per_liter
            } else if string == "g/cm^3" {
                return .g_per_cmCubed
            } else if string == "oz/in^3" {
                return .oz_per_inCubed
            } else if string == "oz/gal (Imperial)" {
                return .oz_per_imperialGal
            } else if string == "oz/gal (US)" {
                return .oz_per_usGal
            } else if string == "slugs/ft^3" {
                return .slugs_per_ftCubed
            } else if string == "lbm/ft^3" {
                return .lbm_per_ftCubed
            } else if string == "lbm/in^3" {
                return .lbm_per_inCubed
            } else if string == "lbm/yd^3" {
                return .lbm_per_ydCubed
            } else if string == "lbm/gal (Imperial)" {
                return .lbm_per_imperialGal
            } else if string == "lbm/gal (US)" {
                return .lbm_per_usGal
            } else if string == "long ton/yd^3 (Imperial)" {
                return .longImperialTon_per_yd3
            } else if string == "short ton/yd^3 (US)" {
                return .shortUSTon_per_yd3
            }
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
            else {
                return nil
            }
        }
        
        static func allCases() -> [String] {
            var i = 0
            var list = [String]()
            while let unit = densityUnit(rawValue: i) {
                list.append(unit.description())
                i = i + 1
            }
            return list
        }
        
        
    }
    // -------------------------------------------
    // ------------------ Volume ------------------
    
    enum volumeUnit: Int {
        
        
        
        
        case cubicMeter = 0, Liter, milliLiter, cubicFoot, cubicInch, usLiquidGallon, imperialGallon, usLiquidQuart, imperialQuart, usLiquidPint, imperialPint, usLegalCup, imperialCup, usFluidOunce, imperialFluidOunce, usTablespoon, imperialTablespoon, usTeaspoon, imperialTeaspoon
        
        func description() -> String {
            switch self {
            case .cubicMeter:
                return "Cubic Meter (m^3)"
            case .Liter:
                return "Liter (L)"
            case .milliLiter:
                return "Milliliter (mL)"
            case .cubicFoot:
                return "Cubic Foot (ft^3)"
            case .cubicInch:
                return "Cubic Inch (in^3)"
            case .usLiquidGallon:
                return "Gallon (US gal)"
            case .imperialGallon:
                return "Gallon (imp gal)"
            case .usLiquidQuart:
                return "Quart (US qt.)"
            case .imperialQuart:
                return "Quart (imp qt.)"
            case .usLiquidPint:
                return "Pint (US pt.)"
            case .imperialPint:
                return "Pint (imp pt.)"
            case .usLegalCup:
                return "Cup (US cup)"
            case .imperialCup:
                return "Cup (imp cup)"
            case .usFluidOunce:
                return "Ounce (US fl. oz.)"
            case .imperialFluidOunce:
                return "Ounce (imp fl. oz.)"
            case .usTablespoon:
                return "Tablespoon (US tbsp.)"
            case .imperialTablespoon:
                return "Tablespoon (imp tbsp.)"
            case .usTeaspoon:
                return "Teaspoon (US tsp.)"
            case .imperialTeaspoon:
                return "Teaspoon (imp tsp.)"
                
                
                
                
                
                
                
                
                
                
                
                
                
                
            }
        }
        
        
        func convertTo(unit to: volumeUnit, value val: Double) -> Double {
            var convert = val
            //https://www.engineeringtoolbox.com/density-converter-d_1038.html
            
            
            
            
            
            
            
            
            
            switch self {
                
                
            case .cubicMeter:
                
                if to == .cubicMeter {
                    convert = convert + 0
                } else if to == .Liter {
                    convert = convert * 1000
                } else if to == .milliLiter {
                    convert = convert * 1e+6
                } else if to == .cubicFoot {
                    convert = convert * 35.3147
                } else if to == .cubicInch {
                    convert = convert * 61023.7
                } else if to == .usLiquidGallon {
                    convert = convert * 264.172
                } else if to == .imperialGallon {
                    convert = convert * 219.969
                }  else if to == .usLiquidQuart {
                    convert = convert * 1056.69
                } else if to == .imperialQuart {
                    convert = convert * 879.877
                } else if to == .usLiquidPint {
                    convert = convert * 2113.38
                } else if to == .imperialPint {
                    convert = convert * 1759.75
                } else if to == .usLegalCup {
                    convert = convert * 4166.67
                } else if to == .imperialCup {
                    convert = convert * 3519.51
                } else if to == .usFluidOunce {
                    convert = convert * 33814
                } else if to == .imperialFluidOunce {
                    convert = convert * 35195.1
                } else if to == .usTablespoon {
                    convert = convert * 67628
                } else if to == .imperialTablespoon {
                    convert = convert * 56312.1
                } else if to == .usTeaspoon {
                    convert = convert * 202884
                } else if to == .imperialTeaspoon {
                    convert = convert * 168936
                }
                
            case .Liter:
                
                if to == .cubicMeter {
                    convert = convert * 0.001
                } else if to == .Liter {
                    convert = convert + 0
                } else if to == .milliLiter {
                    convert = convert * 1000
                } else if to == .cubicFoot {
                    convert = convert * 0.0353147
                } else if to == .cubicInch {
                    convert = convert * 61.0237
                } else if to == .usLiquidGallon {
                    convert = convert * 0.264172
                } else if to == .imperialGallon {
                    convert = convert * 0.219969
                }  else if to == .usLiquidQuart {
                    convert = convert * 1.05669
                } else if to == .imperialQuart {
                    convert = convert * 0.879877
                } else if to == .usLiquidPint {
                    convert = convert * 2.11338
                } else if to == .imperialPint {
                    convert = convert * 1.75975
                } else if to == .usLegalCup {
                    convert = convert * 4.16667
                } else if to == .imperialCup {
                    convert = convert * 3.51951
                } else if to == .usFluidOunce {
                    convert = convert * 33.814
                } else if to == .imperialFluidOunce {
                    convert = convert * 35.1951
                } else if to == .usTablespoon {
                    convert = convert * 67.628
                } else if to == .imperialTablespoon {
                    convert = convert * 56.3121
                } else if to == .usTeaspoon {
                    convert = convert * 202.884
                } else if to == .imperialTeaspoon {
                    convert = convert * 168.936
                }
                
            case .milliLiter:
                
                if to == .cubicMeter {
                    convert = convert * 1e-6
                } else if to == .Liter {
                    convert = convert * 0.001
                } else if to == .milliLiter {
                    convert = convert + 0
                } else if to == .cubicFoot {
                    convert = convert * 3.5315e-5
                } else if to == .cubicInch {
                    convert = convert * 0.0610237
                } else if to == .usLiquidGallon {
                    convert = convert * 0.000264172
                } else if to == .imperialGallon {
                    convert = convert * 0.000219969
                }  else if to == .usLiquidQuart {
                    convert = convert * 0.00105669
                } else if to == .imperialQuart {
                    convert = convert * 0.000879877
                } else if to == .usLiquidPint {
                    convert = convert * 0.00211338
                } else if to == .imperialPint {
                    convert = convert * 0.00175975
                } else if to == .usLegalCup {
                    convert = convert * 0.00416667
                } else if to == .imperialCup {
                    convert = convert * 0.00351951
                } else if to == .usFluidOunce {
                    convert = convert * 0.033814
                } else if to == .imperialFluidOunce {
                    convert = convert * 0.0351951
                } else if to == .usTablespoon {
                    convert = convert * 0.067628
                } else if to == .imperialTablespoon {
                    convert = convert * 0.0563121
                } else if to == .usTeaspoon {
                    convert = convert * 0.202884
                } else if to == .imperialTeaspoon {
                    convert = convert * 0.168936
                }
                
            case .cubicFoot:
                
                if to == .cubicMeter {
                    convert = convert * 0.0283168
                } else if to == .Liter {
                    convert = convert * 28.3168
                } else if to == .milliLiter {
                    convert = convert * 28316.8
                } else if to == .cubicFoot {
                    convert = convert + 0
                } else if to == .cubicInch {
                    convert = convert * 1728
                } else if to == .usLiquidGallon {
                    convert = convert * 7.48052
                } else if to == .imperialGallon {
                    convert = convert * 6.22884
                }  else if to == .usLiquidQuart {
                    convert = convert * 29.9221
                } else if to == .imperialQuart {
                    convert = convert * 24.9153
                } else if to == .usLiquidPint {
                    convert = convert * 59.8442
                } else if to == .imperialPint {
                    convert = convert * 49.8307
                } else if to == .usLegalCup {
                    convert = convert * 117.987
                } else if to == .imperialCup {
                    convert = convert * 99.6614
                } else if to == .usFluidOunce {
                    convert = convert * 957.506
                } else if to == .imperialFluidOunce {
                    convert = convert * 996.614
                } else if to == .usTablespoon {
                    convert = convert * 1915.01
                } else if to == .imperialTablespoon {
                    convert = convert * 1594.58
                } else if to == .usTeaspoon {
                    convert = convert * 5745.04
                } else if to == .imperialTeaspoon {
                    convert = convert * 4783.74
                }
                
            case .cubicInch:
                
                if to == .cubicMeter {
                    convert = convert * 1.6387e-5
                } else if to == .Liter {
                    convert = convert * 0.0163871
                } else if to == .milliLiter {
                    convert = convert * 16.3871
                } else if to == .cubicFoot {
                    convert = convert * 0.000578704
                } else if to == .cubicInch {
                    convert = convert + 0
                } else if to == .usLiquidGallon {
                    convert = convert * 0.004329
                } else if to == .imperialGallon {
                    convert = convert * 0.00360465
                }  else if to == .usLiquidQuart {
                    convert = convert * 0.017316
                } else if to == .imperialQuart {
                    convert = convert * 0.0144186
                } else if to == .usLiquidPint {
                    convert = convert * 0.034632
                } else if to == .imperialPint {
                    convert = convert * 0.0288372
                } else if to == .usLegalCup {
                    convert = convert * 0.0682794
                } else if to == .imperialCup {
                    convert = convert * 0.0576744
                } else if to == .usFluidOunce {
                    convert = convert * 0.554113
                } else if to == .imperialFluidOunce {
                    convert = convert * 0.576744
                } else if to == .usTablespoon {
                    convert = convert * 1.10823
                } else if to == .imperialTablespoon {
                    convert = convert * 0.92279
                } else if to == .usTeaspoon {
                    convert = convert * 3.32468
                } else if to == .imperialTeaspoon {
                    convert = convert * 2.76837
                }
                
            case .usLiquidGallon:
                
                if to == .cubicMeter {
                    convert = convert * 0.00378541
                } else if to == .Liter {
                    convert = convert * 3.78541
                } else if to == .milliLiter {
                    convert = convert * 3785.41
                } else if to == .cubicFoot {
                    convert = convert * 0.133681
                } else if to == .cubicInch {
                    convert = convert * 231
                } else if to == .usLiquidGallon {
                    convert = convert + 0
                } else if to == .imperialGallon {
                    convert = convert * 0.832674
                }  else if to == .usLiquidQuart {
                    convert = convert * 4
                } else if to == .imperialQuart {
                    convert = convert * 3.3307
                } else if to == .usLiquidPint {
                    convert = convert * 8
                } else if to == .imperialPint {
                    convert = convert * 6.66139
                } else if to == .usLegalCup {
                    convert = convert * 15.7725
                } else if to == .imperialCup {
                    convert = convert * 13.3228
                } else if to == .usFluidOunce {
                    convert = convert * 128
                } else if to == .imperialFluidOunce {
                    convert = convert * 133.228
                } else if to == .usTablespoon {
                    convert = convert * 256
                } else if to == .imperialTablespoon {
                    convert = convert * 213.165
                } else if to == .usTeaspoon {
                    convert = convert * 768
                } else if to == .imperialTeaspoon {
                    convert = convert * 639.494
                }
                
            case .imperialGallon:
                
                if to == .cubicMeter {
                    convert = convert * 0.00454609
                } else if to == .Liter {
                    convert = convert * 4.54609
                } else if to == .milliLiter {
                    convert = convert * 4546.09
                } else if to == .cubicFoot {
                    convert = convert * 0.160544
                } else if to == .cubicInch {
                    convert = convert * 277.419
                } else if to == .usLiquidGallon {
                    convert = convert * 1.20095
                } else if to == .imperialGallon {
                    convert = convert + 0
                }  else if to == .usLiquidQuart {
                    convert = convert * 4.8038
                } else if to == .imperialQuart {
                    convert = convert * 4
                } else if to == .usLiquidPint {
                    convert = convert * 9.6076
                } else if to == .imperialPint {
                    convert = convert * 8
                } else if to == .usLegalCup {
                    convert = convert * 18.942
                } else if to == .imperialCup {
                    convert = convert * 16
                } else if to == .usFluidOunce {
                    convert = convert * 153.722
                } else if to == .imperialFluidOunce {
                    convert = convert * 160
                } else if to == .usTablespoon {
                    convert = convert * 307.443
                } else if to == .imperialTablespoon {
                    convert = convert * 256
                } else if to == .usTeaspoon {
                    convert = convert * 922.33
                } else if to == .imperialTeaspoon {
                    convert = convert * 768
                }
                
            case .usLiquidQuart:
                
                if to == .cubicMeter {
                    convert = convert * 0.000946353
                } else if to == .Liter {
                    convert = convert * 0.946353
                } else if to == .milliLiter {
                    convert = convert * 946.353
                } else if to == .cubicFoot {
                    convert = convert * 0.0334201
                } else if to == .cubicInch {
                    convert = convert * 57.75
                } else if to == .usLiquidGallon {
                    convert = convert * 0.25
                } else if to == .imperialGallon {
                    convert = convert * 0.208169
                }  else if to == .usLiquidQuart {
                    convert = convert + 0
                } else if to == .imperialQuart {
                    convert = convert * 0.832674
                } else if to == .usLiquidPint {
                    convert = convert * 2
                } else if to == .imperialPint {
                    convert = convert * 1.66535
                } else if to == .usLegalCup {
                    convert = convert * 3.94314
                } else if to == .imperialCup {
                    convert = convert * 3.3307
                } else if to == .usFluidOunce {
                    convert = convert * 32
                } else if to == .imperialFluidOunce {
                    convert = convert * 33.307
                } else if to == .usTablespoon {
                    convert = convert * 64
                } else if to == .imperialTablespoon {
                    convert = convert * 53.2911
                } else if to == .usTeaspoon {
                    convert = convert * 192
                } else if to == .imperialTeaspoon {
                    convert = convert * 159.873
                }
                
            case .imperialQuart:
                
                if to == .cubicMeter {
                    convert = convert * 0.00113652
                } else if to == .Liter {
                    convert = convert * 1.13652
                } else if to == .milliLiter {
                    convert = convert * 1136.52
                } else if to == .cubicFoot {
                    convert = convert * 0.0401359
                } else if to == .cubicInch {
                    convert = convert * 69.3549
                } else if to == .usLiquidGallon {
                    convert = convert * 0.300237
                } else if to == .imperialGallon {
                    convert = convert * 0.25
                }  else if to == .usLiquidQuart {
                    convert = convert * 1.20095
                } else if to == .imperialQuart {
                    convert = convert + 0
                } else if to == .usLiquidPint {
                    convert = convert * 2.4019
                } else if to == .imperialPint {
                    convert = convert * 2
                } else if to == .usLegalCup {
                    convert = convert * 4.73551
                } else if to == .imperialCup {
                    convert = convert * 4
                } else if to == .usFluidOunce {
                    convert = convert * 38.4304
                } else if to == .imperialFluidOunce {
                    convert = convert * 40
                } else if to == .usTablespoon {
                    convert = convert * 76.8608
                } else if to == .imperialTablespoon {
                    convert = convert * 64
                } else if to == .usTeaspoon {
                    convert = convert * 230.582
                } else if to == .imperialTeaspoon {
                    convert = convert * 192
                }
                
            case .usLiquidPint:
                
                if to == .cubicMeter {
                    convert = convert * 0.000473176
                } else if to == .Liter {
                    convert = convert * 0.473176
                } else if to == .milliLiter {
                    convert = convert * 473.176
                } else if to == .cubicFoot {
                    convert = convert * 0.0167101
                } else if to == .cubicInch {
                    convert = convert * 28.875
                } else if to == .usLiquidGallon {
                    convert = convert * 0.125
                } else if to == .imperialGallon {
                    convert = convert * 0.104084
                }  else if to == .usLiquidQuart {
                    convert = convert * 0.5
                } else if to == .imperialQuart {
                    convert = convert * 0.416337
                } else if to == .usLiquidPint {
                    convert = convert + 0
                } else if to == .imperialPint {
                    convert = convert * 0.832674
                } else if to == .usLegalCup {
                    convert = convert * 1.97157
                } else if to == .imperialCup {
                    convert = convert * 1.66535
                } else if to == .usFluidOunce {
                    convert = convert * 16
                } else if to == .imperialFluidOunce {
                    convert = convert * 16.6535
                } else if to == .usTablespoon {
                    convert = convert * 32
                } else if to == .imperialTablespoon {
                    convert = convert * 26.6456
                } else if to == .usTeaspoon {
                    convert = convert * 96
                } else if to == .imperialTeaspoon {
                    convert = convert * 79.9367
                }
                
            case .imperialPint:
                
                if to == .cubicMeter {
                    convert = convert * 0.000568261
                } else if to == .Liter {
                    convert = convert * 0.568261
                } else if to == .milliLiter {
                    convert = convert * 568.261
                } else if to == .cubicFoot {
                    convert = convert * 0.020068
                } else if to == .cubicInch {
                    convert = convert * 34.6774
                } else if to == .usLiquidGallon {
                    convert = convert * 0.150119
                } else if to == .imperialGallon {
                    convert = convert * 0.125
                }  else if to == .usLiquidQuart {
                    convert = convert * 0.600475
                } else if to == .imperialQuart {
                    convert = convert * 0.5
                } else if to == .usLiquidPint {
                    convert = convert * 1.20095
                } else if to == .imperialPint {
                    convert = convert + 0
                } else if to == .usLegalCup {
                    convert = convert * 2.36776
                } else if to == .imperialCup {
                    convert = convert * 2
                } else if to == .usFluidOunce {
                    convert = convert * 19.2152
                } else if to == .imperialFluidOunce {
                    convert = convert * 20
                } else if to == .usTablespoon {
                    convert = convert * 38.4304
                } else if to == .imperialTablespoon {
                    convert = convert * 32
                } else if to == .usTeaspoon {
                    convert = convert * 115.291
                } else if to == .imperialTeaspoon {
                    convert = convert * 96
                }
                
            case .usLegalCup:
                
                if to == .cubicMeter {
                    convert = convert * 0.00024
                } else if to == .Liter {
                    convert = convert * 0.24
                } else if to == .milliLiter {
                    convert = convert * 240
                } else if to == .cubicFoot {
                    convert = convert * 0.00847552
                } else if to == .cubicInch {
                    convert = convert * 14.6457
                } else if to == .usLiquidGallon {
                    convert = convert * 0.0634013
                } else if to == .imperialGallon {
                    convert = convert * 0.0527926
                }  else if to == .usLiquidQuart {
                    convert = convert * 0.253605
                } else if to == .imperialQuart {
                    convert = convert * 0.21117
                } else if to == .usLiquidPint {
                    convert = convert * 0.50721
                } else if to == .imperialPint {
                    convert = convert * 0.422341
                } else if to == .usLegalCup {
                    convert = convert + 0
                } else if to == .imperialCup {
                    convert = convert * 0.844682
                } else if to == .usFluidOunce {
                    convert = convert * 8.11537
                } else if to == .imperialFluidOunce {
                    convert = convert * 8.44682
                } else if to == .usTablespoon {
                    convert = convert * 16.2307
                } else if to == .imperialTablespoon {
                    convert = convert * 13.5149
                } else if to == .usTeaspoon {
                    convert = convert * 48.6922
                } else if to == .imperialTeaspoon {
                    convert = convert * 40.5447
                }
                
            case .imperialCup:
                
                if to == .cubicMeter {
                    convert = convert * 0.000284131
                } else if to == .Liter {
                    convert = convert * 0.284131
                } else if to == .milliLiter {
                    convert = convert * 284.131
                } else if to == .cubicFoot {
                    convert = convert * 0.010034
                } else if to == .cubicInch {
                    convert = convert * 17.3387
                } else if to == .usLiquidGallon {
                    convert = convert * 0.0750594
                } else if to == .imperialGallon {
                    convert = convert * 0.0625
                }  else if to == .usLiquidQuart {
                    convert = convert * 0.300237
                } else if to == .imperialQuart {
                    convert = convert * 0.25
                } else if to == .usLiquidPint {
                    convert = convert * 0.600475
                } else if to == .imperialPint {
                    convert = convert * 0.5
                } else if to == .usLegalCup {
                    convert = convert * 1.18388
                } else if to == .imperialCup {
                    convert = convert + 0
                } else if to == .usFluidOunce {
                    convert = convert * 9.6076
                } else if to == .imperialFluidOunce {
                    convert = convert * 10
                } else if to == .usTablespoon {
                    convert = convert * 19.2152
                } else if to == .imperialTablespoon {
                    convert = convert * 16
                } else if to == .usTeaspoon {
                    convert = convert * 57.6456
                } else if to == .imperialTeaspoon {
                    convert = convert * 48
                }
                
            case .usFluidOunce:
                
                if to == .cubicMeter {
                    convert = convert * 2.9574e-5
                } else if to == .Liter {
                    convert = convert * 0.0295735
                } else if to == .milliLiter {
                    convert = convert * 29.5735
                } else if to == .cubicFoot {
                    convert = convert * 0.00104438
                } else if to == .cubicInch {
                    convert = convert * 1.80469
                } else if to == .usLiquidGallon {
                    convert = convert * 0.0078125
                } else if to == .imperialGallon {
                    convert = convert * 0.00650527
                }  else if to == .usLiquidQuart {
                    convert = convert * 0.03125
                } else if to == .imperialQuart {
                    convert = convert * 0.0260211
                } else if to == .usLiquidPint {
                    convert = convert * 0.0625
                } else if to == .imperialPint {
                    convert = convert * 0.0520421
                } else if to == .usLegalCup {
                    convert = convert * 0.123223
                } else if to == .imperialCup {
                    convert = convert * 0.104084
                } else if to == .usFluidOunce {
                    convert = convert + 0
                } else if to == .imperialFluidOunce {
                    convert = convert * 1.04084
                } else if to == .usTablespoon {
                    convert = convert * 2
                } else if to == .imperialTablespoon {
                    convert = convert * 1.66535
                } else if to == .usTeaspoon {
                    convert = convert * 6
                } else if to == .imperialTeaspoon {
                    convert = convert * 4.99604
                }
                
            case .imperialFluidOunce:
                
                if to == .cubicMeter {
                    convert = convert * 2.8413e-5
                } else if to == .Liter {
                    convert = convert * 0.0284131
                } else if to == .milliLiter {
                    convert = convert * 28.4131
                } else if to == .cubicFoot {
                    convert = convert * 0.0010034
                } else if to == .cubicInch {
                    convert = convert * 1.73387
                } else if to == .usLiquidGallon {
                    convert = convert * 0.00750594
                } else if to == .imperialGallon {
                    convert = convert * 0.00625
                }  else if to == .usLiquidQuart {
                    convert = convert * 0.0300237
                } else if to == .imperialQuart {
                    convert = convert * 0.025
                } else if to == .usLiquidPint {
                    convert = convert * 0.0600475
                } else if to == .imperialPint {
                    convert = convert * 0.05
                } else if to == .usLegalCup {
                    convert = convert * 0.118388
                } else if to == .imperialCup {
                    convert = convert * 0.1
                } else if to == .usFluidOunce {
                    convert = convert * 0.96076
                } else if to == .imperialFluidOunce {
                    convert = convert + 0
                } else if to == .usTablespoon {
                    convert = convert * 1.92152
                } else if to == .imperialTablespoon {
                    convert = convert * 1.6
                } else if to == .usTeaspoon {
                    convert = convert * 5.76456
                } else if to == .imperialTeaspoon {
                    convert = convert * 4.8
                }
                
            case .usTablespoon:
                
                if to == .cubicMeter {
                    convert = convert * 1.4787e-5
                } else if to == .Liter {
                    convert = convert * 0.0147868
                } else if to == .milliLiter {
                    convert = convert * 14.7868
                } else if to == .cubicFoot {
                    convert = convert * 0.00052219
                } else if to == .cubicInch {
                    convert = convert * 0.902344
                } else if to == .usLiquidGallon {
                    convert = convert * 0.00390625
                } else if to == .imperialGallon {
                    convert = convert * 0.00325263
                }  else if to == .usLiquidQuart {
                    convert = convert * 0.015625
                } else if to == .imperialQuart {
                    convert = convert * 0.0130105
                } else if to == .usLiquidPint {
                    convert = convert * 0.03125
                } else if to == .imperialPint {
                    convert = convert * 0.0260211
                } else if to == .usLegalCup {
                    convert = convert * 0.0616115
                } else if to == .imperialCup {
                    convert = convert * 0.0520421
                } else if to == .usFluidOunce {
                    convert = convert * 0.5
                } else if to == .imperialFluidOunce {
                    convert = convert * 0.520421
                } else if to == .usTablespoon {
                    convert = convert + 0
                } else if to == .imperialTablespoon {
                    convert = convert * 0.832674
                } else if to == .usTeaspoon {
                    convert = convert * 3
                } else if to == .imperialTeaspoon {
                    convert = convert * 2.49802
                }
                
                
            case .imperialTablespoon:
                
                if to == .cubicMeter {
                    convert = convert * 1.7758e-5
                } else if to == .Liter {
                    convert = convert * 0.0177582
                } else if to == .milliLiter {
                    convert = convert * 17.7582
                } else if to == .cubicFoot {
                    convert = convert * 0.000627124
                } else if to == .cubicInch {
                    convert = convert * 1.08367
                } else if to == .usLiquidGallon {
                    convert = convert * 0.00469121
                } else if to == .imperialGallon {
                    convert = convert * 0.00390625
                }  else if to == .usLiquidQuart {
                    convert = convert * 0.0187649
                } else if to == .imperialQuart {
                    convert = convert * 0.015625
                } else if to == .usLiquidPint {
                    convert = convert * 0.0375297
                } else if to == .imperialPint {
                    convert = convert * 0.03125
                } else if to == .usLegalCup {
                    convert = convert * 0.0739924
                } else if to == .imperialCup {
                    convert = convert * 0.0625
                } else if to == .usFluidOunce {
                    convert = convert * 0.600475
                } else if to == .imperialFluidOunce {
                    convert = convert * 0.625
                } else if to == .usTablespoon {
                    convert = convert * 1.20095
                } else if to == .imperialTablespoon {
                    convert = convert + 0
                } else if to == .usTeaspoon {
                    convert = convert * 3.60285
                } else if to == .imperialTeaspoon {
                    convert = convert * 3
                }
                
            case .usTeaspoon:
                
                if to == .cubicMeter {
                    convert = convert * 4.9289e-6
                } else if to == .Liter {
                    convert = convert * 0.00492892
                } else if to == .milliLiter {
                    convert = convert * 4.92892
                } else if to == .cubicFoot {
                    convert = convert * 0.000174063
                } else if to == .cubicInch {
                    convert = convert * 0.300781
                } else if to == .usLiquidGallon {
                    convert = convert * 0.00130208
                } else if to == .imperialGallon {
                    convert = convert * 0.00108421
                }  else if to == .usLiquidQuart {
                    convert = convert * 0.00520833
                } else if to == .imperialQuart {
                    convert = convert * 0.00433684
                } else if to == .usLiquidPint {
                    convert = convert * 0.0104167
                } else if to == .imperialPint {
                    convert = convert * 0.00867369
                } else if to == .usLegalCup {
                    convert = convert * 0.0205372
                } else if to == .imperialCup {
                    convert = convert * 0.0173474
                } else if to == .usFluidOunce {
                    convert = convert * 0.166667
                } else if to == .imperialFluidOunce {
                    convert = convert * 0.173474
                } else if to == .usTablespoon {
                    convert = convert * 0.333333
                } else if to == .imperialTablespoon {
                    convert = convert * 0.277558
                } else if to == .usTeaspoon {
                    convert = convert + 0
                } else if to == .imperialTeaspoon {
                    convert = convert * 0.832674
                }
                
            case .imperialTeaspoon:
                
                if to == .cubicMeter {
                    convert = convert * 5.9194e-6
                } else if to == .Liter {
                    convert = convert * 0.00591939
                } else if to == .milliLiter {
                    convert = convert * 5.91939
                } else if to == .cubicFoot {
                    convert = convert * 0.000209041
                } else if to == .cubicInch {
                    convert = convert * 0.361223
                } else if to == .usLiquidGallon {
                    convert = convert * 0.00156374
                } else if to == .imperialGallon {
                    convert = convert * 0.00130208
                }  else if to == .usLiquidQuart {
                    convert = convert * 0.00625495
                } else if to == .imperialQuart {
                    convert = convert * 0.00520834
                } else if to == .usLiquidPint {
                    convert = convert * 0.0125099
                } else if to == .imperialPint {
                    convert = convert * 0.0104167
                } else if to == .usLegalCup {
                    convert = convert * 0.0246641
                } else if to == .imperialCup {
                    convert = convert * 0.0208333
                } else if to == .usFluidOunce {
                    convert = convert * 0.200158
                } else if to == .imperialFluidOunce {
                    convert = convert * 0.208333
                } else if to == .usTablespoon {
                    convert = convert * 0.400317
                } else if to == .imperialTablespoon {
                    convert = convert * 0.333333
                } else if to == .usTeaspoon {
                    convert = convert * 1.20095
                } else if to == .imperialTeaspoon {
                    convert = convert + 0
                }
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
            }
            
            return convert
        }
        
        
        
        
        
        
        
        
        static func fromString(_ string: String) -> volumeUnit? {
            
            
            if string == "Cubic Meter (m^3)" {
                return .cubicMeter
            } else if string == "Liter (L)" {
                return .Liter
            } else if string ==  "Milliliter (mL)" {
                return .milliLiter
            } else if string == "Cubic Foot (ft^3)" {
                return .cubicFoot
            } else if string == "Cubic Inch (in^3)" {
                return .cubicInch
            } else if string == "Gallon (US gal)" {
                return .usLiquidGallon
            } else if string == "Gallon (imp gal)" {
                return .imperialGallon
            } else if string == "Quart (US qt.)" {
                return .usLiquidQuart
            } else if string == "Quart (imp qt.)" {
                return .imperialQuart
            } else if string == "Pint (US pt.)"{
                return .usLiquidPint
            } else if string == "Pint (imp pt.)" {
                return .imperialPint
            } else if string == "Cup (US cup)" {
                return .usLegalCup
            } else if string == "Cup (imp cup)" {
                return .imperialCup
            } else if string == "Ounce (US fl. oz.)" {
                return .usFluidOunce
            }  else if string == "Ounce (imp fl. oz.)" {
                return .imperialFluidOunce
            }  else if string == "Tablespoon (US tbsp.)"{
                return .usTablespoon
            }  else if string == "Tablespoon (imp tbsp.)" {
                return .imperialTablespoon
            }  else if string == "Teaspoon (US tsp.)" {
                return .usTeaspoon
            }   else if string == "Teaspoon (imp tsp.)" {
                return .imperialTeaspoon
            }
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
            else {
                return nil
            }
        }
        
        static func allCases() -> [String] {
            var i = 0
            var list = [String]()
            while let unit = volumeUnit(rawValue: i) {
                list.append(unit.description())
                i = i + 1
            }
            return list
        }
        
        
    }
    // -------------------------------------------
    // ------------------ Force ------------------
    
    enum forceUnit: Int {
        
        
        
        
        case Newton = 0, PoundForce, PoundFootPerSquareSecond, Dyne
        
        func description() -> String {
            switch self {
            case .Newton:
                return "Newton (N)"
            case .PoundForce:
                return "Pound-Force (lbf)"
            case .PoundFootPerSquareSecond:
                return "(lbm*ft/s^2)"
            case .Dyne:
                return "Dyne (dyn)"
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
            }
        }
        
        
        func convertTo(unit to: forceUnit, value val: Double) -> Double {
            var convert = val
            //https://www.engineeringtoolbox.com/density-converter-d_1038.html
            
            
            
            
            
            
            
            
            
            switch self {
                
                
            case .Newton:
                
                if to == .Newton {
                    convert = convert + 0
                } else if to == .PoundForce {
                    convert = convert * 0.224808943
                } else if to == .PoundFootPerSquareSecond {
                    convert = convert * 7.233013851
                } else if to == .Dyne {
                    convert = convert * 100000
                }
                
            case .PoundForce:
                
                if to == .Newton {
                    convert = convert * 4.448221615
                } else if to == .PoundForce {
                    convert = convert + 0
                } else if to == .PoundFootPerSquareSecond {
                    convert = convert * 32.174048556
                } else if to == .Dyne {
                    convert = convert * 444822.16152548
                }
                
                
            case .PoundFootPerSquareSecond:
                
                if to == .Newton {
                    convert = convert * 0.138254954
                } else if to == .PoundForce {
                    convert = convert * 0.03108095
                } else if to == .PoundFootPerSquareSecond {
                    convert = convert + 0
                } else if to == .Dyne {
                    convert = convert * 13825.4954376
                }
                
            case .Dyne:
                
                if to == .Newton {
                    convert = convert * 0.00001
                } else if to == .PoundForce {
                    convert = convert * 0.000002248
                } else if to == .PoundFootPerSquareSecond {
                    convert = convert * 0.00007233
                } else if to == .Dyne {
                    convert = convert + 0
                }
                
                
                
                
                
                
                
                
                
                
                
                
                
            }
            
            return convert
        }
        
        
        
        
        
        
        
        
        static func fromString(_ string: String) -> forceUnit? {
            
            
            if string == "Newton (N)" {
                return .Newton
            } else if string == "Pound-Force (lbf)" {
                return .PoundForce
            } else if string ==  "(lbm*ft/s^2)" {
                return .PoundFootPerSquareSecond
            } else if string == "Dyne (dyn)" {
                return .Dyne
            }
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
            else {
                return nil
            }
        }
        
        static func allCases() -> [String] {
            var i = 0
            var list = [String]()
            while let unit = forceUnit(rawValue: i) {
                list.append(unit.description())
                i = i + 1
            }
            return list
        }
        
        
    }
    // -------------------------------------------
    // ------------------ Energy ------------------
    
    enum energyUnit: Int {
        
        
        
        
        case Joule = 0, Gramcalorie, Kilojoule, Kilocalorie, WattHour, KilowattHour, Erg, Electronvolt, BritishThermalUnit, USTherm, FootPoundforce
        
        func description() -> String {
            switch self {
            case .Joule:
                return "Joule (J)"
            case .Gramcalorie:
                return "Calorie (Cal)"
            case .Kilojoule:
                return "Kilojoule (kJ)"
            case .Kilocalorie:
                return "Kilocalorie (kCal)"
            case .WattHour:
                return "Watt hour (Wh)"
            case .KilowattHour:
                return "Kilowatt hour (kWh)"
            case .Erg:
                return "Erg (erg)"
            case .Electronvolt:
                return "Electronvolt (eV)"
            case .BritishThermalUnit:
                return "BTU (btu)"
            case .USTherm:
                return "Therm (thm)"
            case .FootPoundforce:
                return "Foot-Pound (ft*lbf)"
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
            }
        }
        
        
        func convertTo(unit to: energyUnit, value val: Double) -> Double {
            var convert = val
            //https://www.engineeringtoolbox.com/density-converter-d_1038.html
            
            
            
            
            
            
            
            
            
            switch self {
                
                
            case .Joule:
                
                if to == .Joule {
                    convert = convert + 0
                } else if to == .Gramcalorie {
                    convert = convert * 0.239006
                } else if to == .Kilojoule {
                    convert = convert * 0.001
                } else if to == .Kilocalorie {
                    convert = convert * 0.000239006
                }  else if to == .WattHour {
                    convert = convert * 0.000277778
                }  else if to == .KilowattHour {
                    convert = convert * 2.7778e-7
                }  else if to == .Erg {
                    convert = convert * 1e+7
                }  else if to == .Electronvolt {
                    convert = convert * 6.242e+18
                }  else if to == .BritishThermalUnit {
                    convert = convert * 0.000947817
                }  else if to == .USTherm {
                    convert = convert * 9.4804e-9
                }  else if to == .FootPoundforce {
                    convert = convert * 0.737562
                }
                
            case .Gramcalorie:
                
                if to == .Joule {
                    convert = convert * 4.184
                } else if to == .Gramcalorie {
                    convert = convert + 0
                } else if to == .Kilojoule {
                    convert = convert * 0.004184
                } else if to == .Kilocalorie {
                    convert = convert * 0.001
                }  else if to == .WattHour {
                    convert = convert * 0.00116222
                }  else if to == .KilowattHour {
                    convert = convert * 1.1622e-6
                }  else if to == .Erg {
                    convert = convert * 4.184e+7
                }  else if to == .Electronvolt {
                    convert = convert * 2.611e+19
                }  else if to == .BritishThermalUnit {
                    convert = convert * 0.00396567
                }  else if to == .USTherm {
                    convert = convert * 3.9666e-8
                }  else if to == .FootPoundforce {
                    convert = convert * 3.08596
                }
                
            case .Kilojoule:
                
                if to == .Joule {
                    convert = convert * 1000
                } else if to == .Gramcalorie {
                    convert = convert * 239.006
                } else if to == .Kilojoule {
                    convert = convert + 0
                } else if to == .Kilocalorie {
                    convert = convert * 0.239006
                }  else if to == .WattHour {
                    convert = convert * 0.277778
                }  else if to == .KilowattHour {
                    convert = convert * 0.000277778
                }  else if to == .Erg {
                    convert = convert * 1e+10
                }  else if to == .Electronvolt {
                    convert = convert * 6.242e+21
                }  else if to == .BritishThermalUnit {
                    convert = convert * 0.947817
                }  else if to == .USTherm {
                    convert = convert * 9.4804e-6
                }  else if to == .FootPoundforce {
                    convert = convert * 737.562
                }
                
                
            case .Kilocalorie:
                
                if to == .Joule {
                    convert = convert * 4184
                } else if to == .Gramcalorie {
                    convert = convert * 1000
                } else if to == .Kilojoule {
                    convert = convert * 4.184
                } else if to == .Kilocalorie {
                    convert = convert + 0
                }  else if to == .WattHour {
                    convert = convert * 1.16222
                }  else if to == .KilowattHour {
                    convert = convert * 0.00116222
                }  else if to == .Erg {
                    convert = convert * 4.184e+10
                }  else if to == .Electronvolt {
                    convert = convert * 2.611e+22
                }  else if to == .BritishThermalUnit {
                    convert = convert * 3.96567
                }  else if to == .USTherm {
                    convert = convert * 3.9666e-5
                }  else if to == .FootPoundforce {
                    convert = convert * 3085.96
                }
                
            case .WattHour:
                
                if to == .Joule {
                    convert = convert * 3600
                } else if to == .Gramcalorie {
                    convert = convert * 860.421
                } else if to == .Kilojoule {
                    convert = convert * 3.6
                } else if to == .Kilocalorie {
                    convert = convert * 0.860421
                }  else if to == .WattHour {
                    convert = convert + 0
                }  else if to == .KilowattHour {
                    convert = convert * 0.001
                }  else if to == .Erg {
                    convert = convert * 3.6e+10
                }  else if to == .Electronvolt {
                    convert = convert * 2.247e+22
                }  else if to == .BritishThermalUnit {
                    convert = convert * 3.41214
                }  else if to == .USTherm {
                    convert = convert * 3.413e-5
                }  else if to == .FootPoundforce {
                    convert = convert * 2655.22
                }
                
            case .KilowattHour:
                
                if to == .Joule {
                    convert = convert * 3.6e+6
                } else if to == .Gramcalorie {
                    convert = convert * 860421
                } else if to == .Kilojoule {
                    convert = convert * 3600
                } else if to == .Kilocalorie {
                    convert = convert * 860.421
                }  else if to == .WattHour {
                    convert = convert * 1000
                }  else if to == .KilowattHour {
                    convert = convert + 0
                }  else if to == .Erg {
                    convert = convert * 3.6e+13
                }  else if to == .Electronvolt {
                    convert = convert * 2.247e+25
                }  else if to == .BritishThermalUnit {
                    convert = convert * 3412.14
                }  else if to == .USTherm {
                    convert = convert * 0.0341296
                }  else if to == .FootPoundforce {
                    convert = convert * 2.655e+6
                }
                
            case .Erg:
                
                if to == .Joule {
                    convert = convert * 1e-7
                } else if to == .Gramcalorie {
                    convert = convert * 2.3901e-8
                } else if to == .Kilojoule {
                    convert = convert * 1e-10
                } else if to == .Kilocalorie {
                    convert = convert * 2.3901e-11
                }  else if to == .WattHour {
                    convert = convert * 2.7778e-11
                }  else if to == .KilowattHour {
                    convert = convert * 2.7778e-14
                }  else if to == .Erg {
                    convert = convert + 0
                }  else if to == .Electronvolt {
                    convert = convert * 6.242e+11
                }  else if to == .BritishThermalUnit {
                    convert = convert * 9.4782e-11
                }  else if to == .USTherm {
                    convert = convert * 9.4804e-16
                }  else if to == .FootPoundforce {
                    convert = convert * 7.3756e-8
                }
                
            case .Electronvolt:
                
                if to == .Joule {
                    convert = convert * 1.6022e-19
                } else if to == .Gramcalorie {
                    convert = convert * 3.8293e-20
                } else if to == .Kilojoule {
                    convert = convert * 1.6022e-22
                } else if to == .Kilocalorie {
                    convert = convert * 3.8293e-23
                }  else if to == .WattHour {
                    convert = convert * 4.4505e-23
                }  else if to == .KilowattHour {
                    convert = convert * 4.4505e-26
                }  else if to == .Erg {
                    convert = convert * 1.6022e-12
                }  else if to == .Electronvolt {
                    convert = convert + 0
                }  else if to == .BritishThermalUnit {
                    convert = convert * 1.5186e-22
                }  else if to == .USTherm {
                    convert = convert * 1.5189e-27
                }  else if to == .FootPoundforce {
                    convert = convert * 1.1817e-19
                }
                
                
            case .BritishThermalUnit:
                
                if to == .Joule {
                    convert = convert * 1055.06
                } else if to == .Gramcalorie {
                    convert = convert * 252.164
                } else if to == .Kilojoule {
                    convert = convert * 1.05506
                } else if to == .Kilocalorie {
                    convert = convert * 0.252164
                }  else if to == .WattHour {
                    convert = convert * 0.293071
                }  else if to == .KilowattHour {
                    convert = convert * 0.000293071
                }  else if to == .Erg {
                    convert = convert * 1.055e+10
                }  else if to == .Electronvolt {
                    convert = convert * 6.585e+21
                }  else if to == .BritishThermalUnit {
                    convert = convert + 0
                }  else if to == .USTherm {
                    convert = convert * 1.0002e-5
                }  else if to == .FootPoundforce {
                    convert = convert * 778.169
                }
                
            case .USTherm:
                
                if to == .Joule {
                    convert = convert * 1.055e+8
                } else if to == .Gramcalorie {
                    convert = convert * 2.521e+7
                } else if to == .Kilojoule {
                    convert = convert * 105480
                } else if to == .Kilocalorie {
                    convert = convert * 25210.4
                }  else if to == .WattHour {
                    convert = convert * 29300.1
                }  else if to == .KilowattHour {
                    convert = convert * 29.3001
                }  else if to == .Erg {
                    convert = convert * 1.055e+15
                }  else if to == .Electronvolt {
                    convert = convert * 6.584e+26
                }  else if to == .BritishThermalUnit {
                    convert = convert * 99976.1
                }  else if to == .USTherm {
                    convert = convert + 0
                }  else if to == .FootPoundforce {
                    convert = convert * 7.78e+7
                }
                
                
            case .FootPoundforce:
                
                if to == .Joule {
                    convert = convert * 1.35582
                } else if to == .Gramcalorie {
                    convert = convert * 0.324048
                } else if to == .Kilojoule {
                    convert = convert * 0.00135582
                } else if to == .Kilocalorie {
                    convert = convert * 0.000324048
                }  else if to == .WattHour {
                    convert = convert * 0.000376616
                }  else if to == .KilowattHour {
                    convert = convert * 3.7662e-7
                }  else if to == .Erg {
                    convert = convert * 1.356e+7
                }  else if to == .Electronvolt {
                    convert = convert * 8.462e+18
                }  else if to == .BritishThermalUnit {
                    convert = convert * 0.00128507
                }  else if to == .USTherm {
                    convert = convert * 1.2854e-8
                }  else if to == .FootPoundforce {
                    convert = convert + 0
                }
                
                
                
                
                
                
                
            }
            
            return convert
        }
        
        
        
        
        
        
        
        
        static func fromString(_ string: String) -> energyUnit? {
            
            
            if string == "Joule (J)" {
                return .Joule
            } else if string == "Calorie (Cal)" {
                return .Gramcalorie
            } else if string ==  "Kilojoule (kJ)" {
                return .Kilojoule
            } else if string == "Kilocalorie (kCal)" {
                return .Kilocalorie
            } else if string == "Watt hour (Wh)" {
                return .WattHour
            } else if string == "Kilowatt hour (kWh)" {
                return .KilowattHour
            } else if string == "Erg (erg)" {
                return .Erg
            } else if string == "Electronvolt (eV)" {
                return .Electronvolt
            } else if string == "BTU (btu)" {
                return .BritishThermalUnit
            } else if string == "Therm (thm)" {
                return .USTherm
            } else if string == "Foot-Pound (ft*lbf)" {
                return .FootPoundforce
            }
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
            else {
                return nil
            }
        }
        
        static func allCases() -> [String] {
            var i = 0
            var list = [String]()
            while let unit = energyUnit(rawValue: i) {
                list.append(unit.description())
                i = i + 1
            }
            return list
        }
        
        
    }
    // -------------------------------------------
    // ------------------ Power ------------------
    
    enum powerUnit: Int {
        
        
        
        
        case Watt = 0, CaloriePerSecond, Kilowatt, KilocaloriePerSecond, Horsepower, FootPoundPerSecond, BTUperHour, BTUperSecond, ErgPerSecond, Gigawatt, Megawatt, Milliwatt
        
        func description() -> String {
            switch self {
            case .Watt:
                return "Watt (W)"
            case .CaloriePerSecond:
                return "Cal/sec"
            case .Kilowatt:
                return "Kilowatt (kW)"
            case .KilocaloriePerSecond:
                return "kcal/sec"
            case .Horsepower:
                return "Horsepower (hp)"
            case .FootPoundPerSecond:
                return "ft*lbf/sec"
            case .BTUperHour:
                return "BTU/hour"
            case .BTUperSecond:
                return "BTU/sec"
            case .ErgPerSecond:
                return "erg/sec"
            case .Gigawatt:
                return "Gigawatt (GW)"
            case .Megawatt:
                return "Megawatt (MW)"
            case .Milliwatt:
                return "Milliwatt (mW)"
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
            }
        }
        
        
        func convertTo(unit to: powerUnit, value val: Double) -> Double {
            var convert = val
            //https://www.engineeringtoolbox.com/density-converter-d_1038.html
            
            
            
            
            
            
            
            
            
            switch self {
                
                
            case .Watt:
                
                if to == .Watt {
                    convert = convert + 0
                } else if to == .CaloriePerSecond {
                    convert = convert * 0.2388458966275
                } else if to == .Kilowatt {
                    convert = convert * 0.001
                } else if to == .KilocaloriePerSecond {
                    convert = convert * 0.0002388458966275
                }  else if to == .Horsepower {
                    convert = convert * 0.001341022089595
                } else if to == .FootPoundPerSecond {
                    convert = convert * 0.7375621492773
                } else if to == .BTUperHour {
                    convert = convert * 3.412141156488
                }  else if to == .BTUperSecond {
                    convert = convert * 0.0009478169879134
                }  else if to == .ErgPerSecond {
                    convert = convert * 10000000
                }  else if to == .Gigawatt {
                    convert = convert * 1E-9
                }  else if to == .Megawatt {
                    convert = convert * 0.000001
                }  else if to == .Milliwatt {
                    convert = convert * 1000
                }
                
            case .CaloriePerSecond:
                
                if to == .Watt {
                    convert = convert * 4.1868
                } else if to == .CaloriePerSecond {
                    convert = convert + 0
                } else if to == .Kilowatt {
                    convert = convert * 0.0041868
                } else if to == .KilocaloriePerSecond {
                    convert = convert * 0.001
                }  else if to == .Horsepower {
                    convert = convert * 0.005614591284716
                } else if to == .FootPoundPerSecond {
                    convert = convert * 3.088025206594
                } else if to == .BTUperHour {
                    convert = convert * 14.28595259399
                }  else if to == .BTUperSecond {
                    convert = convert * 0.003968320164996
                }  else if to == .ErgPerSecond {
                    convert = convert * 41868000
                }  else if to == .Gigawatt {
                    convert = convert * 4.1868E-9
                }  else if to == .Megawatt {
                    convert = convert * 0.0000041868
                }  else if to == .Milliwatt {
                    convert = convert * 4186.8
                }
                
            case .Kilowatt:
                
                if to == .Watt {
                    convert = convert * 1000
                } else if to == .CaloriePerSecond {
                    convert = convert * 238.8458966275
                } else if to == .Kilowatt {
                    convert = convert + 0
                } else if to == .KilocaloriePerSecond {
                    convert = convert * 0.2388458966275
                }  else if to == .Horsepower {
                    convert = convert * 1.341022089595
                } else if to == .FootPoundPerSecond {
                    convert = convert * 737.5621492773
                } else if to == .BTUperHour {
                    convert = convert * 3412.141156488
                }  else if to == .BTUperSecond {
                    convert = convert * 0.9478169879134
                }  else if to == .ErgPerSecond {
                    convert = convert * 10000000000
                }  else if to == .Gigawatt {
                    convert = convert * 0.000001
                }  else if to == .Megawatt {
                    convert = convert * 0.001
                }  else if to == .Milliwatt {
                    convert = convert * 1000000
                }
                
                
            case .KilocaloriePerSecond:
                
                if to == .Watt {
                    convert = convert * 4186.8
                } else if to == .CaloriePerSecond {
                    convert = convert * 1000
                } else if to == .Kilowatt {
                    convert = convert * 4.1868
                } else if to == .KilocaloriePerSecond {
                    convert = convert + 0
                }  else if to == .Horsepower {
                    convert = convert * 5.614591284716
                } else if to == .FootPoundPerSecond {
                    convert = convert * 3088.025206594
                } else if to == .BTUperHour {
                    convert = convert * 14285.95259399
                }  else if to == .BTUperSecond {
                    convert = convert * 3.968320164996
                }  else if to == .ErgPerSecond {
                    convert = convert * 41868000000
                }  else if to == .Gigawatt {
                    convert = convert * 0.0000041868
                }  else if to == .Megawatt {
                    convert = convert * 0.0041868
                }  else if to == .Milliwatt {
                    convert = convert * 4186800
                }
                
            case .Horsepower:
                
                if to == .Watt {
                    convert = convert * 745.6998715823
                } else if to == .CaloriePerSecond {
                    convert = convert * 178.1073544431
                } else if to == .Kilowatt {
                    convert = convert * 0.7456998715823
                } else if to == .KilocaloriePerSecond {
                    convert = convert * 0.1781073544431
                }  else if to == .Horsepower {
                    convert = convert + 0
                } else if to == .FootPoundPerSecond {
                    convert = convert * 550
                } else if to == .BTUperHour {
                    convert = convert * 2544.433222214
                }  else if to == .BTUperSecond {
                    convert = convert * 0.7067870061706
                }  else if to == .ErgPerSecond {
                    convert = convert * 7456998715.823
                }  else if to == .Gigawatt {
                    convert = convert * 7.456998715823E-7
                }  else if to == .Megawatt {
                    convert = convert * 0.0007456998715823
                }  else if to == .Milliwatt {
                    convert = convert * 745699.8715823
                }
                
            case .FootPoundPerSecond:
                
                if to == .Watt {
                    convert = convert * 1.355817948331
                } else if to == .CaloriePerSecond {
                    convert = convert * 0.3238315535329
                } else if to == .Kilowatt {
                    convert = convert * 0.001355817948331
                } else if to == .KilocaloriePerSecond {
                    convert = convert * 0.0003238315535329
                }  else if to == .Horsepower {
                    convert = convert * 0.001818181818182
                } else if to == .FootPoundPerSecond {
                    convert = convert + 0
                } else if to == .BTUperHour {
                    convert = convert * 4.626242222207
                }  else if to == .BTUperSecond {
                    convert = convert * 0.001285067283946
                }  else if to == .ErgPerSecond {
                    convert = convert * 13558179.48331
                }  else if to == .Gigawatt {
                    convert = convert * 1.355817948331E-9
                }  else if to == .Megawatt {
                    convert = convert * 0.000001355817948331
                }  else if to == .Milliwatt {
                    convert = convert * 1355.817948331
                }
                
                
            case .BTUperHour:
                
                if to == .Watt {
                    convert = convert * 0.2930711111111
                } else if to == .CaloriePerSecond {
                    convert = convert * 0.06999883230895
                } else if to == .Kilowatt {
                    convert = convert * 0.0002930711111111
                } else if to == .KilocaloriePerSecond {
                    convert = convert * 0.00006999883230895
                }  else if to == .Horsepower {
                    convert = convert * 0.0003930148338221
                } else if to == .FootPoundPerSecond {
                    convert = convert * 0.2161581586022
                } else if to == .BTUperHour {
                    convert = convert + 0
                }  else if to == .BTUperSecond {
                    convert = convert * 0.0002777777777778
                }  else if to == .ErgPerSecond {
                    convert = convert * 2930711.111111
                }  else if to == .Gigawatt {
                    convert = convert * 2.930711111111E-10
                }  else if to == .Megawatt {
                    convert = convert * 2.930711111111E-7
                }  else if to == .Milliwatt {
                    convert = convert * 293.0711111111
                }
                
            case .BTUperSecond:
                
                if to == .Watt {
                    convert = convert * 1055.056
                } else if to == .CaloriePerSecond {
                    convert = convert * 251.9957963122
                } else if to == .Kilowatt {
                    convert = convert * 1.055056
                } else if to == .KilocaloriePerSecond {
                    convert = convert * 0.2519957963122
                }  else if to == .Horsepower {
                    convert = convert * 1.41485340176
                } else if to == .FootPoundPerSecond {
                    convert = convert * 778.1693709679
                } else if to == .BTUperHour {
                    convert = convert * 3600
                }  else if to == .BTUperSecond {
                    convert = convert + 0
                }  else if to == .ErgPerSecond {
                    convert = convert * 10550560000
                }  else if to == .Gigawatt {
                    convert = convert * 0.000001055056
                }  else if to == .Megawatt {
                    convert = convert * 0.001055056
                }  else if to == .Milliwatt {
                    convert = convert * 1055056
                }
                
            case .ErgPerSecond:
                
                if to == .Watt {
                    convert = convert * 1E-7
                } else if to == .CaloriePerSecond {
                    convert = convert * 2.388458966275E-8
                } else if to == .Kilowatt {
                    convert = convert * 1E-10
                } else if to == .KilocaloriePerSecond {
                    convert = convert * 2.388458966275E-11
                }  else if to == .Horsepower {
                    convert = convert * 1.341022089595E-10
                } else if to == .FootPoundPerSecond {
                    convert = convert * 7.375621492773E-8
                } else if to == .BTUperHour {
                    convert = convert * 3.412141156488E-7
                }  else if to == .BTUperSecond {
                    convert = convert * 9.478169879134E-11
                }  else if to == .ErgPerSecond {
                    convert = convert + 0
                }  else if to == .Gigawatt {
                    convert = convert * 1E-16
                }  else if to == .Megawatt {
                    convert = convert * 1E-13
                }  else if to == .Milliwatt {
                    convert = convert * 0.0001
                }
                
            case .Gigawatt:
                
                if to == .Watt {
                    convert = convert * 1000000000
                } else if to == .CaloriePerSecond {
                    convert = convert * 238845896.6275
                } else if to == .Kilowatt {
                    convert = convert * 1000000
                } else if to == .KilocaloriePerSecond {
                    convert = convert * 238845.8966275
                }  else if to == .Horsepower {
                    convert = convert * 1341022.089595
                } else if to == .FootPoundPerSecond {
                    convert = convert * 737562149.2773
                } else if to == .BTUperHour {
                    convert = convert * 3412141156.488
                }  else if to == .BTUperSecond {
                    convert = convert * 947816.9879134
                }  else if to == .ErgPerSecond {
                    convert = convert * 10000000000000000
                }  else if to == .Gigawatt {
                    convert = convert + 0
                }  else if to == .Megawatt {
                    convert = convert * 1000
                }  else if to == .Milliwatt {
                    convert = convert * 1000000000000
                }
                
            case .Megawatt:
                
                if to == .Watt {
                    convert = convert * 1000000
                } else if to == .CaloriePerSecond {
                    convert = convert * 238845.8966275
                } else if to == .Kilowatt {
                    convert = convert * 1000
                } else if to == .KilocaloriePerSecond {
                    convert = convert * 238.8458966275
                }  else if to == .Horsepower {
                    convert = convert * 1341.022089595
                } else if to == .FootPoundPerSecond {
                    convert = convert * 737562.1492773
                } else if to == .BTUperHour {
                    convert = convert * 3412141.156488
                }  else if to == .BTUperSecond {
                    convert = convert * 947.8169879134
                }  else if to == .ErgPerSecond {
                    convert = convert * 10000000000000
                }  else if to == .Gigawatt {
                    convert = convert * 0.001
                }  else if to == .Megawatt {
                    convert = convert + 0
                }  else if to == .Milliwatt {
                    convert = convert * 1000000000
                }
                
            case .Milliwatt:
                
                if to == .Watt {
                    convert = convert * 0.001
                } else if to == .CaloriePerSecond {
                    convert = convert * 0.0002388458966275
                } else if to == .Kilowatt {
                    convert = convert * 0.000001
                } else if to == .KilocaloriePerSecond {
                    convert = convert * 2.388458966275E-7
                }  else if to == .Horsepower {
                    convert = convert * 0.000001341022089595
                } else if to == .FootPoundPerSecond {
                    convert = convert * 0.0007375621492773
                } else if to == .BTUperHour {
                    convert = convert * 0.003412141156488
                }  else if to == .BTUperSecond {
                    convert = convert * 9.478169879134E-7
                }  else if to == .ErgPerSecond {
                    convert = convert * 10000
                }  else if to == .Gigawatt {
                    convert = convert * 1E-12
                }  else if to == .Megawatt {
                    convert = convert * 1E-9
                }  else if to == .Milliwatt {
                    convert = convert + 0
                }
                
                
                
                
                
                
                
                
                
            }
            
            return convert
        }
        
        
        
        
        
        
        
        
        static func fromString(_ string: String) -> powerUnit? {
            
            
            if string == "Watt (W)" {
                return .Watt
            } else if string == "Cal/sec" {
                return .CaloriePerSecond
            } else if string ==  "Kilowatt (kW)" {
                return .Kilowatt
            } else if string == "kcal/sec" {
                return .KilocaloriePerSecond
            } else if string == "Horsepower (hp)" {
                return .Horsepower
            }  else if string == "ft*lbf/sec" {
                return .FootPoundPerSecond
            } else if string == "BTU/hour" {
                return .BTUperHour
            } else if string == "BTU/sec" {
                return .BTUperSecond
            } else if string == "erg/sec" {
                return .ErgPerSecond
            } else if string == "Gigawatt (GW)" {
                return .Gigawatt
            } else if string == "Megawatt (MW)" {
                return .Megawatt
            } else if string == "Milliwatt (mW)" {
                return .Milliwatt
            }
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
            else {
                return nil
            }
        }
        
        static func allCases() -> [String] {
            var i = 0
            var list = [String]()
            while let unit = powerUnit(rawValue: i) {
                list.append(unit.description())
                i = i + 1
            }
            return list
        }
        
        
    }
    // -------------------------------------------
    // ------------------ Plane Angle ------------------
    
    enum planeAngleUnit: Int {
        
        
        
        
        case Degree = 0, Radian, SecondOfArc, MinuteOfArc, Milliradian, Gradian
        
        func description() -> String {
            switch self {
            case .Degree:
                return "Degree (°)"
            case .Radian:
                return "Radian (rad)"
            case .SecondOfArc:
                return "Sec. of Arc (arcsec)"
            case .MinuteOfArc:
                return "Min. of Arc (arcmin)"
            case .Milliradian:
                return "Milliradian (mrad)"
            case .Gradian:
                return "Gradian (grad)"
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
            }
        }
        
        
        func convertTo(unit to: planeAngleUnit, value val: Double) -> Double {
            var convert = val
            //https://www.engineeringtoolbox.com/density-converter-d_1038.html
            
            
            
            
            
            
            
            
            
            switch self {
                
                
            case .Degree:
                
                if to == .Degree {
                    convert = convert + 0
                } else if to == .Radian {
                    convert = convert * 0.0174533
                } else if to == .SecondOfArc {
                    convert = convert * 3600
                } else if to == .MinuteOfArc {
                    convert = convert * 60
                }  else if to == .Milliradian {
                    convert = convert * 17.4533
                } else if to == .Gradian {
                    convert = convert * 1.11111
                }
                
                
            case .Radian:
                
                if to == .Degree {
                    convert = convert * 57.2958
                } else if to == .Radian {
                    convert = convert + 0
                } else if to == .SecondOfArc {
                    convert = convert * 206265
                } else if to == .MinuteOfArc {
                    convert = convert * 3437.75
                }  else if to == .Milliradian {
                    convert = convert * 1000
                } else if to == .Gradian {
                    convert = convert * 63.662
                }
                
                
            case .SecondOfArc:
                
                if to == .Degree {
                    convert = convert * 0.000277778
                } else if to == .Radian {
                    convert = convert * 4.8481e-6
                } else if to == .SecondOfArc {
                    convert = convert + 0
                } else if to == .MinuteOfArc {
                    convert = convert * 0.0166667
                }  else if to == .Milliradian {
                    convert = convert * 0.00484814
                } else if to == .Gradian {
                    convert = convert * 0.000308642
                }
                
            case .MinuteOfArc:
                
                if to == .Degree {
                    convert = convert * 0.0166667
                } else if to == .Radian {
                    convert = convert * 0.000290888
                } else if to == .SecondOfArc {
                    convert = convert * 60
                } else if to == .MinuteOfArc {
                    convert = convert + 0
                }  else if to == .Milliradian {
                    convert = convert * 0.290888
                } else if to == .Gradian {
                    convert = convert * 0.0185185
                }
                
                
            case .Milliradian:
                
                if to == .Degree {
                    convert = convert * 0.0572958
                } else if to == .Radian {
                    convert = convert * 0.001
                } else if to == .SecondOfArc {
                    convert = convert * 206.265
                } else if to == .MinuteOfArc {
                    convert = convert * 3.43775
                }  else if to == .Milliradian {
                    convert = convert + 0
                } else if to == .Gradian {
                    convert = convert * 0.063662
                }
                
                
                
            case .Gradian:
                
                if to == .Degree {
                    convert = convert * 0.9
                } else if to == .Radian {
                    convert = convert * 0.015708
                } else if to == .SecondOfArc {
                    convert = convert * 3240
                } else if to == .MinuteOfArc {
                    convert = convert * 54
                }  else if to == .Milliradian {
                    convert = convert * 15.708
                } else if to == .Gradian {
                    convert = convert + 0
                }
                
                
                
                
                
                
                
            }
            
            return convert
        }
        
        
        
        
        
        
        
        
        static func fromString(_ string: String) -> planeAngleUnit? {
            
            
            if string == "Degree (°)" {
                return .Degree
            } else if string == "Radian (rad)" {
                return .Radian
            }  else if string == "Sec. of Arc (arcsec)" {
                return .SecondOfArc
            }  else if string == "Min. of Arc (arcmin)" {
                return .MinuteOfArc
            }  else if string == "Milliradian (mrad)" {
                return .Milliradian
            }  else if string == "Gradian (grad)" {
                return .Gradian
            }
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
            else {
                return nil
            }
        }
        
        static func allCases() -> [String] {
            var i = 0
            var list = [String]()
            while let unit = planeAngleUnit(rawValue: i) {
                list.append(unit.description())
                i = i + 1
            }
            return list
        }
        
        
    }
    // -------------------------------------------
    
    // ------------------ Frequency ------------------
    
    enum frequencyUnit: Int {
        
        
        
        
        case Hertz = 0, Kilohertz, Megahertz, Gigahertz
        
        func description() -> String {
            switch self {
                
            case .Hertz:
                return "Hertz (Hz)"
            case .Kilohertz:
                return "Kilohertz (kHz)"
            case .Megahertz:
                return "Megahertz (MHz)"
            case .Gigahertz:
                return "Gigahertz (GHz)"
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
            }
        }
        
        
        func convertTo(unit to: frequencyUnit, value val: Double) -> Double {
            var convert = val
            //https://www.engineeringtoolbox.com/density-converter-d_1038.html
            
            
            
            
            
            
            
            
            
            switch self {
                
                
            case .Hertz:
                
                if to == .Hertz {
                    convert = convert + 0
                } else if to == .Kilohertz {
                    convert = convert * 0.001
                } else if to == .Megahertz {
                    convert = convert * 1e-6
                } else if to == .Gigahertz {
                    convert = convert * 1e-9
                }
                
            case .Kilohertz:
                
                if to == .Hertz {
                    convert = convert * 1000
                } else if to == .Kilohertz {
                    convert = convert + 0
                } else if to == .Megahertz {
                    convert = convert * 0.001
                } else if to == .Gigahertz {
                    convert = convert * 1e-6
                }
                
                
            case .Megahertz:
                
                if to == .Hertz {
                    convert = convert * 1e+6
                } else if to == .Kilohertz {
                    convert = convert * 1000
                } else if to == .Megahertz {
                    convert = convert + 0
                } else if to == .Gigahertz {
                    convert = convert * 0.001
                }
                
            case .Gigahertz:
                
                if to == .Hertz {
                    convert = convert * 1e+9
                } else if to == .Kilohertz {
                    convert = convert * 1e+6
                } else if to == .Megahertz {
                    convert = convert * 0.001
                } else if to == .Gigahertz {
                    convert = convert + 1e-6
                }
                
                
                
                
                
                
                
                
                
            }
            
            return convert
        }
        
        
        
        
        
        
        
        
        static func fromString(_ string: String) -> frequencyUnit? {
            
            
            if string == "Hertz (Hz)" {
                return .Hertz
            } else if string == "Kilohertz (kHz)" {
                return .Kilohertz
            }  else if string == "Megahertz (MHz)" {
                return .Megahertz
            }  else if string == "Gigahertz (GHz)" {
                return .Gigahertz
            }
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
            else {
                return nil
            }
        }
        
        static func allCases() -> [String] {
            var i = 0
            var list = [String]()
            while let unit = frequencyUnit(rawValue: i) {
                list.append(unit.description())
                i = i + 1
            }
            return list
        }
        
        
    }
    // -------------------------------------------
    // ------------------ Speed ------------------
    
    enum speedUnit: Int {
        
        
        
        
        case meterPerSecond = 0, footPerSecond, milesPerHour, kilometerPerHour, knot
        
        func description() -> String {
            switch self {
                
            case .meterPerSecond:
                return "Meter per sec. (m/s)"
            case .footPerSecond:
                return "Foot per sec. (ft/s)"
            case .milesPerHour:
                return "Miles per hour (mph)"
            case .kilometerPerHour:
                return "Km per hour (kmph)"
            case .knot:
                return "Knot (kn)"
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
            }
        }
        
        
        func convertTo(unit to: speedUnit, value val: Double) -> Double {
            var convert = val
            //https://www.engineeringtoolbox.com/density-converter-d_1038.html
            
            
            
            
            
            
            
            
            
            switch self {
                
                
            case .meterPerSecond:
                
                if to == .meterPerSecond {
                    convert = convert + 0
                } else if to == .footPerSecond {
                    convert = convert * 3.28084
                } else if to == .milesPerHour {
                    convert = convert * 2.23694
                } else if to == .kilometerPerHour {
                    convert = convert * 3.6
                } else if to == .knot {
                    convert = convert * 1.94384
                }
                
            case .footPerSecond:
                
                if to == .meterPerSecond {
                    convert = convert * 0.3048
                } else if to == .footPerSecond {
                    convert = convert + 0
                } else if to == .milesPerHour {
                    convert = convert * 0.681818
                } else if to == .kilometerPerHour {
                    convert = convert * 1.09728
                } else if to == .knot {
                    convert = convert * 0.592484
                }
                
            case .milesPerHour:
                
                if to == .meterPerSecond {
                    convert = convert * 0.44704
                } else if to == .footPerSecond {
                    convert = convert * 1.46667
                } else if to == .milesPerHour {
                    convert = convert + 0
                } else if to == .kilometerPerHour {
                    convert = convert * 1.60934
                } else if to == .knot {
                    convert = convert * 0.868976
                }
                
            case .kilometerPerHour:
                
                if to == .meterPerSecond {
                    convert = convert * 0.277778
                } else if to == .footPerSecond {
                    convert = convert * 0.911344
                } else if to == .milesPerHour {
                    convert = convert * 0.621371
                } else if to == .kilometerPerHour {
                    convert = convert + 0
                } else if to == .knot {
                    convert = convert * 0.539957
                }
                
            case .knot:
                
                if to == .meterPerSecond {
                    convert = convert * 0.514444
                } else if to == .footPerSecond {
                    convert = convert * 1.68781
                } else if to == .milesPerHour {
                    convert = convert * 1.15078
                } else if to == .kilometerPerHour {
                    convert = convert * 1.852
                } else if to == .knot {
                    convert = convert + 0
                }
                
                
                
                
                
                
                
                
                
            }
            
            return convert
        }
        
        
        
        
        
        
        
        
        static func fromString(_ string: String) -> speedUnit? {
            
            
            if string == "Meter per sec. (m/s)" {
                return .meterPerSecond
            } else if string == "Foot per sec. (ft/s)" {
                return .footPerSecond
            }  else if string == "Miles per hour (mph)" {
                return .milesPerHour
            }  else if string == "Km per hour (kmph)" {
                return .kilometerPerHour
            } else if string == "Knot (kn)" {
                return .knot
            }
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
            else {
                return nil
            }
        }
        
        static func allCases() -> [String] {
            var i = 0
            var list = [String]()
            while let unit = speedUnit(rawValue: i) {
                list.append(unit.description())
                i = i + 1
            }
            return list
        }
        
        
    }
    // -------------------------------------------
    // ------------------ Area ------------------
    
    enum areaUnit: Int {
        
        
        case Meter = 0, Foot, Inch, Kilometer, Centimeter, Millimeter, Micrometer, Nanometer, Yard, Mile, NauticalMile, Acre
        
        func description() -> String {
            switch self {
            case .Meter:
                return "Sq. meter (m^2)"
            case .Foot:
                return "Sq. foot (ft^2)"
            case .Inch:
                return "Sq. inch (in^2)"
            case .Kilometer:
                return "Sq. km (km^2)"
            case .Centimeter:
                return "Sq. cm (cm^2)"
            case .Millimeter:
                return "Sq. mm (mm^2)"
            case .Micrometer:
                return "Sq. μm (μm^2)"
            case .Nanometer:
                return "Sq. nm (nm^2)"
            case .Yard:
                return "Sq. yard (yd^2)"
            case .Mile:
                return "Sq. mile (mi.^2)"
            case .NauticalMile:
                return "Sq. n.mile (n.mi.^2)"
            case .Acre:
                return "Acre (ac.)"
            }
        }
        
        
        func convertTo(unit to: areaUnit, value val: Double) -> Double {
            var convert = val
            
            switch self {
            case .Meter:
                if to == .Meter {
                    convert = convert + 0
                } else if to == .Foot {
                    convert = convert * 3.28084 * 3.28084
                } else if to == .Inch {
                    convert = convert * 39.3701 * 39.3701
                } else if to == .Kilometer {
                    convert = convert * 0.001 * 0.001
                } else if to == .Centimeter {
                    convert = convert * 100 * 100
                } else if to == .Millimeter {
                    convert = convert * 1000 * 1000
                } else if to == .Micrometer {
                    convert = convert * 1e+6 * 1e+6
                } else if to == .Nanometer {
                    convert = convert * 1e+9 * 1e+9
                } else if to == .Yard {
                    convert = convert * 1.09361 * 1.09361
                } else if to == .Mile {
                    convert = convert * 0.000621371 * 0.000621371
                } else if to == .NauticalMile {
                    convert = convert * 0.000539957 * 0.000539957
                } else if to == .Acre {
                    convert = convert * 0.000247105
                }
                
            case .Foot:
                if to == .Meter {
                    convert = convert * 0.3048
                } else if to == .Foot {
                    convert = convert + 0
                } else if to == .Inch {
                    convert = convert * 12
                } else if to == .Kilometer {
                    convert = convert * 0.0003048
                } else if to == .Centimeter {
                    convert = convert * 30.48
                } else if to == .Millimeter {
                    convert = convert * 304.8
                } else if to == .Micrometer {
                    convert = convert * 304800
                } else if to == .Nanometer {
                    convert = convert * 3.048e+8
                } else if to == .Yard {
                    convert = convert * 0.333333
                } else if to == .Mile {
                    convert = convert * 0.000189394
                } else if to == .NauticalMile {
                    convert = convert * 0.000164579
                } else if to == .Acre {
                    convert = convert * 2.29568e-5
                }
                
                
            case .Inch:
                if to == .Meter {
                    convert = convert * 0.0254
                } else if to == .Foot {
                    convert = convert * 0.0833333
                } else if to == .Inch {
                    convert = convert + 0
                } else if to == .Kilometer {
                    convert = convert * 2.54e-5
                } else if to == .Centimeter {
                    convert = convert * 2.54
                } else if to == .Millimeter {
                    convert = convert * 25.4
                } else if to == .Micrometer {
                    convert = convert * 25400
                } else if to == .Nanometer {
                    convert = convert * 2.54e+7
                } else if to == .Yard {
                    convert = convert * 0.0277778
                } else if to == .Mile {
                    convert = convert * 1.5783e-5
                } else if to == .NauticalMile {
                    convert = convert * 1.3715e-5
                } else if to == .Acre {
                    convert = convert * 1.59423e-7
                }
                
            case .Kilometer:
                if to == .Meter {
                    convert = convert * 1000
                } else if to == .Foot {
                    convert = convert * 3280.84
                } else if to == .Inch {
                    convert = convert * 39370.1
                } else if to == .Kilometer {
                    convert = convert + 0
                } else if to == .Centimeter {
                    convert = convert * 100000
                } else if to == .Millimeter {
                    convert = convert * 1e+6
                } else if to == .Micrometer {
                    convert = convert * 1e+9
                } else if to == .Nanometer {
                    convert = convert * 1e+12
                } else if to == .Yard {
                    convert = convert * 1093.61
                } else if to == .Mile {
                    convert = convert * 0.621371
                } else if to == .NauticalMile {
                    convert = convert * 0.539957
                } else if to == .Acre {
                    convert = convert * 247.105
                }
                
            case .Centimeter:
                if to == .Meter {
                    convert = convert * 0.01
                } else if to == .Foot {
                    convert = convert * 0.0328084
                } else if to == .Inch {
                    convert = convert * 0.393701
                } else if to == .Kilometer {
                    convert = convert * 1e-5
                } else if to == .Centimeter {
                    convert = convert + 0
                } else if to == .Millimeter {
                    convert = convert * 10
                } else if to == .Micrometer {
                    convert = convert * 10000
                } else if to == .Nanometer {
                    convert = convert * 1e+7
                } else if to == .Yard {
                    convert = convert * 0.0109361
                } else if to == .Mile {
                    convert = convert * 6.2137e-6
                } else if to == .NauticalMile {
                    convert = convert * 5.3996e-6
                } else if to == .Acre {
                    convert = convert * 2.47105e-8
                }
                
            case .Millimeter:
                if to == .Meter {
                    convert = convert * 0.001
                } else if to == .Foot {
                    convert = convert * 0.00328084
                } else if to == .Inch {
                    convert = convert * 0.0393701
                } else if to == .Kilometer {
                    convert = convert * 1e-6
                } else if to == .Centimeter {
                    convert = convert * 0.1
                } else if to == .Millimeter {
                    convert = convert + 0
                } else if to == .Micrometer {
                    convert = convert * 1000
                } else if to == .Nanometer {
                    convert = convert * 1e+6
                } else if to == .Yard {
                    convert = convert * 0.00109361
                } else if to == .Mile {
                    convert = convert * 6.2137e-7
                } else if to == .NauticalMile {
                    convert = convert * 5.3996e-7
                } else if to == .Acre {
                    convert = convert * 2.47105e-10
                }
                
            case .Micrometer:
                
                if to == .Meter {
                    convert = convert * 1e-6
                } else if to == .Foot {
                    convert = convert * 3.2808e-6
                } else if to == .Inch {
                    convert = convert * 3.937e-5
                } else if to == .Kilometer {
                    convert = convert * 1e-9
                } else if to == .Centimeter {
                    convert = convert * 1e-4
                } else if to == .Millimeter {
                    convert = convert * 0.001
                } else if to == .Micrometer {
                    convert = convert + 0
                } else if to == .Nanometer {
                    convert = convert * 1000
                } else if to == .Yard {
                    convert = convert * 1.0936e-6
                } else if to == .Mile {
                    convert = convert * 6.2137e-10
                } else if to == .NauticalMile {
                    convert = convert * 5.3996e-10
                } else if to == .Acre {
                    convert = convert * 2.47105e-16
                }
                
            case .Nanometer:
                
                if to == .Meter {
                    convert = convert * 1e-9
                } else if to == .Foot {
                    convert = convert * 3.2808e-9
                } else if to == .Inch {
                    convert = convert * 3.937e-8
                } else if to == .Kilometer {
                    convert = convert * 1e-12
                } else if to == .Centimeter {
                    convert = convert * 1e-7
                } else if to == .Millimeter {
                    convert = convert * 1e-6
                } else if to == .Micrometer {
                    convert = convert * 0.001
                } else if to == .Nanometer {
                    convert = convert + 0
                } else if to == .Yard {
                    convert = convert * 1.0936e-9
                } else if to == .Mile {
                    convert = convert * 6.2137e-13
                } else if to == .NauticalMile {
                    convert = convert * 5.3996e-13
                } else if to == .Acre {
                    convert = convert * 2.47105e-22
                }
                
            case .Yard:
                
                if to == .Meter {
                    convert = convert * 0.9144
                } else if to == .Foot {
                    convert = convert * 3
                } else if to == .Inch {
                    convert = convert * 36
                } else if to == .Kilometer {
                    convert = convert * 0.0009144
                } else if to == .Centimeter {
                    convert = convert * 91.44
                } else if to == .Millimeter {
                    convert = convert * 914.4
                } else if to == .Micrometer {
                    convert = convert * 914400
                } else if to == .Nanometer {
                    convert = convert * 9.144e+8
                } else if to == .Yard {
                    convert = convert + 0
                } else if to == .Mile {
                    convert = convert * 0.000568182
                } else if to == .NauticalMile {
                    convert = convert * 0.000493737
                } else if to == .Acre {
                    convert = convert * 0.000206612
                }
                
            case .Mile:
                
                if to == .Meter {
                    convert = convert * 1609.34
                } else if to == .Foot {
                    convert = convert * 5280
                } else if to == .Inch {
                    convert = convert * 63360
                } else if to == .Kilometer {
                    convert = convert * 1.60934
                } else if to == .Centimeter {
                    convert = convert * 160934
                } else if to == .Millimeter {
                    convert = convert * 1.609e+6
                } else if to == .Micrometer {
                    convert = convert * 1.609e+9
                } else if to == .Nanometer {
                    convert = convert * 1.609e+12
                } else if to == .Yard {
                    convert = convert * 1760
                } else if to == .Mile {
                    convert = convert + 0
                } else if to == .NauticalMile {
                    convert = convert * 0.868976
                } else if to == .Acre {
                    convert = convert * 640
                }
                
                
            case .NauticalMile:
                
                if to == .Meter {
                    convert = convert * 1852
                } else if to == .Foot {
                    convert = convert * 6076.12
                } else if to == .Inch {
                    convert = convert * 72913.4
                } else if to == .Kilometer {
                    convert = convert * 1.852
                } else if to == .Centimeter {
                    convert = convert * 185200
                } else if to == .Millimeter {
                    convert = convert * 1.852e+6
                } else if to == .Micrometer {
                    convert = convert * 1.852e+9
                } else if to == .Nanometer {
                    convert = convert * 1.852e+12
                } else if to == .Yard {
                    convert = convert * 2025.37
                } else if to == .Mile {
                    convert = convert * 1.15078
                } else if to == .NauticalMile {
                    convert = convert + 0
                } else if to == .Acre {
                    convert = convert * 847.548
                }
                
                
            case .Acre:
                
                if to == .Meter {
                    convert = convert / 0.000247105
                } else if to == .Foot {
                    convert = convert / 2.29568e-5
                } else if to == .Inch {
                    convert = convert / 1.59423e-7
                } else if to == .Kilometer {
                    convert = convert / 247.105
                } else if to == .Centimeter {
                    convert = convert / 2.47105e-8
                } else if to == .Millimeter {
                    convert = convert / 2.47105e-10
                } else if to == .Micrometer {
                    convert = convert / 2.47105e-16
                } else if to == .Nanometer {
                    convert = convert / 2.47105e-22
                } else if to == .Yard {
                    convert = convert / 0.000206612
                } else if to == .Mile {
                    convert = convert / 640
                } else if to == .NauticalMile {
                    convert = convert / 847.548
                } else if to == .Acre {
                    convert = convert + 0
                }
                
                
                
                
            }
            
            return convert
        }
        
        
        
        
        
        
        
        
        static func fromString(_ string: String) -> areaUnit? {
            if string == "Sq. meter (m^2)" {
                return .Meter
            } else if string == "Sq. foot (ft^2)" {
                return .Foot
            } else if string == "Sq. inch (in^2)" {
                return .Inch
            } else if string == "Sq. km (km^2)" {
                return .Kilometer
            } else if string == "Sq. cm (cm^2)" {
                return .Centimeter
            } else if string == "Sq. mm (mm^2)" {
                return .Millimeter
            } else if string == "Sq. μm (μm^2)" {
                return .Micrometer
            } else if string == "Sq. nm (nm^2)" {
                return .Nanometer
            } else if string == "Sq. yard (yd^2)" {
                return .Yard
            } else if string == "Sq. mile (mi.^2)" {
                return .Mile
            } else if string == "Sq. n.mile (n.mi.^2)" {
                return .NauticalMile
            }  else if string == "Acre (ac.)" {
                return .Acre
            }
                
                
                
            else {
                return nil
            }
        }
        
        static func allCases() -> [String] {
            var i = 0
            var list = [String]()
            while let unit = areaUnit(rawValue: i) {
                list.append(unit.description())
                i = i + 1
            }
            return list
        }
        
        
    }
    // -------------------------------------------
    // ------------------ Digital Storage ------------------
    
    enum digitalStorageUnit: Int {
        
        
        case Bit = 0, Byte, Kilobit, Kilobyte, Kibibit, Kibibyte, Megabit, Megabyte, Mebibit, Mebibyte, Gigabit, Gigabyte, Gibibit, Gibibyte, Terabit, Terabyte, Tebibit, Tebibyte, Petabit, Petabyte, Pebibit, Pebibyte
        
        func description() -> String {
            switch self {
            case .Bit:
                return "Bit"
            case .Byte:
                return "Byte"
            case .Kilobit:
                return "Kilobit"
            case .Kilobyte:
                return "Kilobyte"
            case .Kibibit:
                return "Kibibit"
            case .Kibibyte:
                return "Kibibyte"
            case .Megabit:
                return "Megabit"
            case .Megabyte:
                return "Megabyte"
            case .Mebibit:
                return "Mebibit"
            case .Mebibyte:
                return "Mebibyte"
            case .Gigabit:
                return "Gigabit"
            case .Gigabyte:
                return "Gigabyte"
            case .Gibibit:
                return "Gibibit"
            case .Gibibyte:
                return "Gibibyte"
            case .Terabit:
                return "Terabit"
            case .Terabyte:
                return "Terabyte"
            case .Tebibit:
                return "Tebibit"
            case .Tebibyte:
                return "Tebibyte"
            case .Petabit:
                return "Petabit"
            case .Petabyte:
                return "Petabyte"
            case .Pebibit:
                return "Pebibit"
            case .Pebibyte:
                return "Pebibyte"
                
                
                
                
                
            }
        }
        
        
        func convertTo(unit to: digitalStorageUnit, value val: Double) -> Double {
            var convert = val
            
            switch self {
                
                
            case .Bit:
                if to == .Bit {
                    convert = convert + 0
                } else if to == .Byte {
                    convert = convert * 0.125
                } else if to == .Kilobit {
                    convert = convert * 0.001
                } else if to == .Kilobyte {
                    convert = convert * 0.000125
                } else if to == .Kibibit {
                    convert = convert * 0.000976563
                } else if to == .Kibibyte {
                    convert = convert * 0.00012207
                } else if to == .Megabit {
                    convert = convert * 1e-6
                } else if to == .Megabyte {
                    convert = convert * 1.25e-7
                } else if to == .Mebibit {
                    convert = convert * 9.5367e-7
                } else if to == .Mebibyte {
                    convert = convert * 1.1921e-7
                } else if to == .Gigabit {
                    convert = convert * 1e-9
                } else if to == .Gigabyte {
                    convert = convert * 1.25e-10
                } else if to == .Gibibit {
                    convert = convert * 9.3132e-10
                } else if to == .Gibibyte {
                    convert = convert * 1.1642e-10
                } else if to == .Terabit {
                    convert = convert * 1e-12
                } else if to == .Terabyte {
                    convert = convert * 1.25e-13
                } else if to == .Tebibit {
                    convert = convert * 9.0949e-13
                } else if to == .Tebibyte {
                    convert = convert * 1.1369e-13
                } else if to == .Petabit {
                    convert = convert * 1e-15
                } else if to == .Petabyte {
                    convert = convert * 1.25e-16
                } else if to == .Pebibit {
                    convert = convert * 8.8818e-16
                } else if to == .Pebibyte {
                    convert = convert * 1.1102e-16
                }
                
            case .Byte:
                if to == .Bit {
                    convert = convert * 8
                } else if to == .Byte {
                    convert = convert + 0
                } else if to == .Kilobit {
                    convert = convert * 0.008
                } else if to == .Kilobyte {
                    convert = convert * 0.001
                } else if to == .Kibibit {
                    convert = convert * 0.0078125
                } else if to == .Kibibyte {
                    convert = convert * 0.000976563
                } else if to == .Megabit {
                    convert = convert * 8e-6
                } else if to == .Megabyte {
                    convert = convert * 1e-6
                } else if to == .Mebibit {
                    convert = convert * 7.6294e-6
                } else if to == .Mebibyte {
                    convert = convert * 9.5367e-7
                } else if to == .Gigabit {
                    convert = convert * 8e-9
                } else if to == .Gigabyte {
                    convert = convert * 1e-9
                } else if to == .Gibibit {
                    convert = convert * 7.4506e-9
                } else if to == .Gibibyte {
                    convert = convert * 9.3132e-10
                } else if to == .Terabit {
                    convert = convert * 8e-12
                } else if to == .Terabyte {
                    convert = convert * 1e-12
                } else if to == .Tebibit {
                    convert = convert * 7.276e-12
                } else if to == .Tebibyte {
                    convert = convert * 9.0949e-13
                } else if to == .Petabit {
                    convert = convert * 8e-15
                } else if to == .Petabyte {
                    convert = convert * 1e-15
                } else if to == .Pebibit {
                    convert = convert * 7.1054e-15
                } else if to == .Pebibyte {
                    convert = convert * 8.8818e-16
                }
                
            case .Kilobit:
                if to == .Bit {
                    convert = convert * 1000
                } else if to == .Byte {
                    convert = convert * 125
                } else if to == .Kilobit {
                    convert = convert + 0
                } else if to == .Kilobyte {
                    convert = convert * 0.125
                } else if to == .Kibibit {
                    convert = convert * 0.976563
                } else if to == .Kibibyte {
                    convert = convert * 0.12207
                } else if to == .Megabit {
                    convert = convert * 0.001
                } else if to == .Megabyte {
                    convert = convert * 0.000125
                } else if to == .Mebibit {
                    convert = convert * 0.000953674
                } else if to == .Mebibyte {
                    convert = convert * 0.000119209
                } else if to == .Gigabit {
                    convert = convert * 1e-6
                } else if to == .Gigabyte {
                    convert = convert * 1.25e-7
                } else if to == .Gibibit {
                    convert = convert * 9.3132e-7
                } else if to == .Gibibyte {
                    convert = convert * 1.1642e-7
                } else if to == .Terabit {
                    convert = convert * 1e-9
                } else if to == .Terabyte {
                    convert = convert * 1.25e-10
                } else if to == .Tebibit {
                    convert = convert * 9.0949e-10
                } else if to == .Tebibyte {
                    convert = convert * 1.1369e-10
                } else if to == .Petabit {
                    convert = convert * 1e-12
                } else if to == .Petabyte {
                    convert = convert * 1.25e-13
                } else if to == .Pebibit {
                    convert = convert * 8.8818e-13
                } else if to == .Pebibyte {
                    convert = convert * 1.1102e-13
                }
                
            case .Kilobyte:
                if to == .Bit {
                    convert = convert * 8000
                } else if to == .Byte {
                    convert = convert * 1000
                } else if to == .Kilobit {
                    convert = convert * 8
                } else if to == .Kilobyte {
                    convert = convert + 0
                } else if to == .Kibibit {
                    convert = convert * 7.8125
                } else if to == .Kibibyte {
                    convert = convert * 0.976563
                } else if to == .Megabit {
                    convert = convert * 0.008
                } else if to == .Megabyte {
                    convert = convert * 0.001
                } else if to == .Mebibit {
                    convert = convert * 0.00762939
                } else if to == .Mebibyte {
                    convert = convert * 0.000953674
                } else if to == .Gigabit {
                    convert = convert * 8e-6
                } else if to == .Gigabyte {
                    convert = convert * 1e-6
                } else if to == .Gibibit {
                    convert = convert * 7.4506e-6
                } else if to == .Gibibyte {
                    convert = convert * 9.3132e-7
                } else if to == .Terabit {
                    convert = convert * 8e-9
                } else if to == .Terabyte {
                    convert = convert * 1e-9
                } else if to == .Tebibit {
                    convert = convert * 7.276e-9
                } else if to == .Tebibyte {
                    convert = convert * 9.0949e-10
                } else if to == .Petabit {
                    convert = convert * 8e-12
                } else if to == .Petabyte {
                    convert = convert * 1e-12
                } else if to == .Pebibit {
                    convert = convert * 7.1054e-12
                } else if to == .Pebibyte {
                    convert = convert * 8.8818e-13
                }
                
            case .Kibibit:
                if to == .Bit {
                    convert = convert * 1024
                } else if to == .Byte {
                    convert = convert * 128
                } else if to == .Kilobit {
                    convert = convert * 1.024
                } else if to == .Kilobyte {
                    convert = convert * 0.128
                } else if to == .Kibibit {
                    convert = convert + 0
                } else if to == .Kibibyte {
                    convert = convert * 0.125
                } else if to == .Megabit {
                    convert = convert * 0.001024
                } else if to == .Megabyte {
                    convert = convert * 0.000128
                } else if to == .Mebibit {
                    convert = convert * 0.000976563
                } else if to == .Mebibyte {
                    convert = convert * 0.00012207
                } else if to == .Gigabit {
                    convert = convert * 1.024e-6
                } else if to == .Gigabyte {
                    convert = convert * 1.28e-7
                } else if to == .Gibibit {
                    convert = convert * 9.5367e-7
                } else if to == .Gibibyte {
                    convert = convert * 1.1921e-7
                } else if to == .Terabit {
                    convert = convert * 1.024e-9
                } else if to == .Terabyte {
                    convert = convert * 1.28e-10
                } else if to == .Tebibit {
                    convert = convert * 9.3132e-10
                } else if to == .Tebibyte {
                    convert = convert * 1.1642e-10
                } else if to == .Petabit {
                    convert = convert * 1.024e-12
                } else if to == .Petabyte {
                    convert = convert * 1.28e-13
                } else if to == .Pebibit {
                    convert = convert * 9.0949e-13
                } else if to == .Pebibyte {
                    convert = convert * 1.1369e-13
                }
                
                
            case .Kibibyte:
                if to == .Bit {
                    convert = convert * 8192
                } else if to == .Byte {
                    convert = convert * 1024
                } else if to == .Kilobit {
                    convert = convert * 8.192
                } else if to == .Kilobyte {
                    convert = convert * 1.024
                } else if to == .Kibibit {
                    convert = convert * 8
                } else if to == .Kibibyte {
                    convert = convert + 0
                } else if to == .Megabit {
                    convert = convert * 0.008192
                } else if to == .Megabyte {
                    convert = convert * 0.001024
                } else if to == .Mebibit {
                    convert = convert * 0.0078125
                } else if to == .Mebibyte {
                    convert = convert * 0.000976563
                } else if to == .Gigabit {
                    convert = convert * 8.192e-6
                } else if to == .Gigabyte {
                    convert = convert * 1.024e-6
                } else if to == .Gibibit {
                    convert = convert * 7.6294e-6
                } else if to == .Gibibyte {
                    convert = convert * 9.5367e-7
                } else if to == .Terabit {
                    convert = convert * 8.192e-9
                } else if to == .Terabyte {
                    convert = convert * 1.024e-9
                } else if to == .Tebibit {
                    convert = convert * 7.4506e-9
                } else if to == .Tebibyte {
                    convert = convert * 9.3132e-10
                } else if to == .Petabit {
                    convert = convert * 8.192e-12
                } else if to == .Petabyte {
                    convert = convert * 1.024e-12
                } else if to == .Pebibit {
                    convert = convert * 7.276e-12
                } else if to == .Pebibyte {
                    convert = convert * 9.0949e-13
                }
                
            case .Megabit:
                if to == .Bit {
                    convert = convert * 1e+6
                } else if to == .Byte {
                    convert = convert * 125000
                } else if to == .Kilobit {
                    convert = convert * 1000
                } else if to == .Kilobyte {
                    convert = convert * 125
                } else if to == .Kibibit {
                    convert = convert * 976.563
                } else if to == .Kibibyte {
                    convert = convert * 122.07
                } else if to == .Megabit {
                    convert = convert + 0
                } else if to == .Megabyte {
                    convert = convert * 0.125
                } else if to == .Mebibit {
                    convert = convert * 0.953674
                } else if to == .Mebibyte {
                    convert = convert * 0.119209
                } else if to == .Gigabit {
                    convert = convert * 0.001
                } else if to == .Gigabyte {
                    convert = convert * 0.000125
                } else if to == .Gibibit {
                    convert = convert * 0.000931323
                } else if to == .Gibibyte {
                    convert = convert * 0.000116415
                } else if to == .Terabit {
                    convert = convert * 1e-6
                } else if to == .Terabyte {
                    convert = convert * 1.25e-7
                } else if to == .Tebibit {
                    convert = convert * 9.0949e-7
                } else if to == .Tebibyte {
                    convert = convert * 1.1369e-7
                } else if to == .Petabit {
                    convert = convert * 1e-9
                } else if to == .Petabyte {
                    convert = convert * 1.25e-10
                } else if to == .Pebibit {
                    convert = convert * 8.8818e-10
                } else if to == .Pebibyte {
                    convert = convert * 1.1102e-10
                }
                
            case .Megabyte:
                if to == .Bit {
                    convert = convert * 8e+6
                } else if to == .Byte {
                    convert = convert * 1e+6
                } else if to == .Kilobit {
                    convert = convert * 8000
                } else if to == .Kilobyte {
                    convert = convert * 1000
                } else if to == .Kibibit {
                    convert = convert * 7812.5
                } else if to == .Kibibyte {
                    convert = convert * 976.563
                } else if to == .Megabit {
                    convert = convert * 8
                } else if to == .Megabyte {
                    convert = convert + 0
                } else if to == .Mebibit {
                    convert = convert * 7.62939
                } else if to == .Mebibyte {
                    convert = convert * 0.953674
                } else if to == .Gigabit {
                    convert = convert * 0.008
                } else if to == .Gigabyte {
                    convert = convert * 0.001
                } else if to == .Gibibit {
                    convert = convert * 0.00745058
                } else if to == .Gibibyte {
                    convert = convert * 0.000931323
                } else if to == .Terabit {
                    convert = convert * 8e-6
                } else if to == .Terabyte {
                    convert = convert * 1e-6
                } else if to == .Tebibit {
                    convert = convert * 7.276e-6
                } else if to == .Tebibyte {
                    convert = convert * 9.0949e-7
                } else if to == .Petabit {
                    convert = convert * 8e-9
                } else if to == .Petabyte {
                    convert = convert * 1e-9
                } else if to == .Pebibit {
                    convert = convert * 7.1054e-9
                } else if to == .Pebibyte {
                    convert = convert * 8.8818e-10
                }
                
            case .Mebibit:
                if to == .Bit {
                    convert = convert * 1.049e+6
                } else if to == .Byte {
                    convert = convert * 131072
                } else if to == .Kilobit {
                    convert = convert * 1048.58
                } else if to == .Kilobyte {
                    convert = convert * 131.072
                } else if to == .Kibibit {
                    convert = convert * 1024
                } else if to == .Kibibyte {
                    convert = convert * 128
                } else if to == .Megabit {
                    convert = convert * 1.04858
                } else if to == .Megabyte {
                    convert = convert * 0.131072
                } else if to == .Mebibit {
                    convert = convert + 0
                } else if to == .Mebibyte {
                    convert = convert * 0.125
                } else if to == .Gigabit {
                    convert = convert * 0.001
                } else if to == .Gigabyte {
                    convert = convert * 0.000125
                } else if to == .Gibibit {
                    convert = convert * 0.000931323
                } else if to == .Gibibyte {
                    convert = convert * 0.000116415
                } else if to == .Terabit {
                    convert = convert * 1e-6
                } else if to == .Terabyte {
                    convert = convert * 1.25e-7
                } else if to == .Tebibit {
                    convert = convert * 9.0949e-7
                } else if to == .Tebibyte {
                    convert = convert * 1.1369e-7
                } else if to == .Petabit {
                    convert = convert * 1e-9
                } else if to == .Petabyte {
                    convert = convert * 1.25e-10
                } else if to == .Pebibit {
                    convert = convert * 8.8818e-10
                } else if to == .Pebibyte {
                    convert = convert * 1.1102e-10
                }
                
            case .Mebibyte:
                if to == .Bit {
                    convert = convert * 8.389e+6
                } else if to == .Byte {
                    convert = convert * 1.049e+6
                } else if to == .Kilobit {
                    convert = convert * 8388.61
                } else if to == .Kilobyte {
                    convert = convert * 1048.58
                } else if to == .Kibibit {
                    convert = convert * 8192
                } else if to == .Kibibyte {
                    convert = convert * 1024
                } else if to == .Megabit {
                    convert = convert * 8.38861
                } else if to == .Megabyte {
                    convert = convert * 1.04858
                } else if to == .Mebibit {
                    convert = convert * 8
                } else if to == .Mebibyte {
                    convert = convert + 0
                } else if to == .Gigabit {
                    convert = convert * 0.00838861
                } else if to == .Gigabyte {
                    convert = convert * 0.00104858
                } else if to == .Gibibit {
                    convert = convert * 0.0078125
                } else if to == .Gibibyte {
                    convert = convert * 0.000976563
                } else if to == .Terabit {
                    convert = convert * 8.3886e-6
                } else if to == .Terabyte {
                    convert = convert * 1.0486e-6
                } else if to == .Tebibit {
                    convert = convert * 7.6294e-6
                } else if to == .Tebibyte {
                    convert = convert * 9.5367e-7
                } else if to == .Petabit {
                    convert = convert * 8.3886e-9
                } else if to == .Petabyte {
                    convert = convert * 1.0486e-9
                } else if to == .Pebibit {
                    convert = convert * 7.4506e-9
                } else if to == .Pebibyte {
                    convert = convert * 9.3132e-10
                }
                
            case .Gigabit:
                if to == .Bit {
                    convert = convert * 1e+9
                } else if to == .Byte {
                    convert = convert * 1.25e+8
                } else if to == .Kilobit {
                    convert = convert * 1e+6
                } else if to == .Kilobyte {
                    convert = convert * 125000
                } else if to == .Kibibit {
                    convert = convert * 976563
                } else if to == .Kibibyte {
                    convert = convert * 122070
                } else if to == .Megabit {
                    convert = convert * 1000
                } else if to == .Megabyte {
                    convert = convert * 125
                } else if to == .Mebibit {
                    convert = convert * 953.674
                } else if to == .Mebibyte {
                    convert = convert * 119.209
                } else if to == .Gigabit {
                    convert = convert + 0
                } else if to == .Gigabyte {
                    convert = convert * 0.125
                } else if to == .Gibibit {
                    convert = convert * 0.931323
                } else if to == .Gibibyte {
                    convert = convert * 0.116415
                } else if to == .Terabit {
                    convert = convert * 0.001
                } else if to == .Terabyte {
                    convert = convert * 0.000125
                } else if to == .Tebibit {
                    convert = convert * 0.000909495
                } else if to == .Tebibyte {
                    convert = convert * 0.000113687
                } else if to == .Petabit {
                    convert = convert * 1e-6
                } else if to == .Petabyte {
                    convert = convert * 1.25e-7
                } else if to == .Pebibit {
                    convert = convert * 8.8818e-7
                } else if to == .Pebibyte {
                    convert = convert * 1.1102e-7
                }
                
            case .Gigabyte:
                if to == .Bit {
                    convert = convert * 8e+9
                } else if to == .Byte {
                    convert = convert * 1e+9
                } else if to == .Kilobit {
                    convert = convert * 8e+6
                } else if to == .Kilobyte {
                    convert = convert * 1e+6
                } else if to == .Kibibit {
                    convert = convert * 7.813e+6
                } else if to == .Kibibyte {
                    convert = convert * 976563
                } else if to == .Megabit {
                    convert = convert * 8000
                } else if to == .Megabyte {
                    convert = convert * 1000
                } else if to == .Mebibit {
                    convert = convert * 7629.39
                } else if to == .Mebibyte {
                    convert = convert * 953.674
                } else if to == .Gigabit {
                    convert = convert * 8
                } else if to == .Gigabyte {
                    convert = convert + 0
                } else if to == .Gibibit {
                    convert = convert * 7.45058
                } else if to == .Gibibyte {
                    convert = convert * 0.931323
                } else if to == .Terabit {
                    convert = convert * 0.008
                } else if to == .Terabyte {
                    convert = convert * 0.001
                } else if to == .Tebibit {
                    convert = convert * 0.00727596
                } else if to == .Tebibyte {
                    convert = convert * 0.000909495
                } else if to == .Petabit {
                    convert = convert * 8e-6
                } else if to == .Petabyte {
                    convert = convert * 1e-6
                } else if to == .Pebibit {
                    convert = convert * 7.1054e-6
                } else if to == .Pebibyte {
                    convert = convert * 8.8818e-7
                }
                
            case .Gibibit:
                if to == .Bit {
                    convert = convert * 1.074e+9
                } else if to == .Byte {
                    convert = convert * 1.342e+8
                } else if to == .Kilobit {
                    convert = convert * 1.074e+6
                } else if to == .Kilobyte {
                    convert = convert * 134218
                } else if to == .Kibibit {
                    convert = convert * 1.049e+6
                } else if to == .Kibibyte {
                    convert = convert * 131072
                } else if to == .Megabit {
                    convert = convert * 1073.74
                } else if to == .Megabyte {
                    convert = convert * 134.218
                } else if to == .Mebibit {
                    convert = convert * 1024
                } else if to == .Mebibyte {
                    convert = convert * 128
                } else if to == .Gigabit {
                    convert = convert * 1.07374
                } else if to == .Gigabyte {
                    convert = convert * 0.134218
                } else if to == .Gibibit {
                    convert = convert + 0
                } else if to == .Gibibyte {
                    convert = convert * 0.125
                } else if to == .Terabit {
                    convert = convert * 0.00107374
                } else if to == .Terabyte {
                    convert = convert * 0.000134218
                } else if to == .Tebibit {
                    convert = convert * 0.000976563
                } else if to == .Tebibyte {
                    convert = convert * 0.00012207
                } else if to == .Petabit {
                    convert = convert * 1.0737e-6
                } else if to == .Petabyte {
                    convert = convert * 1.3422e-7
                } else if to == .Pebibit {
                    convert = convert * 9.5367e-7
                } else if to == .Pebibyte {
                    convert = convert * 1.1921e-7
                }
                
            case .Gibibyte:
                if to == .Bit {
                    convert = convert * 8.59e+9
                } else if to == .Byte {
                    convert = convert * 1.074e+9
                } else if to == .Kilobit {
                    convert = convert * 8.59e+6
                } else if to == .Kilobyte {
                    convert = convert * 1.074e+6
                } else if to == .Kibibit {
                    convert = convert * 8.389e+6
                } else if to == .Kibibyte {
                    convert = convert * 1.049e+6
                } else if to == .Megabit {
                    convert = convert * 8589.93
                } else if to == .Megabyte {
                    convert = convert * 1073.74
                } else if to == .Mebibit {
                    convert = convert * 8192
                } else if to == .Mebibyte {
                    convert = convert * 1024
                } else if to == .Gigabit {
                    convert = convert * 8.58993
                } else if to == .Gigabyte {
                    convert = convert * 1.07374
                } else if to == .Gibibit {
                    convert = convert * 8
                } else if to == .Gibibyte {
                    convert = convert + 0
                } else if to == .Terabit {
                    convert = convert * 0.00858993
                } else if to == .Terabyte {
                    convert = convert * 0.00107374
                } else if to == .Tebibit {
                    convert = convert * 0.0078125
                } else if to == .Tebibyte {
                    convert = convert * 0.000976563
                } else if to == .Petabit {
                    convert = convert * 8.5899e-6
                } else if to == .Petabyte {
                    convert = convert * 1.0737e-6
                } else if to == .Pebibit {
                    convert = convert * 7.6294e-6
                } else if to == .Pebibyte {
                    convert = convert * 9.5367e-7
                }
                
            case .Terabit:
                if to == .Bit {
                    convert = convert * 1e+12
                } else if to == .Byte {
                    convert = convert * 1.25e+11
                } else if to == .Kilobit {
                    convert = convert * 1e+9
                } else if to == .Kilobyte {
                    convert = convert * 1.25e+8
                } else if to == .Kibibit {
                    convert = convert * 9.766e+8
                } else if to == .Kibibyte {
                    convert = convert * 1.221e+8
                } else if to == .Megabit {
                    convert = convert * 1e+6
                } else if to == .Megabyte {
                    convert = convert * 125000
                } else if to == .Mebibit {
                    convert = convert * 953674
                } else if to == .Mebibyte {
                    convert = convert * 119209
                } else if to == .Gigabit {
                    convert = convert * 1000
                } else if to == .Gigabyte {
                    convert = convert * 125
                } else if to == .Gibibit {
                    convert = convert * 931.323
                } else if to == .Gibibyte {
                    convert = convert * 116.415
                } else if to == .Terabit {
                    convert = convert + 0
                } else if to == .Terabyte {
                    convert = convert * 0.125
                } else if to == .Tebibit {
                    convert = convert * 0.909495
                } else if to == .Tebibyte {
                    convert = convert * 0.113687
                } else if to == .Petabit {
                    convert = convert * 0.001
                } else if to == .Petabyte {
                    convert = convert * 0.000125
                } else if to == .Pebibit {
                    convert = convert * 0.000888178
                } else if to == .Pebibyte {
                    convert = convert * 0.000111022
                }
                
            case .Terabyte:
                if to == .Bit {
                    convert = convert * 8e+12
                } else if to == .Byte {
                    convert = convert * 1e+12
                } else if to == .Kilobit {
                    convert = convert * 8e+9
                } else if to == .Kilobyte {
                    convert = convert * 1e+9
                } else if to == .Kibibit {
                    convert = convert * 7.813e+9
                } else if to == .Kibibyte {
                    convert = convert * 9.766e+8
                } else if to == .Megabit {
                    convert = convert * 8e+6
                } else if to == .Megabyte {
                    convert = convert * 1e+6
                } else if to == .Mebibit {
                    convert = convert * 7.629e+6
                } else if to == .Mebibyte {
                    convert = convert * 953674
                } else if to == .Gigabit {
                    convert = convert * 8000
                } else if to == .Gigabyte {
                    convert = convert * 1000
                } else if to == .Gibibit {
                    convert = convert * 7450.58
                } else if to == .Gibibyte {
                    convert = convert * 931.323
                } else if to == .Terabit {
                    convert = convert * 8
                } else if to == .Terabyte {
                    convert = convert + 0
                } else if to == .Tebibit {
                    convert = convert * 7.27596
                } else if to == .Tebibyte {
                    convert = convert * 0.909495
                } else if to == .Petabit {
                    convert = convert * 0.008
                } else if to == .Petabyte {
                    convert = convert * 0.001
                } else if to == .Pebibit {
                    convert = convert * 0.00710543
                } else if to == .Pebibyte {
                    convert = convert * 0.000888178
                }
                
            case .Tebibit:
                if to == .Bit {
                    convert = convert * 1.1e+12
                } else if to == .Byte {
                    convert = convert * 1.374e+11
                } else if to == .Kilobit {
                    convert = convert * 1.1e+9
                } else if to == .Kilobyte {
                    convert = convert * 1.374e+8
                } else if to == .Kibibit {
                    convert = convert * 1.074e+9
                } else if to == .Kibibyte {
                    convert = convert * 1.342e+8
                } else if to == .Megabit {
                    convert = convert * 1.1e+6
                } else if to == .Megabyte {
                    convert = convert * 137439
                } else if to == .Mebibit {
                    convert = convert * 1.049e+6
                } else if to == .Mebibyte {
                    convert = convert * 131072
                } else if to == .Gigabit {
                    convert = convert * 1099.51
                } else if to == .Gigabyte {
                    convert = convert * 137.439
                } else if to == .Gibibit {
                    convert = convert * 1024
                } else if to == .Gibibyte {
                    convert = convert * 128
                } else if to == .Terabit {
                    convert = convert * 1.09951
                } else if to == .Terabyte {
                    convert = convert * 0.137439
                } else if to == .Tebibit {
                    convert = convert + 0
                } else if to == .Tebibyte {
                    convert = convert * 0.125
                } else if to == .Petabit {
                    convert = convert * 0.00109951
                } else if to == .Petabyte {
                    convert = convert * 0.000137439
                } else if to == .Pebibit {
                    convert = convert * 0.000976563
                } else if to == .Pebibyte {
                    convert = convert * 0.00012207
                }
                
            case .Tebibyte:
                if to == .Bit {
                    convert = convert * 8.796e+12
                } else if to == .Byte {
                    convert = convert * 1.1e+12
                } else if to == .Kilobit {
                    convert = convert * 8.796e+9
                } else if to == .Kilobyte {
                    convert = convert * 1.1e+9
                } else if to == .Kibibit {
                    convert = convert * 8.59e+9
                } else if to == .Kibibyte {
                    convert = convert * 1.074e+9
                } else if to == .Megabit {
                    convert = convert * 8.796e+6
                } else if to == .Megabyte {
                    convert = convert * 1.1e+6
                } else if to == .Mebibit {
                    convert = convert * 8.389e+6
                } else if to == .Mebibyte {
                    convert = convert * 1.049e+6
                } else if to == .Gigabit {
                    convert = convert * 8796.09
                } else if to == .Gigabyte {
                    convert = convert * 1099.51
                } else if to == .Gibibit {
                    convert = convert * 8192
                } else if to == .Gibibyte {
                    convert = convert * 1024
                } else if to == .Terabit {
                    convert = convert * 8.79609
                } else if to == .Terabyte {
                    convert = convert * 1.09951
                } else if to == .Tebibit {
                    convert = convert * 8
                } else if to == .Tebibyte {
                    convert = convert + 0
                } else if to == .Petabit {
                    convert = convert * 0.00879609
                } else if to == .Petabyte {
                    convert = convert * 0.00109951
                } else if to == .Pebibit {
                    convert = convert * 0.0078125
                } else if to == .Pebibyte {
                    convert = convert * 0.000976563
                }
                
            case .Petabit:
                if to == .Bit {
                    convert = convert * 1e+15
                } else if to == .Byte {
                    convert = convert * 1.25e+14
                } else if to == .Kilobit {
                    convert = convert * 1e+12
                } else if to == .Kilobyte {
                    convert = convert * 1.25e+11
                } else if to == .Kibibit {
                    convert = convert * 9.766e+11
                } else if to == .Kibibyte {
                    convert = convert * 1.221e+11
                } else if to == .Megabit {
                    convert = convert * 1e+9
                } else if to == .Megabyte {
                    convert = convert * 1.25e+8
                } else if to == .Mebibit {
                    convert = convert * 9.537e+8
                } else if to == .Mebibyte {
                    convert = convert * 1.192e+8
                } else if to == .Gigabit {
                    convert = convert * 1e+6
                } else if to == .Gigabyte {
                    convert = convert * 125000
                } else if to == .Gibibit {
                    convert = convert * 931323
                } else if to == .Gibibyte {
                    convert = convert * 116415
                } else if to == .Terabit {
                    convert = convert * 1000
                } else if to == .Terabyte {
                    convert = convert * 125
                } else if to == .Tebibit {
                    convert = convert * 909.495
                } else if to == .Tebibyte {
                    convert = convert * 113.687
                } else if to == .Petabit {
                    convert = convert + 0
                } else if to == .Petabyte {
                    convert = convert * 0.125
                } else if to == .Pebibit {
                    convert = convert * 0.888178
                } else if to == .Pebibyte {
                    convert = convert * 0.111022
                }
                
            case .Petabyte:
                if to == .Bit {
                    convert = convert * 8e+15
                } else if to == .Byte {
                    convert = convert * 1e+15
                } else if to == .Kilobit {
                    convert = convert * 8e+12
                } else if to == .Kilobyte {
                    convert = convert * 1e+12
                } else if to == .Kibibit {
                    convert = convert * 7.813e+12
                } else if to == .Kibibyte {
                    convert = convert * 9.766e+11
                } else if to == .Megabit {
                    convert = convert * 8e+9
                } else if to == .Megabyte {
                    convert = convert * 1e+9
                } else if to == .Mebibit {
                    convert = convert * 7.629e+9
                } else if to == .Mebibyte {
                    convert = convert * 9.537e+8
                } else if to == .Gigabit {
                    convert = convert * 8e+6
                } else if to == .Gigabyte {
                    convert = convert * 1e+6
                } else if to == .Gibibit {
                    convert = convert * 7.451e+6
                } else if to == .Gibibyte {
                    convert = convert * 931323
                } else if to == .Terabit {
                    convert = convert * 8000
                } else if to == .Terabyte {
                    convert = convert * 1000
                } else if to == .Tebibit {
                    convert = convert * 7275.96
                } else if to == .Tebibyte {
                    convert = convert * 909.495
                } else if to == .Petabit {
                    convert = convert * 8
                } else if to == .Petabyte {
                    convert = convert + 0
                } else if to == .Pebibit {
                    convert = convert * 7.10543
                } else if to == .Pebibyte {
                    convert = convert * 0.888178
                }
                
            case .Pebibit:
                if to == .Bit {
                    convert = convert * 1.126e+15
                } else if to == .Byte {
                    convert = convert * 1.407e+14
                } else if to == .Kilobit {
                    convert = convert * 1.126e+12
                } else if to == .Kilobyte {
                    convert = convert * 1.407e+11
                } else if to == .Kibibit {
                    convert = convert * 1.1e+12
                } else if to == .Kibibyte {
                    convert = convert * 1.374e+11
                } else if to == .Megabit {
                    convert = convert * 1.126e+9
                } else if to == .Megabyte {
                    convert = convert * 1.407e+8
                } else if to == .Mebibit {
                    convert = convert * 1.074e+9
                } else if to == .Mebibyte {
                    convert = convert * 1.342e+8
                } else if to == .Gigabit {
                    convert = convert * 1.126e+6
                } else if to == .Gigabyte {
                    convert = convert * 140737
                } else if to == .Gibibit {
                    convert = convert * 1.049e+6
                } else if to == .Gibibyte {
                    convert = convert * 131072
                } else if to == .Terabit {
                    convert = convert * 1125.9
                } else if to == .Terabyte {
                    convert = convert * 140.737
                } else if to == .Tebibit {
                    convert = convert * 1024
                } else if to == .Tebibyte {
                    convert = convert * 128
                } else if to == .Petabit {
                    convert = convert * 1.1259
                } else if to == .Petabyte {
                    convert = convert * 0.140737
                } else if to == .Pebibit {
                    convert = convert + 0
                } else if to == .Pebibyte {
                    convert = convert * 0.125
                }
                
            case .Pebibyte:
                if to == .Bit {
                    convert = convert * 9.007e+15
                } else if to == .Byte {
                    convert = convert * 1.126e+15
                } else if to == .Kilobit {
                    convert = convert * 9.007e+12
                } else if to == .Kilobyte {
                    convert = convert * 1.126e+12
                } else if to == .Kibibit {
                    convert = convert * 8.796e+12
                } else if to == .Kibibyte {
                    convert = convert * 1.1e+12
                } else if to == .Megabit {
                    convert = convert * 9.007e+9
                } else if to == .Megabyte {
                    convert = convert * 1.126e+9
                } else if to == .Mebibit {
                    convert = convert * 8.59e+9
                } else if to == .Mebibyte {
                    convert = convert * 1.074e+9
                } else if to == .Gigabit {
                    convert = convert * 9.007e+6
                } else if to == .Gigabyte {
                    convert = convert * 1.126e+6
                } else if to == .Gibibit {
                    convert = convert * 8.389e+6
                } else if to == .Gibibyte {
                    convert = convert * 1.049e+6
                } else if to == .Terabit {
                    convert = convert * 9007.2
                } else if to == .Terabyte {
                    convert = convert * 1125.9
                } else if to == .Tebibit {
                    convert = convert * 8192
                } else if to == .Tebibyte {
                    convert = convert * 1024
                } else if to == .Petabit {
                    convert = convert * 9.0072
                } else if to == .Petabyte {
                    convert = convert * 1.1259
                } else if to == .Pebibit {
                    convert = convert * 8
                } else if to == .Pebibyte {
                    convert = convert + 0
                }
                
                
                
                
                
                
                
                
                
            }
            
            return convert
        }
        
        
        
        
        
        
        
        
        static func fromString(_ string: String) -> digitalStorageUnit? {
            if string == "Bit" {
                return .Bit
            } else if string == "Byte" {
                return .Byte
            } else if string == "Kilobit" {
                return .Kilobit
            } else if string == "Kilobyte" {
                return .Kilobyte
            } else if string == "Kibibit" {
                return .Kibibit
            } else if string == "Kibibyte" {
                return .Kibibyte
            } else if string == "Megabit" {
                return .Megabit
            } else if string == "Megabyte" {
                return .Megabyte
            } else if string == "Mebibit" {
                return .Mebibit
            } else if string == "Mebibyte" {
                return .Mebibyte
            } else if string == "Gigabit" {
                return .Gigabit
            }  else if string == "Gigabyte" {
                return .Gigabyte
            } else if string == "Gibibit" {
                return .Gibibit
            }  else if string == "Gibibyte" {
                return .Gibibyte
            } else if string == "Terabit" {
                return .Terabit
            }  else if string == "Terabyte" {
                return .Terabyte
            } else if string == "Tebibit" {
                return .Tebibit
            }  else if string == "Tebibyte" {
                return .Tebibyte
            } else if string == "Petabit" {
                return .Petabit
            }  else if string == "Petabyte" {
                return .Petabyte
            } else if string == "Pebibit" {
                return .Pebibit
            }  else if string == "Pebibyte" {
                return .Pebibyte
            }
                
                
                
            else {
                return nil
            }
        }
        
        static func allCases() -> [String] {
            var i = 0
            var list = [String]()
            while let unit = digitalStorageUnit(rawValue: i) {
                list.append(unit.description())
                i = i + 1
            }
            return list
        }
        
        
    }
    // -------------------------------------------
    // ------------------ time ------------------
    
    enum timeUnit: Int {
        
        
        case Second = 0, Minute, Hour, Day, Week, Month, Year, Nanosecond, Microsecond, Millisecond, Decade, Century
        
        func description() -> String {
            switch self {
            case .Second:
                return "Second (s)"
            case .Minute:
                return "Minute (min)"
            case .Hour:
                return "Hour (h)"
            case .Day:
                return "Day (day)"
            case .Week:
                return "Week (wk)"
            case .Month:
                return "Month (mo)"
            case .Year:
                return "Year (yr)"
            case .Nanosecond:
                return "Nanosecond (ns)"
            case .Microsecond:
                return "Microsecond (μs)"
            case .Millisecond:
                return "Millisecond (ms)"
            case .Decade:
                return "Decade (dec.)"
            case .Century:
                return "Century (cent.)"
                
                
                
                
                
            }
        }
        
        
        func convertTo(unit to: timeUnit, value val: Double) -> Double {
            var convert = val
            
            switch self {
                
                
            case .Second:
                if to == .Second {
                    convert = convert + 0
                } else if to == .Minute {
                    convert = convert * 0.0166667
                } else if to == .Hour {
                    convert = convert * 0.000277778
                } else if to == .Day {
                    convert = convert * 1.1574e-5
                } else if to == .Week {
                    convert = convert * 1.6534e-6
                } else if to == .Month {
                    convert = convert * 3.8052e-7
                } else if to == .Year {
                    convert = convert * 3.171e-8
                } else if to == .Nanosecond {
                    convert = convert * 1e+9
                } else if to == .Microsecond {
                    convert = convert * 1e+6
                } else if to == .Millisecond {
                    convert = convert * 1000
                } else if to == .Decade {
                    convert = convert * 3.171e-9
                } else if to == .Century {
                    convert = convert * 3.171e-10
                }
                
            case .Minute:
                if to == .Second {
                    convert = convert * 60
                } else if to == .Minute {
                    convert = convert + 0
                } else if to == .Hour {
                    convert = convert * 0.0166667
                } else if to == .Day {
                    convert = convert * 0.000694444
                } else if to == .Week {
                    convert = convert * 9.9206e-5
                } else if to == .Month {
                    convert = convert * 2.2831e-5
                } else if to == .Year {
                    convert = convert * 1.9026e-6
                } else if to == .Nanosecond {
                    convert = convert * 6e+10
                } else if to == .Microsecond {
                    convert = convert * 6e+7
                } else if to == .Millisecond {
                    convert = convert * 60000
                } else if to == .Decade {
                    convert = convert * 1.9026e-7
                } else if to == .Century {
                    convert = convert * 1.9026e-8
                }
                
            case .Hour:
                if to == .Second {
                    convert = convert * 3600
                } else if to == .Minute {
                    convert = convert * 60
                } else if to == .Hour {
                    convert = convert + 0
                } else if to == .Day {
                    convert = convert * 0.0416667
                } else if to == .Week {
                    convert = convert * 0.00595238
                } else if to == .Month {
                    convert = convert * 0.00136986
                } else if to == .Year {
                    convert = convert * 0.000114155
                } else if to == .Nanosecond {
                    convert = convert * 3.6e+12
                } else if to == .Microsecond {
                    convert = convert * 3.6e+9
                } else if to == .Millisecond {
                    convert = convert * 3.6e+6
                } else if to == .Decade {
                    convert = convert * 1.1416e-5
                } else if to == .Century {
                    convert = convert * 1.1416e-6
                }
                
                
            case .Day:
                if to == .Second {
                    convert = convert * 86400
                } else if to == .Minute {
                    convert = convert * 1440
                } else if to == .Hour {
                    convert = convert * 24
                } else if to == .Day {
                    convert = convert + 0
                } else if to == .Week {
                    convert = convert * 0.142857
                } else if to == .Month {
                    convert = convert * 0.0328767
                } else if to == .Year {
                    convert = convert * 0.00273973
                } else if to == .Nanosecond {
                    convert = convert * 8.64e+13
                } else if to == .Microsecond {
                    convert = convert * 8.64e+10
                } else if to == .Millisecond {
                    convert = convert * 8.64e+7
                } else if to == .Decade {
                    convert = convert * 0.000273973
                } else if to == .Century {
                    convert = convert * 2.7397e-5
                }
                
            case .Week:
                if to == .Second {
                    convert = convert * 604800
                } else if to == .Minute {
                    convert = convert * 10080
                } else if to == .Hour {
                    convert = convert * 168
                } else if to == .Day {
                    convert = convert * 7
                } else if to == .Week {
                    convert = convert + 0
                } else if to == .Month {
                    convert = convert * 0.230137
                } else if to == .Year {
                    convert = convert * 0.0191781
                } else if to == .Nanosecond {
                    convert = convert * 6.048e+14
                } else if to == .Microsecond {
                    convert = convert * 6.048e+11
                } else if to == .Millisecond {
                    convert = convert * 6.048e+8
                } else if to == .Decade {
                    convert = convert * 0.00191781
                } else if to == .Century {
                    convert = convert * 0.000191781
                }
                
            case .Month:
                if to == .Second {
                    convert = convert * 2.628e+6
                } else if to == .Minute {
                    convert = convert * 43800
                } else if to == .Hour {
                    convert = convert * 730.001
                } else if to == .Day {
                    convert = convert * 30.4167
                } else if to == .Week {
                    convert = convert * 4.34524
                } else if to == .Month {
                    convert = convert + 0
                } else if to == .Year {
                    convert = convert * 0.0833334
                } else if to == .Nanosecond {
                    convert = convert * 2.628e+15
                } else if to == .Microsecond {
                    convert = convert * 2.628e+12
                } else if to == .Millisecond {
                    convert = convert * 2.628e+9
                } else if to == .Decade {
                    convert = convert * 0.00833334
                } else if to == .Century {
                    convert = convert * 0.000833334
                }
                
            case .Year:
                if to == .Second {
                    convert = convert * 3.154e+7
                } else if to == .Minute {
                    convert = convert * 525600
                } else if to == .Hour {
                    convert = convert * 8760
                } else if to == .Day {
                    convert = convert * 365
                } else if to == .Week {
                    convert = convert * 52.1429
                } else if to == .Month {
                    convert = convert * 12
                } else if to == .Year {
                    convert = convert + 0
                } else if to == .Nanosecond {
                    convert = convert * 3.154e+16
                } else if to == .Microsecond {
                    convert = convert * 3.154e+13
                } else if to == .Millisecond {
                    convert = convert * 3.154e+10
                } else if to == .Decade {
                    convert = convert * 0.1
                } else if to == .Century {
                    convert = convert * 0.01
                }
                
            case .Nanosecond:
                if to == .Second {
                    convert = convert * 1e-9
                } else if to == .Minute {
                    convert = convert * 1.6667e-11
                } else if to == .Hour {
                    convert = convert * 2.7778e-13
                } else if to == .Day {
                    convert = convert * 1.1574e-14
                } else if to == .Week {
                    convert = convert * 1.6534e-15
                } else if to == .Month {
                    convert = convert * 3.8052e-16
                } else if to == .Year {
                    convert = convert * 3.171e-17
                } else if to == .Nanosecond {
                    convert = convert + 0
                } else if to == .Microsecond {
                    convert = convert * 0.001
                } else if to == .Millisecond {
                    convert = convert * 1e-6
                } else if to == .Decade {
                    convert = convert * 3.171e-18
                } else if to == .Century {
                    convert = convert * 3.171e-19
                }
                
            case .Microsecond:
                if to == .Second {
                    convert = convert * 1e-6
                } else if to == .Minute {
                    convert = convert * 1.6667e-8
                } else if to == .Hour {
                    convert = convert * 2.7778e-10
                } else if to == .Day {
                    convert = convert * 1.1574e-11
                } else if to == .Week {
                    convert = convert * 1.6534e-12
                } else if to == .Month {
                    convert = convert * 3.8052e-13
                } else if to == .Year {
                    convert = convert * 3.171e-14
                } else if to == .Nanosecond {
                    convert = convert * 1000
                } else if to == .Microsecond {
                    convert = convert + 0
                } else if to == .Millisecond {
                    convert = convert * 0.001
                } else if to == .Decade {
                    convert = convert * 3.171e-15
                } else if to == .Century {
                    convert = convert * 3.171e-16
                }
                
            case .Millisecond:
                if to == .Second {
                    convert = convert * 0.001
                } else if to == .Minute {
                    convert = convert * 1.6667e-5
                } else if to == .Hour {
                    convert = convert * 2.7778e-7
                } else if to == .Day {
                    convert = convert * 1.1574e-8
                } else if to == .Week {
                    convert = convert * 1.6534e-9
                } else if to == .Month {
                    convert = convert * 3.8052e-10
                } else if to == .Year {
                    convert = convert * 3.171e-11
                } else if to == .Nanosecond {
                    convert = convert * 1e+6
                } else if to == .Microsecond {
                    convert = convert * 1000
                } else if to == .Millisecond {
                    convert = convert + 0
                } else if to == .Decade {
                    convert = convert * 3.171e-12
                } else if to == .Century {
                    convert = convert * 3.171e-13
                }
                
            case .Decade:
                if to == .Second {
                    convert = convert * 3.154e+8
                } else if to == .Minute {
                    convert = convert * 5.256e+6
                } else if to == .Hour {
                    convert = convert * 87600
                } else if to == .Day {
                    convert = convert * 3650
                } else if to == .Week {
                    convert = convert * 521.429
                } else if to == .Month {
                    convert = convert * 120
                } else if to == .Year {
                    convert = convert * 10
                } else if to == .Nanosecond {
                    convert = convert * 3.154e+17
                } else if to == .Microsecond {
                    convert = convert * 3.154e+14
                } else if to == .Millisecond {
                    convert = convert * 3.154e+11
                } else if to == .Decade {
                    convert = convert + 0
                } else if to == .Century {
                    convert = convert * 0.1
                }
                
            case .Century:
                if to == .Second {
                    convert = convert * 3.154e+9
                } else if to == .Minute {
                    convert = convert * 5.256e+7
                } else if to == .Hour {
                    convert = convert * 876000
                } else if to == .Day {
                    convert = convert * 36500
                } else if to == .Week {
                    convert = convert * 5214.29
                } else if to == .Month {
                    convert = convert * 1200
                } else if to == .Year {
                    convert = convert * 100
                } else if to == .Nanosecond {
                    convert = convert * 3.154e+18
                } else if to == .Microsecond {
                    convert = convert * 3.154e+15
                } else if to == .Millisecond {
                    convert = convert * 3.154e+12
                } else if to == .Decade {
                    convert = convert * 10
                } else if to == .Century {
                    convert = convert + 0
                }
                
                
                
                
                
                
                
                
            }
            
            return convert
        }
        
        
        
        
        
        
        
        
        static func fromString(_ string: String) -> timeUnit? {
            if string == "Second (s)" {
                return .Second
            } else if string == "Minute (min)" {
                return .Minute
            } else if string == "Hour (h)" {
                return .Hour
            } else if string == "Day (day)" {
                return .Day
            } else if string == "Week (wk)" {
                return .Week
            } else if string == "Month (mo)" {
                return .Month
            } else if string == "Year (yr)" {
                return .Year
            } else if string == "Nanosecond (ns)" {
                return .Nanosecond
            } else if string == "Microsecond (μs)" {
                return .Microsecond
            } else if string == "Millisecond (ms)" {
                return .Millisecond
            } else if string == "Decade (dec.)" {
                return .Decade
            }  else if string == "Century (cent.)" {
                return .Century
                
                
                
                
            } else {
                return nil
            }
        }
        
        static func allCases() -> [String] {
            var i = 0
            var list = [String]()
            while let unit = timeUnit(rawValue: i) {
                list.append(unit.description())
                i = i + 1
            }
            return list
        }
        
        
    }
    // -------------------------------------------
    // %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    var activeLandscape: Bool? = true
    var cornerRadius_forButtons: Double = 0
    
    
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
        
        
        
        
        print("tag1_button.bounds in viewWillLayoutSubviews in instantiatedYellowViewController: \(tag1_button.bounds)")
        print("tag1_button.bounds.height in viewWillLayoutSubviews in instantiatedYellowViewController: \(tag1_button.bounds.height)")
        print("tag1_button.bounds.height / 2 in viewWillLayoutSubviews in instantiatedYellowViewController: \(Double(tag1_button.bounds.height / 2))")
        
        // NEED NEED NEEDDDDDDDDDDDD start 5
        
        if UIDevice.current.orientation == UIDeviceOrientation.landscapeLeft{
            //  activeLandscape = true
            cornerRadius_forButtons = Double(tag1_button.bounds.height / 2.0)
        }
        else if UIDevice.current.orientation == UIDeviceOrientation.landscapeRight{
            // activeLandscape = true
            cornerRadius_forButtons = Double(tag1_button.bounds.height / 2.0)
            
        } else {
            //PORTRAIT
            //  activeLandscape = false
            cornerRadius_forButtons = Double(tag1_button.bounds.height / 2.0)
            
        }
        
        
        
        
//        tag1_button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//        
//        
//        tag2_button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//        //
//        tag3_button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//        //
//        tag4_button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//        //
//    
//        tag5_button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//        tag6_button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//        tag7_button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//        
//        tag8_button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//        
//        tag9_button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//        //
//        tag10_button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//        //
//        //
//        tag11_button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//        
//        
//        tag12_button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//        
//        
//        
//        tag13_button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//        
//        tag14_button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//        
//        tag15_button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//        
//        tag16_button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
//        
//        tag17_button.layer.cornerRadius = CGFloat(cornerRadius_forButtons)
       
        
        // viewDidLoad()
    }
    
    
    
}


