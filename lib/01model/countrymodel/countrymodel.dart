class CountryModel{

  int? id;
  String? flag;
  String? countryName;

  CountryModel({this.id,this.flag,this.countryName});

  Map<String, dynamic> toMap() {

      Map<String,dynamic> map2={};
      map2["id"]=id;
      map2["flag"]=flag;
      map2["countryName"]=countryName;

      return map2;
    }



  factory CountryModel.fromMap(Map<String, dynamic> map2) {
    return CountryModel(
      id: map2['id'] as int,
      flag: map2['flag'] as String,
      countryName: map2['countryName'] as String,
    );
  }
}