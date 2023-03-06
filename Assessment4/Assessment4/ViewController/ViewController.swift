//
//  ViewController.swift
//  Assessment4
//
//  Created by KiwiTech on 27/02/23.
//

import UIKit
import ProgressHUD

class ViewController: UIViewController {
    
    @IBOutlet weak var countryLbl: UILabel!
    @IBOutlet weak var humidityLbl: UILabel!
    @IBOutlet weak var imgViewLbl: UIImageView!
    @IBOutlet weak var speedLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    
    var weatherViewModelObj: WeatherViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        ProgressHUD.showSucceed()
        weatherViewModelObj = WeatherViewModel()
        weatherViewModelObj?.delegate = self
        weatherViewModelObj?.loadWeatherData()
    }
}
