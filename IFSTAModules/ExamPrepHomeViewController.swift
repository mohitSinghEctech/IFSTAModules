//
//  ExamPrepHomeViewController.swift
//  IFSTAModules
//
//  Created by Mohit Kumar Singh on 24/02/22.
//

import UIKit

public class ExamPrepHomeViewController: UIViewController {
    
    var examPrepHeaderImage: UIImageView!
    var takePracticeExamView: UIView!
    var reviewDeckView: UIView!
    var viewReportsView: UIView!
    var backgroundImage: UIImageView!
    var gradientImage: UIImageView!

    override public func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.black
        self.setupBackgroundImage()
        self.setupBackgroundGradient()
        self.setupHeader()
        self.setupAllViews()
        self.handleTap()
    }
    
    private func handleTap() {
        takePracticeExamView.isUserInteractionEnabled = true
        viewReportsView.isUserInteractionEnabled = true
        reviewDeckView.isUserInteractionEnabled = true
        let practiceExamTap = UITapGestureRecognizer(target: self, action: #selector(self.handleTapForPracticeExam(_:)))
        takePracticeExamView.addGestureRecognizer(practiceExamTap)
        
        let studyDeckTap = UITapGestureRecognizer(target: self, action: #selector(self.handleTapForStudyDeck(_:)))
        reviewDeckView.addGestureRecognizer(studyDeckTap)
        
        let viewReportsTap = UITapGestureRecognizer(target: self, action: #selector(self.handleTapForViewReports(_:)))
        viewReportsView.addGestureRecognizer(viewReportsTap)
    }
    
    @objc func handleTapForPracticeExam(_ sender: UITapGestureRecognizer? = nil) {
        // handling code
        print("practice exam")
    }
    
    @objc func handleTapForStudyDeck(_ sender: UITapGestureRecognizer? = nil) {
        // handling code
        print("study deck")
    }
    
    @objc func handleTapForViewReports(_ sender: UITapGestureRecognizer? = nil) {
        // handling code
        print("view reports")
    }
    
}

// MARK: Setup Views
extension ExamPrepHomeViewController {
    private func setupHeader() {
        examPrepHeaderImage = UIImageView(image: UIImage(named: "exam_prep_home_header"))
        examPrepHeaderImage.backgroundColor = UIColor.clear
        self.view.addSubview(examPrepHeaderImage)
        
        examPrepHeaderImage.translatesAutoresizingMaskIntoConstraints = false
        
        examPrepHeaderImage.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 70).isActive = true
        examPrepHeaderImage.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 40).isActive = true
        examPrepHeaderImage.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -70).isActive = true
        examPrepHeaderImage.heightAnchor.constraint(equalTo: examPrepHeaderImage.widthAnchor, multiplier: 0.37).isActive = true
        
        let headerTitleLable = UILabel()
        headerTitleLable.font = UIFont.systemFont(ofSize: 36, weight: .semibold)
        headerTitleLable.text = "Exam Prep"
        headerTitleLable.textAlignment = .center
        headerTitleLable.textColor = UIColor.white
        
        self.view.addSubview(headerTitleLable)
        headerTitleLable.translatesAutoresizingMaskIntoConstraints = false
        
        headerTitleLable.topAnchor.constraint(equalTo: examPrepHeaderImage.bottomAnchor, constant: 30).isActive = true
        headerTitleLable.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        let headerLineView = UIView()
        headerLineView.backgroundColor = UIColor.white
        headerLineView.layer.cornerRadius = 2
        self.view.addSubview(headerLineView)
        headerLineView.translatesAutoresizingMaskIntoConstraints = false
        
        headerLineView.topAnchor.constraint(equalTo: headerTitleLable.bottomAnchor, constant: 8).isActive = true
        headerLineView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
        headerLineView.heightAnchor.constraint(equalToConstant: 4).isActive = true
        headerLineView.widthAnchor.constraint(equalToConstant: 35).isActive = true
        
        
    }
    
    private func setupAllViews() {
        self.setupPracticeExamView()
        self.setupReviewDeckView()
        self.setupViewReportsView()
        
        reviewDeckView.heightAnchor.constraint(equalToConstant: 120).isActive = true
        viewReportsView.heightAnchor.constraint(equalToConstant: 120).isActive = true
        reviewDeckView.widthAnchor.constraint(equalToConstant: ((self.view.bounds.width/2) - 28)).isActive = true
        viewReportsView.widthAnchor.constraint(equalToConstant: ((self.view.bounds.width/2) - 36)).isActive = true
        
        reviewDeckView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 24).isActive = true
        reviewDeckView.topAnchor.constraint(equalTo: takePracticeExamView.bottomAnchor, constant: 24).isActive = true
        reviewDeckView.centerYAnchor.constraint(equalTo: viewReportsView.centerYAnchor, constant: 0).isActive = true
        
        viewReportsView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -24).isActive = true
        
        
    }
    
    private func addBlurView(parentView: UIView) {
        let blurView = UIView(frame: parentView.frame)
        blurView.alpha = 0.3
        blurView.layer.cornerRadius = 12
        blurView.clipsToBounds = true
        blurView.backgroundColor = UIColor.black
        parentView.addSubview(blurView)
        blurView.translatesAutoresizingMaskIntoConstraints = false
        
        blurView.leadingAnchor.constraint(equalTo: parentView.leadingAnchor, constant: 0).isActive = true
        blurView.trailingAnchor.constraint(equalTo: parentView.trailingAnchor, constant: 0).isActive = true
        blurView.topAnchor.constraint(equalTo: parentView.topAnchor, constant: 0).isActive = true
        blurView.bottomAnchor.constraint(equalTo: parentView.bottomAnchor, constant: 0).isActive = true
    }
    
    private func setupPracticeExamView() {
        takePracticeExamView = UIView()
        takePracticeExamView.alpha = 1
        takePracticeExamView.layer.cornerRadius = 12
        takePracticeExamView.layer.borderWidth = 1
        takePracticeExamView.layer.borderColor = UIColor.white.cgColor
        takePracticeExamView.clipsToBounds = true
        takePracticeExamView.backgroundColor = UIColor.clear
        
        self.view.addSubview(takePracticeExamView)
        takePracticeExamView.translatesAutoresizingMaskIntoConstraints = false
        
        self.addBlurView(parentView: takePracticeExamView)
        
        let practiceExamIconImage = UIImageView(image: UIImage(named: "take_practice_exam_icon"))
        self.takePracticeExamView.addSubview(practiceExamIconImage)
        practiceExamIconImage.translatesAutoresizingMaskIntoConstraints = false
        
        let practiceExamLabel = UILabel()
        practiceExamLabel.text = "Take Practice Exam"
        practiceExamLabel.numberOfLines = 0
        practiceExamLabel.textColor = UIColor.white
        practiceExamLabel.textAlignment = .center
        self.takePracticeExamView.addSubview(practiceExamLabel)
        practiceExamLabel.translatesAutoresizingMaskIntoConstraints = false
        // Icon
        practiceExamIconImage.heightAnchor.constraint(equalToConstant: 20).isActive = true
        practiceExamIconImage.widthAnchor.constraint(equalToConstant: 20).isActive = true
        practiceExamIconImage.bottomAnchor.constraint(equalTo: practiceExamLabel.topAnchor, constant: -14).isActive = true
        practiceExamIconImage.centerXAnchor.constraint(equalTo: takePracticeExamView.centerXAnchor).isActive = true
        practiceExamIconImage.topAnchor.constraint(equalTo: takePracticeExamView.topAnchor, constant: 35).isActive = true
        // Label
        practiceExamLabel.bottomAnchor.constraint(equalTo: takePracticeExamView.bottomAnchor, constant: -20).isActive = true
        practiceExamLabel.leadingAnchor.constraint(equalTo: takePracticeExamView.leadingAnchor, constant: 14).isActive = true
        practiceExamLabel.trailingAnchor.constraint(equalTo: takePracticeExamView.trailingAnchor, constant: -14).isActive = true
        practiceExamLabel.centerXAnchor.constraint(equalTo: takePracticeExamView.centerXAnchor).isActive = true
        
        // View
        takePracticeExamView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 24).isActive = true
        takePracticeExamView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -24).isActive = true
        takePracticeExamView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        takePracticeExamView.heightAnchor.constraint(equalToConstant: 120).isActive = true
    }
    
    private func setupReviewDeckView() {
        reviewDeckView = UIView()
        reviewDeckView.alpha = 1
        reviewDeckView.layer.cornerRadius = 12
        reviewDeckView.layer.borderWidth = 1
        reviewDeckView.layer.borderColor = UIColor.white.cgColor
        reviewDeckView.clipsToBounds = true
        reviewDeckView.backgroundColor = UIColor.clear
        
        self.view.addSubview(reviewDeckView)
        reviewDeckView.translatesAutoresizingMaskIntoConstraints = false
        self.addBlurView(parentView: reviewDeckView)
        
        let practiceExamIconImage = UIImageView(image: UIImage(named: "review_deck_icon"))
        self.reviewDeckView.addSubview(practiceExamIconImage)
        practiceExamIconImage.translatesAutoresizingMaskIntoConstraints = false
        
        let practiceExamLabel = UILabel()
        practiceExamLabel.text = "Review My Study Deck"
        practiceExamLabel.numberOfLines = 0
        practiceExamLabel.textColor = UIColor.white
        practiceExamLabel.textAlignment = .center
        self.reviewDeckView.addSubview(practiceExamLabel)
        practiceExamLabel.translatesAutoresizingMaskIntoConstraints = false
        // Icon
        practiceExamIconImage.heightAnchor.constraint(equalToConstant: 20).isActive = true
        practiceExamIconImage.widthAnchor.constraint(equalToConstant: 20).isActive = true
        practiceExamIconImage.bottomAnchor.constraint(equalTo: practiceExamLabel.topAnchor, constant: -14).isActive = true
        practiceExamIconImage.centerXAnchor.constraint(equalTo: reviewDeckView.centerXAnchor).isActive = true
        practiceExamIconImage.topAnchor.constraint(equalTo: reviewDeckView.topAnchor, constant: 24).isActive = true
        // Label
        practiceExamLabel.bottomAnchor.constraint(equalTo: reviewDeckView.bottomAnchor, constant: -20).isActive = true
        practiceExamLabel.leadingAnchor.constraint(equalTo: reviewDeckView.leadingAnchor, constant: 14).isActive = true
        practiceExamLabel.trailingAnchor.constraint(equalTo: reviewDeckView.trailingAnchor, constant: -14).isActive = true
        practiceExamLabel.centerXAnchor.constraint(equalTo: reviewDeckView.centerXAnchor).isActive = true
    }
    
    private func setupViewReportsView() {
        viewReportsView = UIView()
        viewReportsView.alpha = 1
        viewReportsView.layer.cornerRadius = 12
        viewReportsView.layer.borderWidth = 1
        viewReportsView.layer.borderColor = UIColor.white.cgColor
        viewReportsView.clipsToBounds = true
        viewReportsView.backgroundColor = UIColor.clear
        
        self.view.addSubview(viewReportsView)
        viewReportsView.translatesAutoresizingMaskIntoConstraints = false
        self.addBlurView(parentView: viewReportsView)
        
        let practiceExamIconImage = UIImageView(image: UIImage(named: "view_reports_icon"))
        self.viewReportsView.addSubview(practiceExamIconImage)
        practiceExamIconImage.translatesAutoresizingMaskIntoConstraints = false
        
        let practiceExamLabel = UILabel()
        practiceExamLabel.text = "View Reports"
        practiceExamLabel.numberOfLines = 0
        practiceExamLabel.textColor = UIColor.white
        practiceExamLabel.textAlignment = .center
        self.viewReportsView.addSubview(practiceExamLabel)
        practiceExamLabel.translatesAutoresizingMaskIntoConstraints = false
        // Icon
        practiceExamIconImage.heightAnchor.constraint(equalToConstant: 20).isActive = true
        practiceExamIconImage.widthAnchor.constraint(equalToConstant: 20).isActive = true
        practiceExamIconImage.bottomAnchor.constraint(equalTo: practiceExamLabel.topAnchor, constant: -14).isActive = true
        practiceExamIconImage.centerXAnchor.constraint(equalTo: viewReportsView.centerXAnchor).isActive = true
        practiceExamIconImage.topAnchor.constraint(equalTo: viewReportsView.topAnchor, constant: 24).isActive = true
        // Label
        practiceExamLabel.bottomAnchor.constraint(equalTo: viewReportsView.bottomAnchor, constant: -20).isActive = true
        practiceExamLabel.leadingAnchor.constraint(equalTo: viewReportsView.leadingAnchor, constant: 14).isActive = true
        practiceExamLabel.trailingAnchor.constraint(equalTo: viewReportsView.trailingAnchor, constant: -14).isActive = true
        practiceExamLabel.centerXAnchor.constraint(equalTo: viewReportsView.centerXAnchor).isActive = true
    }
    
    private func setupBackgroundImage() {
        backgroundImage = UIImageView(image: UIImage(named: "exam_prep_background_image"))
        backgroundImage.backgroundColor = UIColor.clear
        backgroundImage.contentMode = .scaleAspectFill
        self.view.addSubview(backgroundImage)
        
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        
        backgroundImage.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        backgroundImage.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        backgroundImage.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        backgroundImage.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.78).isActive = true
    }
    
    private func setupBackgroundGradient() {
        gradientImage = UIImageView(image: UIImage(named: "exam_prep_home_background"))
        gradientImage.backgroundColor = UIColor.clear
        gradientImage.contentMode = .scaleAspectFill
        self.view.addSubview(gradientImage)

        gradientImage.translatesAutoresizingMaskIntoConstraints = false

        gradientImage.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
                gradientImage.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
                gradientImage.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
                gradientImage.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 1).isActive = true
        let colors  = Colors()
        let backgroundLayer = colors.gl!
        backgroundLayer.frame = gradientImage.frame
        gradientImage.layer.insertSublayer(backgroundLayer, at: 0)
    }
}

class Colors {
    var gl:CAGradientLayer!

    init() {
        let colorTop = UIColor.black.cgColor
        let colorBottom = UIColor.clear.cgColor

        self.gl = CAGradientLayer()
        self.gl.colors = [colorTop, colorBottom]
        self.gl.locations = [0.0, 0.4]
    }
}
