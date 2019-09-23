//
//  KeyboardViewController.swift
//  customKeyboard
//
//  Created by Anthony on 12/31/17.
//  Copyright © 2017 CHE Equations. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    
    // from tutorial https://www.youtube.com/watch?v=wDP918FkRmg
    @IBOutlet var customKeyboard: UIButton!

    override func updateViewConstraints() {
        super.updateViewConstraints()
        
        // Add custom view sizing constraints here
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Perform custom UI setup here
        self.nextKeyboardButton = UIButton(type: .system)
        
        self.nextKeyboardButton.setTitle(NSLocalizedString("Next Keyboard", comment: "Title for 'Next Keyboard' button"), for: [])
        self.nextKeyboardButton.sizeToFit()
        self.nextKeyboardButton.translatesAutoresizingMaskIntoConstraints = false
        
        self.nextKeyboardButton.addTarget(self, action: #selector(handleInputModeList(from:with:)), for: .allTouchEvents)
        
        self.view.addSubview(self.nextKeyboardButton)
        
        self.nextKeyboardButton.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        self.nextKeyboardButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        
        
        // from tutorial https://www.youtube.com/watch?v=wDP918FkRmg
        self.customKeyboard = UIButton(type: .system) as UIButton
        self.customKeyboard.setTitle("Testing", for: .normal)
        self.customKeyboard.sizeToFit()
        self.customKeyboard.translatesAutoresizingMaskIntoConstraints = false
        self.customKeyboard.addTarget(self, action: Selector(("inputTextIntoField")), for: .touchUpInside)
        self.customKeyboard.addSubview(self.customKeyboard)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }
    
    func inputTextIntoField() {
        let proxy = self.textDocumentProxy as UITextDocumentProxy
        proxy.insertText("Success!")
    }
    
    override func textWillChange(_ textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }
    
    override func textDidChange(_ textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
        
        var textColor: UIColor
        let proxy = self.textDocumentProxy
        if proxy.keyboardAppearance == UIKeyboardAppearance.dark {
            textColor = UIColor.white
        } else {
            textColor = UIColor.black
        }
        self.nextKeyboardButton.setTitleColor(textColor, for: [])
    }

}
