.class public final enum Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

.field public static final enum MCF:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

.field public static final enum NORMAL:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

.field public static final enum REPROC:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;


# direct methods
.method private static synthetic $values()[Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;
    .locals 3

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;->NORMAL:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;->REPROC:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;->MCF:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    filled-new-array {v0, v1, v2}, [Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;->NORMAL:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    const-string v1, "REPROC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;->REPROC:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    const-string v1, "MCF"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;->MCF:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;->$values()[Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;->$VALUES:[Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;
    .locals 1

    const-class v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;->$VALUES:[Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    invoke-virtual {v0}, [Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    return-object v0
.end method
