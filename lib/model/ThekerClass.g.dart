// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ThekerClass.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ThekerClassAdapter extends TypeAdapter<ThekerClass> {
  @override
  final int typeId = 0;

  @override
  ThekerClass read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ThekerClass(
      name: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ThekerClass obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ThekerClassAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
