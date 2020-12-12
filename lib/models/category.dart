class Category {
  final int id;
  final String name, text;

  Category.fromJson(dynamic json)
      : this.id = json['id'],
        //   this.category_id = json['category_id'],
        this.name = json['name'],
        this.text = json['text'];
}
