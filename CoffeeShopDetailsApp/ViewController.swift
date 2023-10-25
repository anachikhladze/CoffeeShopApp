//
//  ViewController.swift
//  CoffeeShopDetailsApp
//
//  Created by Anna Sumire on 25.10.23.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet private weak var detailLabel: UILabel!
    @IBOutlet private weak var cappucinoLabel: UILabel!
    @IBOutlet private weak var chocolateLabel: UILabel!
    @IBOutlet private weak var ratingLabel: UILabel!
    @IBOutlet private weak var descriptionLabel: UILabel!
    @IBOutlet private weak var descriptionText: UILabel!
    @IBOutlet private weak var sizeLabel: UILabel!
    
    @IBOutlet private weak var smallButton: UIButton!
    @IBOutlet private weak var mediumButton: UIButton!
    @IBOutlet private weak var largeButton: UIButton!
    
    @IBOutlet private weak var priceLabel: UILabel!
    @IBOutlet private weak var currentPrice: UILabel!
    @IBOutlet private weak var buyNowButton: UIButton!
    
    private var coffee: Coffee?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelSetup()
        coffeeSetup()
    }
    
    private func coffeeSetup() {
        coffee = Coffee(productName: "Cappucino", productDescription: "with Chocolate", price: "$4.53", rating: 4.8, descriptionText: "A cappucino is approximately 150 ml ")
        
        currentPrice.text = "\(coffee?.price ?? "0.0")"
        ratingLabel.text = "\(coffee?.rating ?? 0.0)"
        descriptionText.text = coffee?.descriptionText
        chocolateLabel.text = coffee?.productDescription
        cappucinoLabel.text = coffee?.productName
    }
    
    private func labelSetup() {
        detailLabel.text = "Detail"
        descriptionLabel.text = "Description"
        sizeLabel.text = "Size"
        priceLabel.text = "Price"
    }
}

struct Coffee {
    let productName: String
    let productDescription: String
    let price: String
    let rating: Double
    let descriptionText: String
}
