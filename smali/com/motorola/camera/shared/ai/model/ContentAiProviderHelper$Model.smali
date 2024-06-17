.class public enum Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

.field public static final enum CUD:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD;

.field public static final enum CUD_PREVIEW_FULL_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD_PREVIEW_FULL_MODEL;

.field public static final enum CUD_PREVIEW_STANDARD_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD_PREVIEW_STANDARD_MODEL;

.field public static final enum CUD_PREVIEW_WIDESCREEN_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD_PREVIEW_WIDESCREEN_MODEL;

.field public static final enum DOC_SCAN_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

.field public static final enum DOC_SHADOW_REMOVAL_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

.field public static final enum IMAGE_STABILIZATION_4PATCH_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$IMAGE_STABILIZATION_4PATCH_MODEL;

.field public static final enum LOW_LIGHT_SELFIE_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$LOW_LIGHT_SELFIE_MODEL;

.field public static final enum LOW_LIGHT_SELFIE_PREVIEW_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$LOW_LIGHT_SELFIE_PREVIEW_MODEL;

.field public static final enum MOT_SCENE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$MOT_SCENE_DETECTION;

.field public static final enum MOT_SCENE_DETECTION_V2:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$MOT_SCENE_DETECTION_V2;

.field public static final enum SCENE_DETECTION_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

.field public static final enum SCENE_DETECTION_TFLITE_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

.field public static final enum SLIDE_AUTO_CAPTURE_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

.field public static final enum SLIDE_SCAN_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;


# instance fields
.field public final modelFeature:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

.field public final modelName:Ljava/lang/String;

.field public final modelVersion:I

.field public final versioning:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;


# direct methods
.method public static constructor <clinit>()V
    .locals 37

    new-instance v7, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    const-string v1, "GESTURE_AUTO_CAPTURE_MODEL"

    const/4 v2, 0x0

    sget-object v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->GESTURE_AUTO_CAPTURE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-string v4, "gesture_auto_capture_model"

    const/16 v5, 0xc9

    sget-object v6, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->GESTURE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$GESTURE;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;-><init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V

    new-instance v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$GESTURE_AUTO_CAPTURE_TFLITE_MODEL;

    invoke-direct {v0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$GESTURE_AUTO_CAPTURE_TFLITE_MODEL;-><init>()V

    new-instance v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    const-string v9, "SCENE_DETECTION_MODEL"

    const/4 v10, 0x2

    sget-object v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SCENE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-string v12, "scene_detection_model"

    const/16 v13, 0x125

    sget-object v17, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->SCENE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$SCENE_DETECTION;

    move-object v8, v1

    move-object v11, v2

    move-object/from16 v14, v17

    invoke-direct/range {v8 .. v14}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;-><init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V

    sput-object v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->SCENE_DETECTION_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    new-instance v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    const-string v12, "SCENE_DETECTION_TFLITE_MODEL"

    const/4 v13, 0x3

    const-string v15, "scene_detection_tflite_model"

    const/16 v16, 0x125

    move-object v11, v3

    move-object v14, v2

    invoke-direct/range {v11 .. v17}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;-><init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V

    sput-object v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->SCENE_DETECTION_TFLITE_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    new-instance v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$MOT_SCENE_DETECTION;

    invoke-direct {v2}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$MOT_SCENE_DETECTION;-><init>()V

    sput-object v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->MOT_SCENE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$MOT_SCENE_DETECTION;

    new-instance v4, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$MOT_SCENE_DETECTION_V2;

    invoke-direct {v4}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$MOT_SCENE_DETECTION_V2;-><init>()V

    sput-object v4, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->MOT_SCENE_DETECTION_V2:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$MOT_SCENE_DETECTION_V2;

    new-instance v5, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    const-string v9, "SMILE_DETECTION_MODEL"

    const/4 v10, 0x6

    sget-object v6, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SMILE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-string v12, "smile_detection_model"

    const/16 v13, 0x66

    sget-object v20, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->SMILE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$SMILE_DETECTION;

    move-object v8, v5

    move-object v11, v6

    move-object/from16 v14, v20

    invoke-direct/range {v8 .. v14}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;-><init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V

    new-instance v8, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    const-string v12, "SMILE_DETECTION_TFLITE_MODEL"

    const/4 v13, 0x7

    const-string v15, "smile_detection_tflite_model"

    const/16 v16, 0x66

    move-object v11, v8

    move-object v14, v6

    move-object/from16 v17, v20

    invoke-direct/range {v11 .. v17}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;-><init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V

    new-instance v6, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    const-string v15, "SMILE_DETECTION_QUANT_MODEL"

    const/16 v16, 0x8

    sget-object v17, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SMILE_DETECTION_QUANT:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-string v18, "smile_detection_quant_model"

    const/16 v19, 0x65

    move-object v14, v6

    invoke-direct/range {v14 .. v20}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;-><init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V

    new-instance v9, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$LOW_LIGHT_SELFIE_MODEL;

    invoke-direct {v9}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$LOW_LIGHT_SELFIE_MODEL;-><init>()V

    sput-object v9, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->LOW_LIGHT_SELFIE_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$LOW_LIGHT_SELFIE_MODEL;

    new-instance v17, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    const-string v11, "EYE_CONTOUR_MODEL"

    const/16 v12, 0xa

    sget-object v21, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->EYE_CONTOUR:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-string v14, "eye_contour_model"

    const/16 v15, 0x67

    sget-object v24, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->CONTENT_BACKWARD_COMPATIBLE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$CONTENT_BACKWARD_COMPATIBLE;

    move-object/from16 v10, v17

    move-object/from16 v13, v21

    move-object/from16 v16, v24

    invoke-direct/range {v10 .. v16}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;-><init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V

    new-instance v10, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    const-string v19, "EYE_CONTOUR_TFLITE_MODEL"

    const/16 v20, 0xb

    const-string v22, "eye_contour_tflite_model"

    const/16 v23, 0x67

    move-object/from16 v18, v10

    invoke-direct/range {v18 .. v24}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;-><init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V

    new-instance v11, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    const-string v26, "DOC_SCAN_MODEL"

    const/16 v27, 0xc

    sget-object v28, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->DOC_SCAN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-string v29, "doc_scan_model"

    const/16 v30, 0x66

    sget-object v31, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->DOC_SCAN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$DOC_SCAN;

    move-object/from16 v25, v11

    invoke-direct/range {v25 .. v31}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;-><init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V

    sput-object v11, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->DOC_SCAN_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    new-instance v12, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    const-string v19, "DOC_SHADOW_REMOVAL_MODEL"

    const/16 v20, 0xd

    sget-object v21, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->DOC_SHADOW_REMOVAL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-string v22, "doc_shadow_removal_model"

    const/16 v28, 0x64

    sget-object v24, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->DOC_SHADOW_REMOVAL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$DOC_SHADOW_REMOVAL;

    move-object/from16 v18, v12

    move/from16 v23, v28

    invoke-direct/range {v18 .. v24}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;-><init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V

    sput-object v12, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->DOC_SHADOW_REMOVAL_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    new-instance v13, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$LOW_LIGHT_SELFIE_PREVIEW_MODEL;

    invoke-direct {v13}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$LOW_LIGHT_SELFIE_PREVIEW_MODEL;-><init>()V

    sput-object v13, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->LOW_LIGHT_SELFIE_PREVIEW_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$LOW_LIGHT_SELFIE_PREVIEW_MODEL;

    new-instance v14, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$IMAGE_STABILIZATION_MODEL;

    invoke-direct {v14}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$IMAGE_STABILIZATION_MODEL;-><init>()V

    new-instance v15, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$IMAGE_STABILIZATION_4PATCH_MODEL;

    invoke-direct {v15}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$IMAGE_STABILIZATION_4PATCH_MODEL;-><init>()V

    sput-object v15, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->IMAGE_STABILIZATION_4PATCH_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$IMAGE_STABILIZATION_4PATCH_MODEL;

    new-instance v16, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    const-string v24, "SLIDE_SCAN_MODEL"

    const/16 v25, 0x11

    sget-object v26, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SLIDE_SCAN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-string v27, "slide_scan_model"

    sget-object v29, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->SLIDE_SCAN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$SLIDE_SCAN;

    move-object/from16 v23, v16

    invoke-direct/range {v23 .. v29}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;-><init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V

    sput-object v16, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->SLIDE_SCAN_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    new-instance v18, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    const-string v31, "SLIDE_AUTO_CAPTURE_MODEL"

    const/16 v32, 0x12

    sget-object v33, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SLIDE_AUTO_CAPTURE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-string v34, "slide_auto_capture_model"

    const/16 v35, 0x64

    sget-object v36, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->SLIDE_AUTO_CAPTURE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$SLIDE_AUTO_CAPTURE;

    move-object/from16 v30, v18

    invoke-direct/range {v30 .. v36}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;-><init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V

    sput-object v18, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->SLIDE_AUTO_CAPTURE_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    new-instance v19, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD_PREVIEW_STANDARD_MODEL;

    invoke-direct/range {v19 .. v19}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD_PREVIEW_STANDARD_MODEL;-><init>()V

    sput-object v19, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->CUD_PREVIEW_STANDARD_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD_PREVIEW_STANDARD_MODEL;

    new-instance v20, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD_PREVIEW_WIDESCREEN_MODEL;

    invoke-direct/range {v20 .. v20}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD_PREVIEW_WIDESCREEN_MODEL;-><init>()V

    sput-object v20, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->CUD_PREVIEW_WIDESCREEN_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD_PREVIEW_WIDESCREEN_MODEL;

    new-instance v21, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD_PREVIEW_FULL_MODEL;

    invoke-direct/range {v21 .. v21}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD_PREVIEW_FULL_MODEL;-><init>()V

    sput-object v21, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->CUD_PREVIEW_FULL_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD_PREVIEW_FULL_MODEL;

    new-instance v22, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD;

    invoke-direct/range {v22 .. v22}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD;-><init>()V

    sput-object v22, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->CUD:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD;

    move-object/from16 v23, v15

    const/16 v15, 0x17

    new-array v15, v15, [Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    const/16 v24, 0x0

    aput-object v7, v15, v24

    const/4 v7, 0x1

    aput-object v0, v15, v7

    const/4 v0, 0x2

    aput-object v1, v15, v0

    const/4 v0, 0x3

    aput-object v3, v15, v0

    const/4 v0, 0x4

    aput-object v2, v15, v0

    const/4 v0, 0x5

    aput-object v4, v15, v0

    const/4 v0, 0x6

    aput-object v5, v15, v0

    const/4 v0, 0x7

    aput-object v8, v15, v0

    const/16 v0, 0x8

    aput-object v6, v15, v0

    const/16 v0, 0x9

    aput-object v9, v15, v0

    const/16 v0, 0xa

    aput-object v17, v15, v0

    const/16 v0, 0xb

    aput-object v10, v15, v0

    const/16 v0, 0xc

    aput-object v11, v15, v0

    const/16 v0, 0xd

    aput-object v12, v15, v0

    const/16 v0, 0xe

    aput-object v13, v15, v0

    const/16 v0, 0xf

    aput-object v14, v15, v0

    const/16 v0, 0x10

    aput-object v23, v15, v0

    const/16 v0, 0x11

    aput-object v16, v15, v0

    const/16 v0, 0x12

    aput-object v18, v15, v0

    const/16 v0, 0x13

    aput-object v19, v15, v0

    const/16 v0, 0x14

    aput-object v20, v15, v0

    const/16 v0, 0x15

    aput-object v21, v15, v0

    const/16 v0, 0x16

    aput-object v22, v15, v0

    sput-object v15, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->$VALUES:[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->modelFeature:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    iput-object p4, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->modelName:Ljava/lang/String;

    iput p5, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->modelVersion:I

    iput-object p6, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->versioning:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;
    .locals 1

    const-class v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;
    .locals 1

    sget-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->$VALUES:[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    return-object v0
.end method


# virtual methods
.method public buildUri()Landroid/net/Uri;
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->makeUriBuilder()Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    const-string v0, "makeUriBuilder().build()"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final makeUriBuilder()Landroid/net/Uri$Builder;
    .locals 2

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/shared/PackageUtility;->getInstance()Lcom/motorola/camera/shared/PackageUtility;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/shared/PackageUtility;->getContentAiPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->modelName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "Builder()\n              \u2026   .appendPath(modelName)"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public modelVersion()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->modelVersion:I

    return p0
.end method
