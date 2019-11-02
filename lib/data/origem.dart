class Ori{
  String id;
  //construct
  Ori({this.id});

  //From json
  Ori.fromJson(Map<String, dynamic> json) {
    id = json['id'];
  }
}