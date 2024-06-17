.class public final Lcom/motorola/camera/shared/OrientationEvent$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/shared/OrientationEvent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/shared/OrientationEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/shared/OrientationEvent$1;->this$0:Lcom/motorola/camera/shared/OrientationEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iget-object p0, p0, Lcom/motorola/camera/shared/OrientationEvent$1;->this$0:Lcom/motorola/camera/shared/OrientationEvent;

    iget-object v0, p0, Lcom/motorola/camera/shared/OrientationEvent;->mCliDisplay:Landroid/view/Display;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_3

    invoke-virtual {p0}, Lcom/motorola/camera/shared/OrientationEvent;->getDisplayRotation()I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/shared/OrientationEvent;->mDisplayRotation:I

    iget-boolean p1, p0, Lcom/motorola/camera/shared/OrientationEvent;->mIsCliDisplay:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/shared/OrientationEvent;->mCliManager:Lmotorola/core_services/cli/CLIManager;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lmotorola/core_services/cli/CLIManager;->getDeviceState()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/motorola/camera/shared/OrientationEvent;->mDisplayRotation:I

    sput p1, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/shared/OrientationEvent;->updateDeviceState()V

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/motorola/camera/shared/OrientationEvent;->mIsDesktopMode:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/motorola/camera/shared/OrientationEvent;->mLastRawOrientation:I

    invoke-virtual {p0, p1}, Lcom/motorola/camera/shared/OrientationEvent;->onOrientationChanged(I)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/shared/OrientationEvent;->dispatchOnRotationChanged$1()V

    :cond_3
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
