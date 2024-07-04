namespace Celeste.Mod.FriendCollab;

public class FriendCollabModuleSettings : EverestModuleSettings {
    [SettingRange(-5, 5)]
    public int ReverseFriction { get; set; } = 0;
}