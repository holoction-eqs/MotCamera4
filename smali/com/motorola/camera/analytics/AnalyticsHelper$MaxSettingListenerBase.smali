.class public abstract Lcom/motorola/camera/analytics/AnalyticsHelper$MaxSettingListenerBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/settings/SettingChangeListener;


# instance fields
.field public final mListened:Lcom/motorola/camera/settings/SettingsManager$Key;

.field public mMaxValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/settings/SettingsManager$Key;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxSettingListenerBase;->mListened:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    iput-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxSettingListenerBase;->mMaxValue:Ljava/lang/Object;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    return-void
.end method
