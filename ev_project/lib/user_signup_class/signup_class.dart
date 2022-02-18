 final tableSignUp="signup";

class SignUpFields {
  static final List<String> values = [
    id,
    userName,
    email,
    password,
    mobileNumber
  ];

  static final String id = "_id";
  static  String userName = "userName";
  static final String email = "email";
  static final String password = "password";
  static final String mobileNumber = "mobileNumber";
}

class SignUp {
  final int? id;
  String userName;
  String email;
  String password;
  num mobileNumber;

  SignUp(
      {this.id,
      required this.userName,
      required this.email,
      required this.password,
      required this.mobileNumber});

   SignUp copy(
          {int? id,
          String? userName,
          String? password,
          String? email,
          num? mobileNumber}) =>
      SignUp(
          id: id ?? this.id,
          userName: userName ?? this.userName,
          email: email ?? this.email,
          password: password ?? this.password,
          mobileNumber: mobileNumber ?? this.mobileNumber);

  static SignUp fromJson(Map<String, Object?> json) => SignUp(
        id: json[SignUpFields.id] as int?,
        userName: json[SignUpFields.userName] as String,
        password: json[SignUpFields.password] as String,
        email: json[SignUpFields.email] as String,
        mobileNumber: json[SignUpFields.mobileNumber] as num,
      );

  Map<String, Object?> toJson() => {
        SignUpFields.id: id,
        SignUpFields.userName: userName,
        SignUpFields.email: email,
        SignUpFields.password: password,
        SignUpFields.mobileNumber: mobileNumber
      };
}
