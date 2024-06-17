.class public final enum Lcom/motorola/camera/fsm/camera/states/runnables/guards/DragOrientationGuardRunnable$ORI;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/fsm/camera/states/runnables/guards/DragOrientationGuardRunnable$ORI;

.field public static final enum LEFT:Lcom/motorola/camera/fsm/camera/states/runnables/guards/DragOrientationGuardRunnable$ORI;

.field public static final enum RIGHT:Lcom/motorola/camera/fsm/camera/states/runnables/guards/DragOrientationGuardRunnable$ORI;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/DragOrientationGuardRunnable$ORI;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/DragOrientationGuardRunnable$ORI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/DragOrientationGuardRunnable$ORI;->LEFT:Lcom/motorola/camera/fsm/camera/states/runnables/guards/DragOrientationGuardRunnable$ORI;

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/guards/DragOrientationGuardRunnable$ORI;

    const-string v2, "RIGHT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/DragOrientationGuardRunnable$ORI;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/fsm/camera/states/runnables/guards/DragOrientationGuardRunnable$ORI;->RIGHT:Lcom/motorola/camera/fsm/camera/states/runnables/guards/DragOrientationGuardRunnable$ORI;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/guards/DragOrientationGuardRunnable$ORI;

    const-string v3, "UP"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/DragOrientationGuardRunnable$ORI;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/guards/DragOrientationGuardRunnable$ORI;

    const-string v4, "DOWN"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/DragOrientationGuardRunnable$ORI;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0, v1, v2, v3}, [Lcom/motorola/camera/fsm/camera/states/runnables/guards/DragOrientationGuardRunnable$ORI;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/DragOrientationGuardRunnable$ORI;->$VALUES:[Lcom/motorola/camera/fsm/camera/states/runnables/guards/DragOrientationGuardRunnable$ORI;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/fsm/camera/states/runnables/guards/DragOrientationGuardRunnable$ORI;
    .locals 1

    const-class v0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/DragOrientationGuardRunnable$ORI;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/DragOrientationGuardRunnable$ORI;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/fsm/camera/states/runnables/guards/DragOrientationGuardRunnable$ORI;
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/DragOrientationGuardRunnable$ORI;->$VALUES:[Lcom/motorola/camera/fsm/camera/states/runnables/guards/DragOrientationGuardRunnable$ORI;

    invoke-virtual {v0}, [Lcom/motorola/camera/fsm/camera/states/runnables/guards/DragOrientationGuardRunnable$ORI;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/fsm/camera/states/runnables/guards/DragOrientationGuardRunnable$ORI;

    return-object v0
.end method
