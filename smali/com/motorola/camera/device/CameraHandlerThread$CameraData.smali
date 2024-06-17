.class public final Lcom/motorola/camera/device/CameraHandlerThread$CameraData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mAvailabilityCallback:Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1;

.field public final mCameraInfoMap:Ljava/util/LinkedHashMap;

.field public mCameraManager:Landroid/hardware/camera2/CameraManager;

.field public mPlayer:Landroid/media/MediaPlayer;

.field public mRecorder:Landroid/media/MediaRecorder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mCameraInfoMap:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final getCameraInfo(Ljava/lang/String;)Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mCameraInfoMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/motorola/camera/device/exception/CameraInfoNotFoundException;

    const-string v0, "CameraInfo of "

    const-string v1, " is null or  absent"

    invoke-static {v0, p1, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/motorola/camera/device/exception/CameraInfoNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
