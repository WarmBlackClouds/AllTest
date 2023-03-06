//
//  ViewController.swift
//  TestSocket
//
//  Created by yxl on 2022/8/10.
//

import UIKit
class ViewController: UIViewController {
    var buttonTitles = ["xxx","aaaaaaa"]
    
    @IBOutlet weak var clv: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        clv.dataSource = self
        clv.delegate = self
        let layout = JYEqualCellSpaceFlowLayout(.left, 10)
        clv.collectionViewLayout = layout
    }
    
    
    @IBAction func tap1(_ sender: Any) {
        buttonTitles = ["dabnfhenwi","cxmkj","cxnzuiw","dabnfhenwi","cxmkj","cxnzuiw","dabnfhenwi","cxmkj","cxnzuiw","dabnfhenwi","cxmkj","cxnzuiw","x"]
            clv.reloadData()
            clv.collectionViewLayout.invalidateLayout()
            clv.layoutIfNeeded()
        updateViewHeight()
    }
    
    func updateViewHeight(){
        let contentSize = clv.collectionViewLayout.collectionViewContentSize
        let clvHeight = contentSize.height
        let clvParentView = clv.superview
        clvParentView?.frame.size.height = clvHeight
        DispatchQueue.main.async { [self] in
            let clvParentView = clv.superview
            clvParentView?.frame.size.height = clvHeight
        }

    }
} 

extension ViewController :UICollectionViewDataSource,UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return buttonTitles.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ButtonCollectionViewCell
        cell.lb.text = buttonTitles[indexPath.row]
        return cell
    }
    
}
