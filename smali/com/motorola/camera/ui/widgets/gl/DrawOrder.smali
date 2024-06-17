.class public final enum Lcom/motorola/camera/ui/widgets/gl/DrawOrder;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum ALWAYS_AWARE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum CALIBRATION_ERROR_MESSAGE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum CINEMAGRAPH:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum COMPOSITION_GUIDE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum DEBUG_ID:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum DOC_SCAN_UI:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum FACE_DETECT:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum FOCUS_INDICATOR:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum FRONT_FLASH:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum GROUP_SELFIE_UI_COMPONENT:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum HDR10:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum HELP_TOOLTIPS:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum HISTOGRAM:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum HOLD_STILL:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum MEDIA_CODEC:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum MLRN_GROUND_TRUTHS_SELECTOR:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum MODES_MENU:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum MODES_SLIDER:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum MOTION_PHOTOS:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum NAV_BAR_BACKGROUND:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum PANO_UI_COMPONENT:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum PICTURE_REVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum POST_CAPTURE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum SHUTTER_INDICATOR:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum SIMPLE_TOAST:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum TEXTURE_ATLAS:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum TIMER_COUNTDOWN:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum TOUCH_TO_EXPOSE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum UX_DUMP:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum ZOOM_INDICATOR:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum ZOOM_INDICATOR_FRONT:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum ZOOM_INDICATOR_REAR_MASTER:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

.field public static final enum ZOOM_INDICATOR_REAR_SLAVE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;


# direct methods
.method public static constructor <clinit>()V
    .locals 36

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v1, "TEXTURE_ATLAS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->TEXTURE_ATLAS:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v2, "HDR10"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->HDR10:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v3, "CAMERA_PREVIEW"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v4, "POST_CAPTURE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->POST_CAPTURE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v5, "NAV_BAR_BACKGROUND"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->NAV_BAR_BACKGROUND:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v6, "FOCUS_INDICATOR"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->FOCUS_INDICATOR:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v7, "COMPOSITION_GUIDE"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->COMPOSITION_GUIDE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v8, "ALWAYS_AWARE"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ALWAYS_AWARE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v9, "CALIBRATION_ERROR_MESSAGE"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CALIBRATION_ERROR_MESSAGE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v10, "FRONT_FLASH"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->FRONT_FLASH:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v11, "TIMER_COUNTDOWN"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->TIMER_COUNTDOWN:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v11, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v12, "SHUTTER_INDICATOR"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->SHUTTER_INDICATOR:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v12, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v13, "HISTOGRAM"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->HISTOGRAM:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v13, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v14, "DEBUG_ID"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->DEBUG_ID:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v14, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v15, "HOLD_STILL"

    move-object/from16 v16, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->HOLD_STILL:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v15, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v13, "PANO_UI_COMPONENT"

    move-object/from16 v17, v14

    const/16 v14, 0xf

    invoke-direct {v15, v13, v14}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->PANO_UI_COMPONENT:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v14, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v13, "GROUP_SELFIE_UI_COMPONENT"

    move-object/from16 v18, v15

    const/16 v15, 0x10

    invoke-direct {v14, v13, v15}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->GROUP_SELFIE_UI_COMPONENT:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v15, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v13, "MLRN_GROUND_TRUTHS_SELECTOR"

    move-object/from16 v19, v14

    const/16 v14, 0x11

    invoke-direct {v15, v13, v14}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->MLRN_GROUND_TRUTHS_SELECTOR:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v14, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v13, "MOTION_PHOTOS"

    move-object/from16 v20, v15

    const/16 v15, 0x12

    invoke-direct {v14, v13, v15}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->MOTION_PHOTOS:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v15, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v13, "CINEMAGRAPH"

    move-object/from16 v21, v14

    const/16 v14, 0x13

    invoke-direct {v15, v13, v14}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CINEMAGRAPH:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v14, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v13, "DOC_SCAN_UI"

    move-object/from16 v22, v15

    const/16 v15, 0x14

    invoke-direct {v14, v13, v15}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->DOC_SCAN_UI:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v15, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v13, "ZOOM_INDICATOR"

    move-object/from16 v23, v14

    const/16 v14, 0x15

    invoke-direct {v15, v13, v14}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ZOOM_INDICATOR:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v14, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v13, "ZOOM_INDICATOR_FRONT"

    move-object/from16 v24, v15

    const/16 v15, 0x16

    invoke-direct {v14, v13, v15}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ZOOM_INDICATOR_FRONT:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v15, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v13, "ZOOM_INDICATOR_REAR_MASTER"

    move-object/from16 v25, v14

    const/16 v14, 0x17

    invoke-direct {v15, v13, v14}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ZOOM_INDICATOR_REAR_MASTER:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v14, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v13, "ZOOM_INDICATOR_REAR_SLAVE"

    move-object/from16 v26, v15

    const/16 v15, 0x18

    invoke-direct {v14, v13, v15}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ZOOM_INDICATOR_REAR_SLAVE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v15, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v13, "MODES_MENU"

    move-object/from16 v27, v14

    const/16 v14, 0x19

    invoke-direct {v15, v13, v14}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->MODES_MENU:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v14, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v13, "MODES_SLIDER"

    move-object/from16 v28, v15

    const/16 v15, 0x1a

    invoke-direct {v14, v13, v15}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->MODES_SLIDER:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v15, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v13, "TOUCH_TO_EXPOSE"

    move-object/from16 v29, v14

    const/16 v14, 0x1b

    invoke-direct {v15, v13, v14}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->TOUCH_TO_EXPOSE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v14, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v13, "FACE_DETECT"

    move-object/from16 v30, v15

    const/16 v15, 0x1c

    invoke-direct {v14, v13, v15}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->FACE_DETECT:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v15, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v13, "MEDIA_CODEC"

    move-object/from16 v31, v14

    const/16 v14, 0x1d

    invoke-direct {v15, v13, v14}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->MEDIA_CODEC:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v14, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v13, "HELP_TOOLTIPS"

    move-object/from16 v32, v15

    const/16 v15, 0x1e

    invoke-direct {v14, v13, v15}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->HELP_TOOLTIPS:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v15, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v13, "SIMPLE_TOAST"

    move-object/from16 v33, v14

    const/16 v14, 0x1f

    invoke-direct {v15, v13, v14}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->SIMPLE_TOAST:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v14, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v13, "PICTURE_REVIEW"

    move-object/from16 v34, v15

    const/16 v15, 0x20

    invoke-direct {v14, v13, v15}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->PICTURE_REVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v15, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    const-string v13, "UX_DUMP"

    move-object/from16 v35, v14

    const/16 v14, 0x21

    invoke-direct {v15, v13, v14}, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->UX_DUMP:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    move-object/from16 v13, v16

    move-object/from16 v16, v19

    move-object/from16 v19, v21

    move-object/from16 v21, v23

    move-object/from16 v23, v25

    move-object/from16 v25, v27

    move-object/from16 v27, v29

    move-object/from16 v29, v31

    move-object/from16 v31, v33

    move-object/from16 v33, v35

    move-object/from16 v14, v17

    move-object/from16 v17, v20

    move-object/from16 v20, v22

    move-object/from16 v22, v24

    move-object/from16 v24, v26

    move-object/from16 v26, v28

    move-object/from16 v28, v30

    move-object/from16 v30, v32

    move-object/from16 v32, v34

    move-object/from16 v34, v15

    move-object/from16 v15, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v27

    move-object/from16 v27, v28

    move-object/from16 v28, v29

    move-object/from16 v29, v30

    move-object/from16 v30, v31

    move-object/from16 v31, v32

    move-object/from16 v32, v33

    move-object/from16 v33, v34

    filled-new-array/range {v0 .. v33}, [Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/widgets/gl/DrawOrder;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/widgets/gl/DrawOrder;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v0}, [Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    return-object v0
.end method
