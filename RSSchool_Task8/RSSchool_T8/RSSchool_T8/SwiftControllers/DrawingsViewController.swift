//
//  DrawingsViewController.swift
//  RSSchool_T8
//
//  Created by Вякулин Сергей on 19.07.2021.
//

import UIKit

class DrawingsViewController: UIViewController {
    @IBOutlet weak var planetButton: CustomButtons!
    @IBOutlet weak var headButton: CustomButtons!
    @IBOutlet weak var treebutton: CustomButtons!
    @IBOutlet weak var landscapeButton: CustomButtons!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        self.presettButtons(button: planetButton)
        self.presettButtons(button: headButton)
        self.presettButtons(button: treebutton)
        self.presettButtons(button: landscapeButton)
        let buttonShadowColor = UIColor.init(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        self.createShadow(view: planetButton, shadowPathRadius: 10, color: buttonShadowColor, opacity: 1, shadowRadius: 1, offset: CGSize.zero)
        self.createShadow(view: headButton, shadowPathRadius: 10, color: buttonShadowColor, opacity: 1, shadowRadius: 1, offset: CGSize.zero)
        self.createShadow(view: treebutton, shadowPathRadius: 10, color: buttonShadowColor, opacity: 1, shadowRadius: 1, offset: CGSize.zero)
        self.createShadow(view: landscapeButton, shadowPathRadius: 10, color: buttonShadowColor, opacity: 1, shadowRadius: 1, offset: CGSize.zero)
        
        self.navigationController?.navigationBar.tintColor = UIColor.init(red: 0.113, green: 0.69, blue: 0.56, alpha: 1)
        
        
        
        treebutton.addTarget(self, action: #selector(treeButtonTapped), for: .touchUpInside)
        planetButton.addTarget(self, action: #selector(planetButtonTapped), for: .touchUpInside)
        headButton.addTarget(self, action: #selector(headButtonTapped), for: .touchUpInside)
        landscapeButton.addTarget(self, action: #selector(landscapeButtonTapped), for: .touchUpInside)
        
        guard let nav = self.parent as? UINavigationController else {return}
        guard let vc = nav.viewControllers[0] as? FirstViewController else {return}
        let buttonCheckShadowColor = UIColor.init(red: 0.13, green: 0.69, blue: 0.56, alpha: 1).cgColor
        if vc.canvasLayersName == "tree" {
            self.createShadow(view: treebutton, shadowPathRadius: 10, color: buttonCheckShadowColor, opacity: 1, shadowRadius: 2, offset: CGSize.zero)
        }else if vc.canvasLayersName == "planet" {
            self.createShadow(view: planetButton, shadowPathRadius: 10, color: buttonCheckShadowColor, opacity: 1, shadowRadius: 2, offset: CGSize.zero)
        }else if vc.canvasLayersName == "head" {
            self.createShadow(view: headButton, shadowPathRadius: 10, color: buttonCheckShadowColor, opacity: 1, shadowRadius: 2, offset: CGSize.zero)
        }else {
            self.createShadow(view: landscapeButton, shadowPathRadius: 10, color: buttonCheckShadowColor, opacity: 1, shadowRadius: 2, offset: CGSize.zero)
        }
    
    }
    
    @objc func treeButtonTapped(button: UIButton){
        guard let nav = self.parent as? UINavigationController else {return}
        guard let vc = nav.viewControllers[0] as? FirstViewController else {return}
        vc.canvasLayersName = "tree"
        self.navigationController?.popViewController(animated: true)
        
    }
    @objc func planetButtonTapped(button: UIButton){
        guard let nav = self.parent as? UINavigationController else {return}
        guard let vc = nav.viewControllers[0] as? FirstViewController else {return}
        vc.canvasLayersName = "planet"
        self.navigationController?.popViewController(animated: true)
    }
    @objc func headButtonTapped(button: UIButton){
        guard let nav = self.parent as? UINavigationController else {return}
        guard let vc = nav.viewControllers[0] as? FirstViewController else {return}
        vc.canvasLayersName = "head"
        self.navigationController?.popViewController(animated: true)
    }
    @objc func landscapeButtonTapped(button: UIButton){
        guard let nav = self.parent as? UINavigationController else {return}
        guard let vc = nav.viewControllers[0] as? FirstViewController else {return}
        vc.canvasLayersName = "landscape"
        self.navigationController?.popViewController(animated: true)
    }
    
    func createShadow(view: UIView, shadowPathRadius: CGFloat, color: CGColor, opacity: Float, shadowRadius: CGFloat, offset: CGSize){
        let shadowPath = UIBezierPath.init(roundedRect: view.bounds, cornerRadius: shadowPathRadius)
        view.layer.shadowPath = shadowPath.cgPath
        view.layer.shadowColor = color
        view.layer.shadowOpacity = opacity
        view.layer.shadowRadius = shadowRadius
        view.layer.shadowOffset = offset
        
    }
    
    func presettButtons(button: UIButton){
        button.backgroundColor = UIColor.white
        button.layer.cornerRadius = 10
    }

}
