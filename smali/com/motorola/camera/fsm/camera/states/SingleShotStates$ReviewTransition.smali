.class public final enum Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewTransition;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewTransition;

.field public static final enum EXIT:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewTransition;

.field public static final enum IDLE:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewTransition;

.field public static final enum UNLOCK_FOCUS:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewTransition;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewTransition;

    const-string v1, "EXIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewTransition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewTransition;->EXIT:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewTransition;

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewTransition;

    const-string v2, "UNLOCK_FOCUS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewTransition;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewTransition;->UNLOCK_FOCUS:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewTransition;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewTransition;

    const-string v3, "IDLE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewTransition;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewTransition;->IDLE:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewTransition;

    filled-new-array {v0, v1, v2}, [Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewTransition;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewTransition;->$VALUES:[Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewTransition;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewTransition;
    .locals 1

    const-class v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewTransition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewTransition;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewTransition;
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewTransition;->$VALUES:[Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewTransition;

    invoke-virtual {v0}, [Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewTransition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewTransition;

    return-object v0
.end method
