.class public final enum Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;

.field public static final enum MOTO:Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;

.field public static final enum MTK_ISP_6S:Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;

.field public static final enum QCOM_MTK:Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;

.field public static final enum SAMSUNG:Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;

    const-string v1, "MOTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;->MOTO:Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;

    new-instance v1, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;

    const-string v2, "QCOM_MTK"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;->QCOM_MTK:Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;

    new-instance v2, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;

    const-string v3, "SAMSUNG"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;->SAMSUNG:Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;

    new-instance v3, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;

    const-string v4, "MTK_ISP_6S"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;->MTK_ISP_6S:Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;

    filled-new-array {v0, v1, v2, v3}, [Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;->$VALUES:[Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;
    .locals 1

    const-class v0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;->$VALUES:[Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;

    invoke-virtual {v0}, [Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;

    return-object v0
.end method
