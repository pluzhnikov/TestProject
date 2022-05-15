//
//  ViewController.swift
//  TestProject
//
//  Created by Max on 13.05.2022.
//

import UIKit

class ViewController: UIViewController {
//https://mega.nz/fm/nXhkkCBL
    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var myView2: UIView!
    @IBOutlet weak var mySlider: UISlider!
    
    @IBOutlet weak var mySwich: UISwitch!
    var mySlider2 = UISlider()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textLabel.text = "hello world"
        textLabel.textColor = .red
        
   
      
        self.mySlider2.frame = CGRect(x: 0, y: 0, width: 200, height: 28)
        self.mySlider2.center = self.view.center
        
        self.mySlider2.minimumValue = 0.0
        self.mySlider2.maximumValue = 30.0
        
        self.view.addSubview(mySlider2)
        self.mySlider2.addTarget(self, action: #selector(changeMySlider(param:)), for: .valueChanged)
    }
    @IBAction func switchAction(_ sender: UISwitch) {
         
        textLabel.isHidden = sender.isOn
        // add new function
        print("test)
    }
    
    @objc func changeMySlider(param: UISlider){
        
        let myValue = param.value
        switch myValue {
        case 1...10:
            myView2.backgroundColor = UIColor.purple
        case 10 ... 15:
            myView2.backgroundColor = .blue
        case 15...20:
            myView2.backgroundColor = .green
        case 20...25:
            myView2.backgroundColor = .yellow
        default : myView2.backgroundColor = .red
            
        }
        
        
    
        
        
    }

}

