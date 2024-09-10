//? Serialization:
// Object Class -> Map -> Json (encode)

// ?Deserialization:
// Json (decode) -> Map -> Object Class

// Deserialization me hamne phle Map se Object banaya then phr hame Object ko Json decode krdenge.
// In deserialization, we first convert a Map to an Object, and then we decode the Object into JSON.
class UserModel {
  int? id;
  String? name;
  String? gender;
  UserModel({this.id, this.name, this.gender});

  // Map to Object
  UserModel.fromMap(Map<String, dynamic> map) {
    this.id = map['id'];
    this.name = map['name'];
    this.gender = map['gender'];
  }

  // Serialization me hamne phle Object class ko Map me convert kia then ham Json encode krdenge.
  // In serialization, we first convert the Object class to a Map, and then we encode it into JSON.
  Map<String, dynamic> toMap() {
    return {
      "id": this.id,
      "name": this.name,
      "gender": this.gender,
    };
  }
}

void main() {
  UserModel userModel = UserModel(id: 101, name: "Ali", gender: "Male");
  Map<String, dynamic> userMap = userModel.toMap();
  print("We have a Json Now : $userMap");
  print("-------------------");
  UserModel userModelIntoMap = UserModel.fromMap(userMap);
  print("We have Object Now: ${userModelIntoMap.name}");
}
