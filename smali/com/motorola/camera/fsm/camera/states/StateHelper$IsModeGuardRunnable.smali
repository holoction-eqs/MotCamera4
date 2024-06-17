.class public final Lcom/motorola/camera/fsm/camera/states/StateHelper$IsModeGuardRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/GuardedTransitionRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final mMode:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/fsm/camera/states/StateHelper$IsModeGuardRunnable;->$r8$classId:I

    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/StateHelper$IsModeGuardRunnable;->mMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z
    .locals 1

    iget p1, p0, Lcom/motorola/camera/fsm/camera/states/StateHelper$IsModeGuardRunnable;->$r8$classId:I

    const/4 p2, 0x1

    const/4 v0, 0x0

    iget p0, p0, Lcom/motorola/camera/fsm/camera/states/StateHelper$IsModeGuardRunnable;->mMode:I

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 1
    :pswitch_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    return p2

    .line 2
    :pswitch_1
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result p0

    return p0

    .line 3
    :goto_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaMode()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSession(I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_2

    :cond_1
    move p2, v0

    :goto_2
    return p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic canTransition(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/StateHelper$IsModeGuardRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 4
    :pswitch_0
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/StateHelper$IsModeGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 5
    :pswitch_1
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/StateHelper$IsModeGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 6
    :goto_0
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/StateHelper$IsModeGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
