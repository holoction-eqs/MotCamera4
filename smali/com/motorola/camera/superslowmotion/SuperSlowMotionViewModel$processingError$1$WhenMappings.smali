.class public abstract synthetic Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$processingError$1$WhenMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->values()[Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x6

    :try_start_0
    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    const/4 v2, 0x5

    :try_start_1
    aput v1, v0, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v1, 0x3

    const/4 v2, 0x4

    :try_start_2
    aput v1, v0, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    sput-object v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$processingError$1$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
