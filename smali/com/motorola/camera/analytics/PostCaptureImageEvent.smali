.class public Lcom/motorola/camera/analytics/PostCaptureImageEvent;
.super Lcom/motorola/camera/analytics/PostCaptureEvent;
.source "SourceFile"


# static fields
.field public static final MANUFACTURE_DATE_FORMATS:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "ddMMMyyyy"

    const-string v1, "yyyy/MM/dd"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureImageEvent;->MANUFACTURE_DATE_FORMATS:[Ljava/lang/String;

    return-void
.end method

.method public static populateActivePhotosData(Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V
    .locals 6

    iget-object p1, p1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v1, "MOTION_PHOTOS_ALLOWED"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MOTION_PHOTOS:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sget-object v2, Lcom/motorola/camera/analytics/PostCaptureEvent;->MOTIONPHOTO_STATUS:Landroidx/core/text/BidiFormatter$Builder;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Landroidx/core/text/BidiFormatter$Builder;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    if-eqz v0, :cond_3

    sget-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->MOTIONPHOTO_SAVED:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    iget-object v2, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v3, "ANALYTICS_MOTION_SAVED"

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v0, "ANALYTICS_MOTION_VIDDUR"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-nez v1, :cond_3

    const-string v0, "MTNVIDDUR"

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_3
    return-void
.end method

.method public static processExifData(Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V
    .locals 9

    iget-object v0, p1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const-string v2, "ExposureMode"

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttributeInt(ILjava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    iget-object p1, p1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    if-ne v2, v4, :cond_1

    const-string v5, "DIS"

    goto :goto_0

    :cond_1
    if-ne v2, v3, :cond_2

    const-string v5, "HDR"

    goto :goto_0

    :cond_2
    iget v5, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    iget-object v6, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    iget-object v7, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    iget-object v8, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    invoke-static {v5, v6, v7, v8}, Lcom/motorola/camera/analytics/LogEvent;->getCaptureMode(ILcom/motorola/camera/ShotType;Lcom/motorola/camera/settings/CameraType;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    if-eq v2, v4, :cond_3

    if-ne v2, v3, :cond_4

    :cond_3
    const-string v2, "MODE"

    invoke-virtual {p0, v2, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v2

    iget v3, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSessionId:I

    int-to-long v6, v3

    iget v3, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    invoke-virtual {v2, v6, v7, v3, v5}, Lcom/motorola/camera/analytics/AnalyticsHelper;->setShotToShotMode(JILjava/lang/String;)V

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v2, "ANALYTICS_SWFLASHFIREDONAUTO"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const-string v2, "FLASHMODE"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "auto"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    if-nez p1, :cond_6

    const-string p1, "Flash"

    invoke-virtual {v0, v1, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttributeInt(ILjava/lang/String;)I

    move-result p1

    const/16 v2, 0x19

    if-ne p1, v2, :cond_7

    move v1, v4

    goto :goto_1

    :cond_6
    move v1, p1

    :cond_7
    :goto_1
    sget-object p1, Lcom/motorola/camera/analytics/PostCaptureEvent;->FLASHFIREDONAUTO:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    const/4 p1, -0x1

    const-string v1, "LightSource"

    invoke-virtual {v0, p1, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttributeInt(ILjava/lang/String;)I

    move-result v0

    if-eq v0, p1, :cond_8

    sget-object p1, Lcom/motorola/camera/analytics/PostCaptureEvent;->LIGHTSOURCE:Landroidx/core/text/BidiFormatter$Builder;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroidx/core/text/BidiFormatter$Builder;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    :cond_8
    return-void
.end method

.method public static processMakerNotes(Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V
    .locals 8

    iget-object v0, p1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    iget-object v1, p1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    check-cast v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget v2, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraFacingId:I

    if-nez v2, :cond_2

    iget v1, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    if-eqz v1, :cond_1

    const/16 v2, 0xb4

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMotoMakerNotes:Lcom/motorola/camera/photometadata/MotMakerNotesParser;

    sget-object v2, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_FD_FACE_BOUNDRY_HEIGHT:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMotoMakerNotes:Lcom/motorola/camera/photometadata/MotMakerNotesParser;

    sget-object v2, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_FD_FACE_BOUNDRY_WIDTH:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    :goto_1
    invoke-virtual {v1, v2}, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->get(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FACESIZE"

    invoke-virtual {p0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-object v1, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_LUX:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    const/16 v4, 0x3b

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_6

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    if-nez v1, :cond_4

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    cmpl-double v4, v6, v4

    if-nez v4, :cond_5

    move v4, v2

    goto :goto_2

    :cond_5
    move v4, v3

    :goto_2
    if-nez v4, :cond_6

    const-string v4, "LUX"

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {p0, v4, v5, v6}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    :goto_3
    iget-object v0, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMotoMakerNotes:Lcom/motorola/camera/photometadata/MotMakerNotesParser;

    sget-object v1, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_AF_STATE:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->get(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->AF_STATE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_8
    :goto_4
    move-object v0, v1

    :goto_5
    if-eqz v0, :cond_9

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :try_start_1
    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_9
    if-eqz v1, :cond_a

    const-string v0, "FOCDIST"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_a

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    :cond_a
    iget-object p1, p1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v0, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_OTP_MANUFACTURE_ID:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NS"

    if-nez v0, :cond_b

    goto :goto_6

    :cond_b
    sget-object v2, Lcom/motorola/camera/photometadata/PhotoMetadata;->STRING_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_7

    :cond_c
    :goto_6
    move-object v0, v1

    :goto_7
    const-string v2, "MANFCTID"

    invoke-virtual {p0, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/analytics/PostCaptureImageEvent;->MANUFACTURE_DATE_FORMATS:[Ljava/lang/String;

    move v2, v3

    :goto_8
    const/4 v4, 0x2

    if-ge v2, v4, :cond_f

    aget-object v4, v0, v2

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_OTP_MANUFACTURE_DATE:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_d

    goto :goto_9

    :cond_d
    :try_start_2
    new-instance v6, Ljava/text/SimpleDateFormat;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v6, v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v6, v3}, Ljava/text/DateFormat;->setLenient(Z)V

    invoke-virtual {v6, v5}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_a

    :catch_2
    :goto_9
    move-object v4, v1

    :goto_a
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    goto :goto_b

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_f
    move-object v4, v1

    :goto_b
    const-string v0, "MANFCTDATE"

    invoke-virtual {p0, v0, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_VERSION:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_10

    goto :goto_c

    :cond_10
    sget-object v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->STRING_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_11

    move-object v1, p1

    :cond_11
    :goto_c
    const-string p1, "CALVER"

    invoke-virtual {p0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static processTouchDownEvent(Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V
    .locals 4

    iget-object v0, p1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->DOWN_CNT:Landroidx/core/text/BidiFormatter$Builder;

    iget-object p1, p1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget v1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mDownCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroidx/core/text/BidiFormatter$Builder;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    iget-wide v0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mDownDuration:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_0
    const-string v1, "D_DUR"

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    sget-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->DOWN_JOB:Landroidx/core/text/BidiFormatter$Builder;

    iget p1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mDownJobs:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroidx/core/text/BidiFormatter$Builder;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getHdrMode(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/lang/String;
    .locals 2

    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode(I)Z

    move-result v0

    const-string v1, "off"

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const-string v1, "Unexpected hdrMode value: "

    invoke-static {v1, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/analytics/LogEvent;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p1

    goto :goto_0

    :cond_1
    const-string v1, "auto"

    goto :goto_0

    :cond_2
    const-string v1, "on"

    :cond_3
    :goto_0
    return-object v1
.end method

.method public final populateOptionalImageValues(Landroidx/work/impl/StartStopTokens;Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget-object v3, v2, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v4, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    const-string v5, "REARCALIBRATION"

    invoke-virtual {v0, v5}, Landroidx/work/impl/StartStopTokens;->containsKey(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    iget-object v5, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    sget-object v8, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-ne v5, v8, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    const-string v8, "FRONTCALIBRATION"

    invoke-virtual {v0, v8}, Landroidx/work/impl/StartStopTokens;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    sget-object v9, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-ne v8, v9, :cond_1

    move v8, v6

    goto :goto_1

    :cond_1
    move v8, v7

    :goto_1
    if-nez v5, :cond_2

    if-eqz v8, :cond_3

    :cond_2
    const-string v5, "MANFCTID"

    const-string v8, "NS"

    invoke-virtual {v1, v5, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "MANFCTDATE"

    invoke-virtual {v1, v5, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "CALVER"

    invoke-virtual {v1, v5, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v5, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v8, "TIMER_CHECKIN"

    invoke-virtual {v5, v8, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_4

    sget-object v8, Lcom/motorola/camera/analytics/PostCaptureEvent;->TIMERVAL:Landroidx/core/text/BidiFormatter$Builder;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v1, v5}, Landroidx/core/text/BidiFormatter$Builder;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    :cond_4
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v8, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode(I)Z

    move-result v9

    const/4 v10, -0x1

    const-wide/16 v11, 0x0

    if-eqz v9, :cond_c

    iget-object v9, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    move-object/from16 v13, p0

    invoke-virtual {v13, v3}, Lcom/motorola/camera/analytics/PostCaptureEvent;->getFocusMode(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)I

    move-result v13

    if-ne v6, v13, :cond_6

    iget-object v13, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraId:Ljava/lang/String;

    sget-object v14, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v13, v14}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    if-eqz v13, :cond_6

    sget-object v14, Lcom/motorola/camera/settings/SettingsManager;->MANUAL_FOCUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v14, v14, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v9, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v15

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-eqz v15, :cond_5

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v15

    sub-float/2addr v15, v14

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    div-float/2addr v15, v13

    const/high16 v13, 0x42c80000    # 100.0f

    mul-float/2addr v15, v13

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v13

    goto :goto_2

    :cond_5
    const/16 v13, 0x64

    :goto_2
    sget-object v14, Lcom/motorola/camera/analytics/PostCaptureEvent;->MANUALFOCUS:Landroidx/core/text/BidiFormatter$Builder;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v14, v1, v13}, Landroidx/core/text/BidiFormatter$Builder;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    :cond_6
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->WHITE_BALANCE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v13, v13, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v9, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v14, Lcom/motorola/camera/settings/SettingsManager;->WHITE_BALANCE_KELVIN:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v14, v14, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v9, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    if-eqz v13, :cond_7

    if-eqz v14, :cond_7

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_7

    sget-object v13, Lcom/motorola/camera/analytics/PostCaptureEvent;->WHITEBALANCE:Landroidx/core/text/BidiFormatter$Builder;

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v1, v14}, Landroidx/core/text/BidiFormatter$Builder;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    :cond_7
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->EXPOSURE_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v13, v13, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v9, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    long-to-double v13, v13

    const-wide v15, 0x412e848000000000L    # 1000000.0

    div-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    if-nez v13, :cond_8

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    :cond_8
    if-eqz v13, :cond_9

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    cmpl-double v14, v14, v16

    if-nez v14, :cond_9

    move v14, v6

    goto :goto_3

    :cond_9
    move v14, v7

    :goto_3
    if-nez v14, :cond_a

    const-string v14, "XPSRTIME"

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v1, v14, v6, v7}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    :cond_a
    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->ISO:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v6, v6, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_b

    move v6, v10

    :cond_b
    sget-object v7, Lcom/motorola/camera/analytics/PostCaptureEvent;->ISOSPEED:Landroidx/core/text/BidiFormatter$Builder;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v1, v6}, Landroidx/core/text/BidiFormatter$Builder;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    :cond_c
    iget-object v6, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    iget-object v7, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraId:Ljava/lang/String;

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/motorola/camera/analytics/PostCaptureEvent;->getExposureCompensation(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Double;

    move-result-object v6

    if-nez v6, :cond_d

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    :cond_d
    if-eqz v6, :cond_e

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    cmpl-double v7, v11, v13

    if-nez v7, :cond_e

    const/4 v7, 0x1

    goto :goto_4

    :cond_e
    const/4 v7, 0x0

    :goto_4
    if-nez v7, :cond_f

    const-string v7, "XPSR"

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    invoke-virtual {v1, v7, v11, v12}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    :cond_f
    sget-object v6, Lcom/motorola/camera/analytics/PostCaptureEvent;->FILE_FORMAT:Landroidx/core/text/BidiFormatter$Builder;

    move-object v7, v3

    check-cast v7, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-boolean v9, v7, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mRaw:Z

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v1, v9}, Landroidx/core/text/BidiFormatter$Builder;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    iget-object v6, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v9, "ANALYTICS_PHOTO_SOLID_TIME"

    invoke-virtual {v6, v9}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    iget-object v6, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v6, v9}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-wide/16 v11, 0x0

    if-nez v6, :cond_10

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    :cond_10
    if-eqz v6, :cond_11

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v9, v11, v13

    if-nez v9, :cond_11

    const/4 v9, 0x1

    goto :goto_5

    :cond_11
    const/4 v9, 0x0

    :goto_5
    if-nez v9, :cond_12

    const-string v9, "PHTOSLD"

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v1, v9, v11, v12}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_12
    const/16 v6, 0x27

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    sget-object v5, Lcom/motorola/camera/analytics/PostCaptureEvent;->DOC_SCAN_TOAST:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    const-string v6, "ANALYTICS_DOC_SCAN_TOAST"

    invoke-virtual {v0, v6}, Landroidx/work/impl/StartStopTokens;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    :cond_13
    sget-object v5, Lcom/motorola/camera/analytics/PostCaptureEvent;->LOW_LIGHT_SHOT:Landroidx/core/text/BidiFormatter$Builder;

    iget-object v6, v2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    invoke-virtual {v6}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiLLS()Z

    move-result v6

    if-nez v6, :cond_16

    iget-object v2, v2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mSnapType:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    sget-object v6, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->AI_LLS:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    if-ne v2, v6, :cond_14

    goto :goto_6

    :cond_14
    iget-object v2, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    iget-object v6, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    const/4 v9, 0x0

    invoke-static {v6, v9}, Lcom/motorola/camera/settings/SettingsManager;->getMcfSensorName(Lcom/motorola/camera/settings/CameraType;Z)Ljava/lang/String;

    move-result-object v6

    sget-object v11, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_ARCSOFT_AI_LOW_LIGHT_SELFIE_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v6, v11}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    iget-object v11, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v11, v9}, Lcom/motorola/camera/settings/SettingsManager;->getMcfSensorName(Lcom/motorola/camera/settings/CameraType;Z)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MOT_LOW_LIGHT_SELFIE_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v11, v12}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [I

    if-nez v6, :cond_15

    if-eqz v11, :cond_17

    :cond_15
    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_LOW_LIGHT_SELFIE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v6, v6, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    goto :goto_7

    :cond_16
    :goto_6
    const/4 v9, 0x0

    const/4 v10, 0x2

    :cond_17
    :goto_7
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroidx/core/text/BidiFormatter$Builder;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    iget-object v2, v7, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eqz v2, :cond_18

    sget-object v5, Lcom/motorola/camera/analytics/PostCaptureEvent;->MCF_SCENE_MODE:Landroidx/core/text/BidiFormatter$Builder;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroidx/core/text/BidiFormatter$Builder;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    :cond_18
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FRONT_MIRROR:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1a

    const-string v4, "IS_CLI_DISPLAY"

    invoke-virtual {v0, v4}, Landroidx/work/impl/StartStopTokens;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    iget v0, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraFacingId:I

    if-nez v0, :cond_1a

    :cond_19
    sget-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->SELFIE_PHOTO_MIRROR:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    :cond_1a
    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v2, Lcom/motorola/camera/AppFeatures$Feature;->CLI_MIRROR:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/16 v0, 0x2f

    if-ne v8, v0, :cond_1b

    const/4 v6, 0x1

    goto :goto_8

    :cond_1b
    move v6, v9

    :goto_8
    if-eqz v6, :cond_1c

    iget-object v0, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v2, "ANALYTICS_MIRROR_EFFECT_NAME"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    const-string v2, "MIREFFCT"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    sget-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->AUTO_ENHANCE_STATE:Landroidx/core/text/BidiFormatter$Builder;

    iget-object v2, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v3, "ANALYTICS_AUTO_ENHANCE_STATE"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/core/text/BidiFormatter$Builder;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    return-void
.end method

.method public postProcessData(Landroidx/work/impl/StartStopTokens;Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V
    .locals 3

    check-cast p3, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    if-eqz p3, :cond_5

    iget-object v0, p3, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    sget-object v2, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    if-eq v1, v2, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    sget-object v1, Lcom/motorola/camera/analytics/PostCaptureEvent;->FLASHFIREDONAUTO:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, p2, v2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    sget-object v1, Lcom/motorola/camera/analytics/PostCaptureEvent;->LIGHTSOURCE:Landroidx/core/text/BidiFormatter$Builder;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroidx/core/text/BidiFormatter$Builder;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    iget v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    const/16 v1, 0x29

    if-ne v0, v1, :cond_1

    invoke-static {p2, p3}, Lcom/motorola/camera/analytics/PostCaptureEvent;->populateDualCaptureData(Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/analytics/PostCaptureImageEvent;->populateOptionalImageValues(Landroidx/work/impl/StartStopTokens;Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    invoke-static {p2, p3}, Lcom/motorola/camera/analytics/PostCaptureImageEvent;->populateActivePhotosData(Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    invoke-static {p2, p3}, Lcom/motorola/camera/analytics/PostCaptureImageEvent;->processExifData(Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    iget-object p0, p3, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    if-eqz p0, :cond_4

    iget-object p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMotoMakerNotes:Lcom/motorola/camera/photometadata/MotMakerNotesParser;

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p2, p3}, Lcom/motorola/camera/analytics/PostCaptureImageEvent;->processMakerNotes(Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    invoke-static {p2, p3}, Lcom/motorola/camera/analytics/PostCaptureImageEvent;->processTouchDownEvent(Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_4
    :goto_1
    return-void

    :catch_0
    move-exception p0

    const-string p1, "PostCaptureImageEvent"

    const-string p2, "Exception in postProcessData"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_2
    return-void
.end method
