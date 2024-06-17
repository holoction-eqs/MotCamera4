.class public Lcom/motorola/camera/provider/photos/PhotosProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field public static final FILE_NAME_PROJECTION:[Ljava/lang/String;

.field public static final TYPE_ID_PROJECTION:[Ljava/lang/String;

.field public static final mLargeKindFiles:Ljava/util/Map;

.field public static final mProcessingFiles:Ljava/util/Map;

.field public static final sAccessMap:Ljava/util/Map;

.field public static sHandler:Landroid/os/Handler;

.field public static final sTemporarySnapshots:Ljava/util/Map;


# instance fields
.field public mAuthority:Ljava/lang/String;

.field public mTrustedPartners:Lcom/motorola/camera/provider/photos/TrustedPartners;

.field public mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/provider/photos/PhotosProvider;->sTemporarySnapshots:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/provider/photos/PhotosProvider;->sAccessMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mProcessingFiles:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mLargeKindFiles:Ljava/util/Map;

    const-string v0, "special_type_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/provider/photos/PhotosProvider;->TYPE_ID_PROJECTION:[Ljava/lang/String;

    const-string v0, "_display_name"

    const-string v1, "relative_path"

    const-string v2, "_id"

    const-string v3, "volume_name"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/provider/photos/PhotosProvider;->FILE_NAME_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static addProcessingRow(Lcom/motorola/camera/CameraData;Landroid/database/MatrixCursor;)V
    .locals 9

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getDateTaken()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    if-nez v4, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    const-string v4, "USE_EXTENDED_TIMEOUT"

    invoke-virtual {p0, v4, v6}, Landroidx/work/impl/StartStopTokens;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move p0, v6

    goto :goto_2

    :cond_2
    :goto_1
    move p0, v5

    :goto_2
    if-eqz p0, :cond_3

    const/16 p0, 0x3c

    goto :goto_3

    :cond_3
    move p0, v5

    :goto_3
    mul-int/lit16 p0, p0, 0x7530

    int-to-long v7, p0

    cmp-long p0, v2, v7

    if-lez p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Processing timeout, removing "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PhotosProvider"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    new-instance p1, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, v6, v0, v1}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;IJ)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/saving/SaveImageService;->addSaveRunnable(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_4
    sget-object p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Unknown:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p0, v0, v1, v2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_5
    :goto_4
    return-void
.end method

.method public static varargs checkFileMode(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Unsupported mode: %s, expected: %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "PhotosProvider"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static detectSpecialTypeImage(Ljava/lang/String;Ljava/lang/String;)Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;
    .locals 12

    invoke-static {p0}, Lcom/motorola/camera/provider/photos/PhotosProviderUtils;->getFileNameFromFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "_display_name"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v3}, Lcom/motorola/camera/provider/photos/PhotosProvider;->queryFilesOnVolume(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    sget-object p1, Lcom/motorola/camera/provider/photos/PhotosProviderUtils;->sOriginalShotPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->BEST_SHOT:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    iget-object v7, v7, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->mSuffix:Ljava/lang/String;

    sget-object v8, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->COMP_SHOT:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    iget-object v8, v8, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->mSuffix:Ljava/lang/String;

    sget-object v9, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->AI_LLS:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    iget-object v9, v9, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->mSuffix:Ljava/lang/String;

    sget-object v10, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->AI_IST:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    iget-object v10, v10, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->mSuffix:Ljava/lang/String;

    sget-object v11, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->AI_CUD:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    iget-object v11, v11, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->mSuffix:Ljava/lang/String;

    filled-new-array {v7, v8, v9, v10, v11}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v0, p1, v7, v6}, Lcom/motorola/camera/provider/photos/PhotosProviderUtils;->hasAssociateShotWithSuffix(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    goto :goto_1

    :cond_2
    move p1, v5

    :goto_1
    if-eqz p1, :cond_3

    sget-object p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->OriginalType:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    return-object p0

    :cond_3
    sget-object p1, Lcom/motorola/camera/provider/photos/PhotosProviderUtils;->sBestShotPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v0, p1, v6, v7}, Lcom/motorola/camera/provider/photos/PhotosProviderUtils;->hasAssociateShotWithSuffix(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    goto :goto_2

    :cond_4
    move p1, v5

    :goto_2
    if-eqz p1, :cond_5

    sget-object p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->BestShotType:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    return-object p0

    :cond_5
    sget-object p1, Lcom/motorola/camera/provider/photos/PhotosProviderUtils;->sCompositionShotPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v0, p1, v6, v7}, Lcom/motorola/camera/provider/photos/PhotosProviderUtils;->hasAssociateShotWithSuffix(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    goto :goto_3

    :cond_6
    move p1, v5

    :goto_3
    if-eqz p1, :cond_7

    sget-object p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Composition:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    return-object p0

    :cond_7
    invoke-static {p0}, Lcom/motorola/camera/provider/photos/PhotosProviderUtils;->getFileNameFromFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_8

    const-string v7, "_PORTRAIT"

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    move p1, v0

    goto :goto_4

    :cond_8
    move p1, v5

    :goto_4
    if-eqz p1, :cond_9

    sget-object p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Portrait:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    return-object p0

    :cond_9
    invoke-static {p0}, Lcom/motorola/camera/provider/photos/PhotosProviderUtils;->getFileNameFromFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    const-string v7, "_LAYER"

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    move p1, v0

    goto :goto_5

    :cond_a
    move p1, v5

    :goto_5
    if-eqz p1, :cond_b

    sget-object p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Layer:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    return-object p0

    :cond_b
    invoke-static {p0}, Lcom/motorola/camera/provider/photos/PhotosProviderUtils;->getFileNameFromFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    const-string v7, "_AI"

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    move p1, v0

    goto :goto_6

    :cond_c
    move p1, v5

    :goto_6
    if-eqz p1, :cond_d

    sget-object p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->LowLightAI:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    return-object p0

    :cond_d
    invoke-static {p0}, Lcom/motorola/camera/provider/photos/PhotosProviderUtils;->getFileNameFromFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_e

    const-string v7, "_DOC.jpg"

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_e

    move p1, v0

    goto :goto_7

    :cond_e
    move p1, v5

    :goto_7
    if-eqz p1, :cond_f

    sget-object p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Doc:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    return-object p0

    :cond_f
    invoke-static {p0}, Lcom/motorola/camera/provider/photos/PhotosProviderUtils;->getFileNameFromFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_10

    const-string v7, "_IS"

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_10

    move p1, v0

    goto :goto_8

    :cond_10
    move p1, v5

    :goto_8
    if-eqz p1, :cond_11

    sget-object p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->ImageStabilizationAI:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    return-object p0

    :cond_11
    sget-object p1, Lcom/motorola/camera/provider/photos/PhotosProviderUtils;->sCudShotPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-virtual {p1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v4, p1, v6, v2}, Lcom/motorola/camera/provider/photos/PhotosProviderUtils;->hasAssociateShotWithSuffix(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    goto :goto_9

    :cond_12
    move p1, v5

    :goto_9
    if-eqz p1, :cond_13

    sget-object p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->CudAI:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    return-object p0

    :cond_13
    invoke-static {p0}, Lcom/motorola/camera/provider/photos/PhotosProviderUtils;->getFileNameFromFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_14

    const-string p1, "_AE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_14

    move v5, v0

    :cond_14
    if-eqz v5, :cond_15

    sget-object p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->AutoEnhance:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    return-object p0

    :cond_15
    sget-object p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->None:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    return-object p0
.end method

.method public static getFileUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v2, 0x7f12038d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getLargeKindThumbnail(Lcom/motorola/camera/CameraData;)Landroid/graphics/Bitmap;
    .locals 7

    const-string v0, "PhotosProvider"

    const-string v1, "Unable to delete file: "

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    invoke-static {p0}, Lcom/motorola/camera/provider/photos/PhotosProvider;->getLargeKindThumbnailKey(Lcom/motorola/camera/CameraData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object p0

    const/4 v3, 0x0

    if-eqz p0, :cond_1

    iget p0, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/provider/photos/PhotosProvider;->sTemporarySnapshots:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v5, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    if-eqz p0, :cond_1

    iget-object v4, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v4, :cond_0

    :try_start_0
    check-cast v4, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_1

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v2, v0, v3}, Lcom/motorola/camera/provider/photos/PhotosProvider;->updateLargeKindThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0

    :cond_1
    sget-object p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mLargeKindFiles:Ljava/util/Map;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/provider/photos/PhotosProvider$ProcessingThumbnail;

    const/4 v0, 0x0

    const/high16 v1, 0x10000000

    if-nez p0, :cond_3

    :try_start_1
    invoke-static {}, Lcom/motorola/camera/storage/StorageUtils;->getThumbnailDirectory()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_4

    array-length v4, p0

    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v5, p0, v3

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v5, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$ProcessingThumbnail;->mThumbnailFile:Ljava/io/File;

    invoke-static {p0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    :cond_4
    move-object p0, v0

    :goto_2
    if-nez p0, :cond_5

    return-object v0

    :cond_5
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-static {v1, v0, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return-object v0
.end method

.method public static getLargeKindThumbnailKey(Lcom/motorola/camera/CameraData;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getDateTaken()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    const-string v1, "DATE_MODIFIED"

    invoke-virtual {p0, v1}, Landroidx/work/impl/StartStopTokens;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getProcessingUri(Ljava/lang/Long;)Landroid/net/Uri;
    .locals 3

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12038d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "processing"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getStabilizationUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12038d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "stabilize"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static queryFilesOnVolume(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4

    sget-object v0, Lcom/motorola/camera/provider/photos/PhotosProviderUtils;->sPhotoShotPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v2

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "android:query-arg-sql-selection"

    const-string v3, "_display_name LIKE ?"

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "%"

    invoke-static {v2, p1, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v2, "android:query-arg-sql-selection-args"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string p1, "android:query-arg-match-pending"

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/storage/MediaStoreClient;->MEDIA_TYPES:Ljava/util/List;

    const-string p1, "uri"

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p2, v0}, Lcom/motorola/camera/storage/MediaStoreClient;->queryOrNull$default(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static queryProcessing(J)Landroid/database/MatrixCursor;
    .locals 9

    new-instance v0, Landroid/database/MatrixCursor;

    const-string v1, "special_type_id"

    const-string v2, "media_store_id"

    const-string v3, "progress_status"

    const-string v4, "progress_percentage"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/CameraApp;->waitForInstance()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-wide/16 v1, -0x1

    cmp-long v1, p0, v1

    if-nez v1, :cond_1

    sget-object p0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v1, p0, Lcom/motorola/camera/saving/SaveImageService;->mProcessingRecords:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    new-instance p1, Ljava/util/LinkedList;

    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService;->mProcessingRecords:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/CameraData;

    invoke-static {p1, v0}, Lcom/motorola/camera/provider/photos/PhotosProvider;->addProcessingRow(Lcom/motorola/camera/CameraData;Landroid/database/MatrixCursor;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    invoke-static {p0, p1}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingCameraData(J)Lcom/motorola/camera/CameraData;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/motorola/camera/provider/photos/PhotosProvider;->addProcessingRow(Lcom/motorola/camera/CameraData;Landroid/database/MatrixCursor;)V

    :cond_2
    sget-object p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mProcessingFiles:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Long;

    invoke-interface {p1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Long;

    array-length v2, p1

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_7

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingCameraData(J)Lcom/motorola/camera/CameraData;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    move v5, v6

    goto :goto_2

    :cond_3
    move v5, v1

    :goto_2
    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/provider/photos/PhotosProvider$ProcessingThumbnail;

    if-nez v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "No processing thumbnail found for: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PhotosProvider"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    iget-boolean v7, v5, Lcom/motorola/camera/provider/photos/PhotosProvider$ProcessingThumbnail;->mScheduledForRemoval:Z

    if-nez v7, :cond_6

    iput-boolean v6, v5, Lcom/motorola/camera/provider/photos/PhotosProvider$ProcessingThumbnail;->mScheduledForRemoval:Z

    sget-object v6, Lcom/motorola/camera/provider/photos/PhotosProvider;->sHandler:Landroid/os/Handler;

    new-instance v7, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;

    const/16 v8, 0x19

    invoke-direct {v7, v8, v5, v4}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v6, v7, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    return-object v0
.end method

.method public static queryTypeFromDb(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;
    .locals 9

    sget-object v0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Unknown:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    const-string v2, "special_types_mapper"

    sget-object v3, Lcom/motorola/camera/provider/photos/PhotosProvider;->TYPE_ID_PROJECTION:[Ljava/lang/String;

    const-string v4, "media_store_id=?"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "special_type_id"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mTypeMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
.end method

.method public static revokeAccess(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/provider/photos/PhotosProvider;->sAccessMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static saveThumbnailToFile(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Z)Ljava/io/File;
    .locals 7

    const-string v0, "THUMBNAIL_"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/motorola/camera/saving/FileName;

    sget-object v3, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Lcom/motorola/camera/saving/FileName;-><init>(Lcom/motorola/camera/ShotType;J)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/motorola/camera/saving/FileName;->suffix(Ljava/lang/String;)Lcom/motorola/camera/saving/FileName;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v2}, Lcom/motorola/camera/storage/StorageUtils;->createThumbnailFile(Lcom/motorola/camera/saving/FileName;)Ljava/io/File;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lcom/motorola/camera/storage/StorageUtils;->createTemporaryFile(Lcom/motorola/camera/saving/FileName;)Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getThumbnailJpegQuality()I

    move-result v2

    invoke-virtual {p2, v1, v2, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p4, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    invoke-static {p1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return-object p0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v6, v1

    move-object v1, p1

    move-object p1, v6

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    move-object p1, v1

    move-object v1, p0

    move-object p0, p1

    :goto_1
    :try_start_3
    const-string v2, "PhotosProvider"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {p0}, Lcom/motorola/camera/storage/StorageUtils;->deleteThumbnailFile(Ljava/io/File;)V

    goto :goto_2

    :cond_2
    invoke-static {p0}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    :goto_2
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    move-object v1, p1

    :goto_3
    if-eqz p4, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static updateLargeKindThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 7

    sget-object v0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mLargeKindFiles:Ljava/util/Map;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/provider/photos/PhotosProvider$ProcessingThumbnail;

    if-eqz v5, :cond_1

    iget-object v5, v5, Lcom/motorola/camera/provider/photos/PhotosProvider$ProcessingThumbnail;->mThumbnailFile:Ljava/io/File;

    invoke-static {v5}, Lcom/motorola/camera/storage/StorageUtils;->deleteThumbnailFile(Ljava/io/File;)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/motorola/camera/storage/StorageUtils;->getThumbnailDirectory()Ljava/io/File;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_5

    array-length v4, v1

    :goto_1
    if-ge v2, v4, :cond_5

    aget-object v5, v1, v2

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v3, v5

    goto :goto_2

    :cond_3
    invoke-static {v5}, Lcom/motorola/camera/storage/StorageUtils;->deleteThumbnailFile(Ljava/io/File;)V

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    if-nez v3, :cond_6

    const-string v1, "_processing_"

    const-string v2, "THUMBNAIL_"

    invoke-static {p0, v1, p1, v2, p2}, Lcom/motorola/camera/provider/photos/PhotosProvider;->saveThumbnailToFile(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v3

    :cond_6
    new-instance p1, Lcom/motorola/camera/provider/photos/PhotosProvider$ProcessingThumbnail;

    invoke-direct {p1, v3}, Lcom/motorola/camera/provider/photos/PhotosProvider$ProcessingThumbnail;-><init>(Ljava/io/File;)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    const-string p1, "PhotosProvider"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_3
    return-void
.end method


# virtual methods
.method public final attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f03000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lcom/motorola/camera/provider/photos/TrustedPartners;

    invoke-direct {v1, p1, v0}, Lcom/motorola/camera/provider/photos/TrustedPartners;-><init>(Landroid/content/Context;Ljava/util/HashSet;)V

    iput-object v1, p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mTrustedPartners:Lcom/motorola/camera/provider/photos/TrustedPartners;

    iget-object p2, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iput-object p2, p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mAuthority:Ljava/lang/String;

    new-instance p2, Landroid/content/UriMatcher;

    const/4 v0, -0x1

    invoke-direct {p2, v0}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object p2, p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mAuthority:Ljava/lang/String;

    const-string v1, "type/*"

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mAuthority:Ljava/lang/String;

    const-string v1, "data/*"

    const/4 v3, 0x2

    invoke-virtual {p2, v0, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mAuthority:Ljava/lang/String;

    const-string v1, "processing"

    const/4 v3, 0x7

    invoke-virtual {p2, v0, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mAuthority:Ljava/lang/String;

    const-string v1, "processing/#"

    const/16 v3, 0x8

    invoke-virtual {p2, v0, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mAuthority:Ljava/lang/String;

    const-string v1, "stabilize/*/*"

    const/16 v3, 0x9

    invoke-virtual {p2, v0, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mAuthority:Ljava/lang/String;

    sget-object v1, Lcom/motorola/camera/provider/photos/PhotosProviderUtils;->sPhotoShotPattern:Ljava/util/regex/Pattern;

    const-string v1, "icon/#/badge"

    const/4 v3, 0x3

    invoke-virtual {p2, v0, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mAuthority:Ljava/lang/String;

    const-string v1, "icon/#/dialog"

    const/4 v3, 0x4

    invoke-virtual {p2, v0, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mAuthority:Ljava/lang/String;

    const-string v1, "delete/#"

    const/4 v3, 0x5

    invoke-virtual {p2, v0, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mAuthority:Ljava/lang/String;

    const-string v1, "file/*"

    const/16 v3, 0xa

    invoke-virtual {p2, v0, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object p0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mAuthority:Ljava/lang/String;

    const-string v0, "values/*"

    const/16 v1, 0xb

    invoke-virtual {p2, p0, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object p0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/AppFeatures;->refreshFeatureList(Landroid/content/Context;)V

    sget-object p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->sHandler:Landroid/os/Handler;

    new-instance p2, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1, v2}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    const-string v0, "version"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const/4 p1, 0x3

    invoke-virtual {p0, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p0}, Lcom/motorola/camera/provider/photos/PhotosProvider;->validateCallingPackage()V

    iget-object v0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    sget-object v2, Lcom/motorola/camera/provider/photos/PhotosProviderUtils;->sPhotoShotPattern:Ljava/util/regex/Pattern;

    if-eqz p2, :cond_4

    if-nez p3, :cond_1

    move v0, v1

    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/motorola/camera/provider/photos/TypeIDDatabase;->get(Landroid/content/Context;)Lcom/motorola/camera/provider/photos/TypeIDDatabase;

    move-result-object p2

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {p2, v2, v3}, Lcom/motorola/camera/provider/photos/PhotosProvider;->queryTypeFromDb(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    move-result-object p2

    sget-object p3, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->BestShotType:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    if-ne p2, p3, :cond_2

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/provider/photos/TypeIDDatabase;->get(Landroid/content/Context;)Lcom/motorola/camera/provider/photos/TypeIDDatabase;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string p2, "special_types_mapper"

    const-string p3, "media_store_id=?"

    invoke-virtual {p0, p2, p3, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    return v1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unrecognized uri : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final declared-synchronized handleStabilizationOpen(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 8

    const-string v0, "Query not recognized for stabilization Uri: "

    const-string v1, "ID doesn\'t match cached timelapse: "

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/motorola/camera/CameraApp;->waitForInstance()Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object v3, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v3, v3, Lcom/motorola/camera/saving/SaveImageService;->mTempTimelapseVideo:Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    if-eqz v3, :cond_9

    iget-object v4, v3, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v5, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v5}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v5, -0x5539bbf2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v1, v5, :cond_2

    const v5, -0x356f97e5    # -4731917.5f

    if-eq v1, v5, :cond_1

    const v5, 0x4f4e50ec

    if-eq v1, v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "thumbnail"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v7

    goto :goto_1

    :cond_1
    const-string v1, "source"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v6

    goto :goto_1

    :cond_2
    const-string v1, "destination"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_7

    if-eq v1, v7, :cond_6

    if-eq v1, v2, :cond_4

    const-string p2, "PhotosProvider"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    new-array p1, v2, [Ljava/lang/String;

    const-string v0, "w"

    aput-object v0, p1, v6

    const-string v0, "wa"

    aput-object v0, p1, v7

    invoke-static {p2, p1}, Lcom/motorola/camera/provider/photos/PhotosProvider;->checkFileMode(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object p1, v3, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mPrivateTempVideoFile:Ljava/io/File;

    if-nez p1, :cond_5

    iget-object p1, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-static {p1}, Lcom/motorola/camera/storage/StorageUtils;->createTemporaryFile(Lcom/motorola/camera/saving/FileName;)Ljava/io/File;

    move-result-object p1

    iput-object p1, v3, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mPrivateTempVideoFile:Ljava/io/File;

    :cond_5
    const/high16 p2, 0x20000000

    invoke-static {p1, p2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_6
    :try_start_2
    new-array p1, v7, [Ljava/lang/String;

    const-string v0, "r"

    aput-object v0, p1, v6

    invoke-static {p2, p1}, Lcom/motorola/camera/provider/photos/PhotosProvider;->checkFileMode(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object p1, v3, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mVideoThumbFile:Ljava/io/File;

    const/high16 p2, 0x10000000

    invoke-static {p1, p2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_7
    :try_start_3
    new-array p1, v7, [Ljava/lang/String;

    const-string v0, "r"

    aput-object v0, p1, v6

    invoke-static {p2, p1}, Lcom/motorola/camera/provider/photos/PhotosProvider;->checkFileMode(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object p1, v3, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {p1}, Lcom/motorola/camera/storage/MediaFile;->openReadParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_8
    :try_start_4
    const-string p1, "PhotosProvider"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v0}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/io/IOException;

    const-string p2, "Mismatch of IDs"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    const-string p1, "PhotosProvider"

    const-string p2, "Timelapse video data not found"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    const/4 p1, 0x0

    goto :goto_3

    :catch_0
    move-exception p1

    :goto_3
    if-nez p1, :cond_a

    :try_start_5
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string p2, "Query not recognized for stabilization Uri"

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p2, Ljava/io/FileNotFoundException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/provider/photos/PhotosProvider;->validateCallingPackage()V

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final onCreate()Z
    .locals 1

    new-instance p0, Landroid/os/HandlerThread;

    const-string v0, "PhotosProvider"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/motorola/camera/provider/photos/PhotosProvider;->sHandler:Landroid/os/Handler;

    const/4 p0, 0x1

    return p0
.end method

.method public final openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/provider/photos/PhotosProvider;->validateCallingPackage()V

    iget-object v3, v1, Lcom/motorola/camera/provider/photos/PhotosProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x10000000

    const/4 v8, 0x1

    const/4 v9, 0x4

    if-eq v3, v4, :cond_10

    if-eq v3, v9, :cond_10

    packed-switch v3, :pswitch_data_0

    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unrecognized format: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/provider/photos/PhotosProvider;->sAccessMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/provider/photos/PhotosProvider$FileHolder;

    const-string v3, "PhotosProvider"

    if-eqz v1, :cond_2

    invoke-static/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->parseMode(Ljava/lang/String;)I

    move-result v2

    const/high16 v4, 0x20000000

    and-int/2addr v4, v2

    if-eqz v4, :cond_1

    iget-boolean v4, v1, Lcom/motorola/camera/provider/photos/PhotosProvider$FileHolder;->mWritable:Z

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Open for not writable file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "Filed to open "

    const-string v3, " for writing"

    invoke-static {v2, v0, v3}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    iget-object v0, v1, Lcom/motorola/camera/provider/photos/PhotosProvider$FileHolder;->mFile:Ljava/io/File;

    invoke-static {v0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Open for not accessible file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "Failed to open "

    invoke-static {v2, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    invoke-virtual/range {p0 .. p2}, Lcom/motorola/camera/provider/photos/PhotosProvider;->handleStabilizationOpen(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    :pswitch_2
    const-string v3, "r"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/camera/provider/photos/PhotosProvider;->checkFileMode(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mProcessingFiles:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/provider/photos/PhotosProvider$ProcessingThumbnail;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/motorola/camera/provider/photos/PhotosProvider$ProcessingThumbnail;->mThumbnailFile:Ljava/io/File;

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mLargeKindFiles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    sget-object v9, Lcom/motorola/camera/provider/photos/PhotosProvider;->mLargeKindFiles:Ljava/util/Map;

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/provider/photos/PhotosProvider$ProcessingThumbnail;

    if-eqz v4, :cond_4

    iget-object v0, v4, Lcom/motorola/camera/provider/photos/PhotosProvider$ProcessingThumbnail;->mThumbnailFile:Ljava/io/File;

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/motorola/camera/CameraApp;->waitForInstance()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v2, v3}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingPostView(J)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_6
    move-object v0, v6

    :goto_1
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "_processing_"

    const-string v9, "TEMP_"

    invoke-static {v4, v5, v0, v9, v8}, Lcom/motorola/camera/provider/photos/PhotosProvider;->saveThumbnailToFile(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    sget-object v4, Lcom/motorola/camera/provider/photos/PhotosProvider;->mProcessingFiles:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Lcom/motorola/camera/provider/photos/PhotosProvider$ProcessingThumbnail;

    invoke-direct {v3, v0}, Lcom/motorola/camera/provider/photos/PhotosProvider$ProcessingThumbnail;-><init>(Ljava/io/File;)V

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    invoke-static {v0, v7}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    goto/16 :goto_8

    :cond_7
    invoke-static {v2, v3}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingCameraData(J)Lcom/motorola/camera/CameraData;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const/16 v4, 0x1f4

    if-nez v0, :cond_d

    :try_start_1
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v11, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;->PROJECTION:[Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v10, v0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    if-eqz v15, :cond_9

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_8

    const-string v9, "orientation"

    invoke-interface {v15, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v15, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    const-string v9, "width"

    invoke-interface {v15, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v15, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v10, "height"

    invoke-interface {v15, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v15, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const-string v11, "orientation"

    invoke-interface {v15, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v15, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    sget-boolean v12, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    new-instance v12, Landroid/util/Size;

    invoke-direct {v12, v9, v10}, Landroid/util/Size;-><init>(II)V

    invoke-static {v12, v11}, Lkotlin/collections/ArraysUtilJVM;->convertSize(Landroid/util/Size;I)Landroid/util/Size;

    move-result-object v9

    new-instance v23, Lcom/motorola/camera/CameraData;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getGlobalSessionUUID()J

    move-result-wide v10

    const-string v12, "_display_name"

    invoke-interface {v15, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v15, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v12, "_data"

    invoke-interface {v15, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v15, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v12, "datetaken"

    invoke-interface {v15, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v15, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    const-string v12, "date_modified"

    invoke-interface {v15, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v15, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v20

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v22

    const/16 v24, 0x0

    move-object/from16 v9, v23

    move-object v12, v0

    move-object/from16 v25, v15

    move-wide/from16 v15, v16

    move-wide/from16 v17, v18

    move/from16 v19, v20

    move/from16 v20, v22

    move/from16 v22, v24

    invoke-direct/range {v9 .. v22}, Lcom/motorola/camera/CameraData;-><init>(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJIIII)V

    goto :goto_3

    :cond_8
    move-object/from16 v25, v15

    move-object/from16 v23, v6

    :goto_3
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    move-object/from16 v9, v23

    goto :goto_4

    :cond_9
    move-object v9, v6

    :goto_4
    if-nez v9, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    new-instance v10, Landroid/util/Size;

    invoke-direct {v10, v4, v4}, Landroid/util/Size;-><init>(II)V

    goto :goto_5

    :cond_a
    new-instance v10, Landroid/util/Size;

    iget-object v11, v9, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    const-string v12, "THUMB_WIDTH"

    invoke-virtual {v11, v12}, Landroidx/work/impl/StartStopTokens;->getInt(Ljava/lang/String;)I

    move-result v11

    iget-object v12, v9, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    const-string v13, "THUMB_HEIGHT"

    invoke-virtual {v12, v13}, Landroidx/work/impl/StartStopTokens;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-direct {v10, v11, v12}, Landroid/util/Size;-><init>(II)V

    invoke-static {v10}, Lkotlin/collections/ArraysUtilJVM;->isSizeValid(Landroid/util/Size;)Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v9, v10}, Lcom/motorola/camera/Util;->loadPostViewThumbnail(Landroid/content/Context;Lcom/motorola/camera/CameraData;Landroid/util/Size;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_6

    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    new-instance v10, Landroid/util/Size;

    invoke-direct {v10, v4, v4}, Landroid/util/Size;-><init>(II)V

    :goto_5
    invoke-virtual {v9, v0, v10, v6}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_6
    move-object v9, v0

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v10, "_processing_"

    const-string v11, "TEMP_"

    invoke-static {v0, v10, v9, v11, v5}, Lcom/motorola/camera/provider/photos/PhotosProvider;->saveThumbnailToFile(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    sget-object v10, Lcom/motorola/camera/provider/photos/PhotosProvider;->mProcessingFiles:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    new-instance v12, Lcom/motorola/camera/provider/photos/PhotosProvider$ProcessingThumbnail;

    invoke-direct {v12, v0}, Lcom/motorola/camera/provider/photos/PhotosProvider$ProcessingThumbnail;-><init>(Ljava/io/File;)V

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v7}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_8

    :catchall_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v9, v6

    :goto_7
    if-eqz v9, :cond_c

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    :cond_c
    throw v0

    :catch_0
    move-object v9, v6

    :catch_1
    if-eqz v9, :cond_d

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    :cond_d
    invoke-static {v2, v3}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingCameraData(J)Lcom/motorola/camera/CameraData;

    move-result-object v0

    sget-object v9, Lcom/motorola/camera/provider/photos/PhotosProvider;->sTemporarySnapshots:Ljava/util/Map;

    monitor-enter v9
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-eqz v0, :cond_f

    :try_start_4
    invoke-virtual {v0}, Lcom/motorola/camera/CameraData;->getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v10

    if-eqz v10, :cond_f

    invoke-virtual {v0}, Lcom/motorola/camera/CameraData;->getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v10

    iget v10, v10, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-virtual {v0}, Lcom/motorola/camera/CameraData;->getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v0

    iget v0, v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/Bitmap;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/io/File;

    if-nez v4, :cond_e

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "_processing_snapshot_"

    const-string v4, "TEMP_"

    invoke-static {v2, v3, v5, v4, v8}, Lcom/motorola/camera/provider/photos/PhotosProvider;->saveThumbnailToFile(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v6, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v9, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    invoke-static {v4, v7}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :goto_8
    :try_start_5
    sget-boolean v2, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    monitor-exit p0

    goto :goto_9

    :cond_f
    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    aget-object v3, v2, v5

    aget-object v2, v2, v8
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :try_start_8
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x32

    invoke-virtual {v0, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    monitor-exit p0

    move-object v0, v3

    :goto_9
    return-object v0

    :catchall_2
    move-exception v0

    move-object v6, v4

    goto :goto_a

    :catch_2
    move-exception v0

    move-object v6, v4

    goto :goto_b

    :catchall_3
    move-exception v0

    :goto_a
    move-object/from16 v26, v6

    move-object v6, v2

    move-object/from16 v2, v26

    goto :goto_c

    :catch_3
    move-exception v0

    :goto_b
    move-object/from16 v26, v6

    move-object v6, v2

    move-object/from16 v2, v26

    goto :goto_d

    :catchall_4
    move-exception v0

    :try_start_b
    monitor-exit v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :catchall_5
    move-exception v0

    move-object v2, v6

    :goto_c
    :try_start_d
    invoke-static {v6}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :catch_4
    move-exception v0

    move-object v2, v6

    :goto_d
    invoke-static {v6}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    const-string v4, "r"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/motorola/camera/provider/photos/PhotosProvider;->checkFileMode(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v9, :cond_11

    const v2, 0x7f070132

    goto :goto_e

    :cond_11
    const v2, 0x7f07006a

    :goto_e
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v10, "temp_icon-"

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "-"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ".png"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v10, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v11

    invoke-direct {v10, v11, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_16

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v4, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_12

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, v2, v2, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_f

    :cond_12
    instance-of v4, v0, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v4, :cond_13

    check-cast v0, Landroid/graphics/drawable/VectorDrawable;

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getHeight()I

    move-result v11

    invoke-virtual {v0, v5, v5, v8, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/VectorDrawable;->draw(Landroid/graphics/Canvas;)V

    move-object v0, v2

    goto :goto_f

    :cond_13
    move-object v0, v6

    :goto_f
    if-eqz v0, :cond_15

    if-ne v3, v9, :cond_14

    const/16 v2, 0x14

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    new-instance v8, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v8, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v2, 0x0

    invoke-virtual {v4, v0, v2, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_10

    :cond_14
    move-object v3, v0

    :goto_10
    monitor-enter p0

    :try_start_e
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    :try_start_f
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v3, v0, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    :try_start_10
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    goto :goto_14

    :catchall_7
    move-exception v0

    goto :goto_13

    :catch_5
    move-exception v0

    move-object v6, v2

    goto :goto_11

    :catchall_8
    move-exception v0

    goto :goto_12

    :catch_6
    move-exception v0

    :goto_11
    :try_start_11
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    :goto_12
    move-object v2, v6

    :goto_13
    :try_start_12
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    throw v0

    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    throw v0

    :cond_15
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "Drawable not supported"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    :goto_14
    invoke-static {v10, v7}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/provider/photos/PhotosProvider;->validateCallingPackage()V

    iget-object v2, v0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mUriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v6, :cond_1c

    const/4 v8, 0x2

    const/4 v9, -0x1

    const/16 v10, 0xb

    const/16 v11, 0x8

    const/4 v12, 0x7

    if-eq v2, v8, :cond_8

    if-eq v2, v12, :cond_7

    if-eq v2, v11, :cond_6

    if-eq v2, v10, :cond_0

    return-object v5

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_0
    move v7, v9

    goto :goto_1

    :sswitch_0
    const-string v2, "has_cli_display"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, 0x3

    goto :goto_1

    :sswitch_1
    const-string v2, "cli_display_id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v7, v8

    goto :goto_1

    :sswitch_2
    const-string v2, "support_scan_ppt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move v7, v6

    goto :goto_1

    :sswitch_3
    const-string v2, "support_scan_doc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    :goto_1
    packed-switch v7, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/cli/util/LidStateHelper;->getLidState(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v9, :cond_5

    move v4, v6

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_4

    :pswitch_1
    sget v0, Lcom/motorola/camera/reflect/DisplayFW;->CLI_DISPLAY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_4

    :pswitch_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideScanSupported()Z

    move-result v0

    goto :goto_3

    :pswitch_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDocScanSupported()Z

    move-result v0

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_4
    new-instance v5, Landroid/database/MatrixCursor;

    const-string v1, "value"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_5
    return-object v5

    :cond_6
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    goto :goto_6

    :cond_7
    const-wide/16 v0, -0x1

    :goto_6
    invoke-static {v0, v1}, Lcom/motorola/camera/provider/photos/PhotosProvider;->queryProcessing(J)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    :cond_8
    sget-object v2, Lcom/motorola/camera/provider/photos/PhotosProviderUtils;->sPhotoShotPattern:Ljava/util/regex/Pattern;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mTypeMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    sget-object v3, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Unknown:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    new-instance v3, Landroid/database/MatrixCursor;

    invoke-direct {v3, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    array-length v13, v1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    :goto_7
    array-length v15, v1

    if-ge v14, v15, :cond_1b

    aget-object v15, v1, v14

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v16

    const/4 v4, 0x4

    sparse-switch v16, :sswitch_data_1

    goto/16 :goto_8

    :sswitch_4
    const-string v7, "special_type_description"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    goto/16 :goto_8

    :cond_9
    move v7, v10

    goto/16 :goto_9

    :sswitch_5
    const-string v7, "configuration"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    goto/16 :goto_8

    :cond_a
    const/16 v7, 0xa

    goto/16 :goto_9

    :sswitch_6
    const-string v7, "interact_activity_class_name"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    goto/16 :goto_8

    :cond_b
    const/16 v7, 0x9

    goto/16 :goto_9

    :sswitch_7
    const-string v7, "edit_activity_class_name"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    goto/16 :goto_8

    :cond_c
    move v7, v11

    goto/16 :goto_9

    :sswitch_8
    const-string v7, "interact_activity_package_name"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    goto :goto_8

    :cond_d
    move v7, v12

    goto :goto_9

    :sswitch_9
    const-string v7, "special_type_name"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    goto :goto_8

    :cond_e
    const/4 v7, 0x6

    goto :goto_9

    :sswitch_a
    const-string v7, "launch_activity_class_name"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    goto :goto_8

    :cond_f
    const/4 v7, 0x5

    goto :goto_9

    :sswitch_b
    const-string v7, "editor_description"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    goto :goto_8

    :cond_10
    move v7, v4

    goto :goto_9

    :sswitch_c
    const-string v7, "launch_activity_package_name"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    goto :goto_8

    :cond_11
    const/4 v7, 0x3

    goto :goto_9

    :sswitch_d
    const-string v7, "editor_promo"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    goto :goto_8

    :cond_12
    move v7, v8

    goto :goto_9

    :sswitch_e
    const-string v7, "edit_activity_package_name"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    goto :goto_8

    :cond_13
    move v7, v6

    goto :goto_9

    :sswitch_f
    const-string v7, "special_type_icon_uri"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    goto :goto_8

    :cond_14
    const/4 v7, 0x0

    goto :goto_9

    :goto_8
    move v7, v9

    :goto_9
    const-string v10, ""

    packed-switch v7, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unrecognized column in projection: "

    invoke-virtual {v1, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    invoke-virtual {v2}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->isEditAvailable()Z

    move-result v4

    if-eqz v4, :cond_15

    const-string v10, "edit"

    goto :goto_b

    :cond_15
    iget v4, v2, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mConfigurationInt:I

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_16

    move v4, v6

    goto :goto_a

    :cond_16
    const/4 v4, 0x0

    :goto_a
    if-eqz v4, :cond_17

    const-string v10, "badge"

    :cond_17
    :goto_b
    aput-object v10, v13, v14

    goto/16 :goto_c

    :pswitch_5
    iget-object v7, v2, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mActivityClassArray:Landroid/util/SparseArray;

    invoke-virtual {v7, v4, v10}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v13, v14

    goto/16 :goto_c

    :pswitch_6
    iget-object v4, v2, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mActivityClassArray:Landroid/util/SparseArray;

    invoke-virtual {v4, v8, v10}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v13, v14

    goto :goto_c

    :pswitch_7
    iget-object v7, v2, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mActivityPackageArray:Landroid/util/SparseArray;

    invoke-virtual {v7, v4, v10}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v13, v14

    goto :goto_c

    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v7, v2, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mNameResId:I

    if-eqz v7, :cond_18

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    :cond_18
    aput-object v10, v13, v14

    goto :goto_c

    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v7, v2, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mDescriptionResId:I

    if-eqz v7, :cond_19

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    :cond_19
    aput-object v10, v13, v14

    goto :goto_c

    :pswitch_a
    aput-object v5, v13, v14

    goto :goto_c

    :pswitch_b
    iget-object v4, v2, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mActivityPackageArray:Landroid/util/SparseArray;

    invoke-virtual {v4, v8, v10}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v13, v14

    goto :goto_c

    :pswitch_c
    iget v4, v2, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mIconResId:I

    if-lez v4, :cond_1a

    new-instance v7, Landroid/net/Uri$Builder;

    invoke-direct {v7}, Landroid/net/Uri$Builder;-><init>()V

    const-string v10, "content"

    invoke-virtual {v7, v10}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    iget-object v10, v0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mAuthority:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v10, "icon"

    invoke-virtual {v7, v10}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    aput-object v4, v13, v14

    goto :goto_c

    :cond_1a
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v13, v14

    :goto_c
    add-int/lit8 v14, v14, 0x1

    const/16 v10, 0xb

    goto/16 :goto_7

    :cond_1b
    invoke-virtual {v3, v13}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v3

    :cond_1c
    sget-object v1, Lcom/motorola/camera/provider/photos/PhotosProviderUtils;->sPhotoShotPattern:Ljava/util/regex/Pattern;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/provider/photos/TypeIDDatabase;->get(Landroid/content/Context;)Lcom/motorola/camera/provider/photos/TypeIDDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-static {v3, v1, v2}, Lcom/motorola/camera/provider/photos/PhotosProvider;->queryTypeFromDb(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    move-result-object v0

    sget-object v4, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Unknown:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    const-string v7, "special_type_id"

    if-ne v0, v4, :cond_23

    invoke-static {}, Lcom/motorola/camera/CameraApp;->waitForInstance()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {v1, v2}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingCameraData(J)Lcom/motorola/camera/CameraData;

    move-result-object v0

    if-eqz v0, :cond_1d

    goto :goto_d

    :cond_1d
    const/4 v6, 0x0

    :goto_d
    if-nez v6, :cond_22

    :cond_1e
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    sget-object v4, Lcom/motorola/camera/provider/photos/PhotosProvider;->FILE_NAME_PROJECTION:[Ljava/lang/String;

    sget-object v6, Lcom/motorola/camera/storage/MediaStoreClient;->MEDIA_TYPES:Ljava/util/List;

    const-string v6, "uri"

    invoke-static {v0, v6}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lcom/motorola/camera/storage/MediaStoreClient;->MEDIA_TYPES:Ljava/util/List;

    invoke-static {v0}, Lcom/motorola/camera/storage/MediaStoreClient;->requireMediaItem(Landroid/net/Uri;)V

    :try_start_0
    new-instance v6, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQuery;

    invoke-direct {v6, v0, v4}, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQuery;-><init>(Landroid/net/Uri;[Ljava/lang/String;)V

    invoke-virtual {v6}, Landroidx/transition/ViewOverlayApi14;->execute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_e

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    :goto_e
    instance-of v4, v0, Lkotlin/Result$Failure;

    if-eqz v4, :cond_1f

    move-object v0, v5

    :cond_1f
    move-object v4, v0

    check-cast v4, Landroid/database/Cursor;

    if-eqz v4, :cond_20

    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Ljava/io/File;

    const-string v6, "relative_path"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "_display_name"

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v6, "volume_name"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/motorola/camera/provider/photos/PhotosProvider;->detectSpecialTypeImage(Ljava/lang/String;Ljava/lang/String;)Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    move-object v4, v0

    goto :goto_10

    :catchall_1
    move-exception v0

    move-object v1, v0

    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_f

    :catchall_2
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_f
    throw v1

    :cond_20
    if-eqz v4, :cond_21

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_21
    sget-object v4, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->None:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    :cond_22
    :goto_10
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "media_store_id"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v4, v4, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    invoke-virtual {v0, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "special_types_mapper"

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-static {v3, v1, v2}, Lcom/motorola/camera/provider/photos/PhotosProvider;->queryTypeFromDb(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    move-result-object v0

    :cond_23
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    sget-object v2, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->None:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    if-eq v0, v2, :cond_24

    sget-object v2, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Unknown:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    if-eq v0, v2, :cond_24

    iget-object v0, v0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_24
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x4a5b011a -> :sswitch_3
        -0x4a5ad3de -> :sswitch_2
        0x2a446a37 -> :sswitch_1
        0x79a7fa7e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7b3cb4fb -> :sswitch_f
        -0x51f4f261 -> :sswitch_e
        -0x2acd3843 -> :sswitch_d
        -0x1cf2d178 -> :sswitch_c
        -0x1a31b7d6 -> :sswitch_b
        -0x24f3e6a -> :sswitch_a
        0xd31806a -> :sswitch_9
        0x14538ccb -> :sswitch_8
        0x37f97a6d -> :sswitch_7
        0x626fd499 -> :sswitch_6
        0x733374f6 -> :sswitch_5
        0x757df53d -> :sswitch_4
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_9
    .end packed-switch
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/provider/photos/PhotosProvider;->validateCallingPackage()V

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final validateCallingPackage()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mTrustedPartners:Lcom/motorola/camera/provider/photos/TrustedPartners;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/provider/photos/TrustedPartners;->isTrustedApplication(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0}, Ljava/lang/SecurityException;-><init>()V

    throw p0
.end method
