using Toybox.WatchUi;

class BodyBikeDelegate extends WatchUi.BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onMenu() {
        WatchUi.pushView(new Rez.Menus.MainMenu(), new BodyBikeMenuDelegate(), WatchUi.SLIDE_UP);
        return true;
    }

}