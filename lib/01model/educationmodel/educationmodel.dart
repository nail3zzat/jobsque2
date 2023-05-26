class FileModel2 {
  String? name;
  String? type;
  String? size;
  String? photo;

  FileModel2({
    this.name,
    this.type,
    this.size,
    this.photo,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'type': type,
      'size': size,
      'photo': photo,
    };
  }

  factory FileModel2.fromMap(Map<String, dynamic> map) {
    return FileModel2(
      name: map['name'] as String,
      type: map['type'] as String,
      size: map['size'] as String,
      photo: map['photo'] as String,
    );
  }
}
