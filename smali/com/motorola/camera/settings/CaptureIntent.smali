.class public final Lcom/motorola/camera/settings/CaptureIntent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INTENT_INLINE:Landroid/content/Intent;


# instance fields
.field public final mCallingPackage:Ljava/lang/String;

.field public final mCaptureRequest:I

.field public final mExtras:Landroid/os/Bundle;

.field public final mIntent:Landroid/content/Intent;

.field public final mSecure:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "inline-data"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/settings/CaptureIntent;->INTENT_INLINE:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/motorola/camera/settings/CaptureIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 21

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/motorola/camera/settings/CaptureIntent;->mIntent:Landroid/content/Intent;

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/motorola/camera/settings/CaptureIntent;->mCallingPackage:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :goto_0
    iput-object v2, v0, Lcom/motorola/camera/settings/CaptureIntent;->mExtras:Landroid/os/Bundle;

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x3

    const/4 v8, 0x4

    const/4 v9, 0x5

    const/4 v10, 0x6

    const/4 v11, 0x7

    const/16 v12, 0x8

    const/16 v13, 0x9

    const/16 v14, 0xa

    const/16 v15, 0xb

    const/16 v16, 0xc

    const/16 v17, 0xd

    const/16 v18, 0xe

    const/16 v19, 0xf

    const/16 v20, -0x1

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v3, "motorola.camera.intent.action.DEPTH_CAPTURE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v20, 0x11

    goto/16 :goto_1

    :sswitch_1
    const-string v3, "motorola.camera.intent.action.SUPER_NIGHT_CAMERA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v20, 0x10

    goto/16 :goto_1

    :sswitch_2
    const-string v3, "motorola.camera.intent.action.SLIDE_SCAN"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_1

    :cond_4
    move/from16 v20, v19

    goto/16 :goto_1

    :sswitch_3
    const-string v3, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_1

    :cond_5
    move/from16 v20, v18

    goto/16 :goto_1

    :sswitch_4
    const-string v3, "motorola.camera.intent.action.CINEMAGRAPH_CAMERA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_1

    :cond_6
    move/from16 v20, v17

    goto/16 :goto_1

    :sswitch_5
    const-string v3, "motorola.camera.intent.action.QR_SCAN"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_1

    :cond_7
    move/from16 v20, v16

    goto/16 :goto_1

    :sswitch_6
    const-string v3, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_1

    :cond_8
    move/from16 v20, v15

    goto/16 :goto_1

    :sswitch_7
    const-string v3, "motorola.camera.intent.action.SLOW_MOTION_CAPTURE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_1

    :cond_9
    move/from16 v20, v14

    goto/16 :goto_1

    :sswitch_8
    const-string v3, "motorola.camera.intent.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_1

    :cond_a
    move/from16 v20, v13

    goto/16 :goto_1

    :sswitch_9
    const-string v3, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_1

    :cond_b
    move/from16 v20, v12

    goto/16 :goto_1

    :sswitch_a
    const-string v3, "motorola.camera.intent.action.DOC_SCAN"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_1

    :cond_c
    move/from16 v20, v11

    goto :goto_1

    :sswitch_b
    const-string v3, "motorola.camera.intent.action.DOC_SCAN_CAPTURE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_1

    :cond_d
    move/from16 v20, v10

    goto :goto_1

    :sswitch_c
    const-string v3, "motorola.camera.intent.action.MIRROR_CAPTURE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_1

    :cond_e
    move/from16 v20, v9

    goto :goto_1

    :sswitch_d
    const-string v3, "com.google.zxing.client.android.SCAN"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_1

    :cond_f
    move/from16 v20, v8

    goto :goto_1

    :sswitch_e
    const-string v3, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_1

    :cond_10
    move/from16 v20, v7

    goto :goto_1

    :sswitch_f
    const-string v3, "motorola.camera.intent.action.PHOTO_DUAL_CAPTURE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_1

    :cond_11
    move/from16 v20, v5

    goto :goto_1

    :sswitch_10
    const-string v3, "motorola.camera.intent.action.FRONT_CAMERA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_1

    :cond_12
    move/from16 v20, v6

    goto :goto_1

    :sswitch_11
    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_1

    :cond_13
    move/from16 v20, v4

    :goto_1
    packed-switch v20, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    move v4, v9

    goto :goto_3

    :pswitch_1
    move v4, v11

    goto :goto_3

    :pswitch_2
    move v4, v14

    goto :goto_3

    :pswitch_3
    move v4, v12

    goto :goto_3

    :pswitch_4
    move/from16 v4, v18

    goto :goto_3

    :pswitch_5
    move v4, v7

    goto :goto_3

    :pswitch_6
    move v4, v15

    goto :goto_3

    :goto_2
    :pswitch_7
    move v4, v5

    goto :goto_3

    :pswitch_8
    const-string v1, "com.google.assistant.extra.OPEN_IN_VIDEO_MODE"

    invoke-virtual {v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_2

    :pswitch_9
    move v4, v13

    goto :goto_3

    :pswitch_a
    move/from16 v4, v17

    goto :goto_3

    :pswitch_b
    move/from16 v4, v19

    goto :goto_3

    :pswitch_c
    move v4, v8

    goto :goto_3

    :pswitch_d
    move/from16 v4, v16

    goto :goto_3

    :pswitch_e
    move v4, v10

    goto :goto_3

    :pswitch_f
    move v4, v6

    .line 3
    :cond_14
    :goto_3
    iput v4, v0, Lcom/motorola/camera/settings/CaptureIntent;->mCaptureRequest:I

    .line 4
    invoke-static {}, Lcom/motorola/camera/utility/KeyguardHelper;->isSecureKeyGuardLocked()Z

    move-result v1

    .line 5
    iput-boolean v1, v0, Lcom/motorola/camera/settings/CaptureIntent;->mSecure:Z

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x74de9aed -> :sswitch_11
        -0x70a0e3b5 -> :sswitch_10
        -0x655fea60 -> :sswitch_f
        -0x62d863dd -> :sswitch_e
        -0x566ad1d3 -> :sswitch_d
        -0x3133272a -> :sswitch_c
        -0x23a34aa5 -> :sswitch_b
        -0x911908c -> :sswitch_a
        0x1cf71807 -> :sswitch_9
        0x1de85712 -> :sswitch_8
        0x257f716b -> :sswitch_7
        0x29c9b033 -> :sswitch_6
        0x31e881ab -> :sswitch_5
        0x335cf6f7 -> :sswitch_4
        0x43680478 -> :sswitch_3
        0x4d3e4a9b -> :sswitch_2
        0x543975e0 -> :sswitch_1
        0x7712455a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_f
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
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getExtraOutputFromIntent(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    const-string v1, "output"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/net/Uri;

    :cond_2
    return-object v0
.end method

.method public static isCTSMode(Landroid/content/Intent;)Z
    .locals 1

    invoke-static {p0}, Lcom/motorola/camera/settings/CaptureIntent;->getExtraOutputFromIntent(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".cts.fileprovider"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPhotoCaptureAction(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.motorola.action.STILL_IMAGE_CAMERA_SECURE_CLI"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.motorola.action.STILL_IMAGE_CAMERA_CLI"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "motorola.camera.intent.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "motorola.camera.intent.action.IMAGE_CAPTURE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "motorola.camera.intent.action.STILL_IMAGE_PREVIEW"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "motorola.camera.intent.action.STILL_IMAGE_PREVIEW_SECURE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public static isVideoCaptureAction(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "motorola.camera.intent.action.VIDEO_CAPTURE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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


# virtual methods
.method public final getMatchingCameraFacing(I)I
    .locals 6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/settings/CaptureIntent;->mIntent:Landroid/content/Intent;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.extra.IS_CLI_DISPLAY"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasCliCamera()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :cond_1
    const-string v0, "com.motorola.camera.LAUNCH_ON_FLIP_CHANGED"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x2

    iget v4, p0, Lcom/motorola/camera/settings/CaptureIntent;->mCaptureRequest:I

    if-eq v4, v0, :cond_c

    const/4 v0, 0x3

    if-eq v4, v0, :cond_c

    const/4 v5, 0x7

    if-eq v4, v5, :cond_c

    const/16 v5, 0x8

    if-eq v4, v5, :cond_c

    const/16 v5, 0x9

    if-eq v4, v5, :cond_c

    const/16 v5, 0xa

    if-eq v4, v5, :cond_c

    const/16 v5, 0xb

    if-eq v4, v5, :cond_c

    const/16 v5, 0xc

    if-eq v4, v5, :cond_c

    const/16 v5, 0xd

    if-eq v4, v5, :cond_c

    const/16 v5, 0xe

    if-eq v4, v5, :cond_c

    invoke-virtual {p0}, Lcom/motorola/camera/settings/CaptureIntent;->isServiceMode()Z

    move-result v5

    if-nez v5, :cond_c

    if-ne v4, v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v3

    :goto_1
    if-nez v0, :cond_c

    const/4 v0, 0x4

    if-ne v4, v0, :cond_4

    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v3

    :goto_2
    if-eqz v0, :cond_5

    goto :goto_6

    :cond_5
    const/4 v0, 0x5

    if-ne v4, v0, :cond_6

    return v2

    :cond_6
    const-string v0, "motorola.camera.intent.action.TAKE_SELFIE"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "motorola.camera.intent.action.FRONT_CAMERA"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/motorola/camera/settings/CaptureIntent;->mExtras:Landroid/os/Bundle;

    const-string v1, "android.intent.extra.USE_FRONT_CAMERA"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "com.google.assistant.extra.USE_FRONT_CAMERA"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasBackCamera()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v3}, Lcom/motorola/camera/settings/CaptureIntent;->isLauncherLaunch(Z)Z

    move-result p0

    if-eqz p0, :cond_8

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    goto :goto_5

    :cond_8
    invoke-static {p1, v3}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getModeSupportFacing(IZ)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v2, :cond_9

    goto :goto_4

    :cond_9
    return v2

    :cond_a
    :goto_3
    invoke-static {p1, v3}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getModeSupportFacing(IZ)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v2, :cond_b

    :goto_4
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    :goto_5
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_b
    return v3

    :cond_c
    :goto_6
    return v2
.end method

.method public final getMatchingMode()I
    .locals 12

    iget-object v0, p0, Lcom/motorola/camera/settings/CaptureIntent;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.IS_CLI_DISPLAY"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v4, "com.motorola.camera.LAUNCH_ON_FLIP_CHANGED"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const/16 v5, 0x28

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p0

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isCliAllowedMode(I)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    const/16 v4, 0x3e8

    if-ne p0, v4, :cond_19

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/motorola/camera/settings/CaptureIntent;->mCaptureRequest:I

    if-eqz v4, :cond_2

    if-ne v4, v8, :cond_4

    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/settings/CaptureIntent;->isVoiceAssistantCapture()Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_3
    :goto_0
    move p0, v2

    goto/16 :goto_5

    :cond_4
    if-ne v4, v8, :cond_5

    goto :goto_0

    :cond_5
    if-eq v4, v7, :cond_18

    if-ne v4, v6, :cond_6

    goto/16 :goto_4

    :cond_6
    const/4 v10, 0x5

    const/4 v11, 0x6

    if-ne v4, v10, :cond_8

    sget-object p0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v4, Lcom/motorola/camera/AppFeatures$Feature;->SINGLE_REAR_BOKEH:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {p0, v4}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/16 p0, 0x12

    goto/16 :goto_5

    :cond_7
    move p0, v11

    goto/16 :goto_5

    :cond_8
    const/4 v10, 0x7

    if-ne v4, v10, :cond_9

    const/16 p0, 0x18

    goto/16 :goto_5

    :cond_9
    const/16 v10, 0x8

    if-ne v4, v10, :cond_a

    const/16 p0, 0x13

    goto/16 :goto_5

    :cond_a
    const/16 v10, 0x9

    if-eq v4, v10, :cond_17

    const/16 v10, 0xd

    if-ne v4, v10, :cond_b

    goto/16 :goto_3

    :cond_b
    const/16 v10, 0xa

    if-ne v4, v10, :cond_c

    move p0, v5

    goto/16 :goto_5

    :cond_c
    if-ne v4, v11, :cond_d

    goto :goto_0

    :cond_d
    const/16 v10, 0xb

    if-ne v4, v10, :cond_e

    move p0, v6

    goto/16 :goto_5

    :cond_e
    const/16 v10, 0xc

    if-ne v4, v10, :cond_f

    const/16 p0, 0x29

    goto/16 :goto_5

    :cond_f
    const/16 v10, 0xf

    if-ne v4, v10, :cond_10

    const/16 p0, 0x2f

    goto :goto_5

    :cond_10
    invoke-virtual {p0}, Lcom/motorola/camera/settings/CaptureIntent;->isQuickDrawLaunch()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->getQuickViewDisplayMode(Z)I

    move-result p0

    goto :goto_5

    :cond_11
    const/16 v10, 0xe

    if-ne v4, v10, :cond_12

    goto :goto_0

    :cond_12
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->KEEP_LAST_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v10

    goto :goto_1

    :cond_13
    move v10, v2

    :goto_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCaptureIntent()Lcom/motorola/camera/settings/CaptureIntent;

    move-result-object v11

    iget-boolean v11, v11, Lcom/motorola/camera/settings/CaptureIntent;->mSecure:Z

    if-nez v11, :cond_16

    invoke-virtual {p0}, Lcom/motorola/camera/settings/CaptureIntent;->isServiceMode()Z

    move-result v11

    if-nez v11, :cond_16

    invoke-virtual {p0, v1}, Lcom/motorola/camera/settings/CaptureIntent;->isLauncherLaunch(Z)Z

    move-result p0

    if-eqz p0, :cond_15

    if-eqz v4, :cond_14

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p0

    goto :goto_2

    :cond_14
    move p0, v2

    :goto_2
    if-eqz v1, :cond_19

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isCliAllowedMode(I)Z

    move-result v4

    if-nez v4, :cond_19

    goto/16 :goto_0

    :cond_15
    if-nez v4, :cond_16

    goto/16 :goto_0

    :cond_16
    move p0, v10

    goto :goto_5

    :cond_17
    :goto_3
    const/16 p0, 0x27

    goto :goto_5

    :cond_18
    :goto_4
    move p0, v8

    :cond_19
    :goto_5
    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v4, v4, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v4, :cond_1b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideServiceMode()Z

    move-result v4

    if-eqz v4, :cond_1a

    new-array v4, v6, [Ljava/lang/Integer;

    aput-object v3, v4, v2

    aput-object v9, v4, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v7

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_6

    :cond_1a
    new-array v4, v7, [Ljava/lang/Integer;

    aput-object v3, v4, v2

    aput-object v9, v4, v8

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :goto_6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    invoke-static {p0, v2, v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getFallbackMode(ILjava/util/List;Z)I

    move-result p0

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v1, v1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v1, :cond_1b

    const-string v1, "android.intent.extra.IS_UNSUPPORTED_DESKTOP_MODE"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1b
    return p0
.end method

.method public final getOnLaunchAction()Lcom/motorola/camera/launch/OnLaunchAction;
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/settings/CaptureIntent;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const-string v1, "com.motorola.camera.LaunchAction"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.motorola.camera.LaunchLocSettingAction"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.motorola.camera.LaunchActionCli"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/motorola/camera/launch/OnLaunchAction;->NONE:Lcom/motorola/camera/launch/OnLaunchAction;

    return-object p0

    :cond_2
    :goto_1
    sget-object v0, Lcom/motorola/camera/launch/OnLaunchAction;->OPEN_LOCATION_SETTINGS:Lcom/motorola/camera/launch/OnLaunchAction;

    const-string v0, "intent"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v0, "motorola.camera.intent.action.IMAGE_CAPTURE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    sget-object p0, Lcom/motorola/camera/launch/OnLaunchAction;->CAPTURE:Lcom/motorola/camera/launch/OnLaunchAction;

    goto :goto_3

    :sswitch_1
    const-string v0, "motorola.camera.intent.action.VIDEO_CAPTURE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    sget-object p0, Lcom/motorola/camera/launch/OnLaunchAction;->VIDEO_CAPTURE:Lcom/motorola/camera/launch/OnLaunchAction;

    goto :goto_3

    :sswitch_2
    const-string v0, "motorola.camera.intent.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    sget-object p0, Lcom/motorola/camera/launch/OnLaunchAction;->CAPTURE_SECURE:Lcom/motorola/camera/launch/OnLaunchAction;

    goto :goto_3

    :sswitch_3
    const-string v0, "com.google.camera.action.LOCATION_SETTINGS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lcom/motorola/camera/launch/OnLaunchAction;->OPEN_LOCATION_SETTINGS:Lcom/motorola/camera/launch/OnLaunchAction;

    goto :goto_3

    :cond_6
    :goto_2
    sget-object p0, Lcom/motorola/camera/launch/OnLaunchAction;->NONE:Lcom/motorola/camera/launch/OnLaunchAction;

    :goto_3
    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7196404a -> :sswitch_3
        -0x1477b39c -> :sswitch_2
        0x1de85712 -> :sswitch_1
        0x7f400bf2 -> :sswitch_0
    .end sparse-switch
.end method

.method public final getTimerVoiceAssistant()I
    .locals 2

    const-string v0, "com.google.assistant.extra.TIMER_DURATION_SECONDS"

    const/4 v1, 0x3

    iget-object p0, p0, Lcom/motorola/camera/settings/CaptureIntent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "android.intent.extra.TIMER_DURATION_SECONDS"

    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/16 v0, 0x1e

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    mul-int/lit16 p0, p0, 0x3e8

    return p0
.end method

.method public final hasLaunchSource(Ljava/util/List;)Ljava/lang/Boolean;
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/settings/CaptureIntent;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/motorola/camera/settings/CaptureIntent;->mExtras:Landroid/os/Bundle;

    if-eqz p0, :cond_6

    const-string v0, "com.android.systemui.camera_launch_source"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    sget-boolean v1, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_4

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "flip_changed"

    goto :goto_1

    :cond_2
    const-string p0, "power_double_tap"

    goto :goto_1

    :cond_3
    const-string p0, "wiggle_gesture"

    goto :goto_1

    :cond_4
    instance-of p0, v1, Ljava/lang/String;

    if-eqz p0, :cond_5

    move-object p0, v1

    check-cast p0, Ljava/lang/String;

    goto :goto_1

    :cond_5
    :goto_0
    const-string p0, ""

    :goto_1
    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final isGeoAllowed()Z
    .locals 5

    invoke-virtual {p0}, Lcom/motorola/camera/settings/CaptureIntent;->isServiceMode()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    iget-object p0, p0, Lcom/motorola/camera/settings/CaptureIntent;->mCallingPackage:Ljava/lang/String;

    if-nez p0, :cond_1

    return v0

    :cond_1
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v2, v3, p0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v3, v4, p0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz v2, :cond_3

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    :cond_3
    :goto_0
    return v1
.end method

.method public final isGoogleAssistantLaunch()Z
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/settings/CaptureIntent;->mExtras:Landroid/os/Bundle;

    const-string v0, "android.intent.extra.REFERRER_NAME"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v0, "com.google.android.googlequicksearchbox"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isLauncherLaunch(Z)Z
    .locals 2

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/motorola/camera/settings/CaptureIntent;->mIntent:Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string p1, "com.android.systemui.camera_launch_source"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final isMirrorMode()Ljava/lang/Boolean;
    .locals 2

    const-string v0, "android.intent.extra.EXTRA_IS_MIRROR_MODE"

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/motorola/camera/settings/CaptureIntent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final isQuickDrawLaunch()Ljava/lang/Boolean;
    .locals 2

    const-string v0, "wiggle_gesture"

    const-string v1, "power_double_tap"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/settings/CaptureIntent;->hasLaunchSource(Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final isServiceMode()Z
    .locals 1

    iget p0, p0, Lcom/motorola/camera/settings/CaptureIntent;->mCaptureRequest:I

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/16 v0, 0xb

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0xe

    if-eq p0, v0, :cond_0

    const/16 v0, 0xf

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isVoiceAssistantCapture()Z
    .locals 3

    invoke-virtual {p0}, Lcom/motorola/camera/settings/CaptureIntent;->getOnLaunchAction()Lcom/motorola/camera/launch/OnLaunchAction;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/launch/OnLaunchAction;->CAPTURE:Lcom/motorola/camera/launch/OnLaunchAction;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/motorola/camera/launch/OnLaunchAction;->CAPTURE_SECURE:Lcom/motorola/camera/launch/OnLaunchAction;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/motorola/camera/launch/OnLaunchAction;->VIDEO_CAPTURE:Lcom/motorola/camera/launch/OnLaunchAction;

    if-ne v0, v1, :cond_3

    :cond_0
    const-string v0, "android.intent.extra.CAMERA_OPEN_ONLY"

    iget-object p0, p0, Lcom/motorola/camera/settings/CaptureIntent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    const-string v0, "com.google.assistant.extra.CAMERA_OPEN_ONLY"

    invoke-virtual {p0, v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move p0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move p0, v1

    :goto_1
    if-nez p0, :cond_3

    move v2, v1

    :cond_3
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CaptureIntent{mIntent="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/settings/CaptureIntent;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCallingPackage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/settings/CaptureIntent;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mExtras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/settings/CaptureIntent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCaptureRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/settings/CaptureIntent;->mCaptureRequest:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSecure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/motorola/camera/settings/CaptureIntent;->mSecure:Z

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
