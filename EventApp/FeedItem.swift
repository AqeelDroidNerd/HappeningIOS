

import Foundation
import UIKit

/**
 * Created by Dinuka on 6/28/16.
 */
public class FeedItem {
    
    var _Type: String = "";
    var Type : String{
        set(type){
            self._Type = type
        }
        get{
            return self._Type
        }
    }
    var _event: Event = Event();
    var event: Event {
        set(theevent){
            self._event = theevent
        }
        get{
            return self._event
        }
    }
    var _Features: Array<Feature> = Array<Feature>();
    var Features: Array<Feature>{
        set(features){
            self._Features = features
        }
        get{
            return self._Features
        }
    }
    init(type: String, event: Event, features: Array<Feature> ) {
        self.Type = type;
        self.event = event;
        self.Features = features;
    }

    init(type: String) {
        self.Type = type;
    }
}
