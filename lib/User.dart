class Users {
  int id;
  String name;
  String username;
  String email;
  String city;

  Users(this.id, this.name, this.username, this.email, this.city);

  //hala ye factory constructor
  //constructor map misazam

factory Users.formMapJson(Map<String,dynamic> jsonobject){
return Users(jsonobject['id'], jsonobject['name'], jsonobject['username'], jsonobject['email'], jsonobject['address']['city']);
}
}
