.class public final Lcom/motorola/camera/analytics/UserExitAppEvent;
.super Lcom/motorola/camera/analytics/LogEvent;
.source "SourceFile"


# static fields
.field public static final APP_TIME:Lcom/motorola/camera/analytics/Attributes/LongAttribute;

.field public static final CAPTURED_PICS:Landroidx/core/text/BidiFormatter$Builder;

.field public static final CAPTURED_VIDS:Landroidx/core/text/BidiFormatter$Builder;

.field public static final CONTROL_BAR_TAPS:Landroidx/core/text/BidiFormatter$Builder;

.field public static final CONTROL_PANEL_TAPS:Landroidx/core/text/BidiFormatter$Builder;

.field public static final ERROR_TYPE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

.field public static final EXITTYPE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

.field public static final HELP_LAUNCHED:Landroidx/core/text/BidiFormatter$Builder;

.field public static final KEEP_LAST_MODE:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

.field public static final LENS_STATUS:Landroidx/core/text/BidiFormatter$Builder;

.field public static final MCF_QUEUE_SIZE:Landroidx/core/text/BidiFormatter$Builder;

.field public static final MODETUT:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

.field public static final MODE_CAROUSEL_LIST:Ljava/util/ArrayList;

.field public static final MODE_LAUNCH:Landroidx/core/text/BidiFormatter$Builder;

.field public static final MODE_SUM:Landroidx/core/text/BidiFormatter$Builder;

.field public static final SETTINGS_OPENED:Landroidx/core/text/BidiFormatter$Builder;

.field public static final ZOOM_PINCH:Landroidx/core/text/BidiFormatter$Builder;

.field public static final ZOOM_SCROLL:Landroidx/core/text/BidiFormatter$Builder;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v1, "EXITTYP"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->EXITTYPE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    const/4 v1, 0x1

    const-string v2, "APPTIME"

    invoke-direct {v0, v2, v1}, Lcom/motorola/camera/analytics/Attributes/LongAttribute;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->APP_TIME:Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v1, "ERRTYP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->ERROR_TYPE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    new-instance v0, Landroidx/core/text/BidiFormatter$Builder;

    const-string v1, "SETTINGSLAUNCH"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3}, Landroidx/core/text/BidiFormatter$Builder;-><init>(Ljava/lang/Object;ZI)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->SETTINGS_OPENED:Landroidx/core/text/BidiFormatter$Builder;

    new-instance v0, Landroidx/core/text/BidiFormatter$Builder;

    const-string v1, "NUMPIC"

    invoke-direct {v0, v1, v3, v3}, Landroidx/core/text/BidiFormatter$Builder;-><init>(Ljava/lang/Object;ZI)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->CAPTURED_PICS:Landroidx/core/text/BidiFormatter$Builder;

    new-instance v0, Landroidx/core/text/BidiFormatter$Builder;

    const-string v1, "NUMVID"

    invoke-direct {v0, v1, v3, v3}, Landroidx/core/text/BidiFormatter$Builder;-><init>(Ljava/lang/Object;ZI)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->CAPTURED_VIDS:Landroidx/core/text/BidiFormatter$Builder;

    new-instance v0, Landroidx/core/text/BidiFormatter$Builder;

    const-string v1, "LENSSTAT"

    invoke-direct {v0, v1}, Landroidx/core/text/BidiFormatter$Builder;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->LENS_STATUS:Landroidx/core/text/BidiFormatter$Builder;

    new-instance v0, Landroidx/core/text/BidiFormatter$Builder;

    const-string v1, "OUTQUSIZ"

    invoke-direct {v0, v1, v3, v3}, Landroidx/core/text/BidiFormatter$Builder;-><init>(Ljava/lang/Object;ZI)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->MCF_QUEUE_SIZE:Landroidx/core/text/BidiFormatter$Builder;

    new-instance v0, Landroidx/core/text/BidiFormatter$Builder;

    const-string v1, "PINCHZOOM"

    invoke-direct {v0, v1, v3, v3}, Landroidx/core/text/BidiFormatter$Builder;-><init>(Ljava/lang/Object;ZI)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->ZOOM_PINCH:Landroidx/core/text/BidiFormatter$Builder;

    new-instance v0, Landroidx/core/text/BidiFormatter$Builder;

    const-string v1, "SCROLLZOOM"

    invoke-direct {v0, v1, v3, v3}, Landroidx/core/text/BidiFormatter$Builder;-><init>(Ljava/lang/Object;ZI)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->ZOOM_SCROLL:Landroidx/core/text/BidiFormatter$Builder;

    new-instance v0, Landroidx/core/text/BidiFormatter$Builder;

    const-string v1, "HELPLAUNCH"

    invoke-direct {v0, v1, v3, v3}, Landroidx/core/text/BidiFormatter$Builder;-><init>(Ljava/lang/Object;ZI)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->HELP_LAUNCHED:Landroidx/core/text/BidiFormatter$Builder;

    new-instance v0, Landroidx/work/Configuration$Builder;

    const-string v1, "MODEADD"

    invoke-direct {v0, v1}, Landroidx/work/Configuration$Builder;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroidx/work/Configuration$Builder;

    const-string v1, "MODEREMOVE"

    invoke-direct {v0, v1}, Landroidx/work/Configuration$Builder;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroidx/core/text/BidiFormatter$Builder;

    const-string v1, "MODELAUNCH"

    invoke-direct {v0, v1, v3, v3}, Landroidx/core/text/BidiFormatter$Builder;-><init>(Ljava/lang/Object;ZI)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_LAUNCH:Landroidx/core/text/BidiFormatter$Builder;

    new-instance v0, Landroidx/core/text/BidiFormatter$Builder;

    const-string v1, "MODESUM"

    invoke-direct {v0, v1, v3, v3}, Landroidx/core/text/BidiFormatter$Builder;-><init>(Ljava/lang/Object;ZI)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_SUM:Landroidx/core/text/BidiFormatter$Builder;

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v1, "MODETUT"

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODETUT:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    const-string v1, "KLMODE"

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->KEEP_LAST_MODE:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    new-instance v0, Landroidx/core/text/BidiFormatter$Builder;

    const-string v1, "CTRLBAR"

    invoke-direct {v0, v1, v3, v3}, Landroidx/core/text/BidiFormatter$Builder;-><init>(Ljava/lang/Object;ZI)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->CONTROL_BAR_TAPS:Landroidx/core/text/BidiFormatter$Builder;

    new-instance v0, Landroidx/core/text/BidiFormatter$Builder;

    const-string v1, "CTRLPNL"

    invoke-direct {v0, v1, v3, v3}, Landroidx/core/text/BidiFormatter$Builder;-><init>(Ljava/lang/Object;ZI)V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->CONTROL_PANEL_TAPS:Landroidx/core/text/BidiFormatter$Builder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_CAROUSEL_LIST:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final addData(Landroidx/work/impl/StartStopTokens;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 9

    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->EXITTYPE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string p3, "EXITTYP"

    iget-object v0, p1, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v1, p3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p3

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    check-cast p3, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    sget-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->ERROR_TYPE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v1, "ERRTYP"

    invoke-virtual {p1, v1}, Landroidx/work/impl/StartStopTokens;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p3, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->ERROR:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    :cond_0
    sget-object v1, Lcom/motorola/camera/analytics/UserExitAppEvent;->APP_TIME:Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-string v4, "APPTIME"

    iget-object v5, p1, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    check-cast v5, [B

    monitor-enter v5

    :try_start_1
    iget-object v6, p1, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v4, v7, v8}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    sub-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/motorola/camera/analytics/Attributes/LongAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    sget-object v1, Lcom/motorola/camera/analytics/UserExitAppEvent;->MCF_QUEUE_SIZE:Landroidx/core/text/BidiFormatter$Builder;

    invoke-virtual {v1, p2, p1}, Landroidx/core/text/BidiFormatter$Builder;->record(Landroid/os/Bundle;Landroidx/work/impl/StartStopTokens;)V

    sget-object v1, Lcom/motorola/camera/analytics/UserExitAppEvent;->CAPTURED_PICS:Landroidx/core/text/BidiFormatter$Builder;

    invoke-virtual {v1, p2, p1}, Landroidx/core/text/BidiFormatter$Builder;->record(Landroid/os/Bundle;Landroidx/work/impl/StartStopTokens;)V

    sget-object v1, Lcom/motorola/camera/analytics/UserExitAppEvent;->CAPTURED_VIDS:Landroidx/core/text/BidiFormatter$Builder;

    invoke-virtual {v1, p2, p1}, Landroidx/core/text/BidiFormatter$Builder;->record(Landroid/os/Bundle;Landroidx/work/impl/StartStopTokens;)V

    const-string v1, "ERRTYP"

    invoke-virtual {p1, v1}, Landroidx/work/impl/StartStopTokens;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->record(Landroid/os/Bundle;Ljava/lang/String;)V

    if-nez p3, :cond_1

    const-string p3, "MISC"

    goto :goto_0

    :cond_1
    iget-object p3, p3, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->mCheckinName:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->HELP_LAUNCHED:Landroidx/core/text/BidiFormatter$Builder;

    invoke-virtual {p0, p2, p1}, Landroidx/core/text/BidiFormatter$Builder;->record(Landroid/os/Bundle;Landroidx/work/impl/StartStopTokens;)V

    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->SETTINGS_OPENED:Landroidx/core/text/BidiFormatter$Builder;

    invoke-virtual {p0, p2, p1}, Landroidx/core/text/BidiFormatter$Builder;->record(Landroid/os/Bundle;Landroidx/work/impl/StartStopTokens;)V

    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->ZOOM_PINCH:Landroidx/core/text/BidiFormatter$Builder;

    invoke-virtual {p0, p2, p1}, Landroidx/core/text/BidiFormatter$Builder;->record(Landroid/os/Bundle;Landroidx/work/impl/StartStopTokens;)V

    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->ZOOM_SCROLL:Landroidx/core/text/BidiFormatter$Builder;

    invoke-virtual {p0, p2, p1}, Landroidx/core/text/BidiFormatter$Builder;->record(Landroid/os/Bundle;Landroidx/work/impl/StartStopTokens;)V

    const-string p0, "MODEADD"

    iget-object p3, p1, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    check-cast p3, [B

    monitor-enter p3

    :try_start_2
    iget-object v0, p1, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, p3

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    if-eqz v1, :cond_3

    const-string v1, "MODEADD"

    invoke-virtual {p2, v1, p0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_3
    const-string p0, "MODEREMOVE"

    iget-object v1, p1, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    check-cast v1, [B

    monitor-enter v1

    :try_start_3
    iget-object v2, p1, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v2, p0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    move p3, v0

    :goto_2
    if-eqz p3, :cond_5

    const-string p3, "MODEREMOVE"

    invoke-virtual {p2, p3, p0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_5
    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_LAUNCH:Landroidx/core/text/BidiFormatter$Builder;

    invoke-virtual {p0, p2, p1}, Landroidx/core/text/BidiFormatter$Builder;->record(Landroid/os/Bundle;Landroidx/work/impl/StartStopTokens;)V

    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_SUM:Landroidx/core/text/BidiFormatter$Builder;

    invoke-virtual {p0, p2, p1}, Landroidx/core/text/BidiFormatter$Builder;->record(Landroid/os/Bundle;Landroidx/work/impl/StartStopTokens;)V

    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODETUT:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string p3, "TUTORIAL_OPENED_MODE_LIST"

    invoke-virtual {p1, p3}, Landroidx/work/impl/StartStopTokens;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->CONTROL_BAR_TAPS:Landroidx/core/text/BidiFormatter$Builder;

    const-string p3, "ANALYTICS_CONTROL_BAR_TAPS"

    invoke-virtual {p1, p3}, Landroidx/work/impl/StartStopTokens;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Landroidx/core/text/BidiFormatter$Builder;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->CONTROL_PANEL_TAPS:Landroidx/core/text/BidiFormatter$Builder;

    const-string p3, "ANALYTICS_CONTROL_PANEL_TAPS"

    invoke-virtual {p1, p3}, Landroidx/work/impl/StartStopTokens;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Landroidx/core/text/BidiFormatter$Builder;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->LENS_STATUS:Landroidx/core/text/BidiFormatter$Builder;

    iget-object p3, p0, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroidx/work/impl/StartStopTokens;->containsKey(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-virtual {p0, p2, p1}, Landroidx/core/text/BidiFormatter$Builder;->record(Landroid/os/Bundle;Landroidx/work/impl/StartStopTokens;)V

    goto :goto_3

    :cond_6
    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroidx/core/text/BidiFormatter$Builder;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    :goto_3
    sget-object p0, Lcom/motorola/camera/analytics/UserExitAppEvent;->KEEP_LAST_MODE:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->KEEP_LAST_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p0
.end method

.method public final getEventType()Lcom/motorola/camera/analytics/AnalyticsService$EventType;
    .locals 0

    sget-object p0, Lcom/motorola/camera/analytics/AnalyticsService$EventType;->USER_EXITED_APP:Lcom/motorola/camera/analytics/AnalyticsService$EventType;

    return-object p0
.end method

.method public final getEventVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "3.8"

    return-object p0
.end method
