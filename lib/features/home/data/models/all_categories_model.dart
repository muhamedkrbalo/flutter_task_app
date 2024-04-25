import 'package:flutter_task_app/features/home/doamin/entities/categories_info_entity.dart';

class AllCategoriesModel extends CategoriesInfoEntity {
	int? id;
	String? name;
	String? image;
	DateTime? creationAt;
	DateTime? updatedAt;

	AllCategoriesModel({
		this.id, 
		this.name, 
		this.image, 
		this.creationAt, 
		this.updatedAt, 
	}) : super( nameCategory: name??"", imageCategory: image??"");

	factory AllCategoriesModel.fromJson(Map<String, dynamic> json) {
  final id = json['id'];
  if (id is int) {
    return AllCategoriesModel(
      id: id,
      name: json['name'] as String?,
      image: json['image'] as String?,
      creationAt: json['creationAt'] == null
          ? null
          : DateTime.parse(json['creationAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );
  } else if (id is String) {
    return AllCategoriesModel(
      id: int.parse(id), // Parse the id as an integer
      name: json['name'] as String?,
      image: json['image'] as String?,
      creationAt: json['creationAt'] == null
          ? null
          : DateTime.parse(json['creationAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );
  } else {
    throw const FormatException('Invalid id format in JSON');
  }
}


	Map<String, dynamic> toJson() => {
				'id': id,
				'name': name,
				'image': image,
				'creationAt': creationAt?.toIso8601String(),
				'updatedAt': updatedAt?.toIso8601String(),
			};
}
