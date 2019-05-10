//
//  ViewController.swift
//  core
//
//  Created by Yogesh Patel on 26/04/18.
//  Copyright © 2018 Yogesh Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController, DataPass {
    
    @IBOutlet var txtTitulo: UITextField!
    @IBOutlet var txtAutor: UITextField!
    @IBOutlet var txtEditorial: UITextField!
    @IBOutlet var txtPaginas: UITextField!
    
    var i = Int()
    var isUpdate = Bool()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func btnSaveClick(_ sender: UIButton) {
        
        let dict : [String:String] = ["titulo": txtTitulo.text!, "autor": txtAutor.text!, "editorial": txtEditorial.text!, "paginas": txtPaginas.text!]
        if isUpdate{
            DatabaseHelper.shareInstance.editBook(object: dict as! [String:String], i: i)
        }else{
            DatabaseHelper.shareInstance.save(object: dict )
        }
        
        txtTitulo.text = nil
        txtAutor.text = nil
        txtEditorial.text = nil
        txtPaginas.text = nil
        
        //let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        //self.navigationController?.pushViewController(secondVC, animated: true)
    }
    
    @IBAction func btnShow(_ sender: Any) {
        let listVC = self.storyboard?.instantiateViewController(withIdentifier: "ListViewController") as! ListViewController
        
        listVC.delegate = self
        
        self.navigationController?.pushViewController(listVC, animated: true)
        
        txtTitulo.text = nil
        txtAutor.text = nil
        txtEditorial.text = nil
        txtPaginas.text = nil
    }
    
    func data(object: [String : String], index: Int, isEdit: Bool) {
        txtTitulo.text = object["titulo"]
        txtAutor.text = object["autor"]
        txtEditorial.text = object["editorial"]
        txtPaginas.text = object["paginas"]
        
        i = index
        isUpdate = isEdit
    }
    
}

