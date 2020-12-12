class UserEnter {
  final int cat_Id;
  final String name, mobile, city, notes;

  UserEnter.fromJson(dynamic json)
      : this.cat_Id = json['id'],
        this.name = json['name'],
        this.mobile = json['mobile'],
        this.city = json['city'],
        this.notes = json['notes'];

  // this.mobile=json['mobile'];
}
