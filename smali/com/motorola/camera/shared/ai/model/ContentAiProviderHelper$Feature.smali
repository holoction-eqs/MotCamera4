.class public final enum Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

.field public static final enum CUD:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

.field public static final enum CUD_PREVIEW_FULL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

.field public static final enum CUD_PREVIEW_STANDARD:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

.field public static final enum CUD_PREVIEW_WIDESCREEN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

.field public static final enum DOC_SCAN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

.field public static final enum DOC_SHADOW_REMOVAL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

.field public static final enum EYE_CONTOUR:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

.field public static final enum GESTURE_AUTO_CAPTURE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

.field public static final enum IMAGE_STABILIZATION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

.field public static final enum LOW_LIGHT_SELFIE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

.field public static final enum LOW_LIGHT_SELFIE_PREVIEW:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

.field public static final enum SCENE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

.field public static final enum SLIDE_AUTO_CAPTURE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

.field public static final enum SLIDE_SCAN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

.field public static final enum SMILE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

.field public static final enum SMILE_DETECTION_QUANT:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    new-instance v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-string v1, "GESTURE_AUTO_CAPTURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->GESTURE_AUTO_CAPTURE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    new-instance v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-string v2, "SCENE_DETECTION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SCENE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    new-instance v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-string v3, "SMILE_DETECTION"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SMILE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    new-instance v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-string v4, "SMILE_DETECTION_QUANT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SMILE_DETECTION_QUANT:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    new-instance v4, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-string v5, "LOW_LIGHT_SELFIE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->LOW_LIGHT_SELFIE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    new-instance v5, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-string v6, "EYE_CONTOUR"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->EYE_CONTOUR:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    new-instance v6, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-string v7, "DOC_SCAN"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->DOC_SCAN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    new-instance v7, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-string v8, "DOC_SHADOW_REMOVAL"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->DOC_SHADOW_REMOVAL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    new-instance v8, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-string v9, "LOW_LIGHT_SELFIE_PREVIEW"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->LOW_LIGHT_SELFIE_PREVIEW:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    new-instance v9, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-string v10, "IMAGE_STABILIZATION"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->IMAGE_STABILIZATION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    new-instance v10, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-string v11, "SLIDE_SCAN"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SLIDE_SCAN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    new-instance v11, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-string v12, "SLIDE_AUTO_CAPTURE"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SLIDE_AUTO_CAPTURE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    new-instance v12, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-string v13, "CUD_PREVIEW_STANDARD"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->CUD_PREVIEW_STANDARD:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    new-instance v13, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-string v14, "CUD_PREVIEW_WIDESCREEN"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->CUD_PREVIEW_WIDESCREEN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    new-instance v14, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-string v15, "CUD_PREVIEW_FULL"

    move-object/from16 v16, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->CUD_PREVIEW_FULL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    new-instance v15, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-string v13, "CUD"

    move-object/from16 v17, v14

    const/16 v14, 0xf

    invoke-direct {v15, v13, v14}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->CUD:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    move-object/from16 v13, v16

    move-object/from16 v14, v17

    filled-new-array/range {v0 .. v15}, [Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->$VALUES:[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;
    .locals 1

    const-class v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;
    .locals 1

    sget-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->$VALUES:[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    return-object v0
.end method
