//
//  IngredienteController.swift
//  Pitza
//
//  Created by moviles on 10/28/19.
//  Copyright © 2019 moviles. All rights reserved.
//

import UIKit

class IngredienteController: UIViewController {
    
    var pizzaSize: String?
    var flour: String?
    var cheese: String?
    
    var ingredients = Set<String>()

    @IBOutlet weak var pep: UISwitch!
    @IBOutlet weak var jam: UISwitch!
    @IBOutlet weak var aceituna: UISwitch!
    @IBOutlet weak var pimiento: UISwitch!
    @IBOutlet weak var pina: UISwitch!
    @IBOutlet weak var pavo: UISwitch!
    @IBOutlet weak var cebolla: UISwitch!
    @IBOutlet weak var salchicha: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? FinishController
        vc?.pizzaSize = self.pizzaSize
        vc?.flour = self.flour
        vc?.cheese = self.cheese
        vc?.ingredients = self.ingredients
    }
    
    func isOk()->Bool{
        var ban = false
        if(ingredients.count < 5){
            ban = true
        }
        return ban
    }
    
    func turnAllOff(){
        pep.setOn(false,animated: true)
        jam.setOn(false,animated: true)
        aceituna.setOn(false,animated: true)
        pimiento.setOn(false,animated: true)
        pina.setOn(false,animated: true)
        pavo.setOn(false,animated: true)
        cebolla.setOn(false,animated: true)
        salchicha.setOn(false,animated: true)
        ingredients = Set<String>()
    }

    @IBAction func jamAct(_ sender: Any) {
        if(jam.isOn){
            if(isOk()){
                ingredients.insert("Jamón")
            }else{
                turnAllOff()
            }
        }else{
            ingredients.remove("Jamón")
        }
    }
    
    @IBAction func pepAct(_ sender: Any) {
        if(pep.isOn){
            if(isOk()){
                ingredients.insert("Pepperoni")
            }else{
                turnAllOff()
            }
        }else{
            ingredients.remove("Pepperoni")
        }
    }
    
    @IBAction func aceAct(_ sender: Any) {
        if(aceituna.isOn){
            if(isOk()){
                ingredients.insert("Aceituna")
            }else{
                turnAllOff()
            }
        }else{
            ingredients.insert("Aceituna")
        }
    }
    
    @IBAction func pimAct(_ sender: Any) {
        if(pimiento.isOn){
            if(isOk()){
                ingredients.insert("Pimiento")
            }else{
                turnAllOff()
            }
        }else{
            ingredients.remove("Pimiento")
        }
    }
    
    @IBAction func pinaAct(_ sender: Any) {
        if(pina.isOn){
            if(isOk()){
                ingredients.insert("Piña")
            }else{
                turnAllOff()
            }
            
        }else{
            ingredients.remove("Piña")
        }
    }
    
    @IBAction func pavoAct(_ sender: Any) {
        if(pavo.isOn){
            if(isOk()){
                ingredients.insert("Pavo")
            }else{
                turnAllOff()
            }
            
        }else{
            ingredients.remove("Pavo")
        }
    }
    
    @IBAction func cebollaAct(_ sender: Any) {
        if(cebolla.isOn){
            if(isOk()){
                ingredients.insert("Cebolla")
            }else{
                turnAllOff()
            }
            
        }else{
            ingredients.remove("Cebolla")
        }
    }
    
    @IBAction func salchAct(_ sender: Any) {
        if(salchicha.isOn){
            if(isOk()){
                ingredients.insert("Salchicha")
            }else{
                turnAllOff()
            }
           
        }else{
            ingredients.remove("Salchicha")
        }
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
