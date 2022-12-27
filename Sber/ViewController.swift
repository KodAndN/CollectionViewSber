//
//  ViewController.swift
//  Sber
//
//  Created by Андрей Кодочигов on 27.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet private var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        let buttonCelNib = UINib(nibName: "ButtonCell", bundle: nil)
        collectionView.register(buttonCelNib, forCellWithReuseIdentifier: "ButtonCell")
        // Do any additional setup after loading the view.
    }
}
extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ButtonCell", for: indexPath) as! ButtonCell
        return cell
    }
}

