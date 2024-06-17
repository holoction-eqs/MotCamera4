.class public final Lcom/motorola/camera/service/QrScannerTileService;
.super Landroid/service/quicksettings/TileService;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/motorola/camera/service/QrScannerTileService;",
        "Landroid/service/quicksettings/TileService;",
        "<init>",
        "()V",
        "com/motorola/camera/settings/CacheBehavior",
        "MotCamera4-v9.1.0.91_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field public final actionReceiver:Lcom/motorola/camera/SecureCamera$1;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    new-instance v0, Lcom/motorola/camera/SecureCamera$1;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/SecureCamera$1;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/motorola/camera/service/QrScannerTileService;->actionReceiver:Lcom/motorola/camera/SecureCamera$1;

    return-void
.end method


# virtual methods
.method public final onClick()V
    .locals 4

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onClick()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "motorola.camera.intent.action.QR_SCAN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v1, 0x22

    invoke-static {v1}, Lcom/motorola/camera/Util;->isAtLeastBuildVersion(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x4000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/motorola/camera/service/QrScannerTileService$$ExternalSyntheticApiModelOutline0;->m(Lcom/motorola/camera/service/QrScannerTileService;Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/service/quicksettings/TileService;->startActivityAndCollapse(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public final onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.motorola.camera3.ACTION_ENABLE_QR_SCAN_TILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.motorola.camera3.ACTION_DISABLE_QR_SCAN_TILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object p0, p0, Lcom/motorola/camera/service/QrScannerTileService;->actionReceiver:Lcom/motorola/camera/SecureCamera$1;

    invoke-virtual {v1, p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onDestroy()V

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/service/QrScannerTileService;->actionReceiver:Lcom/motorola/camera/SecureCamera$1;

    invoke-virtual {v0, p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final onStartListening()V
    .locals 2

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/motorola/camera/cli/util/LidStateHelper;->getLidState(Landroid/content/Context;)I

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v1, p0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean p0, p0, Lcom/motorola/camera/CameraApp;->mIsActivityVisible:Z

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackFacing()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    goto :goto_2

    :cond_3
    :goto_0
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {v0, p0}, Landroid/service/quicksettings/Tile;->setState(I)V

    :goto_2
    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    return-void
.end method

.method public final onStopListening()V
    .locals 0

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStopListening()V

    return-void
.end method
