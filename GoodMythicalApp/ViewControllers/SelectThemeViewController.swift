//
//  SelectThemeViewController.swift
//  GoodMythicalApp
//
//  Created by Elizabeth Thomas on 5/15/20.
//  Copyright © 2020 Libby Thomas. All rights reserved.
//

import UIKit

class SelectThemeViewController: UIViewController {
    
    let label = UILabel()
    var themeHelper: ThemeHelper?

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpLabel()
        setUpButtons()
    }
    
    @objc func selectDarkTheme() {
        themeHelper?.setThemeToDark()
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @objc func selectLightTheme() {
        themeHelper?.setThemeToLight()
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @objc func selectRedTheme() {
        themeHelper?.setThemeToRed()
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @objc func selectOrangeTheme() {
        themeHelper?.setThemeToOrange()
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @objc func selectYellowTheme() {
        themeHelper?.setThemeToYellow()
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @objc func selectGreenTheme() {
        themeHelper?.setThemeToGreen()
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @objc func selectTealTheme() {
        themeHelper?.setThemeToTeal()
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @objc func selectBlueTheme() {
        themeHelper?.setThemeToBlue()
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @objc func selectPinkTheme() {
        themeHelper?.setThemeToPink()
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @objc func selectPurpleTheme() {
        themeHelper?.setThemeToPurple()
        self.navigationController?.popToRootViewController(animated: true)
    }

    private func setUpLabel() {
        label.text = "Please select a theme:"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(descriptor: .init(name: "American Typewriter", size: 25), size: 25)
        view.addSubview(label)
        
        NSLayoutConstraint.activate([
        
            label.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            label.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20)
            
        ])
        
    }
    
    private func setUpButtons() {
        let darkButton = UIButton(type: .system)
        let lightButton = UIButton(type: .system)
        let redButton = UIButton(type: .system)
        let orangeButton = UIButton(type: .system)
        let yellowButton = UIButton(type: .system)
        let greenButton = UIButton(type: .system)
        let tealButton = UIButton(type: .system)
        let blueButton = UIButton(type: .system)
        let pinkButton = UIButton(type: .system)
        let purpleButton = UIButton(type: .system)
        
        darkButton.setTitle("Dark", for: .normal)
        lightButton.setTitle("Light", for: .normal)
        redButton.setTitle("Red", for: .normal)
        orangeButton.setTitle("Orange", for: .normal)
        yellowButton.setTitle("Yellow", for: .normal)
        greenButton.setTitle("Green", for: .normal)
        tealButton.setTitle("Teal", for: .normal)
        blueButton.setTitle("Blue", for: .normal)
        pinkButton.setTitle("Pink", for: .normal)
        purpleButton.setTitle("Purple", for: .normal)
        
        darkButton.addTarget(self, action: #selector(selectDarkTheme), for: .touchUpInside)
        lightButton.addTarget(self, action: #selector(selectLightTheme), for: .touchUpInside)
        redButton.addTarget(self, action: #selector(selectRedTheme), for: .touchUpInside)
        orangeButton.addTarget(self, action: #selector(selectOrangeTheme), for: .touchUpInside)
        yellowButton.addTarget(self, action: #selector(selectYellowTheme), for: .touchUpInside)
        greenButton.addTarget(self, action: #selector(selectGreenTheme), for: .touchUpInside)
        tealButton.addTarget(self, action: #selector(selectTealTheme), for: .touchUpInside)
        blueButton.addTarget(self, action: #selector(selectBlueTheme), for: .touchUpInside)
        pinkButton.addTarget(self, action: #selector(selectPinkTheme), for: .touchUpInside)
        purpleButton.addTarget(self, action: #selector(selectPurpleTheme), for: .touchUpInside)
        
        darkButton.translatesAutoresizingMaskIntoConstraints = false
        lightButton.translatesAutoresizingMaskIntoConstraints = false
        redButton.translatesAutoresizingMaskIntoConstraints = false
        orangeButton.translatesAutoresizingMaskIntoConstraints = false
        yellowButton.translatesAutoresizingMaskIntoConstraints = false
        greenButton.translatesAutoresizingMaskIntoConstraints = false
        tealButton.translatesAutoresizingMaskIntoConstraints = false
        blueButton.translatesAutoresizingMaskIntoConstraints = false
        pinkButton.translatesAutoresizingMaskIntoConstraints = false
        purpleButton.translatesAutoresizingMaskIntoConstraints = false
        
        let stackOne = UIStackView()
        let stackTwo = UIStackView()
        let stackThree = UIStackView()
        let stackFour = UIStackView()
        let stackFive = UIStackView()
        
        stackOne.axis = .horizontal
        stackOne.translatesAutoresizingMaskIntoConstraints = false
        stackOne.distribution = .fillProportionally
        stackOne.alignment = .center
        stackOne.spacing = 150.0
        stackOne.addArrangedSubview(darkButton)
        stackOne.addArrangedSubview(lightButton)
        
        stackTwo.axis = .horizontal
        stackTwo.translatesAutoresizingMaskIntoConstraints = false
        stackTwo.distribution = .fillProportionally
        stackTwo.alignment = .center
        stackTwo.spacing = 150.0
        stackTwo.addArrangedSubview(redButton)
        stackTwo.addArrangedSubview(orangeButton)
        
        stackThree.axis = .horizontal
        stackThree.translatesAutoresizingMaskIntoConstraints = false
        stackThree.distribution = .fillProportionally
        stackThree.alignment = .center
        stackThree.spacing = 150.0
        stackThree.addArrangedSubview(yellowButton)
        stackThree.addArrangedSubview(greenButton)
        
        stackFour.axis = .horizontal
        stackFour.translatesAutoresizingMaskIntoConstraints = false
        stackFour.distribution = .fillProportionally
        stackFour.alignment = .center
        stackFour.spacing = 150.0
        stackFour.addArrangedSubview(tealButton)
        stackFour.addArrangedSubview(blueButton)
        
        stackFive.axis = .horizontal
        stackFive.translatesAutoresizingMaskIntoConstraints = false
        stackFive.distribution = .fillProportionally
        stackFive.alignment = .center
        stackFive.spacing = 150.0
        stackFive.addArrangedSubview(pinkButton)
        stackFive.addArrangedSubview(purpleButton)
        
        let buttonStack = UIStackView()
        view.addSubview(buttonStack)
        buttonStack.translatesAutoresizingMaskIntoConstraints = false
        buttonStack.axis = .vertical
        buttonStack.distribution = .equalSpacing
        buttonStack.alignment = .center
        buttonStack.spacing = 30.0
        buttonStack.addArrangedSubview(stackOne)
        buttonStack.addArrangedSubview(stackTwo)
        buttonStack.addArrangedSubview(stackThree)
        buttonStack.addArrangedSubview(stackFour)
        buttonStack.addArrangedSubview(stackFive)
        
        
        NSLayoutConstraint.activate([

            buttonStack.leadingAnchor.constraint(equalTo: label.leadingAnchor),
            buttonStack.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 100),
            buttonStack.trailingAnchor.constraint(equalTo: label.trailingAnchor)

        ])
        
    }

}
