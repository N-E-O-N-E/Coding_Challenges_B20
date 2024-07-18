//
//  main.swift
//  Challenge 4.4.2
//
//  Created by Markus Wirtz on 18.07.24.
//

import Foundation


/*
 Du sollst eine Liste von Tracks in einer Playlist erstellen. Die Playlist hat 20 Tracks.

 Verwende eine For-in-Schleife mit einem Range, um die Tracks zu iterieren und gib die Ausgabe auf der Konsole aus.
 Beispielausgabe:

 Track 1
 Track 2
 ...
 Track 20
 */

let playlist: [String] = [
    "Queen - Bohemian Rhapsody",
    "The Beatles - Let It Be",
    "Nirvana - Smells Like Teen Spirit",
    "Adele - Rolling in the Deep",
    "Ed Sheeran - Shape of You",
    "Beyoncé - Halo",
    "The Weeknd - Blinding Lights",
    "Coldplay - Viva La Vida",
    "Kendrick Lamar - HUMBLE.",
    "Taylor Swift - Blank Space",
    "Imagine Dragons - Radioactive",
    "Dua Lipa - Don’t Start Now",
    "Drake - God’s Plan",
    "Bruno Mars - Uptown Funk (feat. Mark Ronson)",
    "Rihanna - Diamonds",
    "Post Malone - Circles",
    "Billie Eilish - bad guy",
    "Maroon5 - Sugar",
    "Justin Bieber - Sorry",
    "Lady Gaga - Bad Romance"
]

for (index, (tracks)) in playlist[0...playlist.count-1].enumerated() {
    print(index+1, tracks)
}
