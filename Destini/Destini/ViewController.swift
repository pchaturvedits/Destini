//
//  ViewController.swift
//  Destini
//
//  Created by Manish Chaturvedi on 9/10/19.
//  Copyright © 2019 Manish Chaturvedi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var storyIndex:Int = 1
    @IBOutlet weak var topBtn: UIButton!
    @IBOutlet weak var bottomBtn: UIButton!
    @IBOutlet weak var storyLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func selectBtn(_ sender: AnyObject) {
        if sender.tag == 1 && storyIndex == 1{
            storyLbl.text = story3.story
            topBtn.isHidden = false
            bottomBtn.isHidden = false
            topBtn.setTitle(story3.answerA, for: .normal)
            bottomBtn.setTitle(story3.answerB, for: .normal)
            storyIndex = 3
        }
        else if sender.tag == 2 && storyIndex == 1 {
            storyLbl.text = story2.story
            topBtn.isHidden = false
            bottomBtn.isHidden = false
            topBtn.setTitle(story2.answerA, for: .normal)
            bottomBtn.setTitle(story2.answerB, for: .normal)
            storyIndex = 2
        }
        else if sender.tag == 1 && storyIndex == 3{
        storyLbl.text = story6.story
            topBtn.isHidden = true
            bottomBtn.isHidden = true
        //topBtn.setTitle(story6.answerA, for: .normal)
       // bottomBtn.setTitle(story6.answerB, for: .normal)
        storyIndex = 6
        }
            else if sender.tag == 2 && storyIndex == 3 {
                storyLbl.text = story5.story
            topBtn.isHidden = true
            bottomBtn.isHidden = true
                //topBtn.setTitle(story5.answerA, for: .normal)
               // bottomBtn.setTitle(story5.answerB, for: .normal)
                storyIndex = 5
        }
       else if sender.tag == 1 && storyIndex == 2{
        storyLbl.text = story3.story
            topBtn.isHidden = false
            bottomBtn.isHidden = false
        topBtn.setTitle(story3.answerA, for: .normal)
        bottomBtn.setTitle(story3.answerB, for: .normal)
        storyIndex = 3
        }
            else if sender.tag == 2 && storyIndex == 2{
                 storyLbl.text = story4.story
            topBtn.isHidden = true
            bottomBtn.isHidden = true
//                 topBtn.setTitle(story4.answerA, for: .normal)
//                 bottomBtn.setTitle(story4.answerB, for: .normal)
                 storyIndex = 4
        }
        
    }

    @IBAction func restartBtn(_ sender: Any) {
        setup()
        storyIndex = 1
    }
    func setup(){
        topBtn.isHidden = false
        bottomBtn.isHidden = false
        storyLbl.text = story1.story
        topBtn.setTitle(story1.answerA, for: .normal)
        bottomBtn.setTitle(story1.answerB, for: .normal)
        
    }
   
}
