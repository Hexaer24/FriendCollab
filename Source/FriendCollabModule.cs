using System;

namespace Celeste.Mod.FriendCollab;

public class FriendCollabModule : EverestModule {
    public static FriendCollabModule Instance { get; private set; }

    public override Type SettingsType => typeof(FriendCollabModuleSettings);
    public static FriendCollabModuleSettings Settings => (FriendCollabModuleSettings) Instance._Settings;

    public override Type SessionType => typeof(FriendCollabModuleSession);
    public static FriendCollabModuleSession Session => (FriendCollabModuleSession) Instance._Session;

    public override Type SaveDataType => typeof(FriendCollabModuleSaveData);
    public static FriendCollabModuleSaveData SaveData => (FriendCollabModuleSaveData) Instance._SaveData;

    public FriendCollabModule() {
        Instance = this;
#if DEBUG
        // debug builds use verbose logging
        Logger.SetLogLevel(nameof(FriendCollabModule), LogLevel.Verbose);
#else
        // release builds use info logging to reduce spam in log files
        Logger.SetLogLevel(nameof(FriendCollabModule), LogLevel.Info);
#endif
    }

    public override void Load() {
        // TODO: apply any hooks that should always be active
    }

    public override void Unload() {
        // TODO: unapply any hooks applied in Load()
    }
}