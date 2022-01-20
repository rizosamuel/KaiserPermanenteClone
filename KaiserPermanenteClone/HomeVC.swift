//
//  HomeVC.swift
//  KaiserPermanenteClone
//
//  Created by Rijo Samuel on 18/01/22.
//

import UIKit

class HomeVC: UIViewController {
	
	private let scrollView: UIScrollView = {
		
		let scrollView = UIScrollView()
		scrollView.isPagingEnabled = true
		scrollView.backgroundColor = .systemRed
		scrollView.translatesAutoresizingMaskIntoConstraints = false
		return scrollView
	}()
	
	private let contentView: UIView = {
		
		let view = UIView()
		view.backgroundColor = .systemPink
		view.translatesAutoresizingMaskIntoConstraints = false
		return view
	}()
	
	override var preferredStatusBarStyle: UIStatusBarStyle {
		.lightContent
	}

    override func viewDidLoad() {
		
        super.viewDidLoad()
		
		view.backgroundColor = .systemBlue
		view.addSubview(scrollView)
		scrollView.addSubview(contentView)
		
		configureConstraints()
    }
	
	private func configureConstraints() {
		
		scrollView.anchor(top: view.topAnchor, bottom: view.bottomAnchor, left: view.leadingAnchor, right: view.trailingAnchor)
		contentView.anchor(top: scrollView.contentLayoutGuide.topAnchor, bottom: scrollView.contentLayoutGuide.bottomAnchor)
		contentView.anchor(left: scrollView.contentLayoutGuide.leadingAnchor, right: scrollView.contentLayoutGuide.trailingAnchor)
	}
}
