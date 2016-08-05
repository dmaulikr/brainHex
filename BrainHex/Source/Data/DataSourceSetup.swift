//
//  DataSource.swift
//  BrainHex
//
//  Created by Gaurav on 05/08/16.
//  Copyright © 2016 Gaurav Keshre. All rights reserved.
//

import Foundation

// MARK:- Callback Typealias

typealias CompletionCallback    = (status: Bool, result: [GameImage])	-> ()
typealias APICompletionCallback    = (status: Bool, result: [String]?)	-> ()


/// This method will decide which data source to used based on internet connection
func ActiveDataSource()-> DataSourceProtocol{
    if isConnectedToInternet(){
        return OnlineDataSource()
    }else{
        return OfflineDataSource()
    }
}


/**
 Checks the Internet connection
 
 - returns: Retuns true if internet is persent
 */
func isConnectedToInternet() -> Bool
{
    return false
}




//MARK:- Protocol methods

protocol DataSourceProtocol {
    
    func fetchPhotos(tags:[String],
                     onCompletion block: CompletionCallback?)
    
}