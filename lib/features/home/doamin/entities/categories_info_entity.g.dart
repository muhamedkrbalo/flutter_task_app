// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_info_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CategoriesInfoEntityAdapter extends TypeAdapter<CategoriesInfoEntity> {
  @override
  final int typeId = 0;

  @override
  CategoriesInfoEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CategoriesInfoEntity(
      nameCategory: fields[0] as String,
      imageCategory: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CategoriesInfoEntity obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.nameCategory)
      ..writeByte(1)
      ..write(obj.imageCategory);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CategoriesInfoEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
