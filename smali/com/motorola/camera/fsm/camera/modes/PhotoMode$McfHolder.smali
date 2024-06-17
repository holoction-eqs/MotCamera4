.class public final Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mCameraMode:Lcom/motorola/camera/mcf/McfInputStream$StreamMode;

.field public mFullFrameExposureCompensation:I

.field public final mFullFrameReaders:Ljava/util/ArrayList;

.field public mFullFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

.field public mPreviewFullFrameSkipCount:I

.field public final mRawFrameReaders:Ljava/util/ArrayList;

.field public mRawFrameStream:Lcom/motorola/camera/mcf/McfInputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mPreviewFullFrameSkipCount:I

    iput v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameExposureCompensation:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameReaders:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mRawFrameReaders:Ljava/util/ArrayList;

    return-void
.end method
