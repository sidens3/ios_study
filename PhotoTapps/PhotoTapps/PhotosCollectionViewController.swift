//
//  PhotosCollectionViewController.swift
//  PhotoTapps
//
//  Created by Михаил Зиновьев on 11.11.2020.
//

import UIKit

class PhotosCollectionViewController: UICollectionViewController {

    let itemsPerRow: CGFloat = 2
    let sectionInserts = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
//        //размер ячейки
//        layout.itemSize = CGSize(width: 70, height: 70)
//        //настройки секции
//        layout.sectionInset = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
//        //расстояние между объектами по строкам
//        layout.minimumLineSpacing = 1
//        layout.minimumInteritemSpacing = 1
//        layout.scrollDirection = .vertical
        
        
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 15
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoCell", for: indexPath) as! PhotoCell
        cell.backgroundColor = .black
    
        // Configure the cell
    
        return cell
    }
}

extension PhotosCollectionViewController: UICollectionViewDelegateFlowLayout{

    //размеры ячеек
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //высчитывание размеров ячеек

        let paddingWidth = sectionInserts.left * (itemsPerRow + 1)
        let availableWidth = collectionView.frame.width - paddingWidth
        let widthPerItem = availableWidth / itemsPerRow
       return CGSize(width: widthPerItem, height: widthPerItem)
    }

    //расстояние между секциями
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return sectionInserts
    }

    //расстояние между линиями с объектами
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return sectionInserts.left
    }

    //расстояние между объектами
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return sectionInserts.left
    }
}
