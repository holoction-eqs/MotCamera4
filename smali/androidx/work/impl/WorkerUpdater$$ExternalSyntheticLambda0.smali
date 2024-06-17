.class public final synthetic Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;

.field public final synthetic f$4:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p6, p0, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    iput-object p5, p0, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda0;->f$4:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 25

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object v2, v0, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda0;->f$4:Ljava/lang/Object;

    iget-object v3, v0, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    iget-object v4, v0, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    iget-object v5, v0, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iget-object v0, v0, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    check-cast v0, Landroidx/work/impl/WorkManagerImpl;

    check-cast v5, Ljava/lang/String;

    check-cast v4, Landroidx/work/impl/OperationImpl;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    check-cast v2, Landroidx/work/WorkRequest;

    const-string v1, "$this_enqueueUniquelyNamedPeriodic"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$name"

    invoke-static {v5, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$operation"

    invoke-static {v4, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$enqueueNew"

    invoke-static {v3, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$workRequest"

    invoke-static {v2, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getWorkSpecIdAndStatesForName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_0

    const-string v0, "Can\'t apply UPDATE policy to the chains of work."

    goto :goto_0

    :cond_0
    invoke-static {v6}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/work/impl/model/WorkSpec$IdAndState;

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    iget-object v7, v6, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    move-result-object v8

    if-nez v8, :cond_2

    new-instance v0, Landroidx/work/Operation$State$FAILURE;

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WorkSpec with "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", that matches a name \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\", wasn\'t found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroidx/work/Operation$State$FAILURE;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v4, v0}, Landroidx/work/impl/OperationImpl;->markState(Landroidx/work/Operation$State;)V

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v8}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result v5

    if-nez v5, :cond_3

    const-string v0, "Can\'t update OneTimeWorker to Periodic Worker. Update operation must preserve worker\'s type."

    :goto_0
    new-instance v1, Landroidx/work/Operation$State$FAILURE;

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroidx/work/Operation$State$FAILURE;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v4, v1}, Landroidx/work/impl/OperationImpl;->markState(Landroidx/work/Operation$State;)V

    goto :goto_2

    :cond_3
    sget-object v5, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    iget-object v8, v6, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/WorkInfo$State;

    if-ne v8, v5, :cond_4

    invoke-virtual {v1, v7}, Landroidx/work/impl/model/WorkSpecDao_Impl;->delete(Ljava/lang/String;)V

    :goto_1
    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke$2()Ljava/lang/Object;

    goto :goto_2

    :cond_4
    iget-object v9, v2, Landroidx/work/WorkRequest;->workSpec:Landroidx/work/impl/model/WorkSpec;

    iget-object v10, v6, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const v18, 0xffffe

    invoke-static/range {v9 .. v18}, Landroidx/work/impl/model/WorkSpec;->copy$default(Landroidx/work/impl/model/WorkSpec;Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Landroidx/work/Data;IJII)Landroidx/work/impl/model/WorkSpec;

    move-result-object v23

    :try_start_0
    iget-object v1, v0, Landroidx/work/impl/WorkManagerImpl;->mProcessor:Landroidx/work/impl/Processor;

    const-string v3, "processor"

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    const-string v5, "workDatabase"

    invoke-static {v3, v5}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v0, Landroidx/work/impl/WorkManagerImpl;->mConfiguration:Landroidx/work/Configuration;

    const-string v6, "configuration"

    invoke-static {v5, v6}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/work/impl/WorkManagerImpl;->mSchedulers:Ljava/util/List;

    const-string v6, "schedulers"

    invoke-static {v0, v6}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v2, Landroidx/work/WorkRequest;->tags:Ljava/util/Set;

    move-object/from16 v19, v1

    move-object/from16 v20, v3

    move-object/from16 v21, v5

    move-object/from16 v22, v0

    move-object/from16 v24, v2

    invoke-static/range {v19 .. v24}, Lcom/adobe/xmp/XMPUtils;->updateWorkImpl(Landroidx/work/impl/Processor;Landroidx/work/impl/WorkDatabase;Landroidx/work/Configuration;Ljava/util/List;Landroidx/work/impl/model/WorkSpec;Ljava/util/Set;)V

    sget-object v0, Landroidx/work/Operation;->SUCCESS:Landroidx/work/Operation$State$SUCCESS;

    invoke-virtual {v4, v0}, Landroidx/work/impl/OperationImpl;->markState(Landroidx/work/Operation$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    new-instance v1, Landroidx/work/Operation$State$FAILURE;

    invoke-direct {v1, v0}, Landroidx/work/Operation$State$FAILURE;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v4, v1}, Landroidx/work/impl/OperationImpl;->markState(Landroidx/work/Operation$State;)V

    :goto_2
    return-void

    :goto_3
    check-cast v0, Lcom/motorola/camera/saving/FileName;

    check-cast v5, Ljava/io/File;

    check-cast v4, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcessCallback;

    check-cast v3, Lcom/motorola/camera/storage/SharedMediaFile;

    check-cast v2, Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v0}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    invoke-static {v1, v6}, Lcom/motorola/camera/storage/StorageUtils;->getCameraMediaFilePathWithFallback(Ljava/lang/String;Z)Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/storage/MediaFile;->fromMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;)Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/motorola/camera/storage/StorageUtils;->copyTemporaryFileToMediaFile(Ljava/io/File;Lcom/motorola/camera/storage/MediaFile;)Z

    move-result v6

    invoke-static {v5}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    if-nez v6, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "saveSuperSlowMotion: cannot copy "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SaveImageService"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    check-cast v4, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    invoke-virtual {v4}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->onProcessingError()V

    goto :goto_5

    :cond_5
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_SUPER_SLOW_MOTION_KEEP_FILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    :try_start_1
    invoke-virtual {v2}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v0

    check-cast v3, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    invoke-virtual {v3, v0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->rename(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :cond_6
    invoke-static {v3}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    :catch_0
    :goto_4
    invoke-virtual {v1}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->getMediaStoreUri()Landroid/net/Uri;

    move-result-object v0

    check-cast v4, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iput-object v0, v4, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->mediaStoreUri:Landroid/net/Uri;

    sget-object v0, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->DONE:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    iget-object v1, v4, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingStatus:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object v0, v4, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingScope:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;)V

    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
