//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Nick Walter on 8/1/16.
//  Copyright © 2016 Zappy Code. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var dacooltableview: UITableView!
    
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        dacooltableview.dataSource = self
        dacooltableview.delegate = self
        emojis = makeEmojiArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😎"
        emoji1.birthYear = 2010
        emoji1.category = "Smiley"
        emoji1.defintion = "A smiley face wiht sun glasses"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "💩"
        emoji2.birthYear = 2011
        emoji2.category = "Smiley"
        emoji2.defintion = "A poo face"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "😀"
        emoji3.birthYear = 2010
        emoji3.category = "Smiley"
        emoji3.defintion = "A standard smiley face"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "👠"
        emoji4.birthYear = 2014
        emoji4.category = "Thing"
        emoji4.defintion = "A shoe"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🐹"
        emoji5.birthYear = 2012
        emoji5.category = "Animal"
        emoji5.defintion = "A hamster"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🐬"
        emoji6.birthYear = 2008
        emoji6.category = "Animal"
        emoji6.defintion = "A dolphin"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
    }


}

