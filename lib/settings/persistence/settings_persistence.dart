/// An interface of persistence stores for settings.
///
/// Implementations can range from simple in-memory storage through
/// local preferences to cloud-based solutions.
abstract class SettingsPersistence {
  Future<bool> getMusicOn();
  Future<bool> getMuted({required bool defaultValue});
  Future<bool> getSoundsOn();
  Future<void> saveMusicOn({required bool active});
  Future<void> saveMuted({required bool active});
  Future<void> saveSoundsOn({required bool active});
}
