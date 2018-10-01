//
//  ViewController.swift
//  Practica5
//
//  Created by I104-19 on 11/09/18.
//  Copyright © 2018 DOSdesign. All rights reserved.
//

import UIKit

class Movie:UITableViewCell{
    
    @IBOutlet weak var imageCont: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var duration: UILabel!
    @IBOutlet weak var year: UILabel!
    
}


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    var titulos = ["Sirenita", "Frozen", "Moana", "Rey Leon", "Jorobado de Notre Dame"]
    var duration1 = ["100 min", "120 min", "90 min", "110 min", "120 min"]
    var year1 = ["1989", "2015", "1992", "1996", "2000"]
    var image1 = [UIImage(named:"mermaid"),
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "custom", for: indexPath) as! Movie
       
        cell.imageCont?.image = image1[indexPath.row]
        cell.title?.text = titulos[indexPath.row]
        cell.year?.text = year1[indexPath.row]
        cell.duration?.text = duration1[indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        topImage.image = image1[indexPath.row]
    }



}
