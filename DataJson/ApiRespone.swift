//
//  Model.swift
//  DataJson
//
//  Created by Linder Hassinger on 1/27/18.
//  Copyright © 2018 Linder Hassinger. All rights reserved.
//

import Foundation

class ApiResponse {

    init() {
        
    }

    public func downloadData() {
        let session = URLSession.shared

        //Url del api
        let apiUrl = URL(string : "https://api.foursquare.com/v2/venues/explore?ll=40.7,-74&oauth_token=XT14KMX0HXF4ZO4KZANBCURVZW3UEVDWFCJKN25BAJWAJ21Q&v=20170210")

        let urlRequest = URLRequest(url : apiUrl!)

        let task = session.dataTask(with: urlRequest, completionHandler: {
            (data, response, error) in

            if error == nil {
                do {
                    let newJsonData = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as! Dictionary<String, AnyObject>
                    let allKeys = newJsonData.keys
                    //let responsePlaces = newJsonData["response"] as! Dictionary<String, AnyObject>


                } catch {
                    print("Fallo la conversion del objeto data")
                }
            } else {
                print("Fallo en la carga")
            }
        })

        task.resume()
    }
}
