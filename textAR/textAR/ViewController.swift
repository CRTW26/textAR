//
//  ViewController.swift
//  textAR
//
//  Created by Connor Worthington on 11/11/2020.
//

import Foundation
import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController {
 
    var text: String = ""
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func textEntered(_ sender: UITextField, forEvent event: UIEvent) {
        text = sender.text ?? "error"
//        let arView = ARViewController()
        self.performSegue(withIdentifier: "textsegue", sender: self)
//        arView.text = text ?? "error"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.destination is ARViewController
        {
            let vc = segue.destination as! ARViewController
            vc.text = text
        }
    }

    
}

