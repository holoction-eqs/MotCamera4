.class public abstract synthetic Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $SwitchMap$com$motorola$camera$utility$PortraitLensUtil$FocalSegment:[I

.field public static final synthetic $SwitchMap$com$motorola$camera$utility$ZoomSegment:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    invoke-static {}, Lcom/motorola/camera/utility/ZoomSegment;->values()[Lcom/motorola/camera/utility/ZoomSegment;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;->$SwitchMap$com$motorola$camera$utility$ZoomSegment:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/motorola/camera/utility/ZoomSegment;->M:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;->$SwitchMap$com$motorola$camera$utility$ZoomSegment:[I

    sget-object v3, Lcom/motorola/camera/utility/ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;->$SwitchMap$com$motorola$camera$utility$ZoomSegment:[I

    sget-object v4, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;->$SwitchMap$com$motorola$camera$utility$ZoomSegment:[I

    sget-object v5, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;->$SwitchMap$com$motorola$camera$utility$ZoomSegment:[I

    sget-object v5, Lcom/motorola/camera/utility/ZoomSegment;->W_2X:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v6, 0x5

    aput v6, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;->$SwitchMap$com$motorola$camera$utility$ZoomSegment:[I

    sget-object v5, Lcom/motorola/camera/utility/ZoomSegment;->PO:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v6, 0x6

    aput v6, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;->$SwitchMap$com$motorola$camera$utility$ZoomSegment:[I

    sget-object v5, Lcom/motorola/camera/utility/ZoomSegment;->PW:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v6, 0x7

    aput v6, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;->$SwitchMap$com$motorola$camera$utility$ZoomSegment:[I

    sget-object v5, Lcom/motorola/camera/utility/ZoomSegment;->PS:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/16 v6, 0x8

    aput v6, v4, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;->$SwitchMap$com$motorola$camera$utility$ZoomSegment:[I

    sget-object v5, Lcom/motorola/camera/utility/ZoomSegment;->PC:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/16 v6, 0x9

    aput v6, v4, v5
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    invoke-static {}, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->values()[Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;->$SwitchMap$com$motorola$camera$utility$PortraitLensUtil$FocalSegment:[I

    const/4 v5, 0x0

    :try_start_9
    aput v1, v4, v5
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;->$SwitchMap$com$motorola$camera$utility$PortraitLensUtil$FocalSegment:[I

    aput v0, v4, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;->$SwitchMap$com$motorola$camera$utility$PortraitLensUtil$FocalSegment:[I

    aput v2, v1, v0
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;->$SwitchMap$com$motorola$camera$utility$PortraitLensUtil$FocalSegment:[I

    aput v3, v0, v2
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    return-void
.end method
