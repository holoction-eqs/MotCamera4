.class public final enum Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum ALPHA:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum ALPHA_CHANGE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum ANGLES:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum COLOR:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum COLOR_BG:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum DARKNESS:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum DASH:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum DIAGONAL:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum DIRECTION:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum FACTOR:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum HOLLOW_SIZE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum HOLLOW_TOP:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum INVERT:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum LINE_WIDTH:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum MASK:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum MIDDLE_SIZE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum MVP_MATRIX:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum OPACITY:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum OPACITY_BOTTOM:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum OPACITY_FROM:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum OPACITY_FROM2:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum OPACITY_TO:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum OPACITY_TO2:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum RADIUS:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum SHAPE_CHANGE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum SIZE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum ST_MATRIX:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum TEXTURE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum TOP_GUIDE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum UV_TEXTURE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum Y_TEXTURE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final mLookupMap:Ljava/util/HashMap;


# instance fields
.field public final mName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 42

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    move-object v0, v1

    const-string v2, "TEXTURE"

    const/4 v15, 0x0

    const-string v3, "u_Texture"

    invoke-direct {v1, v2, v15, v3}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->TEXTURE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    move-object v1, v2

    const-string v3, "u_Opacity"

    const-string v4, "OPACITY"

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5, v3}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    move-object v2, v3

    const-string v4, "u_OpacityBottom"

    const-string v5, "OPACITY_BOTTOM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY_BOTTOM:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    move-object v3, v4

    const-string v5, "u_OpacityFrom"

    const-string v6, "OPACITY_FROM"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v7, v5}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY_FROM:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    move-object v4, v5

    const-string v6, "u_OpacityTo"

    const-string v7, "OPACITY_TO"

    const/4 v8, 0x4

    invoke-direct {v5, v7, v8, v6}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY_TO:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    move-object v5, v6

    const-string v7, "u_OpacityFrom2"

    const-string v8, "OPACITY_FROM2"

    const/4 v9, 0x5

    invoke-direct {v6, v8, v9, v7}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY_FROM2:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    move-object v6, v7

    const-string v8, "u_OpacityTo2"

    const-string v9, "OPACITY_TO2"

    const/4 v10, 0x6

    invoke-direct {v7, v9, v10, v8}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY_TO2:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    move-object v7, v8

    const-string v9, "u_MVPMatrix"

    const-string v10, "MVP_MATRIX"

    const/4 v11, 0x7

    invoke-direct {v8, v10, v11, v9}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->MVP_MATRIX:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    move-object v8, v9

    const-string v10, "u_SphereMVPMatrix"

    const-string v11, "SPHERE_MVP_MATRIX"

    const/16 v12, 0x8

    invoke-direct {v9, v11, v12, v10}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    move-object v9, v10

    const-string v11, "u_STMatrix"

    const-string v12, "ST_MATRIX"

    const/16 v13, 0x9

    invoke-direct {v10, v12, v13, v11}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->ST_MATRIX:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v11, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    move-object v10, v11

    const-string v12, "u_Alpha"

    const-string v13, "ALPHA"

    const/16 v14, 0xa

    invoke-direct {v11, v13, v14, v12}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->ALPHA:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v12, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    move-object v11, v12

    const-string v13, "u_Color"

    const-string v14, "COLOR"

    const/16 v15, 0xb

    invoke-direct {v12, v14, v15, v13}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->COLOR:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v13, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    move-object v12, v13

    const-string v14, "u_Y_texture"

    const-string v15, "Y_TEXTURE"

    move-object/from16 v37, v0

    const/16 v0, 0xc

    invoke-direct {v13, v15, v0, v14}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->Y_TEXTURE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    move-object v13, v0

    const-string v14, "u_UV_texture"

    const-string v15, "UV_TEXTURE"

    move-object/from16 v38, v1

    const/16 v1, 0xd

    invoke-direct {v0, v15, v1, v14}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->UV_TEXTURE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    move-object v14, v0

    const-string v1, "u_Diagonal"

    const-string v15, "DIAGONAL"

    move-object/from16 v39, v2

    const/16 v2, 0xe

    invoke-direct {v0, v15, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->DIAGONAL:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const/16 v40, 0x0

    move-object v15, v0

    const-string v1, "u_Invert"

    const-string v2, "INVERT"

    move-object/from16 v41, v3

    const/16 v3, 0xf

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->INVERT:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    move-object/from16 v16, v0

    const-string v1, "u_Factor"

    const-string v2, "FACTOR"

    const/16 v3, 0x10

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->FACTOR:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    move-object/from16 v17, v0

    const-string v1, "u_ColorForeground"

    const-string v2, "COLOR_FG"

    const/16 v3, 0x11

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    move-object/from16 v18, v0

    const-string v1, "u_ColorBackground"

    const-string v2, "COLOR_BG"

    const/16 v3, 0x12

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->COLOR_BG:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    move-object/from16 v19, v0

    const-string v1, "u_Radius"

    const-string v2, "RADIUS"

    const/16 v3, 0x13

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->RADIUS:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    move-object/from16 v20, v0

    const-string v1, "u_Radii"

    const-string v2, "RADII"

    const/16 v3, 0x14

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    move-object/from16 v21, v0

    const-string v1, "u_Angles"

    const-string v2, "ANGLES"

    const/16 v3, 0x15

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->ANGLES:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    move-object/from16 v22, v0

    const-string v1, "u_Size"

    const-string v2, "SIZE"

    const/16 v3, 0x16

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->SIZE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    move-object/from16 v23, v0

    const-string v1, "u_MiddleSize"

    const-string v2, "MIDDLE_SIZE"

    const/16 v3, 0x17

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->MIDDLE_SIZE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    move-object/from16 v24, v0

    const-string v1, "u_HollowSize"

    const-string v2, "HOLLOW_SIZE"

    const/16 v3, 0x18

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->HOLLOW_SIZE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    move-object/from16 v25, v0

    const-string v1, "u_HollowTop"

    const-string v2, "HOLLOW_TOP"

    const/16 v3, 0x19

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->HOLLOW_TOP:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    move-object/from16 v26, v0

    const-string v1, "u_TopGuide"

    const-string v2, "TOP_GUIDE"

    const/16 v3, 0x1a

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->TOP_GUIDE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    move-object/from16 v27, v0

    const-string v1, "u_BottomGuide"

    const-string v2, "BOTTOM_GUIDE"

    const/16 v3, 0x1b

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    move-object/from16 v28, v0

    const-string v1, "u_Mask"

    const-string v2, "MASK"

    const/16 v3, 0x1c

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->MASK:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    move-object/from16 v29, v0

    const-string v1, "u_ColorChange"

    const-string v2, "COLOR_CHANGE"

    const/16 v3, 0x1d

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    move-object/from16 v30, v0

    const-string v1, "u_ShapeChange"

    const-string v2, "SHAPE_CHANGE"

    const/16 v3, 0x1e

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->SHAPE_CHANGE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    move-object/from16 v31, v0

    const-string v1, "u_AlphaChange"

    const-string v2, "ALPHA_CHANGE"

    const/16 v3, 0x1f

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->ALPHA_CHANGE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    move-object/from16 v32, v0

    const-string v1, "u_ExclusionRect"

    const-string v2, "EXCLUSION_RECT"

    const/16 v3, 0x20

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    move-object/from16 v33, v0

    const-string v1, "u_Dash"

    const-string v2, "DASH"

    const/16 v3, 0x21

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->DASH:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    move-object/from16 v34, v0

    const-string v1, "u_LineWidth"

    const-string v2, "LINE_WIDTH"

    const/16 v3, 0x22

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->LINE_WIDTH:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    move-object/from16 v35, v0

    const-string v1, "u_Direction"

    const-string v2, "DIRECTION"

    const/16 v3, 0x23

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->DIRECTION:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    move-object/from16 v36, v0

    const-string v1, "u_Darkness"

    const-string v2, "DARKNESS"

    const/16 v3, 0x24

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->DARKNESS:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move-object/from16 v3, v41

    filled-new-array/range {v0 .. v36}, [Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->mLookupMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->values()[Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    move-result-object v0

    array-length v1, v0

    move/from16 v15, v40

    :goto_0
    if-ge v15, v1, :cond_0

    aget-object v2, v0, v15

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->mLookupMap:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->mName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    invoke-virtual {v0}, [Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    return-object v0
.end method
