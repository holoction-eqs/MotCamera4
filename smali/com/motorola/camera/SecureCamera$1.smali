.class public final Lcom/motorola/camera/SecureCamera$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final synthetic $r8$classId:I

.field public final this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0xf

    iput v0, p0, Lcom/motorola/camera/SecureCamera$1;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    sget-object v0, Lcom/motorola/camera/storage/MediaVolumesHolder;->INSTANCE:Lcom/motorola/camera/storage/MediaVolumesHolder;

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    const/16 v2, 0x16

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object v1, p0, Lcom/motorola/camera/SecureCamera$1;->this$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/common/util/NetworkTypeObserver;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/SecureCamera$1;->$r8$classId:I

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/motorola/camera/SecureCamera$1;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/play/core/appupdate/zzc;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/motorola/camera/SecureCamera$1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/motorola/camera/SecureCamera$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/shared/OrientationEvent;)V
    .locals 1

    const/16 v0, 0xe

    iput v0, p0, Lcom/motorola/camera/SecureCamera$1;->$r8$classId:I

    .line 4
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/SecureCamera$1;->this$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 5
    iput p2, p0, Lcom/motorola/camera/SecureCamera$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/SecureCamera$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v0, Lcom/motorola/camera/SecureCamera$1;->$r8$classId:I

    const/4 v4, 0x3

    const/4 v5, -0x1

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x1

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_12

    :pswitch_0
    const-string v3, "context"

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "intent"

    invoke-static {v2, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "com.motorola.camera3.EXTRA_ACTION"

    invoke-virtual {v2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v0, v0, Lcom/motorola/camera/SecureCamera$1;->this$0:Ljava/lang/Object;

    if-eqz v1, :cond_1

    if-eq v1, v9, :cond_0

    goto :goto_1

    :cond_0
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;->exitingAction:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_1
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;->enteringAction:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_2

    :goto_0
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke$2()Ljava/lang/Object;

    :cond_2
    :goto_1
    return-void

    :pswitch_1
    const-string v3, "context"

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "intent"

    invoke-static {v2, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/motorola/camera/SecureCamera$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_2
    sget-object v1, Lcom/motorola/camera/storage/MediaVolumesHolder;->workerHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/motorola/camera/SecureCamera$1;->this$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_3
    sget-object v1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    const-string v1, "com.motorola.hardware.action.ACTION_DEVICE_STATE_CHANGE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/motorola/camera/SecureCamera$1;->this$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/shared/OrientationEvent;

    if-eqz v0, :cond_3

    iget-boolean v1, v0, Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;->mEnabled:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/motorola/camera/shared/OrientationEvent;->updateDeviceState()V

    invoke-virtual {v0}, Lcom/motorola/camera/shared/OrientationEvent;->dispatchOnRotationChanged$1()V

    :cond_3
    return-void

    :pswitch_4
    const-string v3, "context"

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "intent"

    invoke-static {v2, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/motorola/camera/SecureCamera$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/service/SelfieCameraTileService;

    invoke-virtual {v0}, Landroid/service/quicksettings/TileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    const-string v1, "com.motorola.camera3.ACTION_ENABLE_SELFIE_TILE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    const-string v1, "com.motorola.camera3.ACTION_DISABLE_SELFIE_TILE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v6, v8

    :goto_2
    invoke-virtual {v0, v6}, Landroid/service/quicksettings/Tile;->setState(I)V

    :cond_6
    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    :goto_3
    return-void

    :pswitch_5
    const-string v3, "context"

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "intent"

    invoke-static {v2, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/motorola/camera/SecureCamera$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/service/QrScannerTileService;

    invoke-virtual {v0}, Landroid/service/quicksettings/TileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x681fdba9

    if-eq v2, v3, :cond_9

    const v3, -0x222fc0c0

    if-eq v2, v3, :cond_8

    goto :goto_4

    :cond_8
    const-string v2, "com.motorola.camera3.ACTION_DISABLE_QR_SCAN_TILE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_4

    :cond_9
    const-string v2, "com.motorola.camera3.ACTION_ENABLE_QR_SCAN_TILE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    move v8, v9

    :cond_a
    invoke-virtual {v0, v8}, Landroid/service/quicksettings/Tile;->setState(I)V

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    :cond_b
    :goto_4
    return-void

    :pswitch_6
    iget-object v0, v0, Lcom/motorola/camera/SecureCamera$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/limitfunctionality/BatterySaverHandler;

    invoke-virtual {v0}, Lcom/motorola/camera/limitfunctionality/BatterySaverHandler;->processEvent()V

    return-void

    :pswitch_7
    iget-object v0, v0, Lcom/motorola/camera/SecureCamera$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/limitfunctionality/BatteryHandler;

    sget-object v1, Lcom/motorola/camera/limitfunctionality/BatteryHandler;->FEATURES_10_PERC:Ljava/util/EnumSet;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/limitfunctionality/BatteryHandler;->processBatteryStatus(Landroid/content/Intent;)V

    return-void

    :pswitch_8
    iget-object v0, v0, Lcom/motorola/camera/SecureCamera$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/editor/DocEditorActivity;

    const-string v1, "EXTRA_DOCUMENT_ORIGINAL_URI"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/camera/editor/DocEditorActivity;->originalURI:Landroid/net/Uri;

    invoke-virtual {v0}, Lcom/motorola/camera/editor/DocEditorActivity;->loadBitmap()V

    return-void

    :pswitch_9
    const-string v3, "context"

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "intent"

    invoke-static {v2, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/motorola/camera/SecureCamera$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/cli/content/CliContentViewModel;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/cli/content/CliContentViewModel;->dispatchAction(Landroid/content/Intent;)V

    return-void

    :pswitch_a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Gps Provider Changed: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "LocationManager"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_f

    const-string v1, "android.location.PROVIDERS_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v0, v0, Lcom/motorola/camera/SecureCamera$1;->this$0:Ljava/lang/Object;

    if-eqz v1, :cond_d

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    move-object v2, v0

    check-cast v2, Lcom/motorola/camera/LocationManager;

    iget-boolean v2, v2, Lcom/motorola/camera/LocationManager;->mIsPermissionCache:Z

    if-eqz v2, :cond_c

    invoke-static {}, Lcom/motorola/camera/LocationManager;->isAnyProviderEnabled()Z

    move-result v2

    if-eqz v2, :cond_c

    move v8, v9

    :cond_c
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_d
    check-cast v0, Lcom/motorola/camera/LocationManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/LocationManager;->isAnyProviderEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_5

    :cond_e
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_f
    :goto_5
    return-void

    :pswitch_b
    iget-object v0, v0, Lcom/motorola/camera/SecureCamera$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/CliDualPreviewActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_c
    iget-object v0, v0, Lcom/motorola/camera/SecureCamera$1;->this$0:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/google/android/play/core/appupdate/zzc;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "package.name"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, v3, Lcom/google/android/play/core/appupdate/zzc;->zza:Lcom/motorola/camera/saving/XmpData$DocData;

    const-string v1, "package.name"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ListenerRegistryBroadcastReceiver received broadcast for third party app: %s"

    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/saving/XmpData$DocData;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_10
    iget-object v0, v3, Lcom/google/android/play/core/appupdate/zzc;->zza:Lcom/motorola/camera/saving/XmpData$DocData;

    new-array v1, v8, [Ljava/lang/Object;

    const-string v4, "List of extras in received intent:"

    invoke-virtual {v0, v4, v1}, Lcom/motorola/camera/saving/XmpData$DocData;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, v3, Lcom/google/android/play/core/appupdate/zzc;->zza:Lcom/motorola/camera/saving/XmpData$DocData;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    filled-new-array {v1, v5}, [Ljava/lang/Object;

    move-result-object v1

    const-string v5, "Key: %s; value: %s"

    invoke-virtual {v4, v5, v1}, Lcom/motorola/camera/saving/XmpData$DocData;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :cond_11
    iget-object v0, v3, Lcom/google/android/play/core/appupdate/zzc;->zza:Lcom/motorola/camera/saving/XmpData$DocData;

    new-array v1, v8, [Ljava/lang/Object;

    const-string v4, "List of extras in received intent needed by fromUpdateIntent:"

    invoke-virtual {v0, v4, v1}, Lcom/motorola/camera/saving/XmpData$DocData;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "install.status"

    invoke-virtual {v2, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Key: %s; value: %s"

    invoke-virtual {v0, v5, v4}, Lcom/motorola/camera/saving/XmpData$DocData;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v4, "error.code"

    invoke-virtual {v2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v4, v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/motorola/camera/saving/XmpData$DocData;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const-string v0, "bytes.downloaded"

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v0, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    const-string v0, "total.bytes.to.download"

    invoke-virtual {v2, v0, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v13

    invoke-virtual {v2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    const-string v0, "package.name"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    new-instance v0, Lcom/google/android/play/core/install/zza;

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/google/android/play/core/install/zza;-><init>(IJJILjava/lang/String;)V

    iget-object v1, v3, Lcom/google/android/play/core/appupdate/zzc;->zza:Lcom/motorola/camera/saving/XmpData$DocData;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "ListenerRegistryBroadcastReceiver.onReceive: %s"

    invoke-virtual {v1, v4, v2}, Lcom/motorola/camera/saving/XmpData$DocData;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-enter v3

    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, v3, Lcom/google/android/play/core/appupdate/zzc;->zzb:Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/play/core/install/InstallStateUpdatedListener;

    check-cast v2, Lcom/motorola/camera/utility/InAppUpdateUtils;

    invoke-virtual {v2, v0}, Lcom/motorola/camera/utility/InAppUpdateUtils;->onStateUpdate(Lcom/google/android/play/core/install/zza;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    :cond_12
    monitor-exit v3

    :goto_8
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :pswitch_d
    const-string v3, "context"

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "intent"

    invoke-static {v2, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/motorola/camera/SecureCamera$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;

    check-cast v0, Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;

    iget v1, v0, Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;->$r8$classId:I

    const-string v3, "Received "

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_b

    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    goto/16 :goto_d

    :cond_13
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v2

    sget-object v4, Landroidx/work/impl/constraints/trackers/BatteryChargingTrackerKt;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_d

    :sswitch_0
    const-string v2, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto/16 :goto_d

    :sswitch_1
    const-string v2, "android.os.action.CHARGING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto/16 :goto_d

    :cond_14
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_9

    :sswitch_2
    const-string v2, "android.os.action.DISCHARGING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto/16 :goto_d

    :sswitch_3
    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto/16 :goto_d

    :cond_15
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_9
    invoke-virtual {v0, v1}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->setState(Ljava/lang/Object;)V

    goto/16 :goto_d

    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_16

    goto/16 :goto_d

    :cond_16
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v1

    sget-object v4, Landroidx/work/impl/constraints/trackers/BatteryNotLowTrackerKt;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x7606c095    # -6.0004207E-33f

    if-eq v2, v3, :cond_19

    const v3, 0x1d398bfd

    if-eq v2, v3, :cond_17

    goto/16 :goto_d

    :cond_17
    const-string v2, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_d

    :cond_18
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_a

    :cond_19
    const-string v2, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_d

    :cond_1a
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_a
    invoke-virtual {v0, v1}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->setState(Ljava/lang/Object;)V

    goto :goto_d

    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1b

    goto :goto_d

    :cond_1b
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v1

    sget-object v4, Landroidx/work/impl/constraints/trackers/StorageNotLowTrackerKt;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x46671f94

    if-eq v2, v3, :cond_1e

    const v3, -0x2b8fb65c

    if-eq v2, v3, :cond_1c

    goto :goto_d

    :cond_1c
    const-string v2, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_d

    :cond_1d
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_c

    :cond_1e
    const-string v2, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    goto :goto_d

    :cond_1f
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_c
    invoke-virtual {v0, v1}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->setState(Ljava/lang/Object;)V

    :cond_20
    :goto_d
    return-void

    :pswitch_10
    iget-object v0, v0, Lcom/motorola/camera/SecureCamera$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/StreamVolumeManager;

    iget-object v1, v0, Landroidx/media3/exoplayer/StreamVolumeManager;->eventHandler:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    new-instance v2, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v7}, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_11
    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    const/4 v3, 0x5

    if-nez v2, :cond_21

    goto :goto_f

    :cond_21
    :try_start_1
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v2, :cond_27

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-nez v5, :cond_22

    goto :goto_e

    :cond_22
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    const/16 v10, 0x9

    const/4 v11, 0x6

    if-eqz v5, :cond_24

    if-eq v5, v9, :cond_25

    if-eq v5, v7, :cond_24

    if-eq v5, v3, :cond_24

    if-eq v5, v11, :cond_26

    if-eq v5, v10, :cond_23

    const/16 v4, 0x8

    goto :goto_10

    :cond_23
    const/4 v4, 0x7

    goto :goto_10

    :cond_24
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    packed-switch v2, :pswitch_data_2

    :pswitch_12
    move v4, v11

    goto :goto_10

    :pswitch_13
    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v2, v4, :cond_28

    move v4, v10

    goto :goto_10

    :cond_25
    :pswitch_14
    move v4, v6

    goto :goto_10

    :cond_26
    :pswitch_15
    move v4, v3

    goto :goto_10

    :pswitch_16
    move v4, v7

    goto :goto_10

    :cond_27
    :goto_e
    move v4, v9

    goto :goto_10

    :catch_0
    :cond_28
    :goto_f
    move v4, v8

    :goto_10
    :pswitch_17
    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    iget-object v0, v0, Lcom/motorola/camera/SecureCamera$1;->this$0:Ljava/lang/Object;

    const/16 v5, 0x1f

    if-lt v2, v5, :cond_29

    if-ne v4, v3, :cond_29

    check-cast v0, Landroidx/media3/common/util/NetworkTypeObserver;

    :try_start_2
    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroidx/media3/common/util/NetworkTypeObserver$Api31$DisplayInfoCallback;

    invoke-direct {v4, v0}, Landroidx/media3/common/util/NetworkTypeObserver$Api31$DisplayInfoCallback;-><init>(Landroidx/media3/common/util/NetworkTypeObserver;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v2, v1, v4}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    invoke-virtual {v2, v4}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_11

    :catch_1
    invoke-static {v3, v0}, Landroidx/media3/common/util/NetworkTypeObserver;->access$200(ILandroidx/media3/common/util/NetworkTypeObserver;)V

    goto :goto_11

    :cond_29
    check-cast v0, Landroidx/media3/common/util/NetworkTypeObserver;

    invoke-static {v4, v0}, Landroidx/media3/common/util/NetworkTypeObserver;->access$200(ILandroidx/media3/common/util/NetworkTypeObserver;)V

    :goto_11
    return-void

    :pswitch_18
    iget-object v0, v0, Lcom/motorola/camera/SecureCamera$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->onChange()V

    return-void

    :pswitch_19
    iget-object v0, v0, Lcom/motorola/camera/SecureCamera$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/SecureCamera;

    invoke-virtual {v0}, Lcom/motorola/camera/ActivityBase;->finish()V

    return-void

    :goto_12
    if-eqz v2, :cond_2a

    const-string v1, "com.motorola.hardware.extra.LID_STATE"

    invoke-virtual {v2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    :cond_2a
    if-ne v5, v9, :cond_2b

    iget-object v0, v0, Lcom/motorola/camera/SecureCamera$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->dismiss()V

    :cond_2b
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_11
        :pswitch_10
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x7073f927 -> :sswitch_3
        -0x3465cce -> :sswitch_2
        0x388694fe -> :sswitch_1
        0x3cbf870b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_16
        :pswitch_16
        :pswitch_12
        :pswitch_16
        :pswitch_14
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method
