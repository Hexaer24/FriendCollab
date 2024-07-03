namespace Celeste.Mod.FriendCollab2023;

public class FriendCollab2023ModuleSettings : EverestModuleSettings {
    [SettingRange(-5, 5)]
    public int ReverseFriction { get; set; } = 0;
}