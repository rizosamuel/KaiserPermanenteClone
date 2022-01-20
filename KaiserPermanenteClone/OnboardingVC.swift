//
//  ViewController.swift
//  KaiserPermanenteClone
//
//  Created by Rijo Samuel on 17/01/22.
//

import UIKit

final class OnboardingVC: UIViewController {
	
	let lblTitle: UILabel = {
		
		let label = UILabel()
		label.text = "KAISER PERMANENTE"
		label.textColor = .systemBackground
		label.font = .systemFont(ofSize: 25, weight: .bold)
		label.sizeToFit()
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	let scrollView: UIScrollView = {
		
		let scrollView = UIScrollView()
		scrollView.backgroundColor = .systemPink
		scrollView.showsVerticalScrollIndicator = false
		scrollView.showsHorizontalScrollIndicator = false
		scrollView.isPagingEnabled = true
		scrollView.translatesAutoresizingMaskIntoConstraints = false
		return scrollView
	}()
	
	let contentView: UIView = {
		
		let view = UIView()
		view.backgroundColor = .systemGreen
		return view
	}()
	
	let scrollContentStack1: UIStackView = {
		
		let stack = UIStackView()
		stack.axis = .vertical
		stack.alignment = .center
		stack.spacing = 20
		stack.translatesAutoresizingMaskIntoConstraints = false
		return stack
	}()
	
	let scrollContentStack2: UIStackView = {
		
		let stack = UIStackView()
		stack.axis = .vertical
		stack.alignment = .center
		stack.spacing = 20
		stack.translatesAutoresizingMaskIntoConstraints = false
		return stack
	}()
	
	let scrollContentStack3: UIStackView = {
		
		let stack = UIStackView()
		stack.axis = .vertical
		stack.alignment = .center
		stack.spacing = 20
		stack.translatesAutoresizingMaskIntoConstraints = false
		return stack
	}()
	
	let imgAnimated1: UIImageView = {
		
		let image = UIImageView()
		// image.contentMode = .scaleAspectFill
		image.image = UIImage(systemName: "person")
		return image
	}()
	
	let imgAnimated2: UIImageView = {
		
		let image = UIImageView()
		image.image = UIImage(systemName: "house")
		return image
	}()
	
	let imgAnimated3: UIImageView = {
		
		let image = UIImageView()
		image.image = UIImage(systemName: "music")
		return image
	}()
	
	let lblHeading1: UILabel = {
		
		let label = UILabel()
		label.text = "Your Health in the Palm of your Hands"
		label.textColor = .systemBackground
		label.font = .systemFont(ofSize: 20, weight: .semibold)
		label.sizeToFit()
		label.numberOfLines = 0
		return label
	}()
	
	let lblHeading2: UILabel = {
		
		let label = UILabel()
		label.text = "Choose how you get Care"
		label.textColor = .systemBackground
		label.font = .systemFont(ofSize: 20, weight: .semibold)
		label.sizeToFit()
		label.numberOfLines = 0
		return label
	}()
	
	let lblHeading3: UILabel = {
		
		let label = UILabel()
		label.text = "Medical Information Anywhere"
		label.textColor = .systemBackground
		label.font = .systemFont(ofSize: 20, weight: .semibold)
		label.sizeToFit()
		label.numberOfLines = 0
		return label
	}()
	
	let lblSubHeading1: UILabel = {
		
		let label = UILabel()
		label.text = "Email your care team and refill prescriptions directly from this app"
		label.textColor = .systemBackground
		label.font = .systemFont(ofSize: 18)
		label.numberOfLines = 0
		label.textAlignment = .center
		label.sizeToFit()
		return label
	}()
	
	let lblSubHeading2: UILabel = {
		
		let label = UILabel()
		label.text = "Search for doctors and locations, contact medical professionals for advice, and schedule care"
		label.textColor = .systemBackground
		label.font = .systemFont(ofSize: 18)
		label.numberOfLines = 0
		label.textAlignment = .center
		label.sizeToFit()
		return label
	}()
	
	let lblSubHeading3: UILabel = {
		
		let label = UILabel()
		label.text = "Securely review medical records and get test results"
		label.textColor = .systemBackground
		label.font = .systemFont(ofSize: 18)
		label.numberOfLines = 0
		label.textAlignment = .center
		label.sizeToFit()
		return label
	}()
	
	let btnSignIn: UIButton = {
		
		let button = UIButton()
		button.setTitle("Sign In", for: .normal)
		button.setTitleColor(.systemBackground, for: .normal)
		button.titleLabel?.font = .systemFont(ofSize: 18, weight: .semibold)
		button.translatesAutoresizingMaskIntoConstraints = false
		return button
	}()
	
	let btnRegister: UIButton = {
		
		let button = UIButton()
		button.setTitle("Register", for: .normal)
		button.setTitleColor(.systemBackground, for: .normal)
		button.titleLabel?.font = .systemFont(ofSize: 18, weight: .semibold)
		button.translatesAutoresizingMaskIntoConstraints = false
		return button
	}()
	
	let pageIndicator: UIPageControl = {
		
		let pageControl = UIPageControl()
		pageControl.currentPageIndicatorTintColor = .systemBackground
		pageControl.numberOfPages = 3
		pageControl.pageIndicatorTintColor = .systemGray
		pageControl.translatesAutoresizingMaskIntoConstraints = false
		return pageControl
	}()
	
	override var preferredStatusBarStyle: UIStatusBarStyle {
		.lightContent
	}
	
	override func viewDidLoad() {
		
		super.viewDidLoad()
		
		view.backgroundColor = .systemIndigo
		
		view.addSubview(lblTitle)
		
		scrollContentStack1.addArrangedSubview(imgAnimated1)
		scrollContentStack1.addArrangedSubview(lblHeading1)
		scrollContentStack1.addArrangedSubview(lblSubHeading1)
		
		scrollContentStack2.addArrangedSubview(imgAnimated2)
		scrollContentStack2.addArrangedSubview(lblHeading2)
		scrollContentStack2.addArrangedSubview(lblSubHeading2)
		
		scrollContentStack3.addArrangedSubview(imgAnimated3)
		scrollContentStack3.addArrangedSubview(lblHeading3)
		scrollContentStack3.addArrangedSubview(lblSubHeading3)
		
		contentView.addSubview(scrollContentStack1)
		contentView.addSubview(scrollContentStack2)
		contentView.addSubview(scrollContentStack3)
		
		scrollView.addSubview(contentView)
		
		view.addSubview(scrollView)
		view.addSubview(btnSignIn)
		view.addSubview(btnRegister)
		view.addSubview(pageIndicator)
		
		configureConstraints()
	}
	
	override func viewDidLayoutSubviews() {
		
		super.viewDidLayoutSubviews()
		// scrollContentStack.frame = scrollContentView.bounds
	}
	
	private func configureConstraints() {
		
		lblTitle.anchor(top: view.safeAreaLayoutGuide.topAnchor, paddingTop: 20)
		lblTitle.center(centerX: view.centerXAnchor)
		
		scrollView.center(centerX: view.centerXAnchor)
		scrollView.anchor(top: lblTitle.bottomAnchor, paddingTop: 40, bottom: btnSignIn.topAnchor, paddingBottom: -40, left: view.leadingAnchor, paddingLeft: 30, right: view.trailingAnchor, paddingRight: -30)
		
		contentView.anchor(top: scrollView.topAnchor, bottom: scrollView.bottomAnchor)
		contentView.anchor(left: scrollView.leadingAnchor, right: scrollView.trailingAnchor)
		contentView.setSize(width: 3 * view.frame.size.width)
		// contentView.proportionalSize(height: scrollView.frameLayoutGuide.heightAnchor, heightPercent: 1)
		
		scrollContentStack1.anchor(top: contentView.topAnchor)
		scrollContentStack1.anchor(left: scrollView.leadingAnchor, right: scrollContentStack2.leadingAnchor)
		scrollContentStack1.setSize(width: scrollView.frame.size.width)
		
		scrollContentStack2.anchor(top: contentView.topAnchor)
		scrollContentStack2.anchor(left: scrollContentStack1.trailingAnchor, right: scrollContentStack3.leadingAnchor)
		scrollContentStack2.setSize(width: scrollView.frame.size.width)
		
		scrollContentStack3.anchor(top: contentView.topAnchor)
		scrollContentStack3.anchor(left: scrollContentStack2.trailingAnchor, right: scrollView.trailingAnchor)
		scrollContentStack3.setSize(width: scrollView.frame.size.width)
		
		btnSignIn.anchor(bottom: view.safeAreaLayoutGuide.bottomAnchor, paddingBottom: -15, left: view.leadingAnchor, paddingLeft: 30)
		
		btnRegister.anchor(bottom: view.safeAreaLayoutGuide.bottomAnchor, paddingBottom: -15, right: view.trailingAnchor, paddingRight: -30)
		
		pageIndicator.center(centerX: view.centerXAnchor, centerY: btnSignIn.centerYAnchor)
	}
}
