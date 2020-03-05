using Toybox.Application;
using Toybox.WatchUi;

class BodyBikeApp extends Application.AppBase {
    var mSensor;
    
    function initialize() {
        AppBase.initialize();
    }

    // onStart() is called on application start up
    function onStart(state) {
        //Create the sensor object and open it
        mSensor = new BikePowerSensor();
        mSensor.open();
    }

    // onStop() is called when your application is exiting
    function onStop(state) {
        // Release the sensor
        mSensor.closeSensor();
        mSensor.release();
    }

    // Return the initial view of your application here
    function getInitialView() {        
        //The initial view is located at index 0
        var index = 0;
        return [new MainView(mSensor, index), new BodyBikeDelegate(mSensor, index)];
        //return [ new BodyBikeView(), new BodyBikeDelegate() ];
    }

}
