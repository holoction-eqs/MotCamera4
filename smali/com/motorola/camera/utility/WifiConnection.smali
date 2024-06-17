.class public final Lcom/motorola/camera/utility/WifiConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/device/callables/CameraListener;


# instance fields
.field public mAttempts:I

.field public final mCheckForWifiRunnable:Landroidx/work/Worker$2;

.field public final mEvent:Lcom/motorola/camera/fsm/ChangeEvent;

.field public final mEventListener:Lcom/motorola/camera/EventListener;

.field public mIsHidden:Z

.field public mPassword:Ljava/lang/String;

.field public mSsid:Ljava/lang/String;

.field public mType:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/EventListener;Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/utility/WifiConnection;->mAttempts:I

    new-instance v0, Landroidx/work/Worker$2;

    invoke-direct {v0, p0}, Landroidx/work/Worker$2;-><init>(Lcom/motorola/camera/utility/WifiConnection;)V

    iput-object v0, p0, Lcom/motorola/camera/utility/WifiConnection;->mCheckForWifiRunnable:Landroidx/work/Worker$2;

    iput-object p1, p0, Lcom/motorola/camera/utility/WifiConnection;->mEventListener:Lcom/motorola/camera/EventListener;

    iput-object p2, p0, Lcom/motorola/camera/utility/WifiConnection;->mEvent:Lcom/motorola/camera/fsm/ChangeEvent;

    return-void
.end method


# virtual methods
.method public final bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    return-void
.end method

.method public final onError(Ljava/lang/Exception;)V
    .locals 1

    instance-of p1, p1, Lcom/motorola/camera/device/exception/CameraNotOpenException;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/utility/WifiConnection;->mEvent:Lcom/motorola/camera/fsm/ChangeEvent;

    iget-object p0, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_APP_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_0
    return-void
.end method
