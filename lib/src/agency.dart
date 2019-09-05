import 'package:meta/meta.dart';

class Agency
{
  String phone;
  String url;
  String id;
  String name;
  String timezone;
  String lang;

  Agency(this.phone, this.url, this.id, this.name, this.timezone, this.lang);
}

class AgencyManager
{
  List<Agency> _agencies;
  
  AgencyManager(){
    _agencies = List();
  }

  addAgency({String agencyPhone, String agencyUrl, @required String agencyId, String agencyName, String agencyTimezone, String agencyLang}){
    _agencies.add(Agency(agencyPhone, agencyUrl, agencyId, agencyName, agencyTimezone, agencyLang));
  }

  Agency getAgency(index) => _agencies[index];

}