.class public final Lcom/motorola/camera/analytics/CameraReadyEvent;
.super Lcom/motorola/camera/analytics/LogEvent;
.source "SourceFile"


# static fields
.field public static final EVTTME:Lcom/motorola/camera/analytics/Attributes/LongAttribute;

.field public static final FACING:Landroidx/core/text/BidiFormatter$Builder;

.field public static final ISCOLDSTART:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

.field public static final LAUNCHEDBY:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

.field public static final PROBE:Landroidx/core/text/BidiFormatter$Builder;

.field public static final QLNCH:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

.field public static final RAM:Landroidx/core/text/BidiFormatter$Builder;

.field public static final RAMAVL:Landroidx/core/text/BidiFormatter$Builder;

.field public static final RAMPSREXP:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

.field public static final RAMTHRS:Landroidx/core/text/BidiFormatter$Builder;

.field public static final SECURE_MODE:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

.field public static final STARTUP:Lcom/motorola/camera/analytics/Attributes/LongAttribute;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    const-string v1, "STARTUP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/analytics/Attributes/LongAttribute;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/motorola/camera/analytics/CameraReadyEvent;->STARTUP:Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    const-string v1, "COLD"

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/CameraReadyEvent;->ISCOLDSTART:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v1, "LAUNCHEDBY"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/CameraReadyEvent;->LAUNCHEDBY:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v1, "QLNCH"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/CameraReadyEvent;->QLNCH:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    const-string v1, "evttme"

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/analytics/Attributes/LongAttribute;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/motorola/camera/analytics/CameraReadyEvent;->EVTTME:Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    const-string v1, "SECUREMODE"

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/CameraReadyEvent;->SECURE_MODE:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    new-instance v0, Landroidx/core/text/BidiFormatter$Builder;

    const-string v1, "FACING"

    invoke-direct {v0, v1}, Landroidx/core/text/BidiFormatter$Builder;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/CameraReadyEvent;->FACING:Landroidx/core/text/BidiFormatter$Builder;

    new-instance v0, Landroidx/core/text/BidiFormatter$Builder;

    const-string v1, "RAM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/core/text/BidiFormatter$Builder;-><init>(Ljava/lang/Object;ZI)V

    sput-object v0, Lcom/motorola/camera/analytics/CameraReadyEvent;->RAM:Landroidx/core/text/BidiFormatter$Builder;

    new-instance v0, Landroidx/core/text/BidiFormatter$Builder;

    const-string v1, "PROBE"

    invoke-direct {v0, v1, v2, v2}, Landroidx/core/text/BidiFormatter$Builder;-><init>(Ljava/lang/Object;ZI)V

    sput-object v0, Lcom/motorola/camera/analytics/CameraReadyEvent;->PROBE:Landroidx/core/text/BidiFormatter$Builder;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    const-string v1, "RAMPSREXP"

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/CameraReadyEvent;->RAMPSREXP:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    new-instance v0, Landroidx/core/text/BidiFormatter$Builder;

    const-string v1, "RAMAVL"

    invoke-direct {v0, v1}, Landroidx/core/text/BidiFormatter$Builder;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/CameraReadyEvent;->RAMAVL:Landroidx/core/text/BidiFormatter$Builder;

    new-instance v0, Landroidx/core/text/BidiFormatter$Builder;

    const-string v1, "RAMTHRS"

    invoke-direct {v0, v1}, Landroidx/core/text/BidiFormatter$Builder;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/CameraReadyEvent;->RAMTHRS:Landroidx/core/text/BidiFormatter$Builder;

    return-void
.end method

.method public static setupSessionValues(Landroidx/work/impl/StartStopTokens;)V
    .locals 8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAnyVideoMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoServiceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Camera"

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "Camcorder"

    :goto_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    const-string v2, "SEQID"

    invoke-virtual {v1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4, v2}, Landroidx/work/impl/StartStopTokens;->putLong(JLjava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCaptureIntent()Lcom/motorola/camera/settings/CaptureIntent;

    move-result-object v1

    iget-object v2, v1, Lcom/motorola/camera/settings/CaptureIntent;->mIntent:Landroid/content/Intent;

    if-nez v2, :cond_2

    goto/16 :goto_8

    :cond_2
    const-string v3, "motorola.camera.intent.extra.ANALYTICS_PROCESSED"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v1, "NOT_LAUNCH"

    goto/16 :goto_9

    :cond_3
    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_10

    const-string v6, "android.intent.action.CAMERA_BUTTON"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v1, "BTN"

    goto/16 :goto_9

    :cond_4
    invoke-static {v3}, Lcom/motorola/camera/settings/CaptureIntent;->isPhotoCaptureAction(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-static {v3}, Lcom/motorola/camera/settings/CaptureIntent;->isVideoCaptureAction(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_5
    move v6, v4

    goto :goto_3

    :cond_6
    :goto_2
    move v6, v5

    :goto_3
    const-string v7, "motorola.intent.extra.CALLER"

    if-eqz v6, :cond_e

    const-string v3, "com.android.systemui.camera_launch_source"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v2}, Lcom/motorola/camera/Util;->getIntentSource(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_7
    invoke-virtual {v2, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    :goto_4
    if-nez v2, :cond_9

    invoke-virtual {v1}, Lcom/motorola/camera/settings/CaptureIntent;->isVoiceAssistantCapture()Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {v1}, Lcom/motorola/camera/settings/CaptureIntent;->isGoogleAssistantLaunch()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_7

    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    :goto_5
    move v4, v3

    goto :goto_6

    :sswitch_0
    const-string v1, "wiggle_gesture"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_5

    :cond_a
    const/4 v4, 0x2

    goto :goto_6

    :sswitch_1
    const-string v1, "flip_changed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_5

    :cond_b
    move v4, v5

    goto :goto_6

    :sswitch_2
    const-string v1, "power_double_tap"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_5

    :cond_c
    :goto_6
    packed-switch v4, :pswitch_data_0

    :cond_d
    const-string v1, "LOCK"

    goto :goto_9

    :pswitch_0
    const-string v1, "QUIK"

    goto :goto_9

    :pswitch_1
    const-string v1, "CLICAM"

    goto :goto_9

    :pswitch_2
    const-string v1, "DTPWR"

    goto :goto_9

    :cond_e
    invoke-static {v3}, Lcom/motorola/camera/MediaControlReceiver;->isMediaAction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "motorola.intent.category.QUICK_LAUNCH"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "moto-voice"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_f
    :goto_7
    const-string v1, "AOV"

    goto :goto_9

    :cond_10
    :goto_8
    const-string v1, "TRAY"

    :goto_9
    const-string v2, "LNCH"

    invoke-virtual {p0, v2, v1}, Landroidx/work/impl/StartStopTokens;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/motorola/camera/analytics/LogEvent;->SERVICEMODE:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroidx/work/impl/StartStopTokens;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "USECASE"

    invoke-virtual {p0, v1, v0}, Landroidx/work/impl/StartStopTokens;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x65d77e51 -> :sswitch_2
        -0x5611b31e -> :sswitch_1
        -0x179a9ecb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final addData(Landroidx/work/impl/StartStopTokens;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/motorola/camera/utility/KeyguardHelper;->isKeyguardLocked()Z

    move-result p0

    const-string p3, "USECASE"

    const-string v0, "USECASE"

    invoke-virtual {p1, v0}, Landroidx/work/impl/StartStopTokens;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p3, Lcom/motorola/camera/analytics/CameraReadyEvent;->STARTUP:Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    const-string v0, "STARTUP"

    invoke-virtual {p1, v0}, Landroidx/work/impl/StartStopTokens;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Lcom/motorola/camera/analytics/Attributes/LongAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    sget-object p3, Lcom/motorola/camera/analytics/CameraReadyEvent;->EVTTME:Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    const-string v0, "evttme"

    invoke-virtual {p1, v0}, Landroidx/work/impl/StartStopTokens;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Lcom/motorola/camera/analytics/Attributes/LongAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    sget-object p3, Lcom/motorola/camera/analytics/CameraReadyEvent;->ISCOLDSTART:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    iget-object v0, p3, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/work/impl/StartStopTokens;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/analytics/CameraReadyEvent;->LAUNCHEDBY:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v2, "LAUNCHEDBY"

    const-string v3, "INITIALIZED"

    iget-object v4, p1, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    check-cast v4, [B

    monitor-enter v4

    :try_start_0
    iget-object v5, p1, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {v5, v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, p2, v2}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/analytics/CameraReadyEvent;->QLNCH:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->QUICK_DRAW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_1

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ON"

    goto :goto_0

    :cond_0
    const-string v2, "OFF"

    goto :goto_0

    :cond_1
    const-string v2, "NS"

    :goto_0
    invoke-virtual {v0, p2, v2}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/analytics/CameraReadyEvent;->SECURE_MODE:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p2, p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    sget-object p0, Lcom/motorola/camera/analytics/LogEvent;->SERVICEMODE:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/work/impl/StartStopTokens;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    sget-object p0, Lcom/motorola/camera/analytics/CameraReadyEvent;->FACING:Landroidx/core/text/BidiFormatter$Builder;

    const-string v0, "IS_CLI_DISPLAY"

    invoke-virtual {p1, v0}, Landroidx/work/impl/StartStopTokens;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, -0x1

    invoke-static {v2, v0}, Lcom/motorola/camera/analytics/LogEvent;->getCameraIdForAnalytics(IZ)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroidx/core/text/BidiFormatter$Builder;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    sget-object p0, Lcom/motorola/camera/analytics/CameraReadyEvent;->RAM:Landroidx/core/text/BidiFormatter$Builder;

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {v0}, Lcom/motorola/camera/shared/Util;->getTotalRAMMiB(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroidx/core/text/BidiFormatter$Builder;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    sget-object p0, Lcom/motorola/camera/analytics/CameraReadyEvent;->PROBE:Landroidx/core/text/BidiFormatter$Builder;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasBackCamera()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    :goto_1
    or-int/2addr v0, v2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasFrontCamera()Z

    move-result v3

    xor-int/2addr v1, v3

    or-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroidx/core/text/BidiFormatter$Builder;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    sget-object p0, Lcom/motorola/camera/analytics/CameraReadyEvent;->RAMPSREXP:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/work/impl/StartStopTokens;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    sget-object p0, Lcom/motorola/camera/analytics/CameraReadyEvent;->RAMAVL:Landroidx/core/text/BidiFormatter$Builder;

    iget-object v0, p0, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/work/impl/StartStopTokens;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroidx/core/text/BidiFormatter$Builder;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    sget-object p0, Lcom/motorola/camera/analytics/CameraReadyEvent;->RAMTHRS:Landroidx/core/text/BidiFormatter$Builder;

    iget-object v0, p0, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/work/impl/StartStopTokens;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroidx/core/text/BidiFormatter$Builder;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    const-string p0, "LNCH"

    invoke-virtual {p1, p0}, Landroidx/work/impl/StartStopTokens;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "NOT_LAUNCH"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "LNCH"

    invoke-virtual {p2, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object p0, p3, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0, v2}, Landroidx/work/impl/StartStopTokens;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "STARTUP"

    const-wide/16 p2, -0x1

    invoke-virtual {p1, p2, p3, p0}, Landroidx/work/impl/StartStopTokens;->putLong(JLjava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getEventType()Lcom/motorola/camera/analytics/AnalyticsService$EventType;
    .locals 0

    sget-object p0, Lcom/motorola/camera/analytics/AnalyticsService$EventType;->CAMERA_READY:Lcom/motorola/camera/analytics/AnalyticsService$EventType;

    return-object p0
.end method

.method public final getEventVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "2.7"

    return-object p0
.end method
