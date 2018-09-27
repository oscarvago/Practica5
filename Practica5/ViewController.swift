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
    var imagenes = [UIImage(named:"art-deco-disney-posters-8"),
    UIImage(named:"art-deco-disney-posters-1"),
    UIImage(named:"3b19b275f91da3b18b1d8f78ce9b00a3"),
    UIImage(named:"art-deco-disney-posters-5"),
    UIImage(named:"art-deco-disney-posters-1")]
    
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "custom") as! Movie
        //cell.lblNumber.text = String[indexPath.row + 1]
        cell.imgMovie.image = imagenes[indexPath.row]
        cell.lblTitulo.text = titulos[indexPath.row]
        cell.lblAño.text = year[indexPath.row]
        cell.lblDuracion.text = duration[indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        topImage.image = imagenes[indexPath.row]
    }



class Movie:UITableViewCell{
    
    @IBOutlet weak var lblNumber: UILabel!
    @IBOutlet weak var lblTitulo: UILabel!
    @IBOutlet weak var lblAño: UILabel!
    @IBOutlet weak var lblDuracion: UILabel!
    @IBOutlet weak var imgMovie: UIImageView!
    
}
}
