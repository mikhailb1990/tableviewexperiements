//
//  CollectionViewController.swift
//  TableViewExperiements
//
//  Created by Mikhail Bhuta on 6/18/20.
//  Copyright © 2020 Dirtcube Interactive. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController {

    var collectionView: UICollectionView?
    
    let indexArray: [Int] = [0, 3, 5, 2]
    var current: Int = 0
    
    @IBAction func animateCollection(_ sender: UIButton) {
        
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseInOut, animations: {
            self.collectionView?.scrollToItem(at: IndexPath(item: self.indexArray[self.current], section: 0),
                                              at: .centeredHorizontally,
                                              animated: false)
            self.collectionView?.layoutIfNeeded()
        }, completion: {
            _ in
          
            self.current += 1
            if self.current >= self.indexArray.count {
                self.current = 0
                return
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                self.animateCollection(sender)
            }
            
        })
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setupCollectionView()
        //self.setupFakeCollection()
    }
    

    fileprivate func setupCollectionView() {
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 20, left: 190, bottom: 20, right: 190)
        layout.itemSize = CGSize(width: 60, height: 60)
        layout.minimumInteritemSpacing = 10
        layout.scrollDirection = .horizontal
        
        let origin = CGPoint(x: 0, y: self.view.center.y - 40)
        let size = CGSize(width: self.view.frame.width, height: 80)
        let frame = CGRect(origin: origin, size: size)
        
        self.collectionView = UICollectionView(frame: frame, collectionViewLayout: layout)
        self.collectionView?.delegate = self
        self.collectionView?.dataSource = self
        self.collectionView?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "MyCell")
        self.collectionView?.backgroundColor = .black
        self.view.addSubview(self.collectionView!)
    }

    fileprivate func setupFakeCollection() {
        let itemSize: CGFloat = 60
        let numItems: CGFloat = 20
        let spacing: CGFloat = 10
        let width = (itemSize * numItems) + (spacing * (numItems - 1.0))

        let origin = CGPoint(x: self.view.center.x - (itemSize/2), y: self.view.center.y - (itemSize/2))
        let size = CGSize(width: width, height: itemSize)
        let frame = CGRect(origin: origin, size: size)
        
        let containerView = UIView(frame: frame)
        containerView.backgroundColor = .clear
        
        for i in 0..<Int(numItems) {
            let x: CGFloat = (CGFloat(i) * spacing) + (CGFloat(i) * itemSize)
            let y: CGFloat = 0
            let cellO = CGPoint(x: x, y: y)
            let cellSize = CGSize(width: itemSize, height: itemSize)
            let cellView = UIView(frame: CGRect(origin: cellO, size: cellSize))
            cellView.backgroundColor = .blue
            containerView.addSubview(cellView)
        }
        
        self.view.addSubview(containerView)
    }
}

extension CollectionViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Cell \(indexPath.item) selected")
    }
    
}

extension CollectionViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let myCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath)
        switch indexPath.item {
        case 0:
            myCell.backgroundColor = .systemRed
        case 1:
            myCell.backgroundColor = .systemBlue
        case 2:
            myCell.backgroundColor = .systemTeal
        case 3:
            myCell.backgroundColor = .systemGreen
        case 4:
            myCell.backgroundColor = .systemYellow
        case 5:
            myCell.backgroundColor = .systemOrange
        default:
            break
        }
        
        return myCell
    }
    
    
}

extension CollectionViewController {
    
    func animateToPosition() {
        
    }
    
}
