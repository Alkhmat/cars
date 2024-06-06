class CloudFireStoreModel {
  final String image;
  final String type;
  // final String marka;
  // final String model;

  CloudFireStoreModel({
    required this.image,
    required this.type,
  });

  factory CloudFireStoreModel.fromMap(Map<String, dynamic> map) {
    return CloudFireStoreModel(
      image: map['imageURL'] as String? ?? '',
      type: map['type'] as String? ?? '',
    );
  }
}
