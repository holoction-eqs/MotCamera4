.class public final synthetic Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/fsm/camera/modes/PhotoMode;

.field public final synthetic f$1:Lcom/motorola/camera/fsm/camera/FsmContext;

.field public final synthetic f$2:I

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/modes/PhotoMode;Lcom/motorola/camera/fsm/camera/FsmContext;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda8;->f$0:Lcom/motorola/camera/fsm/camera/modes/PhotoMode;

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda8;->f$1:Lcom/motorola/camera/fsm/camera/FsmContext;

    iput p3, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda8;->f$2:I

    iput-boolean p4, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda8;->f$3:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 10

    iget-object v6, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda8;->f$1:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget v7, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda8;->f$2:I

    check-cast p1, Lcom/motorola/camera/settings/CameraType;

    iget-object v8, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda8;->f$0:Lcom/motorola/camera/fsm/camera/modes/PhotoMode;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/motorola/camera/settings/SettingsManager;->getOfflineReprocPictureSize(Landroid/util/Size;Lcom/motorola/camera/settings/CameraType;)Landroid/util/Size;

    move-result-object v9

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, v6

    move-object v2, v9

    move v3, v7

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->setupJpegImageReaderImpl(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/util/Size;ILcom/motorola/camera/settings/CameraType;Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda8;->f$3:Z

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/motorola/camera/settings/CameraType;->getPhysicalCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v4

    move-object v0, v8

    move-object v1, v6

    move-object v2, v9

    move v3, v7

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->setupJpegImageReaderImpl(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/util/Size;ILcom/motorola/camera/settings/CameraType;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
