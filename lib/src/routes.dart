import 'package:meta/meta.dart';

class Route
{
  String type;
  String id;
  String shortName;
  String longNname;
  String agencyId;
  String description;
  String color;
  String textColor;

  Route(this.type, this.id, this.shortName, this.longNname, this.agencyId, this.description, this.color, this.textColor);
}

class RoutesManager
{
  List<Route> _routes;
  
  RoutesManager(){
    _routes = List();
  }

  addRoute({String routeType, @required String routeId,  String routeShortName, String routeLongName, String agencyId, String routeDescription,
   String routeColor, String routeTextColor}){
    _routes.add(Route(routeType, routeId, routeShortName, routeLongName, agencyId, routeDescription, routeColor, routeTextColor));
  }

  Route getRoute(index) => _routes[index];

}