//
//  SectionViewController.swift
//  classmereApp
//
//  Created by Brandon Lee on 9/7/15.
//  Copyright (c) 2015 Brandon Lee. All rights reserved.
//

import UIKit

class SectionViewController: UIViewController {
    
    @IBOutlet weak var instructorLabel: UILabel?
    @IBOutlet weak var dayLabel: UILabel?
    @IBOutlet weak var startTimeLabel: UILabel?
    @IBOutlet weak var endTimeLabel: UILabel?
    @IBOutlet weak var startDateLabel: UILabel?
    @IBOutlet weak var endDateLabel: UILabel?
    @IBOutlet weak var locationLabel: UILabel?
    @IBOutlet weak var termLabel: UILabel?
    @IBOutlet weak var sessionLabel: UILabel?
    @IBOutlet weak var crnLabel: UILabel?
    @IBOutlet weak var statusLabel: UILabel?
    @IBOutlet weak var maxSizeLabel: UILabel?
    @IBOutlet weak var currentEnrolledLabel: UILabel?
    @IBOutlet weak var avalaibleSpotsLabel: UILabel?
    @IBOutlet weak var restrictionsLabel: UILabel?
    
    var detailSection: CourseSection? {
        didSet {
            configureView()
        }
    }
    
    func configureView() {
        self.title = "Course Details"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if let section = detailSection as CourseSection! {
            self.instructorLabel?.text = section.instructor
            self.dayLabel?.text = section.days
            self.startTimeLabel?.text = section.startTime
            self.endTimeLabel?.text = section.endTime
            self.startDateLabel?.text = section.startDate
            self.endDateLabel?.text = section.endDate
            self.locationLabel?.text = section.location
            self.termLabel?.text = section.term
            self.sessionLabel?.text = section.session
            self.crnLabel?.text = String(stringInterpolationSegment: section.crn!)
            self.statusLabel?.text = section.status
            //self.maxSizeLabel?.text = section.capa
            self.currentEnrolledLabel?.text = String(stringInterpolationSegment: section.currentEnrollment)
            //self.avalaibleSpotsLabel?.text section.currentEnrollment)
            self.restrictionsLabel?.text = section.restrictions
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
