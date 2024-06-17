.class public final enum Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable$SingleTapCondition;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable$SingleTapCondition;

.field public static final enum SINGLE_TAP_CAPTURE:Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable$SingleTapCondition;

.field public static final enum SINGLE_TAP_ROI:Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable$SingleTapCondition;

.field public static final enum SINGLE_TAP_TIMER:Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable$SingleTapCondition;

.field public static final enum SINGLE_TAP_UNLOCK:Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable$SingleTapCondition;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable$SingleTapCondition;

    const-string v1, "SINGLE_TAP_CAPTURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable$SingleTapCondition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable$SingleTapCondition;->SINGLE_TAP_CAPTURE:Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable$SingleTapCondition;

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable$SingleTapCondition;

    const-string v2, "SINGLE_TAP_ROI"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable$SingleTapCondition;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable$SingleTapCondition;->SINGLE_TAP_ROI:Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable$SingleTapCondition;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable$SingleTapCondition;

    const-string v3, "SINGLE_TAP_TIMER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable$SingleTapCondition;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable$SingleTapCondition;->SINGLE_TAP_TIMER:Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable$SingleTapCondition;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable$SingleTapCondition;

    const-string v4, "SINGLE_TAP_UNLOCK"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable$SingleTapCondition;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable$SingleTapCondition;->SINGLE_TAP_UNLOCK:Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable$SingleTapCondition;

    filled-new-array {v0, v1, v2, v3}, [Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable$SingleTapCondition;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable$SingleTapCondition;->$VALUES:[Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable$SingleTapCondition;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable$SingleTapCondition;
    .locals 1

    const-class v0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable$SingleTapCondition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable$SingleTapCondition;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable$SingleTapCondition;
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable$SingleTapCondition;->$VALUES:[Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable$SingleTapCondition;

    invoke-virtual {v0}, [Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable$SingleTapCondition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable$SingleTapCondition;

    return-object v0
.end method
