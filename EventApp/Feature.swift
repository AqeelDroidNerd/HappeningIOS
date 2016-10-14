
import Foundation
import UIKit

class Feature {

    //Custom entity since it allows more flexibility
    var _ID: String = "";
    var ID: String{
        set(id){
            self._ID = id
        }
        get{
            return self._ID
        }
    }
    var _event: Event = Event();
    var event: Event{
        set(theevent){
            self._event = theevent
        }
        get{
            return self._event
        }
    }
    var _FeatureTitle: String = "";
    var FeatureTitle: String{
        set(title){
            self._FeatureTitle = title
        }
        get{
            return self._FeatureTitle
        }
    }
    var _FeatureDescription: String = "";
    var FeatureDescription: String {
        set(desc){
            self._FeatureDescription = desc
        }
        get{
            return self._FeatureDescription
        }
    }
    
    init(){}

    init(id: String, event: Event, featureTitle: String, featureDescription: String) {
        ID = id;
        self.event = event;
        FeatureDescription = featureDescription;
        FeatureTitle = featureTitle;
    }
}
