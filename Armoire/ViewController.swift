//
//  ViewController.swift
//  Armoire
//
//  Created by Tolani Oyefule on 3/28/15.
//  Copyright (c) 2015 Bartr LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var my_slider:UISlider!
    @IBOutlet weak var my_progress_bar: UIProgressView!
    @IBOutlet weak var my_label : UILabel!
    
    @IBAction func valueChanged(){
        
        var x = self.my_slider.value;
        self.my_progress_bar.setProgress(x, animated: true)
        self.my_label.text = String(format: "%.0f%%", (x*100) );
    }
    
    @IBAction func reset(){
        self.my_slider.value = 0.5;
        valueChanged();
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

