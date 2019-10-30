//
//  TamanoController.swift
//  Pitza
//
//  Created by moviles on 10/28/19.
//  Copyright © 2019 moviles. All rights reserved.
//

import UIKit

class TamanoController: UIViewController {

    @IBOutlet weak var smallSwitch: UISwitch!
    @IBOutlet weak var medSwitch: UISwitch!
    @IBOutlet weak var largeSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func smallAct(_ sender: Any) {
        if(smallSwitch.isOn){
            medSwitch.setOn(false, animated: true)
            largeSwitch.setOn(false, animated: true)
        }else{
            smallSwitch.setOn(true, animated: false)
        }
    }
    
    @IBAction func medAct(_ sender: Any) {
        if(medSwitch.isOn){
            smallSwitch.setOn(false,animated: true)
            largeSwitch.setOn(false,animated: true)
        }else{
            medSwitch.setOn(true, animated: false)
        }
    }
    
    @IBAction func largeAct(_ sender: Any) {
        if(largeSwitch.isOn){
            smallSwitch.setOn(false,animated: true)
            medSwitch.setOn(false,animated: true)
        }else{
            largeSwitch.setOn(true, animated: false)
        }
        
        print(getPizzaSize())
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? MasaController
        vc?.pizzaSize = getPizzaSize()
    }
    
    
    func getPizzaSize()->String{
        var result = ""
        if(smallSwitch.isOn){
            result = "small"
        }else if(medSwitch.isOn){
            result = "medium"
        }else if(largeSwitch.isOn){
            result = "large"
        }
        return result
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
