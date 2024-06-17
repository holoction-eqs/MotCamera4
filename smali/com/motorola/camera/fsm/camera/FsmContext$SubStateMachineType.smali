.class public final enum Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

.field public static final enum AUTO_FOCUS:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

.field public static final enum AUTO_FOCUS_TRACKING:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

.field public static final enum DEBUG:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

.field public static final enum ENV_INFO:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

.field public static final enum EXPOSURE:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

.field public static final enum FACE_DETECT:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

.field public static final enum MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

.field public static final enum MCF_ML:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

.field public static final enum MULTISHOT:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

.field public static final enum MULTI_CAMERA:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

.field public static final enum ROI:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

.field public static final enum TORCH_CONTROL:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

.field public static final enum ZOOM:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    const-string v1, "AUTO_FOCUS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    new-instance v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    const-string v2, "AUTO_FOCUS_TRACKING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS_TRACKING:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    new-instance v2, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    const-string v3, "DEBUG"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->DEBUG:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    new-instance v3, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    const-string v4, "ENV_INFO"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ENV_INFO:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    new-instance v4, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    const-string v5, "EXPOSURE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->EXPOSURE:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    new-instance v5, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    const-string v6, "FACE_DETECT"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->FACE_DETECT:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    new-instance v6, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    const-string v7, "MCF"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    new-instance v7, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    const-string v8, "MCF_ML"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF_ML:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    new-instance v8, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    const-string v9, "MULTI_CAMERA"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MULTI_CAMERA:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    new-instance v9, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    const-string v10, "MULTISHOT"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MULTISHOT:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    new-instance v10, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    const-string v11, "ROI"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ROI:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    new-instance v11, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    const-string v12, "TORCH_CONTROL"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->TORCH_CONTROL:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    new-instance v12, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    const-string v13, "ZOOM"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ZOOM:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    filled-new-array/range {v0 .. v12}, [Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->$VALUES:[Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;
    .locals 1

    const-class v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->$VALUES:[Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v0}, [Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    return-object v0
.end method
