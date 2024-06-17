.class public final enum Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

.field public static final enum KEY:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

.field public static final enum MEDIA_CONTROL:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

.field public static final enum SHUTTER_BTN:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

.field public static final enum STYLUS:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

.field public static final enum TOUCH:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

.field public static final enum VOICE_ASSISTANT:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;


# direct methods
.method private static synthetic $values()[Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;
    .locals 6

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->KEY:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->MEDIA_CONTROL:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->SHUTTER_BTN:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->TOUCH:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->VOICE_ASSISTANT:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->STYLUS:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    filled-new-array/range {v0 .. v5}, [Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    const-string v1, "KEY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->KEY:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    const-string v1, "MEDIA_CONTROL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->MEDIA_CONTROL:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    const-string v1, "SHUTTER_BTN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->SHUTTER_BTN:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    const-string v1, "TOUCH"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->TOUCH:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    const-string v1, "VOICE_ASSISTANT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->VOICE_ASSISTANT:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    const-string v1, "STYLUS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->STYLUS:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->$values()[Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->$VALUES:[Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;
    .locals 1

    const-class v0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->$VALUES:[Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    invoke-virtual {v0}, [Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    return-object v0
.end method
