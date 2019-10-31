//
//  CheeseController.swift
//  Pitza
//
//  Created by moviles on 10/31/19.
//  Copyright © 2019 moviles. All rights reserved.
//

import UIKit

class CheeseController: UIViewController {
    
    var pizzaSize: String?
    var flour: String?

    @IBOutlet var myview: UIView!
    @IBOutlet weak var mozSwitch: UISwitch!
    @IBOutlet weak var chedSwitch: UISwitch!
    @IBOutlet weak var parSwitch: UISwitch!
    @IBOutlet weak var withoutSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func mozAct(_ sender: Any) {
        if(mozSwitch.isOn){
            chedSwitch.setOn(false,animated: true)
            parSwitch.setOn(false,animated: true)
            withoutSwitch.setOn(false,animated: true)
        }else{
            mozSwitch.setOn(false,animated: true)
        }
    }
    
    @IBAction func chedAct(_ sender: Any) {
        if(chedSwitch.isOn){
            mozSwitch.setOn(false,animated: true)
            parSwitch.setOn(false,animated: true)
            withoutSwitch.setOn(false,animated: true)
        }else{
            chedSwitch.setOn(false,animated: true)
        }
    }
    
    @IBAction func parAct(_ sender: Any) {
        if(parSwitch.isOn){
            mozSwitch.setOn(false,animated: true)
            chedSwitch.setOn(false,animated: true)
            withoutSwitch.setOn(false,animated: true)
        }else{
            parSwitch.setOn(false,animated: true)
        }
    }
    
    @IBAction func withAct(_ sender: Any) {
        if(withoutSwitch.isOn){
            mozSwitch.setOn(false,animated: true)
            chedSwitch.setOn(false,animated: true)
            parSwitch.setOn(false,animated: true)
        }else{
            withoutSwitch.setOn(false,animated: true)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? IngredienteController
        vc?.pizzaSize = self.pizzaSize
        vc?.flour = self.flour
        vc?.cheese = getCheese()
    }
    
    func getCheese()->String{
        var result = ""
        if(mozSwitch.isOn){
            result = "Mozarela"
        }else if(chedSwitch.isOn){
            result = "Cheddar"
        }else if(parSwitch.isOn){
            result = "Parmesano"
        }else if(withoutSwitch.isOn){
            result = "Without cheese"
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
