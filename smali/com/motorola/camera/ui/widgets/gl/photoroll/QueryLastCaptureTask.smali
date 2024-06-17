.class public final Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# instance fields
.field public final synthetic $$delegate_0:Lkotlinx/coroutines/internal/ContextScope;

.field public final eventListener:Ljava/lang/ref/WeakReference;

.field public final lastCaptureHandler:Ljava/lang/ref/WeakReference;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    const-string v0, "_id"

    const-string v1, "datetaken"

    const-string v2, "date_modified"

    const-string v3, "volume_name"

    const-string v4, "_display_name"

    const-string v5, "width"

    const-string v6, "_data"

    const-string v7, "height"

    const-string v8, "orientation"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;->eventListener:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;->lastCaptureHandler:Ljava/lang/ref/WeakReference;

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;->$$delegate_0:Lkotlinx/coroutines/internal/ContextScope;

    return-void
.end method

.method public static queryLastCapture(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/motorola/camera/storage/MediaVolumesHolder;->getMediaVolumes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/storage/MediaVolume;

    sget-object v3, Lcom/motorola/camera/storage/StorageUtils;->tempFilesList:[Ljava/io/File;

    const-string v3, "mediaVolume"

    invoke-static {v2, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "DCIM/Camera"

    invoke-static {v2, v3}, Lcom/motorola/camera/storage/MediaVolumesHolder;->getMediaStoreBucketId(Lcom/motorola/camera/storage/MediaVolume;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v3, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "DCIM/Google Photos"

    invoke-static {v2, v3}, Lcom/motorola/camera/storage/MediaVolumesHolder;->getMediaStoreBucketId(Lcom/motorola/camera/storage/MediaVolume;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    if-ge v1, v2, :cond_3

    if-lez v1, :cond_2

    const-string v4, " OR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v4, "bucket_id = ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "selection.toString()"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "android:query-arg-sql-selection"

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android:query-arg-sql-selection-args"

    invoke-virtual {v2, v1, v0}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "android:query-arg-sql-sort-order"

    const-string v1, "CASE WHEN datetaken NOT NULL THEN datetaken ELSE date_modified*1000 END DESC"

    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android:query-arg-sql-limit"

    const-string v1, "1"

    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;->PROJECTION:[Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/motorola/camera/storage/MediaStoreClient;->queryOrNull$default(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final buildCameraData(Landroid/database/Cursor;Landroid/net/Uri;I)Lcom/motorola/camera/CameraData;
    .locals 27

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v0, "_BURST"

    if-eqz v1, :cond_c

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "date_modified"

    const-string v5, "datetaken"

    const-string v6, "_data"

    const-string v7, "_id"

    const-string v8, "height"

    const-string v9, "width"

    const-string v10, "_display_name"

    const-string v11, "orientation"

    if-nez p3, :cond_b

    :try_start_0
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lcom/motorola/camera/BurstShotFileUtils;->FORMAT_BURST_SUFFIX:Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v15, "_COVER"

    const/4 v3, 0x1

    if-eqz v14, :cond_0

    :try_start_1
    invoke-virtual {v13, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    move v14, v3

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    :goto_0
    if-nez v14, :cond_5

    const-string v14, "volume_name"

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    sget-object v12, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;->PROJECTION:[Ljava/lang/String;

    invoke-static {v14, v13, v12}, Lcom/motorola/camera/provider/photos/PhotosProvider;->queryFilesOnVolume(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v12, :cond_4

    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v13

    if-le v13, v3, :cond_4

    invoke-interface {v12, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    :cond_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    move v14, v3

    goto :goto_1

    :cond_2
    const/4 v14, 0x0

    :goto_1
    if-nez v14, :cond_3

    invoke-interface {v12}, Landroid/database/Cursor;->isLast()Z

    move-result v14
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v14, :cond_1

    :cond_3
    move-object v3, v12

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v3, v12

    goto/16 :goto_7

    :catch_0
    move-exception v0

    move-object v3, v12

    goto :goto_4

    :cond_4
    move-object v3, v12

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    move-object v12, v1

    :goto_3
    if-ne v12, v1, :cond_6

    if-eqz v3, :cond_9

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :cond_6
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_1
    move-exception v0

    const/4 v3, 0x0

    goto/16 :goto_7

    :catch_1
    move-exception v0

    const/4 v3, 0x0

    :goto_4
    move-object/from16 v12, p0

    :try_start_3
    iget-object v12, v12, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;->eventListener:Ljava/lang/ref/WeakReference;

    invoke-static {v12}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v12}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/motorola/camera/EventListener;

    if-eqz v12, :cond_7

    new-instance v13, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v14, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v15, 0x0

    invoke-direct {v13, v14, v0, v15}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-interface {v12, v13}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    goto/16 :goto_7

    :cond_7
    :goto_5
    if-eqz v3, :cond_8

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_8
    move-object v12, v1

    :cond_9
    :goto_6
    invoke-interface {v12, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-interface {v12, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-interface {v12, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-interface {v12, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    sget-boolean v8, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    new-instance v8, Landroid/util/Size;

    invoke-direct {v8, v0, v1}, Landroid/util/Size;-><init>(II)V

    invoke-static {v8, v3}, Lkotlin/collections/ArraysUtilJVM;->convertSize(Landroid/util/Size;I)Landroid/util/Size;

    move-result-object v0

    invoke-interface {v12, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/motorola/camera/CameraData;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getGlobalSessionUUID()J

    move-result-wide v14

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    int-to-long v7, v7

    invoke-static {v2, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v16

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v23

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v24

    const/16 v26, 0x0

    const-string v0, "fileName"

    invoke-static {v1, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ".dng"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lkotlin/text/StringsKt__StringsKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    move-object v13, v3

    move-object/from16 v17, v1

    invoke-direct/range {v13 .. v26}, Lcom/motorola/camera/CameraData;-><init>(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJIIII)V

    iget-object v1, v3, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    const-string v2, "PROCESSING_URI"

    invoke-virtual {v1, v2, v0}, Landroidx/work/impl/StartStopTokens;->putBoolean(Ljava/lang/String;Z)V

    return-object v3

    :goto_7
    if-eqz v3, :cond_a

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v0

    :cond_b
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    sget-boolean v9, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    new-instance v9, Landroid/util/Size;

    invoke-direct {v9, v0, v3}, Landroid/util/Size;-><init>(II)V

    invoke-static {v9, v8}, Lkotlin/collections/ArraysUtilJVM;->convertSize(Landroid/util/Size;I)Landroid/util/Size;

    move-result-object v0

    new-instance v3, Lcom/motorola/camera/CameraData;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getGlobalSessionUUID()J

    move-result-wide v13

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    int-to-long v7, v7

    invoke-static {v2, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v22

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v23

    move-object v12, v3

    move/from16 v25, p3

    invoke-direct/range {v12 .. v25}, Lcom/motorola/camera/CameraData;-><init>(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJIIII)V

    goto :goto_8

    :cond_c
    const/4 v3, 0x0

    :goto_8
    return-object v3
.end method

.method public final getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;->$$delegate_0:Lkotlinx/coroutines/internal/ContextScope;

    iget-object p0, p0, Lkotlinx/coroutines/internal/ContextScope;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-object p0
.end method
