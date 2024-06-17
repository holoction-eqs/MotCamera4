.class public abstract synthetic Lcom/motorola/camera/ui/widgets/gl/ZoomComponent$1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $SwitchMap$com$motorola$camera$utility$ZoomSegment:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/motorola/camera/utility/ZoomSegment;->values()[Lcom/motorola/camera/utility/ZoomSegment;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent$1;->$SwitchMap$com$motorola$camera$utility$ZoomSegment:[I

    :try_start_0
    sget-object v1, Lcom/motorola/camera/utility/ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent$1;->$SwitchMap$com$motorola$camera$utility$ZoomSegment:[I

    sget-object v1, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent$1;->$SwitchMap$com$motorola$camera$utility$ZoomSegment:[I

    sget-object v1, Lcom/motorola/camera/utility/ZoomSegment;->W_2X:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent$1;->$SwitchMap$com$motorola$camera$utility$ZoomSegment:[I

    sget-object v1, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
