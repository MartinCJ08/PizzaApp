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
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? FinishController
        vc?.pizzaSize = self.pizzaSize
        vc?.flour = self.flour
        vc?.cheese = self.cheese
    }

    @IBAction func jamAct(_ sender: Any) {
        
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
