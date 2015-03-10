//
//  ViewController.swift
//  table view 3
//
//  Created by Scott Tong on 3/9/15.
//  Copyright (c) 2015 Scott Tong. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
	@IBOutlet weak var moodCollectionView: UICollectionView!
	
	var moods = [String]()
	var moodColor = [UIColor]()


	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		moodCollectionView.delegate = self
		moodCollectionView.dataSource = self
		
		moods = ["Gettin' turnt up", "Zoning out", "Pillow Talk", "A quick getaway", "Getting cultured", "The munchies"]
		moodColor = [UIColor.greenColor(), UIColor.orangeColor(), UIColor.blueColor(), UIColor.redColor(), UIColor.purpleColor(), UIColor.yellowColor()]

	
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return 6
	}
	
	func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
		var cell = collectionView.dequeueReusableCellWithReuseIdentifier("moodCellId", forIndexPath: indexPath) as MoodCell
		
		cell.moodLabel.text = moods[indexPath.item]
		cell.backgroundColor = moodColor[indexPath.item]


		
//		var cell = collectionView.dequeueReusableCellWithReuseIdentifier(<#identifier: String#>, forIndexPath: <#NSIndexPath!#>)
		
		return cell
	}


}

