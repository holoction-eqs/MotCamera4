.class public final Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

.field public final synthetic val$data:[Landroid/hardware/camera2/params/Face;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;[Landroid/hardware/camera2/params/Face;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$1;->val$data:[Landroid/hardware/camera2/params/Face;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mLoaded:Z

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;->ALLOW_UPDATES:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceTextureList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->-$$Nest$mcheckForFaceMatrixUpdate(Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFacePolicy:Lcom/adobe/xmp/impl/ByteBuffer;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$1;->val$data:[Landroid/hardware/camera2/params/Face;

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/impl/ByteBuffer;->handleFaceData([Landroid/hardware/camera2/params/Face;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$1;->val$data:[Landroid/hardware/camera2/params/Face;

    if-eqz v1, :cond_1

    array-length v1, v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->sendFaceDetected(Z)V

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
