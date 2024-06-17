.class public final enum Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

.field public static final enum BLACK:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

.field public static final enum GREEN:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

.field public static final enum TRANSPARENT:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

.field public static final enum TRANSPARENT_40_BLACK:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

.field public static final enum TRANSPARENT_65_BLACK:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

.field public static final enum TRANSPARENT_75_BLACK:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

.field public static final enum WHITE:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

.field public static final enum WHITE_BG:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;


# instance fields
.field public final mValue:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 26

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    move-object v0, v1

    const/4 v15, 0x4

    new-array v2, v15, [F

    fill-array-data v2, :array_0

    const-string v3, "APP_THEME"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;-><init>(Ljava/lang/String;I[F)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    move-object v1, v2

    new-array v3, v15, [F

    fill-array-data v3, :array_1

    const-string v4, "APP_ACCENT"

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5, v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;-><init>(Ljava/lang/String;I[F)V

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    move-object v2, v3

    new-array v4, v15, [F

    fill-array-data v4, :array_2

    const-string v5, "WHITE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;-><init>(Ljava/lang/String;I[F)V

    sput-object v3, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->WHITE:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    move-object v3, v4

    new-array v5, v15, [F

    fill-array-data v5, :array_3

    const-string v6, "WHITE_BG"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v7, v5}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;-><init>(Ljava/lang/String;I[F)V

    sput-object v4, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->WHITE_BG:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    move-object v4, v5

    new-array v6, v15, [F

    fill-array-data v6, :array_4

    const-string v7, "BLACK"

    invoke-direct {v5, v7, v15, v6}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;-><init>(Ljava/lang/String;I[F)V

    sput-object v5, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->BLACK:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    move-object v5, v6

    new-array v7, v15, [F

    fill-array-data v7, :array_5

    const-string v8, "LT_GRAY"

    const/4 v9, 0x5

    invoke-direct {v6, v8, v9, v7}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;-><init>(Ljava/lang/String;I[F)V

    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    move-object v6, v7

    new-array v8, v15, [F

    fill-array-data v8, :array_6

    const-string v9, "LN_GRAY"

    const/4 v10, 0x6

    invoke-direct {v7, v9, v10, v8}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;-><init>(Ljava/lang/String;I[F)V

    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    move-object v7, v8

    new-array v9, v15, [F

    fill-array-data v9, :array_7

    const-string v10, "DK_GRAY"

    const/4 v11, 0x7

    invoke-direct {v8, v10, v11, v9}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;-><init>(Ljava/lang/String;I[F)V

    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    move-object v8, v9

    new-array v10, v15, [F

    fill-array-data v10, :array_8

    const-string v11, "GRAY"

    const/16 v12, 0x8

    invoke-direct {v9, v11, v12, v10}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;-><init>(Ljava/lang/String;I[F)V

    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    move-object v9, v10

    new-array v11, v15, [F

    fill-array-data v11, :array_9

    const-string v12, "RED"

    const/16 v13, 0x9

    invoke-direct {v10, v12, v13, v11}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;-><init>(Ljava/lang/String;I[F)V

    new-instance v11, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    move-object v10, v11

    new-array v12, v15, [F

    fill-array-data v12, :array_a

    const-string v13, "BLUE"

    const/16 v14, 0xa

    invoke-direct {v11, v13, v14, v12}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;-><init>(Ljava/lang/String;I[F)V

    new-instance v12, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    move-object v11, v12

    new-array v13, v15, [F

    fill-array-data v13, :array_b

    const-string v14, "GREEN"

    const/16 v15, 0xb

    invoke-direct {v12, v14, v15, v13}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;-><init>(Ljava/lang/String;I[F)V

    sput-object v12, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->GREEN:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    new-instance v13, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    move-object v12, v13

    const/4 v15, 0x4

    new-array v14, v15, [F

    fill-array-data v14, :array_c

    const-string v15, "YELLOW"

    move-object/from16 v22, v0

    const/16 v0, 0xc

    invoke-direct {v13, v15, v0, v14}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;-><init>(Ljava/lang/String;I[F)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    move-object v13, v0

    const/4 v15, 0x4

    new-array v14, v15, [F

    fill-array-data v14, :array_d

    const-string v15, "PRIMARY"

    move-object/from16 v23, v1

    const/16 v1, 0xd

    invoke-direct {v0, v15, v1, v14}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;-><init>(Ljava/lang/String;I[F)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    move-object v14, v0

    const/4 v1, 0x4

    new-array v15, v1, [F

    fill-array-data v15, :array_e

    const-string v1, "TRANSPARENT_W"

    move-object/from16 v24, v2

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v15}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;-><init>(Ljava/lang/String;I[F)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    const/4 v1, 0x4

    move-object v15, v0

    new-array v2, v1, [F

    fill-array-data v2, :array_f

    const-string v1, "TRANSPARENT"

    move-object/from16 v25, v3

    const/16 v3, 0xf

    invoke-direct {v0, v1, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;-><init>(Ljava/lang/String;I[F)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->TRANSPARENT:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    move-object/from16 v16, v0

    const/4 v1, 0x4

    new-array v2, v1, [F

    fill-array-data v2, :array_10

    const-string v3, "TRANSPARENT_38_BLACK"

    const/16 v1, 0x10

    invoke-direct {v0, v3, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;-><init>(Ljava/lang/String;I[F)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    move-object/from16 v17, v0

    const/4 v1, 0x4

    new-array v2, v1, [F

    fill-array-data v2, :array_11

    const-string v3, "TRANSPARENT_40_BLACK"

    const/16 v1, 0x11

    invoke-direct {v0, v3, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;-><init>(Ljava/lang/String;I[F)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->TRANSPARENT_40_BLACK:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    move-object/from16 v18, v0

    const/4 v1, 0x4

    new-array v2, v1, [F

    fill-array-data v2, :array_12

    const-string v3, "TRANSPARENT_50_BLACK"

    const/16 v1, 0x12

    invoke-direct {v0, v3, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;-><init>(Ljava/lang/String;I[F)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    move-object/from16 v19, v0

    const/4 v1, 0x4

    new-array v2, v1, [F

    fill-array-data v2, :array_13

    const-string v3, "TRANSPARENT_65_BLACK"

    const/16 v1, 0x13

    invoke-direct {v0, v3, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;-><init>(Ljava/lang/String;I[F)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->TRANSPARENT_65_BLACK:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    move-object/from16 v20, v0

    const/4 v1, 0x4

    new-array v2, v1, [F

    fill-array-data v2, :array_14

    const-string v3, "TRANSPARENT_75_BLACK"

    const/16 v1, 0x14

    invoke-direct {v0, v3, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;-><init>(Ljava/lang/String;I[F)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->TRANSPARENT_75_BLACK:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    move-object/from16 v21, v0

    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_15

    const-string v2, "BG_GRAY"

    const/16 v3, 0x15

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;-><init>(Ljava/lang/String;I[F)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    filled-new-array/range {v0 .. v21}, [Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f5c28f6    # 0.86f
        0x3e6147ae    # 0.22f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x3f51eb85    # 0.82f
        0x3f51eb85    # 0.82f
        0x3f51eb85    # 0.82f
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x3f600000    # 0.875f
        0x3f600000    # 0.875f
        0x3f600000    # 0.875f
        0x3f800000    # 1.0f
    .end array-data

    :array_7
    .array-data 4
        0x3f28f5c3    # 0.66f
        0x3f28f5c3    # 0.66f
        0x3f28f5c3    # 0.66f
        0x3f800000    # 1.0f
    .end array-data

    :array_8
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_9
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_a
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_b
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_c
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_d
    .array-data 4
        0x3f800000    # 1.0f
        0x3f37b741
        0x3ca0902e    # 0.0196f
        0x3f800000    # 1.0f
    .end array-data

    :array_e
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_f
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_10
    .array-data 4
        0x0
        0x0
        0x0
        0x3ec28f5c    # 0.38f
    .end array-data

    :array_11
    .array-data 4
        0x0
        0x0
        0x0
        0x3ecccccd    # 0.4f
    .end array-data

    :array_12
    .array-data 4
        0x0
        0x0
        0x0
        0x3f000000    # 0.5f
    .end array-data

    :array_13
    .array-data 4
        0x0
        0x0
        0x0
        0x3f266666    # 0.65f
    .end array-data

    :array_14
    .array-data 4
        0x0
        0x0
        0x0
        0x3f400000    # 0.75f
    .end array-data

    :array_15
    .array-data 4
        0x3e6147ae    # 0.22f
        0x3e947ae1    # 0.29f
        0x3e9eb852    # 0.31f
        0x3f400000    # 0.75f
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;I[F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->mValue:[F

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-virtual {v0}, [Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    return-object v0
.end method
