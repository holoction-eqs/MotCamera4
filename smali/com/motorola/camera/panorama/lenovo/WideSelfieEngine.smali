.class public final Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static sWideSelfieEngine:Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;


# instance fields
.field public final mImageWH:[I

.field public mIsCapturing:Z

.field public final mLenovoPanoramaSelfie:Lcom/lenovo/core/LenovoPanoramaSelfie;

.field public mOutputPreviewData:[B

.field public mProcessedNum:I

.field public mRequestNum:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/lenovo/core/LenovoPanoramaSelfie;

    invoke-direct {v0}, Lcom/lenovo/core/LenovoPanoramaSelfie;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mLenovoPanoramaSelfie:Lcom/lenovo/core/LenovoPanoramaSelfie;

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mProcessedNum:I

    iput v0, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mRequestNum:I

    iput-boolean v0, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mIsCapturing:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mImageWH:[I

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;
    .locals 2

    const-class v0, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->sWideSelfieEngine:Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    if-nez v1, :cond_0

    new-instance v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    invoke-direct {v1}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;-><init>()V

    sput-object v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->sWideSelfieEngine:Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    :cond_0
    sget-object v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->sWideSelfieEngine:Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final saveJpeg(II)Z
    .locals 3

    iget v0, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mProcessedNum:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mLenovoPanoramaSelfie:Lcom/lenovo/core/LenovoPanoramaSelfie;

    invoke-virtual {v0, p2}, Lcom/lenovo/core/LenovoPanoramaSelfie;->abnormalFinish(I)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mLenovoPanoramaSelfie:Lcom/lenovo/core/LenovoPanoramaSelfie;

    invoke-virtual {p2, p1}, Lcom/lenovo/core/LenovoPanoramaSelfie;->saveOutputJpeg(I)V

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput v1, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mProcessedNum:I

    iput v1, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mRequestNum:I

    return v2
.end method

.method public final setFullImageSize(II)V
    .locals 2

    iget-boolean v0, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mIsCapturing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mImageWH:[I

    aput p1, v1, v0

    const/4 v0, 0x1

    aput p2, v1, v0

    iget-object p0, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mLenovoPanoramaSelfie:Lcom/lenovo/core/LenovoPanoramaSelfie;

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/core/LenovoPanoramaSelfie;->setFullImageSize(II)V

    return-void
.end method
