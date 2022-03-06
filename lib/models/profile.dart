class ProfileModel {
  final String firstName;
  final String lastName;
  final String email;

  ProfileModel({
    required this.firstName,
    required this.lastName,
    required this.email,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) {
    return ProfileModel(
      firstName: json['firstName'],
      lastName: json['lastName'],
      email: json['email'],
    );
  }
}
