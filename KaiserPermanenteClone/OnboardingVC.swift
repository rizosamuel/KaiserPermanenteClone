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
	
	let imgAnimated: UIImageView = {
		
		let image = UIImageView()
		image.backgroundColor = .systemOrange
		image.translatesAutoresizingMaskIntoConstraints = false
		image.contentMode = .scaleAspectFill
		return image
	}()
	
	let lblHeading1: UILabel = {
		
		let label = UILabel()
		label.text = "Your Health in the Palm of your Hands"
		label.textColor = .systemBackground
		label.font = .systemFont(ofSize: 20, weight: .semibold)
		label.translatesAutoresizingMaskIntoConstraints = false
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
		label.translatesAutoresizingMaskIntoConstraints = false
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
		view.addSubview(imgAnimated)
		view.addSubview(lblHeading1)
		view.addSubview(lblSubHeading1)
		view.addSubview(btnSignIn)
		view.addSubview(btnRegister)
		view.addSubview(pageIndicator)
		
		configureConstraints()
	}
	
	override func viewDidLayoutSubviews() {
		super.viewDidLayoutSubviews()
	}
	
	private func configureConstraints() {
		
		let lblTitleConstraints = [
			lblTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
			lblTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor)
		]
		
		let imgAnimatedConstraints = [
			imgAnimated.topAnchor.constraint(equalTo: lblTitle.bottomAnchor, constant: 40),
			imgAnimated.centerXAnchor.constraint(equalTo: view.centerXAnchor),
			imgAnimated.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
			imgAnimated.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
			imgAnimated.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.4),
			imgAnimated.widthAnchor.constraint(equalTo: imgAnimated.heightAnchor)
		]
		
		let lblHeading1Constraints = [
			lblHeading1.topAnchor.constraint(equalTo: imgAnimated.bottomAnchor, constant: 40),
			lblHeading1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
		]
		
		let lblSubHeading1Constraints = [
			lblSubHeading1.topAnchor.constraint(equalTo: lblHeading1.bottomAnchor, constant: 20),
			lblSubHeading1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
			lblSubHeading1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
			lblSubHeading1.centerXAnchor.constraint(equalTo: view.centerXAnchor)
		]
		
		let btnSignInConstraints = [
			btnSignIn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
			btnSignIn.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -15)
		]
		
		let btnRegisterConstraints = [
			btnRegister.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
			btnRegister.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -15)
		]
		
		let pageIndicatorConstraints = [
			pageIndicator.centerXAnchor.constraint(equalTo: view.centerXAnchor),
			pageIndicator.centerYAnchor.constraint(equalTo: btnSignIn.centerYAnchor),
		]
		
		NSLayoutConstraint.activate(lblTitleConstraints)
		NSLayoutConstraint.activate(imgAnimatedConstraints)
		NSLayoutConstraint.activate(lblHeading1Constraints)
		NSLayoutConstraint.activate(lblSubHeading1Constraints)
		NSLayoutConstraint.activate(btnSignInConstraints)
		NSLayoutConstraint.activate(btnRegisterConstraints)
		NSLayoutConstraint.activate(pageIndicatorConstraints)
	}
}
