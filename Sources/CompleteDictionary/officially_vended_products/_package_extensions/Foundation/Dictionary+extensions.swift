//
//  Dictionary+extensions.swift
//  
//
//  Created by Jeremy Bannister on 12/18/21.
//

///
extension Dictionary where Key: CaseIterable {
    
    ///
    public func guaranteedAsCompleteDictionary () -> CompleteDictionary<Key, Value> {
        .init(self)!
    }
}
