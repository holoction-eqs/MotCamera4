.class public final enum Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final Companion:Lkotlin/ULong$Companion;

.field public static final enum SCREEN_CONTINUE:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_FIRST_USE:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_AUTO_MACRO:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_AUTO_MACRO_INCH:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_CINEMAGRAPH:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_CUTOUT:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_FIXED_MACRO:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_FIXED_MACRO_INCH:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_HIGH_MP_REMOSAIC:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_IHC_ON:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_IHC_TYPE:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_MIRROR_HELP_CLICK:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_MIRROR_HELP_PRESS:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_PANORAMA_END:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_PANORAMA_START:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_PHOTO_BOOTH:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_PHOTO_DEPTH:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_SELFIE_PORTRAIT:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_SINGLE_BOKEH:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_SLOW_MOTION:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_SLOW_MOTION_FLICKER:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_SMART_EIS:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_SPOT_COLOR_PHOTO:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_SPOT_COLOR_VIDEO:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_SUPER_SLOW_MOTION:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_VIDEO_PORTRAIT:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;


# instance fields
.field public final mBackgroudRes:I

.field public final mContentRes:I

.field public final mDescriptionRes:I

.field public final mHeaderRes:I

.field public final mHelpScreensModes:I

.field public final mIsAnimation:Z

.field public final mLeftButtonTextRes:I

.field public final mRightButtonTextRes:I

.field public final mSetting:Lcom/motorola/camera/settings/SettingsManager$Key;

.field public mTitleIconRes:I

.field public final mTitleTextRes:I


# direct methods
.method public static constructor <clinit>()V
    .locals 51

    new-instance v8, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    move-object v7, v8

    const-string v1, "SCREEN_FIRST_USE"

    const/4 v2, 0x0

    const v3, 0x7f120201

    const v4, 0x7f1201da

    const v5, 0x7f1201d2

    const v6, 0x7f1201d3

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIII)V

    sput-object v8, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_FIRST_USE:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    move-object v8, v0

    const-string v10, "SCREEN_CONTINUE"

    const/4 v11, 0x1

    const v12, 0x7f1201f7

    const v13, 0x7f1201d7

    const v14, 0x7f1201d1

    const v15, 0x7f1201d0

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_CONTINUE:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    move-object v9, v0

    const-string v17, "SCREEN_MODE_SINGLE_BOKEH"

    const/16 v18, 0x2

    const v19, 0x7f08021b

    const v20, 0x7f12040f

    const v21, 0x7f0802b4

    const v22, 0x7f1201f8

    const v23, 0x7f1201e2

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SINGLE_BOKEH_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v2, "FIRST_TIME_USE_SINGLE_BOKEH_TUTORIAL"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v16, v0

    move-object/from16 v24, v1

    invoke-direct/range {v16 .. v24}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIILcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_SINGLE_BOKEH:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    move-object v10, v0

    const-string v25, "SCREEN_MODE_PHOTO_DEPTH"

    const/16 v26, 0x3

    const v27, 0x7f08021b

    const v28, 0x7f12040f

    const v29, 0x7f0802b4

    const v30, 0x7f1201f8

    const v31, 0x7f1201e2

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_PHOTO_DEPTH_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v2, "FIRST_TIME_USE_PHOTO_DEPTH_TUTORIAL"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v24, v0

    move-object/from16 v32, v1

    invoke-direct/range {v24 .. v32}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIILcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_PHOTO_DEPTH:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    move-object v11, v0

    const-string v13, "SCREEN_MODE_SELFIE_PORTRAIT"

    const/4 v14, 0x4

    const v15, 0x7f08021b

    const v16, 0x7f12040f

    const v17, 0x7f0802b5

    const v18, 0x7f1201f8

    const v19, 0x7f1201e2

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SELFIE_PORTRAIT_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v2, "FIRST_TIME_USE_SELFIE_PORTRAIT_TUTORIAL"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v0

    move-object/from16 v20, v1

    invoke-direct/range {v12 .. v20}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIILcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_SELFIE_PORTRAIT:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    move-object v12, v0

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_CINEMAGRAPH_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v2, "FIRST_TIME_USE_CINEMAGRAPH_TUTORIAL"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Lcom/motorola/camera/settings/SettingsManager$Key;I)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_CINEMAGRAPH:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    move-object v13, v0

    const-string v15, "SCREEN_MODE_SPOT_COLOR_PHOTO"

    const/16 v16, 0x6

    const v17, 0x7f080226

    const v18, 0x7f120415

    const v19, 0x7f0802bb

    const v20, 0x7f1201fc

    const v21, 0x7f1201e6

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SPOT_COLOR_PHOTO_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v3, "FIRST_TIME_USE_SPOT_COLOR_PHOTO_TUTORIAL"

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v14, v0

    move-object/from16 v22, v1

    invoke-direct/range {v14 .. v22}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIILcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_SPOT_COLOR_PHOTO:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    move-object v14, v0

    const-string v23, "SCREEN_MODE_SPOT_COLOR_VIDEO"

    const/16 v24, 0x7

    const v25, 0x7f080226

    const v26, 0x7f120416

    const v27, 0x7f0802bb

    const v28, 0x7f1201fc

    const v29, 0x7f1201e7

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SPOT_COLOR_VIDEO_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v3, "FIRST_TIME_USE_SPOT_COLOR_VIDEO_TUTORIAL"

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v22, v0

    move-object/from16 v30, v1

    invoke-direct/range {v22 .. v30}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIILcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_SPOT_COLOR_VIDEO:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    move-object v15, v0

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SEGMENTATION_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v3, "FIRST_TIME_USE_SEGMENTATION_TUTORIAL"

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Lcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_CUTOUT:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    move-object/from16 v16, v0

    const-string v18, "SCREEN_MODE_HIGH_MP_REMOSAIC"

    const/16 v19, 0x9

    const v20, 0x7f080223

    const v21, 0x7f120407

    const v22, 0x7f0802bc

    const v23, 0x7f1202b2

    const v24, 0x7f1202b1

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_HIGH_MP_REMOSAIC_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v3, "FIRST_TIME_USE_HIGH_MP_REMOSAIC_TUTORIAL"

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v17, v0

    move-object/from16 v25, v1

    invoke-direct/range {v17 .. v25}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIILcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_HIGH_MP_REMOSAIC:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    move-object/from16 v17, v0

    const-string v26, "SCREEN_MODE_AUTO_MACRO"

    const/16 v27, 0xa

    const v28, 0x7f080211

    const v29, 0x7f120409

    const v30, 0x7f0802a6

    const v31, 0x7f1201f2

    const v32, 0x7f1201d4

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_MACRO_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v3, "FIRST_TIME_USE_MACRO_TUTORIAL"

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v25, v0

    move-object/from16 v33, v1

    invoke-direct/range {v25 .. v33}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIILcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_AUTO_MACRO:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    move-object/from16 v18, v0

    const-string v34, "SCREEN_MODE_AUTO_MACRO_INCH"

    const/16 v35, 0xb

    const v36, 0x7f080211

    const v37, 0x7f120409

    const v38, 0x7f0802a6

    const v39, 0x7f1201f2

    const v40, 0x7f1201d5

    move-object/from16 v33, v0

    move-object/from16 v41, v1

    invoke-direct/range {v33 .. v41}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIILcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_AUTO_MACRO_INCH:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    move-object/from16 v19, v0

    const-string v21, "SCREEN_MODE_SLOW_MOTION"

    const/16 v22, 0xc

    const v23, 0x7f080225

    const v24, 0x7f120414

    const v25, 0x7f0802b7

    const v26, 0x7f1201f9

    const v27, 0x7f1201e3

    const/4 v3, 0x3

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SLOW_MOTION_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v29, 0x0

    move-object/from16 v20, v0

    move-object/from16 v28, v4

    invoke-direct/range {v20 .. v29}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIILcom/motorola/camera/settings/SettingsManager$Key;I)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_SLOW_MOTION:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    move-object/from16 v20, v0

    const-string v29, "SCREEN_MODE_SUPER_SLOW_MOTION"

    const/16 v30, 0xd

    const v5, 0x7f080225

    const v6, 0x7f120414

    const v33, 0x7f0802b8

    const v34, 0x7f1201fd

    const v35, 0x7f1201e8

    const v22, 0x7f1201cf

    const v37, 0x7f120202

    const v31, 0x7f080225

    const v32, 0x7f120414

    const v36, 0x7f1201cf

    const/16 v38, 0x3

    move-object/from16 v28, v0

    move-object/from16 v39, v4

    invoke-direct/range {v28 .. v39}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIIIIILcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_SUPER_SLOW_MOTION:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    move-object/from16 v21, v0

    const-string v29, "SCREEN_MODE_SLOW_MOTION_FLICKER"

    const/16 v30, 0xe

    const v33, 0x7f0802b9

    const v34, 0x7f1201fa

    const v35, 0x7f1201e4

    const v37, 0x7f1201ed

    move-object/from16 v28, v0

    move/from16 v31, v5

    move/from16 v32, v6

    move/from16 v36, v22

    invoke-direct/range {v28 .. v39}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIIIIILcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_SLOW_MOTION_FLICKER:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    move-object/from16 v22, v0

    const-string v34, "SCREEN_MODE_FIXED_MACRO_INCH"

    const/16 v35, 0xf

    const v4, 0x7f080211

    const v5, 0x7f120409

    const v6, 0x7f0802a6

    const v24, 0x7f1201f2

    const v40, 0x7f1201dc

    const v36, 0x7f080211

    const v37, 0x7f120409

    const v38, 0x7f0802a6

    const v39, 0x7f1201f2

    move-object/from16 v33, v0

    invoke-direct/range {v33 .. v41}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIILcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_FIXED_MACRO_INCH:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    move-object/from16 v23, v0

    const-string v34, "SCREEN_MODE_FIXED_MACRO"

    const/16 v35, 0x10

    const v40, 0x7f1201db

    move-object/from16 v33, v0

    move/from16 v36, v4

    move/from16 v37, v5

    move/from16 v38, v6

    move/from16 v39, v24

    invoke-direct/range {v33 .. v41}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIILcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_FIXED_MACRO:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    move-object/from16 v24, v0

    const-string v42, "SCREEN_MODE_IHC_ON"

    const/16 v43, 0x11

    const v29, 0x7f080272

    const v30, 0x7f1203df

    const v46, 0x7f0802bd

    const v47, 0x7f1201ff

    const v48, 0x7f1201eb

    sget-object v37, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_VSTAB_IHC:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v50, 0x0

    const v44, 0x7f080272

    const v45, 0x7f1203df

    move-object/from16 v41, v0

    move-object/from16 v49, v37

    invoke-direct/range {v41 .. v50}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIILcom/motorola/camera/settings/SettingsManager$Key;I)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_IHC_ON:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    move-object/from16 v25, v0

    const-string v27, "SCREEN_MODE_IHC_TYPE"

    const/16 v28, 0x12

    const v31, 0x7f0802be

    const v32, 0x7f120200

    const v33, 0x7f1201ec

    const v34, 0x7f1201cf

    const v35, 0x7f1201ed

    const/16 v36, 0x3

    move-object/from16 v26, v0

    invoke-direct/range {v26 .. v37}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIIIIILcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_IHC_TYPE:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    move-object/from16 v26, v0

    const-string v39, "SCREEN_MODE_MIRROR_HELP_CLICK"

    const/16 v40, 0x13

    const v41, 0x7f080180

    const v42, 0x7f1201f4

    const v43, 0x7f1201de

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_MIRROR_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v4, "FIRST_TIME_USE_MIRROR_MODE"

    invoke-static {v1, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v38, v0

    move-object/from16 v44, v1

    invoke-direct/range {v38 .. v44}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIILcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_MIRROR_HELP_CLICK:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    move-object/from16 v27, v0

    const-string v29, "SCREEN_MODE_MIRROR_HELP_PRESS"

    const/16 v30, 0x14

    const v31, 0x7f080181

    const v32, 0x7f1201f3

    const v33, 0x7f1201dd

    move-object/from16 v28, v0

    move-object/from16 v34, v1

    invoke-direct/range {v28 .. v34}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIILcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_MIRROR_HELP_PRESS:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    move-object/from16 v28, v0

    const-string v35, "SCREEN_MODE_PANORAMA_START"

    const/16 v36, 0x15

    const v33, 0x7f080215

    const v1, 0x7f12040d

    const v39, 0x7f0802b2

    const v4, 0x7f1201f5

    const v41, 0x7f1201e0

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_PANORAMA_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v43, 0x0

    const v37, 0x7f080215

    const v38, 0x7f12040d

    const v40, 0x7f1201f5

    move-object/from16 v34, v0

    move-object/from16 v42, v5

    invoke-direct/range {v34 .. v43}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIILcom/motorola/camera/settings/SettingsManager$Key;I)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_PANORAMA_START:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    move-object/from16 v29, v0

    const-string v31, "SCREEN_MODE_PANORAMA_END"

    const/16 v32, 0x16

    const v35, 0x7f0802b1

    const v37, 0x7f1201df

    const v38, 0x7f1201cf

    const v39, 0x7f1201ed

    move-object/from16 v30, v0

    move/from16 v34, v1

    move/from16 v36, v4

    move/from16 v40, v3

    move-object/from16 v41, v5

    invoke-direct/range {v30 .. v41}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIIIIILcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_PANORAMA_END:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    move-object/from16 v30, v0

    const-string v41, "SCREEN_MODE_PHOTO_BOOTH"

    const/16 v42, 0x17

    const v43, 0x7f080217

    const v44, 0x7f12040e

    const v45, 0x7f0802b3

    const v46, 0x7f1201f6

    const v47, 0x7f1201e1

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_PHOTO_BOOTH_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v3, "FIRST_TIME_USE_PHOTO_BOOTH_TUTORIAL"

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v40, v0

    move-object/from16 v48, v1

    invoke-direct/range {v40 .. v48}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIILcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_PHOTO_BOOTH:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    move-object/from16 v31, v0

    const-string v33, "SCREEN_MODE_SMART_EIS"

    const/16 v34, 0x18

    const v35, 0x7f08027e

    const v36, 0x7f1203da

    const v37, 0x7f0802ba

    const v38, 0x7f1201fb

    const v39, 0x7f1201e5

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SMART_EIS:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v3, "FIRST_TIME_USE_SMART_EIS"

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v32, v0

    move-object/from16 v40, v1

    invoke-direct/range {v32 .. v40}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIILcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_SMART_EIS:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    move-object/from16 v32, v0

    const-string v41, "SCREEN_MODE_VIDEO_PORTRAIT"

    const/16 v42, 0x19

    const v43, 0x7f08021b

    const v44, 0x7f120419

    const v45, 0x7f0802b6

    const v46, 0x7f1201fe

    const v47, 0x7f1201ea

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_VIDEO_PORTRAIT:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v3, "FIRST_TIME_USE_VIDEO_PORTRAIT"

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v40, v0

    move-object/from16 v48, v1

    invoke-direct/range {v40 .. v48}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIILcom/motorola/camera/settings/SettingsManager$Key;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_VIDEO_PORTRAIT:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    filled-new-array/range {v7 .. v32}, [Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    new-instance v0, Lkotlin/ULong$Companion;

    const/16 v1, 0x13

    invoke-direct {v0, v1, v2}, Lkotlin/ULong$Companion;-><init>(II)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->Companion:Lkotlin/ULong$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/settings/SettingsManager$Key;)V
    .locals 2

    .line 1
    const-string v0, "SCREEN_MODE_CUTOUT"

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const v0, 0x7f08020b

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mTitleIconRes:I

    const v0, 0x7f120402

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mTitleTextRes:I

    const v0, 0x7f08036d

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mContentRes:I

    const v0, 0x7f1201f1

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mHeaderRes:I

    const v0, 0x7f1201d9

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mDescriptionRes:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mIsAnimation:Z

    const v1, 0x7f1201ed

    iput v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mRightButtonTextRes:I

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mHelpScreensModes:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mSetting:Lcom/motorola/camera/settings/SettingsManager$Key;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/settings/SettingsManager$Key;I)V
    .locals 1

    .line 2
    const-string p2, "SCREEN_MODE_CINEMAGRAPH"

    const/4 v0, 0x5

    invoke-direct {p0, p2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const p2, 0x7f08020a

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mTitleIconRes:I

    const p2, 0x7f120401

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mTitleTextRes:I

    const p2, 0x7f0802ab

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mBackgroudRes:I

    const p2, 0x7f08036c

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mContentRes:I

    const p2, 0x7f1201ee

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mHeaderRes:I

    const p2, 0x7f1201d6

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mDescriptionRes:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mIsAnimation:Z

    const v0, 0x7f1201ed

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mRightButtonTextRes:I

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mHelpScreensModes:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mSetting:Lcom/motorola/camera/settings/SettingsManager$Key;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIII)V
    .locals 12

    .line 3
    const v5, 0x7f0802bf

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v0 .. v11}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIIIIILcom/motorola/camera/settings/SettingsManager$Key;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIIIIILcom/motorola/camera/settings/SettingsManager$Key;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mTitleIconRes:I

    iput p4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mTitleTextRes:I

    iput p5, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mContentRes:I

    iput p6, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mHeaderRes:I

    iput p7, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mDescriptionRes:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mIsAnimation:Z

    iput p8, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mLeftButtonTextRes:I

    iput p9, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mRightButtonTextRes:I

    iput p10, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mHelpScreensModes:I

    iput-object p11, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mSetting:Lcom/motorola/camera/settings/SettingsManager$Key;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIILcom/motorola/camera/settings/SettingsManager$Key;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mTitleIconRes:I

    iput p4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mTitleTextRes:I

    iput p5, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mContentRes:I

    iput p6, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mHeaderRes:I

    iput p7, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mDescriptionRes:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mIsAnimation:Z

    const p1, 0x7f1201ed

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mRightButtonTextRes:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mHelpScreensModes:I

    iput-object p8, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mSetting:Lcom/motorola/camera/settings/SettingsManager$Key;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIILcom/motorola/camera/settings/SettingsManager$Key;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mTitleIconRes:I

    iput p4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mTitleTextRes:I

    iput p5, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mContentRes:I

    iput p6, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mHeaderRes:I

    iput p7, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mDescriptionRes:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mIsAnimation:Z

    const p1, 0x7f120202

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mRightButtonTextRes:I

    const/4 p1, 0x3

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mHelpScreensModes:I

    iput-object p8, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mSetting:Lcom/motorola/camera/settings/SettingsManager$Key;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIILcom/motorola/camera/settings/SettingsManager$Key;)V
    .locals 12

    .line 7
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v11, p6

    invoke-direct/range {v0 .. v11}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIIIIIIIILcom/motorola/camera/settings/SettingsManager$Key;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    return-object v0
.end method
