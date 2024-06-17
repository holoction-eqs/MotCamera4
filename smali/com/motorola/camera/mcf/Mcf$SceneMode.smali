.class public final enum Lcom/motorola/camera/mcf/Mcf$SceneMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/mcf/Mcf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SceneMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/mcf/Mcf$SceneMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum AS_SUPER_NIGHT_AUTO:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum AUTO_CAPTURE_ON_SCENE:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum DEFAULT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum DEPTH_RENDER:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum DISPLAY_FLASH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum FALL_BACK:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum FAST_NORMAL:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum FLASH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum HAL_FRAME_STACK:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum HAL_FRAME_STACK_AIIST:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum HAL_FRAME_STACK_AILS:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum HAL_FRAME_STACK_FLASH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum HAL_FRAME_STACK_SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum HDR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum HDR_ADVANCED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum HDR_ADVANCED_AIIST:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum HDR_ADVANCED_AILS:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum HDR_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum HDR_NO_ADRC:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum JG_SUPER_NIGHT_AUTO:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum JG_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum LOW_LIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum LOW_LIGHT_SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum LRNV_AUTO:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum LRNV_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum LRNV_PORTRAIT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum MULTI_FRAME_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum NORMAL:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum RAW_HDR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum RAW_NR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum RAW_SUPER_NIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum RAW_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum SUPER_NIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum SUPER_PORTRAIT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum SUPER_REMOSAIC:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum SUPER_REMOSAIC_HDR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum SUPER_RESOLUTION:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum SUPER_RESOLUTION_HDR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum TEST_BLUR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field private static sCachedIsBgService:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/motorola/camera/mcf/Mcf$SceneMode;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static sCachedMaxNumberOfRequiredFrames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/motorola/camera/mcf/Mcf$SceneMode;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$AfMU7Q-92FVXJNMKWGojcbIlWKk(Lcom/motorola/camera/mcf/Mcf$SceneMode;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->lambda$isBgService$0(Lcom/motorola/camera/mcf/Mcf$SceneMode;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hhaMHA6D6eRl-8IK2av3ohyw7Bc(Lcom/motorola/camera/mcf/Mcf$SceneMode;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->lambda$maxNumberOfRequiredFrames$1(Lcom/motorola/camera/mcf/Mcf$SceneMode;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic $values()[Lcom/motorola/camera/mcf/Mcf$SceneMode;
    .locals 40

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DEFAULT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v1, Lcom/motorola/camera/mcf/Mcf$SceneMode;->NORMAL:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v2, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v3, Lcom/motorola/camera/mcf/Mcf$SceneMode;->FLASH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v4, Lcom/motorola/camera/mcf/Mcf$SceneMode;->LOW_LIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v5, Lcom/motorola/camera/mcf/Mcf$SceneMode;->AUTO_CAPTURE_ON_SCENE:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v6, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DEPTH_RENDER:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v7, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_RESOLUTION:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v8, Lcom/motorola/camera/mcf/Mcf$SceneMode;->FAST_NORMAL:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v9, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v10, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_NIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v11, Lcom/motorola/camera/mcf/Mcf$SceneMode;->TEST_BLUR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v12, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HAL_FRAME_STACK:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v13, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_PORTRAIT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v14, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_ADVANCED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v15, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v16, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_NO_ADRC:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v17, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HAL_FRAME_STACK_FLASH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v18, Lcom/motorola/camera/mcf/Mcf$SceneMode;->LOW_LIGHT_SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v19, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_REMOSAIC:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v20, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_REMOSAIC_HDR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v21, Lcom/motorola/camera/mcf/Mcf$SceneMode;->MULTI_FRAME_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v22, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HAL_FRAME_STACK_AILS:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v23, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DISPLAY_FLASH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v24, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_ADVANCED_AILS:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v25, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HAL_FRAME_STACK_SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v26, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HAL_FRAME_STACK_AIIST:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v27, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_ADVANCED_AIIST:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v28, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_SUPER_NIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v29, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v30, Lcom/motorola/camera/mcf/Mcf$SceneMode;->JG_SUPER_NIGHT_AUTO:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v31, Lcom/motorola/camera/mcf/Mcf$SceneMode;->JG_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v32, Lcom/motorola/camera/mcf/Mcf$SceneMode;->AS_SUPER_NIGHT_AUTO:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v33, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_RESOLUTION_HDR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v34, Lcom/motorola/camera/mcf/Mcf$SceneMode;->FALL_BACK:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v35, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_HDR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v36, Lcom/motorola/camera/mcf/Mcf$SceneMode;->LRNV_AUTO:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v37, Lcom/motorola/camera/mcf/Mcf$SceneMode;->LRNV_PORTRAIT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v38, Lcom/motorola/camera/mcf/Mcf$SceneMode;->LRNV_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v39, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_NR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    filled-new-array/range {v0 .. v39}, [Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smtoEnumVal(I)Lcom/motorola/camera/mcf/Mcf$SceneMode;
    .locals 0

    invoke-static {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->toEnumVal(I)Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DEFAULT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v1, "NORMAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->NORMAL:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v1, "HDR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v1, "FLASH"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->FLASH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v1, "LOW_LIGHT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->LOW_LIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v1, "AUTO_CAPTURE_ON_SCENE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->AUTO_CAPTURE_ON_SCENE:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v1, "DEPTH_RENDER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DEPTH_RENDER:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v1, "SUPER_RESOLUTION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_RESOLUTION:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v1, "FAST_NORMAL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->FAST_NORMAL:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v1, "SF_BOKEH"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v1, "SUPER_NIGHT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_NIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v1, "TEST_BLUR"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->TEST_BLUR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v1, "HAL_FRAME_STACK"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HAL_FRAME_STACK:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v1, "SUPER_PORTRAIT"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_PORTRAIT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v1, "HDR_ADVANCED"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_ADVANCED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v1, "HDR_BOKEH"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v1, "HDR_NO_ADRC"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_NO_ADRC:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v1, "HAL_FRAME_STACK_FLASH"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HAL_FRAME_STACK_FLASH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v1, "LOW_LIGHT_SF_BOKEH"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->LOW_LIGHT_SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v1, "SUPER_REMOSAIC"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_REMOSAIC:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v1, "SUPER_REMOSAIC_HDR"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_REMOSAIC_HDR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v1, "MULTI_FRAME_BOKEH"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->MULTI_FRAME_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v1, "HAL_FRAME_STACK_AILS"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HAL_FRAME_STACK_AILS:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v1, "DISPLAY_FLASH"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DISPLAY_FLASH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v1, "HDR_ADVANCED_AILS"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_ADVANCED_AILS:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v1, "HAL_FRAME_STACK_SF_BOKEH"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HAL_FRAME_STACK_SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v1, "HAL_FRAME_STACK_AIIST"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HAL_FRAME_STACK_AIIST:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v1, "HDR_ADVANCED_AIIST"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_ADVANCED_AIIST:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v1, "RAW_SUPER_NIGHT"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_SUPER_NIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v1, "RAW_SUPER_NIGHT_DEDICATED"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v1, "JG_SUPER_NIGHT_AUTO"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->JG_SUPER_NIGHT_AUTO:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v1, "JG_SUPER_NIGHT_DEDICATED"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->JG_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v1, "AS_SUPER_NIGHT_AUTO"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->AS_SUPER_NIGHT_AUTO:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v1, "SUPER_RESOLUTION_HDR"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_RESOLUTION_HDR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v1, "FALL_BACK"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->FALL_BACK:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v1, "RAW_HDR"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_HDR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v1, "LRNV_AUTO"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->LRNV_AUTO:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v1, "LRNV_PORTRAIT"

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->LRNV_PORTRAIT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v1, "LRNV_DEDICATED"

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->LRNV_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v1, "RAW_NR"

    const/16 v2, 0x27

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_NR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->$values()[Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->$VALUES:[Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->sCachedIsBgService:Ljava/util/Map;

    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->sCachedMaxNumberOfRequiredFrames:Ljava/util/Map;

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

.method public static getSceneMode(I)Lcom/motorola/camera/mcf/Mcf$SceneMode;
    .locals 0

    invoke-static {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->toEnumVal(I)Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$isBgService$0(Lcom/motorola/camera/mcf/Mcf$SceneMode;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$smisSceneBgService(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$maxNumberOfRequiredFrames$1(Lcom/motorola/camera/mcf/Mcf$SceneMode;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$smmaxNumberOfFramesRequired(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static toEnumVal(I)Lcom/motorola/camera/mcf/Mcf$SceneMode;
    .locals 4

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DEFAULT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown SceneMode input : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_0
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_NR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto/16 :goto_0

    :pswitch_1
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->LRNV_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto/16 :goto_0

    :pswitch_2
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->LRNV_PORTRAIT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto/16 :goto_0

    :pswitch_3
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->LRNV_AUTO:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto/16 :goto_0

    :pswitch_4
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_HDR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto/16 :goto_0

    :pswitch_5
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->FALL_BACK:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto/16 :goto_0

    :pswitch_6
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_RESOLUTION_HDR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto/16 :goto_0

    :pswitch_7
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->AS_SUPER_NIGHT_AUTO:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto/16 :goto_0

    :pswitch_8
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->JG_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto/16 :goto_0

    :pswitch_9
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->JG_SUPER_NIGHT_AUTO:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto/16 :goto_0

    :pswitch_a
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto/16 :goto_0

    :pswitch_b
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_SUPER_NIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto/16 :goto_0

    :pswitch_c
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_ADVANCED_AIIST:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto/16 :goto_0

    :pswitch_d
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HAL_FRAME_STACK_AIIST:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    :pswitch_e
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HAL_FRAME_STACK_SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    :pswitch_f
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_ADVANCED_AILS:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    :pswitch_10
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HAL_FRAME_STACK_AILS:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    :pswitch_11
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->MULTI_FRAME_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    :pswitch_12
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_REMOSAIC_HDR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    :pswitch_13
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_REMOSAIC:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    :pswitch_14
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->LOW_LIGHT_SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    :pswitch_15
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HAL_FRAME_STACK_FLASH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    :pswitch_16
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_NO_ADRC:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    :pswitch_17
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    :pswitch_18
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_ADVANCED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    :pswitch_19
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_PORTRAIT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    :pswitch_1a
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HAL_FRAME_STACK:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    :pswitch_1b
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->TEST_BLUR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    :pswitch_1c
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_NIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    :pswitch_1d
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DEPTH_RENDER:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    :pswitch_1e
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DISPLAY_FLASH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    :pswitch_1f
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    :pswitch_20
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_RESOLUTION:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    :pswitch_21
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->FAST_NORMAL:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    :pswitch_22
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->AUTO_CAPTURE_ON_SCENE:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    :pswitch_23
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->LOW_LIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    :pswitch_24
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->FLASH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    :pswitch_25
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    :pswitch_26
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->NORMAL:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    :goto_0
    :pswitch_27
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/mcf/Mcf$SceneMode;
    .locals 1

    const-class v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/mcf/Mcf$SceneMode;
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->$VALUES:[Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v0}, [Lcom/motorola/camera/mcf/Mcf$SceneMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/mcf/Mcf$SceneMode;

    return-object v0
.end method


# virtual methods
.method public isASAutoSuperNight()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->AS_SUPER_NIGHT_AUTO:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAppBasedFrameStacking()Z
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isHdr()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isSuperNight()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isSuperRemosaic()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isAutoNV()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_SUPER_NIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->JG_SUPER_NIGHT_AUTO:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->LRNV_AUTO:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->AS_SUPER_NIGHT_AUTO:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isBgService()Z
    .locals 3

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->sCachedIsBgService:Ljava/util/Map;

    new-instance v1, Lcom/motorola/camera/CameraKpi$$ExternalSyntheticLambda0;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/motorola/camera/CameraKpi$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isBokeh()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DEPTH_RENDER:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->LOW_LIGHT_SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->MULTI_FRAME_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HAL_FRAME_STACK_SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isDisplayFlash()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DISPLAY_FLASH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEarlyShutterScene()Z
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isRegularHdr()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isSR()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isBokeh()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isMfnr()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isMcfLowLightFrameStack()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isNormal()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->FALL_BACK:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_2

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_NR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isFlash()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->FLASH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DISPLAY_FLASH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HAL_FRAME_STACK_FLASH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isFlashable()Z
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isFlash()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HAL_FRAME_STACK:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isFocusLockNeeded()Z
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isSuperNight()Z

    move-result p0

    return p0
.end method

.method public isHdr()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_ADVANCED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_ADVANCED_AILS:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_NO_ADRC:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_REMOSAIC_HDR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_ADVANCED_AIIST:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_RESOLUTION_HDR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_HDR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isJGNightVisionDedicated()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->JG_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isJGSuperNight()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->JG_SUPER_NIGHT_AUTO:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->JG_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isLRNV()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->LRNV_AUTO:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->LRNV_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isLRNVAuto()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->LRNV_AUTO:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLRNVDedicated()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->LRNV_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMcfLowLightFrameStack()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->LOW_LIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->LOW_LIGHT_SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DISPLAY_FLASH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isMfnr()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HAL_FRAME_STACK:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HAL_FRAME_STACK_FLASH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HAL_FRAME_STACK_AILS:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_ADVANCED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_ADVANCED_AILS:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HAL_FRAME_STACK_SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HAL_FRAME_STACK_AIIST:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_ADVANCED_AIIST:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isNightVisionDedicated()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->JG_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->LRNV_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isNormal()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->NORMAL:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->FAST_NORMAL:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isRawNightVisionDedicated()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRawSuperNight()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_SUPER_NIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isRegularHdr()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_NO_ADRC:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_HDR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isSFBokeh()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->LOW_LIGHT_SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HAL_FRAME_STACK_SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isSR()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_RESOLUTION:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_REMOSAIC:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_REMOSAIC_HDR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_RESOLUTION_HDR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isSuperNight()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_NIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_PORTRAIT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_SUPER_NIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->JG_SUPER_NIGHT_AUTO:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->JG_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->LRNV_AUTO:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->LRNV_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->LRNV_PORTRAIT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->AS_SUPER_NIGHT_AUTO:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isSuperNightMode()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_NIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_PORTRAIT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->JG_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->LRNV_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isSuperRemosaic()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_REMOSAIC:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_REMOSAIC_HDR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public maxNumberOfRequiredFrames()I
    .locals 3

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->sCachedMaxNumberOfRequiredFrames:Ljava/util/Map;

    new-instance v1, Lcom/motorola/camera/CameraKpi$$ExternalSyntheticLambda0;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lcom/motorola/camera/CameraKpi$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
