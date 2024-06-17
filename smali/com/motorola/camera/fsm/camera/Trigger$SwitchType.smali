.class public final enum Lcom/motorola/camera/fsm/camera/Trigger$SwitchType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/fsm/camera/Trigger$SwitchType;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger$SwitchType;

    const-string v1, "TOUCH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger$SwitchType;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger$SwitchType;

    const-string v2, "GESTURE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/fsm/camera/Trigger$SwitchType;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger$SwitchType;

    const-string v3, "AOV"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/fsm/camera/Trigger$SwitchType;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0, v1, v2}, [Lcom/motorola/camera/fsm/camera/Trigger$SwitchType;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/fsm/camera/Trigger$SwitchType;->$VALUES:[Lcom/motorola/camera/fsm/camera/Trigger$SwitchType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/fsm/camera/Trigger$SwitchType;
    .locals 1

    const-class v0, Lcom/motorola/camera/fsm/camera/Trigger$SwitchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/Trigger$SwitchType;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/fsm/camera/Trigger$SwitchType;
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$SwitchType;->$VALUES:[Lcom/motorola/camera/fsm/camera/Trigger$SwitchType;

    invoke-virtual {v0}, [Lcom/motorola/camera/fsm/camera/Trigger$SwitchType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/fsm/camera/Trigger$SwitchType;

    return-object v0
.end method
