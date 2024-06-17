.class public abstract synthetic Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$2$1$WhenMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/motorola/camera/background/common/ReturnCode;->values()[Lcom/motorola/camera/background/common/ReturnCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sput-object v0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$2$1$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
