//
//  FinishController.swift
//  Pitza
//
//  Created by moviles on 10/31/19.
//  Copyright © 2019 moviles. All rights reserved.
//

import UIKit

class FinishController: UIViewController {
    
    var pizzaSize: String?
    var flour: String?
    var cheese: String?
    
     var ingredients = Set<String>()

    @IBOutlet weak var lblDeliver: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        var valIngredient = ""
        for ingredient in ingredients{
            valIngredient = ingredient + valIngredient + "\n"
        }
        
        lblDeliver.text = "Size: \(pizzaSize!) \nFlour: \(flour!) \nCheese: \(cheese!) \nIngredients: \(valIngredient)"

        // Do any additional setup after loading the view.
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
