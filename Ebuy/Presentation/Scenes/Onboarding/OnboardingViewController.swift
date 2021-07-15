//
//  OnboardingViewController.swift
//  Ebuy
//
//  Created by Beqa Tabunidze on 14.07.21.
//

import UIKit

class OnboardingViewController: BaseViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var getStartedButton: UIButton!
    
    var images: [UIImage] = [
        
        UIImage(named: "onboarding_1")!,
        UIImage(named: "onboarding_2")!,
        UIImage(named: "onboarding_3")!
    
    ]
    
    var titles: [String] = [
        
        "View product 360 degrees",
        "Find products easily",
        "Payment is easy"
        
    ]
    
    var descriptions: [String] = [
        
        "You can see the product with all angles, true and convenient",
        "You just need to take a photo or upload and we will find similar products for you",
        "You just need to take a photo or upload and we will find similar products for you"
    ]
    
    var currentPage = 0 {
        
        didSet {
            
            pageControl.currentPage = currentPage
            currentPage = titles.count - 1
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        getStartedButton.layer.cornerRadius = 4
    }
    
    @IBAction func onTapGetStarted(_ sender: UIButton) {
        
        coordinator?.navigateToAuth()
        
    }
    

}

extension OnboardingViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return titles.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "OnboardingCollectionViewCell", for: indexPath) as! OnboardingCollectionViewCell
        cell.titleLabel.text = titles[indexPath.row]
        cell.descriptionLabel.text = descriptions[indexPath.row]
        cell.image.image = images[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let width = scrollView.frame.width
        currentPage = Int(scrollView.contentOffset.x / width)
        
    }

}

