// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ThekerData.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ThekerDataAdapter extends TypeAdapter<ThekerData> {
  @override
  final int typeId = 1;

  @override
  ThekerData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ThekerData(
      text: fields[0] as String,
      reward: fields[1] as String,
      guide: fields[3] as String,
      number: fields[2] as String,
      thekerClass: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ThekerData obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.text)
      ..writeByte(1)
      ..write(obj.reward)
      ..writeByte(2)
      ..write(obj.number)
      ..writeByte(3)
      ..write(obj.guide)
      ..writeByte(4)
      ..write(obj.thekerClass);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ThekerDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
