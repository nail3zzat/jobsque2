class WorkData{


  String? title;
  String? photo;

  WorkData({this.title,this.photo});

  Map<String, dynamic> toMap() {
    Map<String,dynamic> map={};
    map["title"]=title;
    map["photo"]=photo;

    return map;
  }

  factory WorkData.fromMap(Map<String, dynamic> map) {
    return WorkData(
      title: map['title'] as String,
      photo: map['photo'] as String,
    );
  }
}