.class public final Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mFrameNumber:J

.field public mLastAfMode:I

.field public mLastAfState:I

.field public mLastLensState:I

.field public mWaitingUnlock:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->mLastAfState:I

    iput v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->mLastAfMode:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->mLastLensState:I

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->mWaitingUnlock:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->mFrameNumber:J

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FocusHolder{lastAfMode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->mLastAfMode:I

    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->getAfModeAsString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " lastAfState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->mLastAfState:I

    packed-switch p0, :pswitch_data_0

    const-string v1, "UNKNOWN("

    const-string v2, ")"

    invoke-static {v1, p0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_0
    const-string p0, "CONTROL_AF_STATE_PASSIVE_UNFOCUSED"

    goto :goto_0

    :pswitch_1
    const-string p0, "CONTROL_AF_STATE_NOT_FOCUSED_LOCKED"

    goto :goto_0

    :pswitch_2
    const-string p0, "CONTROL_AF_STATE_FOCUSED_LOCKED"

    goto :goto_0

    :pswitch_3
    const-string p0, "CONTROL_AF_STATE_ACTIVE_SCAN"

    goto :goto_0

    :pswitch_4
    const-string p0, "CONTROL_AF_STATE_PASSIVE_FOCUSED"

    goto :goto_0

    :pswitch_5
    const-string p0, "CONTROL_AF_STATE_PASSIVE_SCAN"

    goto :goto_0

    :pswitch_6
    const-string p0, "CONTROL_AF_STATE_INACTIVE"

    :goto_0
    const-string/jumbo v1, "}"

    invoke-static {v0, p0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
