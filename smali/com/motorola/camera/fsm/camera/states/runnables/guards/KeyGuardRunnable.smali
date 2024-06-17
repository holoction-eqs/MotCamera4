.class public final Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/GuardedTransitionRunnable;


# static fields
.field public static final CAPTURE_KEYS:[I

.field public static mIgnoreDownTime:J = -0x1L


# instance fields
.field public final mKeyCodes:Ljava/util/List;

.field public final mKeyCondition:I

.field public final mKeyFunction:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;->CAPTURE_KEYS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x17
        0x42
        0x4f
        0x19
        0x18
        0x1b
        0x55
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;->CAPTURE_KEYS:[I

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;-><init>([III)V

    return-void
.end method

.method public constructor <init>([II)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;-><init>([III)V

    return-void
.end method

.method public constructor <init>([III)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lkotlin/ResultKt;->asList([I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;->mKeyCodes:Ljava/util/List;

    iput p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;->mKeyCondition:I

    iput p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;->mKeyFunction:I

    return-void
.end method


# virtual methods
.method public final canTransition(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    move-object p1, p2

    check-cast p1, Landroid/os/Bundle;

    if-eqz p1, :cond_0

    const-string v0, "KEY_EVENT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "KeyEvent is missing from an Event.KEY Trigger with data="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyGuardRunnable"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_1
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;->mKeyCodes:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    const/4 p2, 0x1

    iget v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;->mKeyFunction:I

    if-ne v2, p2, :cond_4

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;->CAPTURE_KEYS:[I

    move v5, v1

    :goto_1
    const/4 v6, 0x7

    if-ge v5, v6, :cond_3

    aget v6, v4, v5

    if-ne v6, v3, :cond_2

    move v3, p2

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_2
    if-eqz v3, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCaptureAllowed()Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_8

    :cond_4
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, p2, :cond_5

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    sget-wide v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;->mIgnoreDownTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPressKeySwitchModeSupported()Z

    move-result v3

    if-eqz v3, :cond_5

    goto/16 :goto_8

    :cond_5
    iget p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;->mKeyCondition:I

    invoke-static {p0}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p0

    if-eqz p0, :cond_e

    const-string v3, "TIMER"

    if-eq p0, p2, :cond_d

    const/4 v4, 0x2

    if-eq p0, v4, :cond_c

    const/4 p1, 0x3

    if-eq p0, p1, :cond_7

    const/4 p1, 0x4

    if-eq p0, p1, :cond_6

    goto/16 :goto_8

    :cond_6
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    if-ne p0, p2, :cond_10

    goto/16 :goto_7

    :cond_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMirrorMode()Z

    move-result p0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSpotColorMode()Z

    move-result p1

    const/4 v3, 0x6

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v3

    if-nez v3, :cond_9

    const/16 v3, 0x10

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_3

    :cond_8
    move v3, v1

    goto :goto_4

    :cond_9
    :goto_3
    move v3, p2

    :goto_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPressKeySwitchModeSupported()Z

    move-result v5

    if-eqz v5, :cond_a

    if-ne v2, v4, :cond_a

    move v4, p2

    goto :goto_5

    :cond_a
    move v4, v1

    :goto_5
    if-nez v3, :cond_b

    if-nez p1, :cond_b

    if-nez p0, :cond_b

    if-ne v2, p2, :cond_b

    move p0, p2

    goto :goto_6

    :cond_b
    move p0, v1

    :goto_6
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result p1

    if-eqz p1, :cond_10

    if-nez v4, :cond_f

    if-eqz p0, :cond_10

    goto :goto_7

    :cond_c
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    if-ne p0, p2, :cond_10

    invoke-virtual {p1, v3, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_10

    goto :goto_7

    :cond_d
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    if-ne p0, p2, :cond_10

    invoke-virtual {p1, v3, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_10

    goto :goto_7

    :cond_e
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    if-nez p0, :cond_10

    :cond_f
    :goto_7
    move v1, p2

    :cond_10
    :goto_8
    return v1
.end method
