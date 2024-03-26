class User{
  final int? id;
  late final String firstName;
  late final String lastName;
  User({this.id=0,required this.firstName,required this.lastName});

  factory User.fromMap(Map<String, dynamic> data) {
    return User(
      id: data['id'],
      firstName: data['firstName'],
      lastName: data['lastName'],
    );
  }
  Map<String,dynamic> toMap(){
    return {
      "id" : id,
      "firstName" : firstName,
      "lastName" :lastName,
    };
  }
}