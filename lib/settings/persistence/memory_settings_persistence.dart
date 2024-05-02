import 'package:super_dash/settings/persistence/settings_persistence.dart';

/// An in-memory implementation of [SettingsPersistence].
/// Useful for testing.
class MemoryOnlySettingsPersistence implements SettingsPersistence {
  bool musicOn = true;

  bool soundsOn = true;

  bool muted = false;

  String playerName = 'Player';

  @override
  Future<bool> getMusicOn() async => musicOn;

  @override
  Future<bool> getMuted({required bool defaultValue}) async => muted;

  @override
  Future<bool> getSoundsOn() async => soundsOn;

  @override
  Future<void> saveMusicOn({required bool active}) async => musicOn = active;

  @override
  Future<void> saveMuted({required bool active}) async => muted = active;

  @override
  Future<void> saveSoundsOn({required bool active}) async => soundsOn = active;
}
