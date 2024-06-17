.class public final Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener$CameraStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final cameraId:Ljava/lang/String;

.field public final isNotStopped:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener$CameraStatus;->cameraId:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener$CameraStatus;->isNotStopped:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener$CameraStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener$CameraStatus;

    iget-object v1, p1, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener$CameraStatus;->cameraId:Ljava/lang/String;

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener$CameraStatus;->cameraId:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener$CameraStatus;->isNotStopped:Z

    iget-boolean p1, p1, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener$CameraStatus;->isNotStopped:Z

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener$CameraStatus;->cameraId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener$CameraStatus;->isNotStopped:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    :cond_1
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CameraStatus(cameraId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener$CameraStatus;->cameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isNotStopped="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener$CameraStatus;->isNotStopped:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
