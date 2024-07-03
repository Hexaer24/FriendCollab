using System;

namespace Celeste.Mod.FriendCollab2023;

public class FriendCollab2023Module : EverestModule {
    public static FriendCollab2023Module Instance { get; private set; }

    public override Type SettingsType => typeof(FriendCollab2023ModuleSettings);
    public static FriendCollab2023ModuleSettings Settings => (FriendCollab2023ModuleSettings) Instance._Settings;

    public override Type SessionType => typeof(FriendCollab2023ModuleSession);
    public static FriendCollab2023ModuleSession Session => (FriendCollab2023ModuleSession) Instance._Session;

    public override Type SaveDataType => typeof(FriendCollab2023ModuleSaveData);
    public static FriendCollab2023ModuleSaveData SaveData => (FriendCollab2023ModuleSaveData) Instance._SaveData;

    public FriendCollab2023Module() {
        Instance = this;
#if DEBUG
        // debug builds use verbose logging
        Logger.SetLogLevel(nameof(FriendCollab2023Module), LogLevel.Verbose);
#else
        // release builds use info logging to reduce spam in log files
        Logger.SetLogLevel(nameof(FriendCollab2023Module), LogLevel.Info);
#endif
    }

    public override void Load() {
        // TODO: apply any hooks that should always be active
    }

    public override void Unload() {
        // TODO: unapply any hooks applied in Load()
    }
}