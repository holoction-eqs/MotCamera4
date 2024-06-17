.class public final Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static mDebugReportDisplayStrings:Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;


# instance fields
.field public final mColdStartStringMap:Ljava/util/HashMap;

.field public final mTranslateObjectMap:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;->mColdStartStringMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;->mTranslateObjectMap:Ljava/util/HashMap;

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v4, 0x7f1200b2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const v4, 0x7f12060d

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v3, 0x7f1201c3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, p0, v3, v4, v4}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;ZZ)V

    const-string v3, "HAL_FOCUS_CALLBACK"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v3, 0x7f1201c4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v3, v4, v4}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;ZZ)V

    const-string v3, "HAL_GET_PARAMS"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v3, 0x7f1203a6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v3, v4, v4}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;ZZ)V

    const-string v3, "HAL_SET_PARAMS"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v3, 0x7f120481

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v3, v4, v4}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;ZZ)V

    const-string v3, "HAL_SHUTTER_CALLBACK"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v3, 0x7f12020c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v3, v4, v4}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;ZZ)V

    const-string v3, "HAL_PICTURE_CALLBACK_JPEG"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const-string v3, "Panorama save time"

    invoke-direct {v0, p0, v3, v4, v4}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;ZZ)V

    const-string v3, "PANORAMA_SAVE"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v3, 0x7f1202ae

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-direct {v0, p0, v3, v5, v4}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;ZZ)V

    const-string v3, "MR_STOP"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$ShotToShotTranslateObject;

    const v3, 0x7f12047f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$ShotToShotTranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;)V

    const-string v3, "SHOT_TO_SHOT_O"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$ShotToShotTranslateObject;

    const v3, 0x7f120480

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$ShotToShotTranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;)V

    const-string v3, "SHOT_TO_SHOT_UI_O"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$ShotToShotTranslateObject;

    const v3, 0x7f120482

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$ShotToShotTranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;)V

    const-string v3, "SHUTTER_LAG_O"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v3, 0x7f1204b1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v3, v4, v4}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;ZZ)V

    const-string v3, "START_PREVIEW"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v3, 0x7f1204b3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v3, v4, v5}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;ZZ)V

    const-string v3, "START_TO_HAL_OPEN"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v3, 0x7f1204b2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v3, v4, v4}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;ZZ)V

    const-string v3, "STARTUP_PREVIEW_FRAME_O"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f12009a

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v7, 0x7f120581

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v3, v5, v4}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;ZZ)V

    const-string v3, "TOGGLE_CAMERA_O"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v11, 0x1

    move-object v8, v0

    move-object v9, p0

    invoke-direct/range {v8 .. v13}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;ZZI)V

    const-string v3, "TOGGLE_MODE_O"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v3, 0x7f120098

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v3, v4, v5}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;ZZ)V

    const-string v3, "TOTAL_STARTUP_O"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v3, 0x7f120099

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v3, v4, v5}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;ZZ)V

    const-string v3, "TOTAL_STARTUP_W_CAF_O"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f12060c

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, p0, v0, v5, v4}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;ZZ)V

    invoke-virtual {v1, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f1205fb

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, p0, v0, v5, v4}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;ZZ)V

    invoke-virtual {v1, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f1204a9

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$ShotToShotTranslateObject;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, p0, v0}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$ShotToShotTranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f120302

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, p0, v0, v5, v4}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;ZZ)V

    invoke-virtual {v1, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f12031f

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, p0, v0, v4, v4}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;ZZ)V

    invoke-virtual {v1, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f1201c6

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, p0, v0, v4, v4}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;ZZ)V

    invoke-virtual {v1, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v3, 0x7f1205f4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v3, v5, v4}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;ZZ)V

    const-string v3, "VIDEO_COMPLETION"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v3, 0x7f120300

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v3, v5, v4}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;ZZ)V

    const-string v3, "MULTI_SHOT_TO_SHOT"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v3, 0x7f1202fe

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v3, v5, v4}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;ZZ)V

    const-string v3, "MULTI_SHOT_AVG"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v3, 0x7f1202ff

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v3, v5, v4}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;ZZ)V

    const-string v3, "MULTI_SHOT_COUNT"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v3, 0x7f120036

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;ZZI)V

    const-string v3, "TOTAL_CAPTURE_TIME_O"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v3, 0x7f120039

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    move-object v7, v0

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;ZZI)V

    const-string p0, "AUTO_ENHANCE_PROCESSING_TIME_O"

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
