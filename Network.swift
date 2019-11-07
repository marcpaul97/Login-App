//
//  Network.swift
//  JSONTest
//
//  Created by Mike C on 10/31/19.
//  Copyright © 2019 Mike C. All rights reserved.
//

import Foundation

let ClubMemberProfile = """
{
    "FirstName": "Henry",
    "LastName": "Williams",
    "IDNumber": 3589,
    "PreviousGuests":
    [
        {
            "GuestFullName" : "Bill Gates",
            "DateOfEntrance" :
            [
                "6-20-2019",
                "6-29-2019"
            ]
        },
        {
            "GuestFullName" : "Steve Jobs",
            "DateOfEntrance" :
            [
                "7-23-2019",
                "8-22-2019"
            ]
        },
        {
            "GuestFullName" : "Jeff Bezos",
            "DateOfEntrance" :
            [
                "5-09-2019",
                "5-10-2019"
            ]
        }
    ]

}
"""

class Network {
    static func downloadClubMemberProfile(completion:(( _ json: Data?) -> Void)) {
      completion(Data(ClubMemberProfile.utf8))
  }
}
