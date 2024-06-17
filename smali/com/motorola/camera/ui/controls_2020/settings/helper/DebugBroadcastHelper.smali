.class public final Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final debugActionReceiver:Lcom/motorola/camera/SecureCamera$1;

.field public final enteringAction:Lkotlin/jvm/functions/Function0;

.field public final exitingAction:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;->enteringAction:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;->exitingAction:Lkotlin/jvm/functions/Function0;

    new-instance p1, Lcom/motorola/camera/SecureCamera$1;

    const/16 p2, 0x11

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/SecureCamera$1;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;->debugActionReceiver:Lcom/motorola/camera/SecureCamera$1;

    return-void
.end method


# virtual methods
.method public final registerActionReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.motorola.camera3.DEBUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;->debugActionReceiver:Lcom/motorola/camera/SecureCamera$1;

    invoke-virtual {v1, p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method
