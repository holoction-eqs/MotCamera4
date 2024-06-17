.class public final enum Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

.field public static final enum AI_IMAGE_STABILIZATION:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

.field public static final enum AUDIO_NOISE_CANCELLATION:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

.field public static final enum AUDIO_ZOOM:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

.field public static final enum AUTO_FOCUS_TRACING:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

.field public static final enum AUTO_GESTURE_CAPTURE:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

.field public static final enum AUTO_MACRO:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

.field public static final enum AUTO_SMILE_CAPTURE:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

.field public static final enum CAMERA_CARTOON:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

.field public static final Companion:Lkotlin/UInt$Companion;

.field public static final enum EFFICIENT_VIDEO:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

.field public static final enum FRONT_MIRROR:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

.field public static final enum GOOGLE_LENS:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

.field public static final enum HDR:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

.field public static final enum INSTANT_REVIEW:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

.field public static final enum KEEP_LAST_MODE:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

.field public static final enum LOCATION:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

.field public static final enum LOW_LIGHT_SELFIE:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

.field public static final enum SHOT_OPTIMIZATION:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

.field public static final enum SHUTTER_SOUND:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

.field public static final enum SMART_COMPOSITION:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

.field public static final enum TAP_ANYWHERE:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;


# instance fields
.field public final cameraType:Lcom/motorola/camera/settings/CameraType;

.field public final iconCheckedId:Ljava/lang/Integer;

.field public final iconUncheckedId:Ljava/lang/Integer;

.field public final key:I

.field public final setting:Lcom/motorola/camera/settings/SettingsManager$Key;

.field public final summary:Ljava/lang/Integer;

.field public final title:Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 60

    new-instance v10, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    const-string v1, "INSTANT_REVIEW"

    const/4 v2, 0x0

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_REVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v4, 0x7f120446

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x7c

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILjava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    sput-object v10, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->INSTANT_REVIEW:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    const-string v12, "CAMERA_CARTOON"

    const/4 v13, 0x1

    sget-object v14, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_ANIMATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v15, 0x7f120443

    const/16 v16, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v20, 0x7c

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v11, v1

    invoke-direct/range {v11 .. v20}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILjava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->CAMERA_CARTOON:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    const-string v27, "AUTO_SMILE_CAPTURE"

    const/16 v28, 0x2

    sget-object v29, Lcom/motorola/camera/settings/SettingsManager;->AUTO_SMILE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v30, 0x7f12043a

    const v0, 0x7f080196

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v35, 0x78

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v26, v2

    invoke-direct/range {v26 .. v35}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILjava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    sput-object v2, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->AUTO_SMILE_CAPTURE:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    const-string v42, "AUTO_GESTURE_CAPTURE"

    const/16 v43, 0x3

    sget-object v44, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v45, 0x7f120435

    const v0, 0x7f0801e4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    const/16 v26, 0x78

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x78

    move-object/from16 v41, v3

    invoke-direct/range {v41 .. v50}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILjava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    sput-object v3, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->AUTO_GESTURE_CAPTURE:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    new-instance v4, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    const-string v12, "SMART_COMPOSITION"

    const/4 v13, 0x4

    sget-object v14, Lcom/motorola/camera/settings/SettingsManager;->SMART_COMPOSITION:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v15, 0x7f120439

    const/4 v0, 0x0

    move-object v11, v4

    invoke-direct/range {v11 .. v20}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILjava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    sput-object v4, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->SMART_COMPOSITION:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    const-string v18, "SHOT_OPTIMIZATION"

    const/16 v19, 0x5

    sget-object v20, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v21, 0x7f120438

    const v6, 0x7f080347

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v17, v5

    invoke-direct/range {v17 .. v26}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILjava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    sput-object v5, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->SHOT_OPTIMIZATION:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    new-instance v6, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    const-string v33, "LOW_LIGHT_SELFIE"

    const/16 v34, 0x6

    sget-object v35, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_LOW_LIGHT_SELFIE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v36, 0x7f12044e

    sget-object v17, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    const/16 v41, 0x6c

    const/16 v37, 0x0

    move-object/from16 v32, v6

    move-object/from16 v38, v17

    invoke-direct/range {v32 .. v41}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILjava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    sput-object v6, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->LOW_LIGHT_SELFIE:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    new-instance v7, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    const-string v19, "AI_IMAGE_STABILIZATION"

    const/16 v20, 0x7

    sget-object v21, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_IMAGE_STABILIZATION_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v22, 0x7f120437

    const/16 v31, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x7c

    move-object/from16 v18, v7

    invoke-direct/range {v18 .. v27}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILjava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    sput-object v7, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->AI_IMAGE_STABILIZATION:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    new-instance v8, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    const-string v33, "GOOGLE_LENS"

    const/16 v34, 0x8

    sget-object v35, Lcom/motorola/camera/settings/SettingsManager;->GOOGLE_LENS:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v36, 0x7f120436

    sget-object v38, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    const/4 v9, 0x0

    move-object/from16 v32, v8

    invoke-direct/range {v32 .. v41}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILjava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    sput-object v8, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->GOOGLE_LENS:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    new-instance v22, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    const-string v24, "HDR"

    const/16 v25, 0x9

    sget-object v26, Lcom/motorola/camera/settings/SettingsManager;->HDR_WRAPPER:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v27, 0x7f12043e

    const v11, 0x7f08017d

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v32, 0x78

    move-object/from16 v23, v22

    invoke-direct/range {v23 .. v32}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILjava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    sput-object v22, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->HDR:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    new-instance v23, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    const-string v28, "AUTO_MACRO"

    const/16 v29, 0xa

    sget-object v30, Lcom/motorola/camera/settings/SettingsManager;->AUTO_MACRO:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v31, 0x7f12043b

    const v11, 0x7f080192

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    const/16 v33, 0x0

    const/16 v36, 0x78

    move-object/from16 v27, v23

    move-object/from16 v34, v9

    move-object/from16 v35, v0

    invoke-direct/range {v27 .. v36}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILjava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    sput-object v23, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->AUTO_MACRO:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    new-instance v24, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    const-string v12, "FRONT_MIRROR"

    const/16 v13, 0xb

    sget-object v14, Lcom/motorola/camera/settings/SettingsManager;->FRONT_MIRROR:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v15, 0x7f120460

    const v0, 0x7f080254

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMirrorSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120256

    goto :goto_0

    :cond_0
    const v0, 0x7f120268

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMirrorSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f120257

    goto :goto_1

    :cond_1
    const v0, 0x7f120258

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x8

    move-object/from16 v11, v24

    invoke-direct/range {v11 .. v20}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILjava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    sput-object v24, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->FRONT_MIRROR:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    new-instance v12, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    const-string v26, "EFFICIENT_VIDEO"

    const/16 v27, 0xc

    sget-object v28, Lcom/motorola/camera/settings/SettingsManager;->HEVC:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v29, 0x7f120474

    const v0, 0x7f08028d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    const/16 v36, 0x0

    const/16 v32, 0x0

    const/16 v43, 0x0

    const/16 v34, 0x78

    const/16 v39, 0x0

    const/16 v31, 0x0

    const/16 v33, 0x0

    move-object/from16 v25, v12

    invoke-direct/range {v25 .. v34}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILjava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    sput-object v12, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->EFFICIENT_VIDEO:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    new-instance v13, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    const-string v45, "AUDIO_ZOOM"

    const/16 v46, 0xd

    sget-object v47, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_ZOOM_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v48, 0x7f12046f

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x7c

    move-object/from16 v44, v13

    invoke-direct/range {v44 .. v53}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILjava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    sput-object v13, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->AUDIO_ZOOM:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    new-instance v14, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    const-string v32, "AUDIO_NOISE_CANCELLATION"

    const/16 v33, 0xe

    sget-object v34, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_NOISE_CANCELLATION_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v35, 0x7f12046e

    const/16 v44, 0x0

    const/16 v40, 0x7c

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v31, v14

    invoke-direct/range {v31 .. v40}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILjava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    sput-object v14, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->AUDIO_NOISE_CANCELLATION:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    new-instance v15, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    const-string v46, "AUTO_FOCUS_TRACING"

    const/16 v47, 0xf

    sget-object v48, Lcom/motorola/camera/settings/SettingsManager;->AUTO_FOCUS_TRACKING:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v49, 0x7f120470

    const/16 v53, 0x0

    const/16 v54, 0x7c

    move-object/from16 v45, v15

    invoke-direct/range {v45 .. v54}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILjava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    sput-object v15, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->AUTO_FOCUS_TRACING:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    new-instance v16, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    const-string v38, "TAP_ANYWHERE"

    const/16 v39, 0x10

    sget-object v40, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_TAP_ANYWHERE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v41, 0x7f120442

    const v0, 0x7f080277

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f12028b

    goto :goto_2

    :cond_2
    const v0, 0x7f12028a

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    const/16 v46, 0x28

    move-object/from16 v37, v16

    invoke-direct/range {v37 .. v46}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILjava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    sput-object v16, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->TAP_ANYWHERE:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    move-object/from16 v17, v0

    const-string v26, "SHUTTER_SOUND"

    const/16 v27, 0x11

    sget-object v28, Lcom/motorola/camera/settings/SettingsManager;->SHUTTER_TONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v29, 0x7f120441

    const v9, 0x7f08026f

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v34, 0x78

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v25, v0

    invoke-direct/range {v25 .. v34}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILjava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->SHUTTER_SOUND:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    new-instance v40, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    move-object/from16 v18, v40

    const-string v41, "GRID"

    const/16 v42, 0x12

    sget-object v43, Lcom/motorola/camera/settings/SettingsManager;->ASSISTIVE_GRID:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v44, 0x7f12043d

    const/16 v30, 0x0

    const/16 v34, 0x7c

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x7c

    invoke-direct/range {v40 .. v49}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILjava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    new-instance v50, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    move-object/from16 v19, v50

    const-string v51, "LEVELER"

    const/16 v52, 0x13

    sget-object v53, Lcom/motorola/camera/settings/SettingsManager;->PRO_LEVELER:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v54, 0x7f120440

    const/16 v36, 0x0

    const/16 v40, 0x7c

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x7c

    invoke-direct/range {v50 .. v59}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILjava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    move-object/from16 v20, v0

    const-string v26, "KEEP_LAST_MODE"

    const/16 v27, 0x14

    sget-object v28, Lcom/motorola/camera/settings/SettingsManager;->KEEP_LAST_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v29, 0x7f12043f

    move-object/from16 v25, v0

    invoke-direct/range {v25 .. v34}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILjava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->KEEP_LAST_MODE:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    move-object/from16 v21, v0

    const-string v32, "LOCATION"

    const/16 v33, 0x15

    sget-object v34, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v35, 0x7f120467

    move-object/from16 v31, v0

    invoke-direct/range {v31 .. v40}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;-><init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILjava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->LOCATION:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    move-object v0, v10

    move-object/from16 v9, v22

    move-object/from16 v10, v23

    move-object/from16 v11, v24

    filled-new-array/range {v0 .. v21}, [Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    new-instance v0, Lkotlin/UInt$Companion;

    invoke-direct {v0}, Lkotlin/UInt$Companion;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->Companion:Lkotlin/UInt$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/motorola/camera/settings/SettingsManager$Key;ILjava/lang/Integer;Lcom/motorola/camera/settings/CameraType;Ljava/lang/Integer;Ljava/lang/Integer;I)V
    .locals 2

    and-int/lit8 v0, p9, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p5, v1

    :cond_0
    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_1

    move-object p6, v1

    :cond_1
    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_2

    move-object p7, v1

    :cond_2
    and-int/lit8 p9, p9, 0x40

    if-eqz p9, :cond_3

    move-object p8, v1

    :cond_3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    iput p4, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->key:I

    iput-object p5, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->iconCheckedId:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->iconUncheckedId:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->cameraType:Lcom/motorola/camera/settings/CameraType;

    iput-object p7, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->title:Ljava/lang/Integer;

    iput-object p8, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->summary:Ljava/lang/Integer;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    return-object v0
.end method
