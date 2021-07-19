//
//  TimerViewController.swift
//  RSSchool_T8
//
//  Created by Вякулин Сергей on 19.07.2021.
//

import UIKit

class TimerViewController: UIViewController{
    @objc var delegate: ModalViewDelegate?
    
    @IBOutlet weak var saveButton: CustomButtons!
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var slider: UISlider!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let shadowColor = UIColor.init(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        saveButton.backgroundColor = UIColor.white
        saveButton.layer.cornerRadius = 10
        self.createShadow(view: saveButton, shadowPathRadius: 10, color: shadowColor, opacity: 1, shadowRadius: 1, offset: CGSize.zero)
        self.view.layer.cornerRadius = 40
        self.createShadow(view: self.view, shadowPathRadius: 40, color: shadowColor, opacity: 1, shadowRadius: 4, offset: CGSize.zero)
        guard let del = delegate as? FirstViewController else {return}
        slider.value = Float(del.timerInterval)
        timerLabel.text = "\((slider.value * 100).rounded() / 100) s"
        
        saveButton.addTarget(self, action: #selector(saveButtonTapped), for: .touchUpInside)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        guard let del = delegate as? FirstViewController else {return}
        slider.value = Float(del.timerInterval)
        timerLabel.text = "\((slider.value * 100).rounded() / 100) s"
    }
    
    @IBAction func sliderAction(_ sender: UISlider) {
        timerLabel.text = "\((sender.value * 100).rounded() / 100) s"
    }
    
    @objc func saveButtonTapped() {
        delegate?.closeTimerView()
        guard let del = delegate as? FirstViewController else {return}
        del.timerInterval = slider.value

    }
    
    
    func createShadow(view: UIView, shadowPathRadius: CGFloat, color: CGColor, opacity: Float, shadowRadius: CGFloat, offset: CGSize){
        let shadowPath = UIBezierPath.init(roundedRect: view.bounds, cornerRadius: shadowPathRadius)
        view.layer.shadowPath = shadowPath.cgPath
        view.layer.shadowColor = color
        view.layer.shadowOpacity = opacity
        view.layer.shadowRadius = shadowRadius
        view.layer.shadowOffset = offset
        
    }
    
}
