//
//  ViewController.swift
//  txt
//
//  Created by Sriram Prasad on 12/11/18.
//  Copyright © 2018 FullStackNet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
var arrdata = [Person]()
    let nametxtfield: UITextField = {
        let txt = UITextField()
        txt.translatesAutoresizingMaskIntoConstraints = false
        txt.borderStyle = .line
        return txt
    }()
    
    let citytxtfield: UITextField = {
        let txt = UITextField()
        txt.translatesAutoresizingMaskIntoConstraints = false
        txt.borderStyle = .line
        return txt
    }()
    
    let saveButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Save Data", for: .normal)
        button.layer.backgroundColor = UIColor.red.cgColor
        button.addTarget(self, action: #selector(handleSaveButton), for: .touchUpInside)
        return button
    }()
    let getDataButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Get Data", for: .normal)
        button.layer.backgroundColor = UIColor.red.cgColor
        button.addTarget(self, action: #selector(handleGetdataButton), for: .touchUpInside)
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(citytxtfield)
        view.addSubview(nametxtfield)
        view.addSubview(saveButton)
        view.addSubview(getDataButton)

        
        setupConstraints()
      
    }

    
   
       
    
    
    private func setupConstraints(){
        let constraints =
                [
        
            
            nametxtfield.topAnchor.constraint(equalTo: view.topAnchor,constant: 200),
            nametxtfield.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -20),
            nametxtfield.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 20),
            nametxtfield.heightAnchor.constraint(lessThanOrEqualToConstant: 40),
            
            
            
            citytxtfield.topAnchor.constraint(equalTo: nametxtfield.bottomAnchor,constant: 30),
            citytxtfield.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -20),
            citytxtfield.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 20),            citytxtfield.heightAnchor.constraint(lessThanOrEqualToConstant: 40),
            
            
            saveButton.topAnchor.constraint(equalTo: citytxtfield.bottomAnchor,constant: 30),
            saveButton.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -20),
            saveButton.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 20),
            saveButton.heightAnchor.constraint(lessThanOrEqualToConstant: 40),
            
            
            getDataButton.topAnchor.constraint(equalTo: saveButton.bottomAnchor,constant: 30),
            getDataButton.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -20),
            getDataButton.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 20),
            getDataButton.heightAnchor.constraint(lessThanOrEqualToConstant: 40),
            
        ]
        
        NSLayoutConstraint.activate(constraints)

    }
    @objc func handleSaveButton(){
        let dict = ["name": nametxtfield.text,"city":citytxtfield.text]
        Databasehandler.shared.saveData(object: dict  as! [String : String])

       
        }
    
    @objc func handleGetdataButton(){
        let VC = listVc()
        present(VC, animated: true, completion: nil)
       

}

}
