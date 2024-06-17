.class public final Lcom/motorola/camera/device/exception/CameraExceptionWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mException:Ljava/lang/Exception;

.field public final mHalErrorCode:I

.field public final mState:Lcom/motorola/camera/fsm/camera/StateKey;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/StateKey;Ljava/lang/Exception;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;->mException:Ljava/lang/Exception;

    iput-object p1, p0, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    iput p3, p0, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;->mHalErrorCode:I

    return-void
.end method
