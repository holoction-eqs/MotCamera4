.class public final enum Lcom/motorola/camera/scenedetection/scene/Scene$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/scenedetection/scene/Scene$Type;

.field public static final enum BLUE_SKY:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

.field public static final enum FIREWORKS:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

.field public static final enum FLOWER:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

.field public static final enum FOCUS_TOO_FAR:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

.field public static final enum FOOD:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

.field public static final enum GREENERY:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

.field public static final enum GROUPSHOT:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

.field public static final enum HOLIDAY_LIGHTS:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

.field public static final enum MACRO:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

.field public static final enum MOON:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

.field public static final enum MOTO_FLASH:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

.field public static final enum NIGHT:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

.field public static final enum NONE:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

.field public static final enum PET_MOTION:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

.field public static final enum PET_STILL:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

.field public static final enum PORTRAIT:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

.field public static final enum SUNRISE_SUNSET:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

.field public static final enum TEXT:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

.field public static final enum TODDLER_MOTION:Lcom/motorola/camera/scenedetection/scene/Scene$Type;


# direct methods
.method public static constructor <clinit>()V
    .locals 24

    new-instance v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-object v0, v1

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/scenedetection/scene/Scene$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->NONE:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    new-instance v2, Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-object v1, v2

    const-string v3, "FOOD"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/scenedetection/scene/Scene$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->FOOD:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    new-instance v3, Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-object v2, v3

    const-string v4, "TEXT"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/motorola/camera/scenedetection/scene/Scene$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->TEXT:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    new-instance v4, Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-object v3, v4

    const-string v5, "PET_STILL"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lcom/motorola/camera/scenedetection/scene/Scene$Type;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->PET_STILL:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    new-instance v5, Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-object v4, v5

    const-string v6, "PET_MOTION"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Lcom/motorola/camera/scenedetection/scene/Scene$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->PET_MOTION:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    new-instance v6, Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-object v5, v6

    const-string v7, "TODDLER_STILL"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Lcom/motorola/camera/scenedetection/scene/Scene$Type;-><init>(Ljava/lang/String;I)V

    new-instance v7, Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-object v6, v7

    const-string v8, "TODDLER_MOTION"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9}, Lcom/motorola/camera/scenedetection/scene/Scene$Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->TODDLER_MOTION:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    new-instance v8, Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-object v7, v8

    const-string v9, "PORTRAIT"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10}, Lcom/motorola/camera/scenedetection/scene/Scene$Type;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->PORTRAIT:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    new-instance v9, Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-object v8, v9

    const-string v10, "NIGHT"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lcom/motorola/camera/scenedetection/scene/Scene$Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->NIGHT:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    new-instance v10, Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-object v9, v10

    const-string v11, "HOLIDAY_LIGHTS"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12}, Lcom/motorola/camera/scenedetection/scene/Scene$Type;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->HOLIDAY_LIGHTS:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    new-instance v11, Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-object v10, v11

    const-string v12, "SUNRISE_SUNSET"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13}, Lcom/motorola/camera/scenedetection/scene/Scene$Type;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->SUNRISE_SUNSET:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    new-instance v12, Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-object v11, v12

    const-string v13, "MOON"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14}, Lcom/motorola/camera/scenedetection/scene/Scene$Type;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->MOON:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    new-instance v13, Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-object v12, v13

    const-string v14, "FIREWORKS"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15}, Lcom/motorola/camera/scenedetection/scene/Scene$Type;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->FIREWORKS:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    new-instance v14, Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-object v13, v14

    const-string v15, "MACRO"

    move-object/from16 v21, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0}, Lcom/motorola/camera/scenedetection/scene/Scene$Type;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->MACRO:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    new-instance v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-object v14, v0

    const-string v15, "BLUE_SKY"

    move-object/from16 v22, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1}, Lcom/motorola/camera/scenedetection/scene/Scene$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->BLUE_SKY:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    new-instance v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-object v15, v0

    const-string v1, "FOCUS_TOO_FAR"

    move-object/from16 v23, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/scenedetection/scene/Scene$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->FOCUS_TOO_FAR:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    new-instance v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-object/from16 v16, v0

    const-string v1, "GROUPSHOT"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/scenedetection/scene/Scene$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->GROUPSHOT:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    new-instance v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-object/from16 v17, v0

    const-string v1, "MOTO_FLASH"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/scenedetection/scene/Scene$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->MOTO_FLASH:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    new-instance v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-object/from16 v18, v0

    const-string v1, "MOTO_MOTION"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/scenedetection/scene/Scene$Type;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-object/from16 v19, v0

    const-string v1, "FLOWER"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/scenedetection/scene/Scene$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->FLOWER:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    new-instance v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-object/from16 v20, v0

    const-string v1, "GREENERY"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/scenedetection/scene/Scene$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->GREENERY:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    filled-new-array/range {v0 .. v20}, [Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->$VALUES:[Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/scenedetection/scene/Scene$Type;
    .locals 1

    const-class v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/scenedetection/scene/Scene$Type;
    .locals 1

    sget-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->$VALUES:[Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    return-object v0
.end method
