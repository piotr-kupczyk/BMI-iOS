//
//  ViewController.swift
//  BMI
//
//  Created by Piotr Kupczyk on 21.06.2018.
//  Copyright © 2018 Piotr Kupczyk. All rights reserved.
//

import UIKit
import Foundation

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = .white
        setUpNavigationBar()
//        setupCollectionView()
        edgesForExtendedLayout = []
        self.view = BmiView()
    }

    override var prefersStatusBarHidden: Bool {
        return false
    }

    private func setUpNavigationBar() {
        
        //Setup navigation bar
        navigationItem.title = "BMI"
//        navigationController?.hidesBarsOnSwipe = true

        navigationController?.navigationBar.barTintColor = UIColor.AppColors.primaryColor
    }
    
    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        let view = self.view as! BmiView
        if UIDevice.current.orientation.isLandscape {
            view.mainView.axis = .horizontal
        } else {
            view.mainView.axis = .vertical
        }
        view.resultView.setNeedsDisplay()
        view.countButtonView.setNeedsDisplay()
    }
}

