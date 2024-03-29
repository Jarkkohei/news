class ItemModel {
  final int id;
  final bool deleted;
  final String type;
  final String by;
  final int time;
  final String text;
  final bool dead;
  final int parent;
  //final poll;
  final List<dynamic> kids;
  final String url;
  final int score;
  final String title;
  //final parts;
  final int descendants;

  ItemModel.fromJson(Map<String, dynamic> parsedJson)
    : id = parsedJson['id'],
      deleted = parsedJson['deleted'],
      type = parsedJson['type'],
      by = parsedJson['by'],
      time = parsedJson['time'],
      text = parsedJson['text'],
      dead = parsedJson['dead'],
      parent = parsedJson['parent'],
      //poll = parsedJson['poll'],
      kids = parsedJson['kids'],
      url = parsedJson['url'],
      score = parsedJson['score'],
      title = parsedJson['title'],
      //parts = parsedJson['parts'],
      descendants = parsedJson['descendants'];
}