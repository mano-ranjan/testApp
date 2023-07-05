class DogModelClass {
  DogModelClass({
    required this.message,
    required this.status,
  });

  late final String message;
  late final String status;

  DogModelClass.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['message'] = message;
    data['status'] = status;
    return data;
  }
}
