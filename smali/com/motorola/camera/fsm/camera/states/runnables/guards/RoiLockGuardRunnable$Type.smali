.class public final enum Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable$Type;

.field public static final enum AF_LOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable$Type;

.field public static final enum AF_UNLOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable$Type;

.field public static final enum ROI_LOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable$Type;

.field public static final enum ROI_UNLOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable$Type;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable$Type;

    const-string v1, "ROI_LOCKED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable$Type;->ROI_LOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable$Type;

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable$Type;

    const-string v2, "ROI_UNLOCKED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable$Type;->ROI_UNLOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable$Type;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable$Type;

    const-string v3, "AF_LOCKED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable$Type;->AF_LOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable$Type;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable$Type;

    const-string v4, "AF_UNLOCKED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable$Type;->AF_UNLOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable$Type;

    filled-new-array {v0, v1, v2, v3}, [Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable$Type;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable$Type;->$VALUES:[Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable$Type;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable$Type;
    .locals 1

    const-class v0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable$Type;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable$Type;
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable$Type;->$VALUES:[Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable$Type;

    invoke-virtual {v0}, [Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable$Type;

    return-object v0
.end method
