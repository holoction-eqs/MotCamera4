.class public final enum Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;

.field public static final enum PLUG:Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;

.field public static final enum UNKNOWN:Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;

.field public static final enum UNPLUG:Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;->UNKNOWN:Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;

    const-string v2, "PLUG"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;->PLUG:Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;

    const-string v3, "UNPLUG"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;->UNPLUG:Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;

    filled-new-array {v0, v1, v2}, [Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;->$VALUES:[Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;
    .locals 1

    const-class v0, Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;->$VALUES:[Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;

    invoke-virtual {v0}, [Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;

    return-object v0
.end method
