.class public final Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LISTENED_NOTIFIERS:Ljava/util/List;


# instance fields
.field public final batteryDrainMonitor:Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;

.field public final envInfoListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

.field public final focusStateListener:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoFocusListener;

.field public isRunning:Z

.field public final liveDatas:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;

.field public final mcfStateListener:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$mcfStateListener$1;

.field public final notifiersListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;

.field public final nvSettingListener:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$$ExternalSyntheticLambda0;

.field public final previewSizeListener:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$$ExternalSyntheticLambda0;

.field public final statusListener:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->AI_SCENE:Lcom/motorola/camera/Notifier$TYPE;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->GL_FRAME_RATE:Lcom/motorola/camera/Notifier$TYPE;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->VIEWFINDER_FRAME_RATE:Lcom/motorola/camera/Notifier$TYPE;

    filled-new-array {v0, v1, v2}, [Lcom/motorola/camera/Notifier$TYPE;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->LISTENED_NOTIFIERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;

    invoke-direct {v0}, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->liveDatas:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;

    const-string v1, "batterymanager"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type android.os.BatteryManager"

    invoke-static {p1, v1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/os/BatteryManager;

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->currentDrainMa:Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1, p1, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;-><init>(Landroid/os/BatteryManager;Landroidx/lifecycle/MutableLiveData;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->batteryDrainMonitor:Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$mcfStateListener$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$mcfStateListener$1;-><init>(Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->mcfStateListener:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$mcfStateListener$1;

    new-instance p1, Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    const/4 v1, 0x5

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->envInfoListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoFocusListener;

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->focusStatus:Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoFocusListener;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->focusStateListener:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoFocusListener;

    new-instance p1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;

    const/4 v1, 0x7

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->notifiersListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->previewSizeListener:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener;

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->cameraStatus:Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1, v0}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->statusListener:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->nvSettingListener:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$$ExternalSyntheticLambda0;

    return-void
.end method
