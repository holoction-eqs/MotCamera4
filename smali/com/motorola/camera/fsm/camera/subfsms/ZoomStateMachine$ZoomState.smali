.class public final enum Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;

.field public static final enum NOT_ZOOMED:Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;

.field public static final enum ZOOMED:Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;

.field public static final enum ZOOMING:Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;

    const-string v1, "NOT_ZOOMED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;->NOT_ZOOMED:Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;

    new-instance v1, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;

    const-string v2, "ZOOMING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;->ZOOMING:Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;

    new-instance v2, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;

    const-string v3, "ZOOMED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;->ZOOMED:Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;

    filled-new-array {v0, v1, v2}, [Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;->$VALUES:[Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;
    .locals 1

    const-class v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;->$VALUES:[Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;

    invoke-virtual {v0}, [Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;

    return-object v0
.end method
