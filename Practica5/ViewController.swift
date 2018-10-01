//
//  ViewController.swift
//  Practica5
//
//  Created by I104-19 on 11/09/18.
//  Copyright © 2018 DOSdesign. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    var titulos = ["Sirenita", "Frozen", "Moana", "Rey Leon", "Jorobado de Notre Dame"]
    var duration = ["100 min", "120 min", "90 min", "110 min", "120 min"]
    var year = ["1989", "2015", "1992", "1996", "2000"]
    var image = [UIImage(named:"mermaid"),
    UIImage(named:"frozen"),
    UIImage(named:"moana"),
    UIImage(named:"lion"),
    UIImage(named:"notre")]
    
    @IBOutlet weak var topImage: UIImageView!
    @IBOutlet weak var tabla: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
      tabla.dataSource = self
      tabla.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titulos.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "custom") //as! Movie
        //cell.lblNumber.text = indice[indexPath.row + 1]
        //cell.imageCount?.image = image[indexPath.row]
        //cell.lblTitulo?.text = titulos[indexPath.row]
        //cell.lYear?.text = year[indexPath.row]
        //cell.lDuration?.text = duration[indexPath.row]
        return cell!
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        topImage.image = image[indexPath.row]
    }



class Movie:UITableViewCell{
    
    
  
    
    
}
}
