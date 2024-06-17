.class public final Lcom/motorola/camera/ui/DownUpDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mListener:Lcom/google/common/base/Joiner;

.field public mStillDown:Z


# direct methods
.method public constructor <init>(Lcom/google/common/base/Joiner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/DownUpDetector;->mListener:Lcom/google/common/base/Joiner;

    return-void
.end method


# virtual methods
.method public final setState(ZLandroid/view/MotionEvent;)V
    .locals 4

    iget-boolean v0, p0, Lcom/motorola/camera/ui/DownUpDetector;->mStillDown:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/motorola/camera/ui/DownUpDetector;->mStillDown:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/DownUpDetector;->mListener:Lcom/google/common/base/Joiner;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/GestureRecognizer;

    iget-object p0, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mListener:Lcom/motorola/camera/ui/GestureRecognizer$Listener;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    check-cast p0, Lcom/motorola/camera/ui/UIManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/motorola/camera/ui/UIManager;->getCameraType(Landroid/view/MotionEvent;)Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/UIManager;->mDownCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/UIManager;->dispatchUiEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/UIManager;->mDownEventHandled:Z

    if-eqz p1, :cond_1

    goto/16 :goto_1

    :cond_1
    iput-wide v0, p0, Lcom/motorola/camera/ui/UIManager;->mOnDownTimestamp:J

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object p0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/GestureRecognizer;

    iget-object p0, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mListener:Lcom/motorola/camera/ui/GestureRecognizer$Listener;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->TOUCH:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    check-cast p0, Lcom/motorola/camera/ui/UIManager;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/UIManager;->dispatchUiEvent(Landroid/view/MotionEvent;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    iput-boolean v1, p0, Lcom/motorola/camera/ui/UIManager;->mDownEventHandled:Z

    goto :goto_1

    :cond_3
    iget-boolean p2, p0, Lcom/motorola/camera/ui/UIManager;->mInLongPress:Z

    if-eqz p2, :cond_4

    iput-boolean v1, p0, Lcom/motorola/camera/ui/UIManager;->mInLongPress:Z

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v2, "CAPTURE_TRIGGER"

    invoke-virtual {p2, v2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "LOCATION"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/UIManager;->dispatchLongPress(Landroid/os/Bundle;)V

    :cond_4
    iget-boolean p1, p0, Lcom/motorola/camera/ui/UIManager;->mScaling:Z

    const/4 p2, 0x1

    const-string v0, "ENABLE"

    if-eqz p1, :cond_5

    iput-boolean v1, p0, Lcom/motorola/camera/ui/UIManager;->mScaling:Z

    iput p2, p0, Lcom/motorola/camera/ui/UIManager;->mDragDirection:I

    invoke-static {v0, v1}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p1

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SCALE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v2, p1, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_5
    iget p1, p0, Lcom/motorola/camera/ui/UIManager;->mDragDirection:I

    const/4 v2, 0x3

    const-string v3, "ORIENTATION"

    if-ne p1, v2, :cond_6

    iput-boolean v1, p0, Lcom/motorola/camera/ui/UIManager;->mScaling:Z

    iput p2, p0, Lcom/motorola/camera/ui/UIManager;->mDragDirection:I

    invoke-static {v0, v1}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p1

    iget v0, p0, Lcom/motorola/camera/ui/UIManager;->mOrientation:I

    invoke-virtual {p1, v3, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->DRAG_VERTICAL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v2, p1, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_6
    const/4 v2, 0x2

    if-ne p1, v2, :cond_7

    iput-boolean v1, p0, Lcom/motorola/camera/ui/UIManager;->mScaling:Z

    iput p2, p0, Lcom/motorola/camera/ui/UIManager;->mDragDirection:I

    invoke-static {v0, v1}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p1

    iget v0, p0, Lcom/motorola/camera/ui/UIManager;->mOrientation:I

    invoke-virtual {p1, v3, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->DRAG_HORIZONTAL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v2, p1, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/UIManager;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_7
    iput p2, p0, Lcom/motorola/camera/ui/UIManager;->mDragDirection:I

    :goto_1
    return-void
.end method
