.class public final Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mIsLinked:Z

.field public mIsMaster:Z

.field public mNeedCloseAfterError:Z

.field public mOpen:I

.field public mPreview:I

.field public mSession:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mOpen:I

    iput v0, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mSession:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mPreview:I

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mOpen:I

    iput v0, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mSession:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mPreview:I

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mOpen:I

    iput v0, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mOpen:I

    iget v0, p1, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mSession:I

    iput v0, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mSession:I

    iget v0, p1, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mPreview:I

    iput v0, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mPreview:I

    iget-boolean v0, p1, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mIsMaster:Z

    iput-boolean v0, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mIsMaster:Z

    iget-boolean v0, p1, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mIsLinked:Z

    iput-boolean v0, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mIsLinked:Z

    iget-boolean p1, p1, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mNeedCloseAfterError:Z

    iput-boolean p1, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mNeedCloseAfterError:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CameraStatusHolder{mOpen="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mOpen:I

    invoke-static {v1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->stringValueOf$4(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mSession:I

    invoke-static {v1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->stringValueOf$4(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPreview="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mPreview:I

    invoke-static {v1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->stringValueOf$5(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsMaster="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mIsMaster:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsLinked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mIsLinked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mNeedCloseAfterError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mNeedCloseAfterError:Z

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
