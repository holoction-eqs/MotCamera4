.class public final enum Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final DPI_MAP:Ljava/util/TreeMap;

.field public static final enum HDPI260_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI280_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI300_LARGE_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI300_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI340_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI340_SMALL_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI360_LARGE_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI360_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI400_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI420_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI440_LARGE2_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI440_LARGEST_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI440_LARGE_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI440_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI560_LARGEST_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI560_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI_SMALL_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum LDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum MDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum TVDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum XHDPI_LARGER_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum XHDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum XXHDPI_LARGER2_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum XXHDPI_LARGER_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum XXHDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum XXXHDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;


# instance fields
.field public final mDensity:I

.field public final mName:Ljava/lang/String;

.field public final mScale:F


# direct methods
.method public static constructor <clinit>()V
    .locals 41

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v1, "LDPI_SCALE"

    const/4 v2, 0x0

    const/high16 v3, 0x3f400000    # 0.75f

    const/16 v4, 0x78

    const-string v5, "ldpi"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v6, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->LDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v8, "MDPI_SCALE"

    const/4 v9, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    const/16 v11, 0xa0

    const-string v12, "mdpi"

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->MDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v14, "TVDPI_SCALE"

    const/4 v15, 0x2

    const/high16 v16, 0x3fc00000    # 1.5f

    const/16 v17, 0xd5

    const-string v18, "tvdpi"

    move-object v13, v2

    invoke-direct/range {v13 .. v18}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v2, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->TVDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v8, "HDPI_SMALL_SCALE"

    const/4 v9, 0x3

    const v10, 0x3fbe6666    # 1.4875f

    const/16 v11, 0xee

    const-string v12, "238dpi"

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v3, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI_SMALL_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v14, "HDPI_SCALE"

    const/4 v15, 0x4

    const/16 v17, 0xf0

    const-string v18, "hdpi"

    move-object v13, v4

    invoke-direct/range {v13 .. v18}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v4, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v8, "HDPI260_SCALE"

    const/4 v9, 0x5

    const/high16 v10, 0x3fd00000    # 1.625f

    const/16 v11, 0x104

    const-string v12, "260dpi"

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v5, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI260_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v14, "HDPI280_SCALE"

    const/4 v15, 0x6

    const/high16 v16, 0x3fe00000    # 1.75f

    const/16 v17, 0x118

    const-string v18, "280dpi"

    move-object v13, v7

    invoke-direct/range {v13 .. v18}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v7, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI280_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v14, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v9, "HDPI300_SCALE"

    const/4 v10, 0x7

    const/high16 v11, 0x3ff00000    # 1.875f

    const/16 v12, 0x12c

    const-string v13, "300dpi"

    move-object v8, v14

    invoke-direct/range {v8 .. v13}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v14, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI300_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v16, "HDPI300_LARGE_SCALE"

    const/16 v17, 0x8

    const v18, 0x3ff4cccd    # 1.9125f

    const/16 v19, 0x132

    const-string v20, "306dpi"

    move-object v15, v8

    invoke-direct/range {v15 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v8, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI300_LARGE_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v22, "XHDPI_SCALE"

    const/16 v23, 0x9

    const/high16 v24, 0x40000000    # 2.0f

    const/16 v25, 0x140

    const-string v26, "xhdpi"

    move-object/from16 v21, v9

    invoke-direct/range {v21 .. v26}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v9, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XHDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v16, "XHDPI_LARGER_SCALE"

    const/16 v17, 0xa

    const v18, 0x4004cccd    # 2.075f

    const/16 v19, 0x14c

    const-string v20, "332dpi"

    move-object v15, v10

    invoke-direct/range {v15 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v10, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XHDPI_LARGER_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v11, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v22, "HDPI340_SCALE"

    const/16 v23, 0xb

    const/high16 v24, 0x40080000    # 2.125f

    const/16 v25, 0x154

    const-string v26, "340dpi"

    move-object/from16 v21, v11

    invoke-direct/range {v21 .. v26}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v11, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI340_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v12, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v16, "HDPI340_SMALL_SCALE"

    const/16 v17, 0xc

    const v18, 0x400e6666    # 2.225f

    const/16 v19, 0x164

    const-string v20, "356dpi"

    move-object v15, v12

    invoke-direct/range {v15 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v12, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI340_SMALL_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v13, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v22, "HDPI360_SCALE"

    const/16 v23, 0xd

    const/high16 v24, 0x40100000    # 2.25f

    const/16 v25, 0x168

    const-string v26, "360dpi"

    move-object/from16 v21, v13

    invoke-direct/range {v21 .. v26}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v13, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI360_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v21, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v16, "HDPI360_LARGE_SCALE"

    const/16 v17, 0xe

    const v18, 0x401f3333    # 2.4875f

    const/16 v19, 0x18e

    const-string v20, "398dpi"

    move-object/from16 v15, v21

    invoke-direct/range {v15 .. v20}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v21, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI360_LARGE_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v15, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v23, "HDPI400_SCALE"

    const/16 v24, 0xf

    const/high16 v25, 0x40200000    # 2.5f

    const/16 v26, 0x190

    const-string v27, "400dpi"

    move-object/from16 v22, v15

    invoke-direct/range {v22 .. v27}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v15, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI400_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v16, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v29, "HDPI420_SCALE"

    const/16 v30, 0x10

    const/high16 v31, 0x40280000    # 2.625f

    const/16 v32, 0x1a4

    const-string v33, "420dpi"

    move-object/from16 v28, v16

    invoke-direct/range {v28 .. v33}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v16, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI420_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v17, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v23, "HDPI440_LARGEST_SCALE"

    const/16 v24, 0x11

    const v25, 0x402f3333    # 2.7375f

    const/16 v26, 0x1b6

    const-string v27, "442dpi"

    move-object/from16 v22, v17

    invoke-direct/range {v22 .. v27}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v17, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI440_LARGEST_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v18, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v29, "HDPI440_SCALE"

    const/16 v30, 0x12

    const/high16 v31, 0x40300000    # 2.75f

    const/16 v32, 0x1b8

    const-string v33, "440dpi"

    move-object/from16 v28, v18

    invoke-direct/range {v28 .. v33}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v18, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI440_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v19, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v23, "HDPI440_LARGE_SCALE"

    const/16 v24, 0x13

    const v25, 0x40326667

    const/16 v26, 0x1be

    const-string v27, "446dpi"

    move-object/from16 v22, v19

    invoke-direct/range {v22 .. v27}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v19, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI440_LARGE_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v20, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v29, "HDPI440_LARGE2_SCALE"

    const/16 v30, 0x14

    const/high16 v31, 0x40380000    # 2.875f

    const/16 v32, 0x1cc

    const-string v33, "460dpi"

    move-object/from16 v28, v20

    invoke-direct/range {v28 .. v33}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v20, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI440_LARGE2_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v28, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v23, "XXHDPI_SCALE"

    const/16 v24, 0x15

    const/high16 v25, 0x40400000    # 3.0f

    const/16 v26, 0x1e0

    const-string v27, "xxhdpi"

    move-object/from16 v22, v28

    invoke-direct/range {v22 .. v27}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v28, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XXHDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v22, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v30, "XXHDPI_LARGER_SCALE"

    const/16 v31, 0x16

    const v32, 0x4044cccd    # 3.075f

    const/16 v33, 0x1ec

    const-string v34, "492dpi"

    move-object/from16 v29, v22

    invoke-direct/range {v29 .. v34}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v22, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XXHDPI_LARGER_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v23, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v36, "XXHDPI_LARGER2_SCALE"

    const/16 v37, 0x17

    const/high16 v38, 0x40480000    # 3.125f

    const/16 v39, 0x1f4

    const-string v40, "500dpi"

    move-object/from16 v35, v23

    invoke-direct/range {v35 .. v40}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v23, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XXHDPI_LARGER2_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v24, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v30, "HDPI560_LARGEST_SCALE"

    const/16 v31, 0x18

    const/high16 v32, 0x40580000    # 3.375f

    const/16 v33, 0x21c

    const-string v34, "540dpi"

    move-object/from16 v29, v24

    invoke-direct/range {v29 .. v34}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v24, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI560_LARGEST_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v25, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v36, "HDPI560_SCALE"

    const/16 v37, 0x19

    const/high16 v38, 0x40600000    # 3.5f

    const/16 v39, 0x230

    const-string v40, "560dpi"

    move-object/from16 v35, v25

    invoke-direct/range {v35 .. v40}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v25, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI560_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v26, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v30, "XXXHDPI_SCALE"

    const/16 v31, 0x1a

    const/high16 v32, 0x40800000    # 4.0f

    const/16 v33, 0x280

    const-string v34, "xxxhdpi"

    move-object/from16 v29, v26

    invoke-direct/range {v29 .. v34}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v26, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XXXHDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    move-object v0, v6

    move-object v6, v7

    move-object v7, v14

    move-object/from16 v14, v21

    move-object/from16 v21, v28

    filled-new-array/range {v0 .. v26}, [Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->DPI_MAP:Ljava/util/TreeMap;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->values()[Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->DPI_MAP:Ljava/util/TreeMap;

    iget v5, v3, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->mDensity:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IFILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->mScale:F

    iput p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->mDensity:I

    iput-object p5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->mName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    invoke-virtual {v0}, [Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    return-object v0
.end method
