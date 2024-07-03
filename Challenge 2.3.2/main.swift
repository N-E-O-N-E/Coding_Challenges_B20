//
//  main.swift
//  Challenge 2.3.2
//
//  Created by Markus Wirtz on 03.07.24.
//

import Foundation

/*
 
 setze eine variable für den status nass/trochen der zahnbürste
 setze eimne variable für den status der zahnpaste auf zahnbürste
 setze die variable für zähne sauber
 setze die zeit in minuten für das zähneputzen
 
 solange die zähne nicht sauber sind führe folgendes aus
 
    ist die zahnbürste nicht nass, 
    mach sie nass,
    weiter,
    ist keine zahncreme auf der zahnbürste,
    mach sie drauf,
    weiter
    ist die zahnbürste nass und zahnpasta auf der bürste,
    putze zähne für die dauer von 3 minuten
        wenn die zeit größer 3 minuten ist, setze die zähne auf sauber
        wennn nicht größer 3 minuten, erhöhe die dauer um 1 minute
 
 */


var zahnbuersteNass = false
var zahnpastaAufZahnbuerste = false
var zaehneSauber = false
var putzZeitMinuten = 0

while !zaehneSauber {
    if !zahnbuersteNass {
        zahnbuersteNass = true
        continue
    }
    
    if !zahnpastaAufZahnbuerste {
        zahnpastaAufZahnbuerste = true
        continue
    }
    
    if zahnbuersteNass && zahnpastaAufZahnbuerste {
        if putzZeitMinuten >= 3{
            zaehneSauber = true
        } else {
            putzZeitMinuten += 1
        }
    }
}


