//
//  MasaController.swift
//  Pitza
//
//  Created by moviles on 10/28/19.
//  Copyright © 2019 moviles. All rights reserved.
//

import UIKit

class MasaController: UIViewController {
    
    var pizzaSize: String?


    @IBOutlet weak var thinSwitch: UISwitch!
    @IBOutlet weak var crunSwitch: UISwitch!
    @IBOutlet weak var thickSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func thinAct(_ sender: Any) {
        if(thinSwitch.isOn){
            crunSwitch.setOn(false,animated: true)
            thickSwitch.setOn(false,animated: true)
        }else{
            thinSwitch.setOn(true, animated: false)
        }
    }
    
    @IBAction func crunAct(_ sender: Any) {
        if(crunSwitch.isOn){
            thinSwitch.setOn(false,animated: true)
            thickSwitch.setOn(false,animated: true)
        }else{
            crunSwitch.setOn(true, animated: false)
        }
    }
    
    @IBAction func thickAct(_ sender: Any) {
        if(thickSwitch.isOn){
            crunSwitch.setOn(false,animated: true)
            thinSwitch.setOn(false,animated: true)
        }else{
            thickSwitch.setOn(true, animated: false)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? CheeseController
        vc?.pizzaSize = self.pizzaSize
        vc?.flour = getFlour()
    }

    func getFlour()->String{
        var sResul = ""
        if(thickSwitch.isOn){
            sResul = "Thin"
        }else if(crunSwitch.isOn){
            sResul = "Crunchy"
        }else if(thickSwitch.isOn){
            sResul = "Thick"
        }
        
        return sResul
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
