.class public final synthetic Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 35

    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->$r8$classId:I

    const/4 v2, -0x1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_15

    :pswitch_1
    iget-object v1, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/device/callables/CameraCallable;

    iget-object v0, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/panorama/PanoCallableReturn;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/motorola/camera/device/callables/CameraCallable;->mBegin:J

    sub-long/2addr v2, v4

    iget-object v4, v1, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/device/callables/CallableListener;

    iget-object v5, v0, Lcom/motorola/camera/panorama/PanoCallableReturn;->exception:Ljava/lang/Exception;

    if-eqz v5, :cond_1

    instance-of v0, v1, Lcom/motorola/camera/device/callables/CloseCameraCallable;

    xor-int/2addr v0, v8

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/motorola/camera/device/callables/CameraCallable;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception in result cid:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (dur:"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    if-eqz v4, :cond_2

    invoke-interface {v4, v5}, Lcom/motorola/camera/device/callables/CallableListener;->onError(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    iget-object v0, v0, Lcom/motorola/camera/panorama/PanoCallableReturn;->value:Ljava/lang/Object;

    invoke-interface {v4, v0}, Lcom/motorola/camera/device/callables/CallableListener;->onComplete(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void

    :pswitch_2
    iget-object v1, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/detector/SmartCamResultsDBHelper;

    iget-object v0, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    sget v2, Lcom/motorola/camera/detector/SmartCamResultsDBHelper;->$r8$clinit:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    :try_start_0
    const-string v3, "smartcam_results"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_4

    :catch_0
    :cond_3
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "frame_file"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_4
    :try_start_2
    const-string v2, "DROP TABLE IF EXISTS smartcam_results"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_3
    const-string v2, "SmartCamResultsDBHelper"

    const-string v3, "Error deleting detections"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {}, Lcom/motorola/camera/detector/SmartCamMayaUtil;->removeSmartCamSuggestion()V

    return-void

    :goto_3
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {}, Lcom/motorola/camera/detector/SmartCamMayaUtil;->removeSmartCamSuggestion()V

    throw v0

    :pswitch_3
    iget-object v1, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;

    iget-object v0, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    const-string v2, "this$0"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$it"

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->showImagePreview(Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_4
    iget-object v1, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    iget-object v0, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/cli/content/CliContentViewModel;

    const-string v3, "$intent"

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "this$0"

    invoke-static {v0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "com.motorola.camera3.EXTRA_CONTENT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, v0, Lcom/motorola/camera/cli/content/CliContentViewModel;->cliPresentation:Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    const/4 v9, 0x3

    if-eqz v4, :cond_5

    invoke-virtual {v4, v9, v7, v7}, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->hideContent(IZZ)V

    :cond_5
    iget-object v0, v0, Lcom/motorola/camera/cli/content/CliContentViewModel;->cliPresentation:Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    if-eqz v0, :cond_d

    if-eq v3, v2, :cond_d

    iget-object v2, v0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->contentDeque:Ljava/util/ArrayDeque;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayDeque;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayDeque;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    iget-object v10, v0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->eventListener:Lcom/motorola/camera/cli/CliEventListener;

    if-eq v3, v8, :cond_9

    if-eq v3, v4, :cond_8

    if-eq v3, v9, :cond_7

    const/4 v1, 0x4

    if-eq v3, v1, :cond_6

    new-instance v1, Lcom/motorola/camera/cli/content/presentation/CliEmptyPresentation;

    invoke-direct {v1, v10}, Lcom/motorola/camera/cli/content/presentation/CliEmptyPresentation;-><init>(Lcom/motorola/camera/cli/CliEventListener;)V

    goto :goto_4

    :cond_6
    new-instance v1, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;

    invoke-direct {v1, v10}, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;-><init>(Lcom/motorola/camera/cli/CliEventListener;)V

    :goto_4
    move-object/from16 v18, v0

    move-object/from16 v19, v2

    move/from16 v20, v3

    goto/16 :goto_5

    :cond_7
    const-string v8, "GLOBAL_UUID"

    invoke-virtual {v1, v8, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    const-string v9, "THUMB_PATH"

    invoke-virtual {v1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "URI"

    const-class v15, Landroid/net/Uri;

    invoke-static {v1, v14, v15}, Lcom/adobe/xmp/XMPUtils;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/Uri;

    const-string v4, "FILE_NAME"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "FILE_PATH"

    move-object/from16 v18, v0

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v2

    const-string v2, "THUMB_WIDTH"

    move/from16 v20, v3

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v21, v10

    const-string v10, "THUMB_HEIGHT"

    move-object/from16 v22, v2

    invoke-virtual {v1, v10, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "ORIENTATION"

    move-object/from16 v24, v10

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const-string v7, "DATE_TAKEN"

    move-object/from16 v26, v2

    move/from16 v25, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v7, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    move-wide/from16 v27, v4

    const-string v4, "DATE_MODIFIED"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v8, v11, v12}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v3, v9, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v14, v15}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object/from16 v5, v16

    move-object/from16 v8, v17

    invoke-virtual {v3, v5, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    move/from16 v5, v25

    invoke-virtual {v3, v0, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    move/from16 v5, v23

    move-object/from16 v0, v24

    invoke-virtual {v3, v0, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, v26

    invoke-virtual {v3, v0, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    move-wide/from16 v5, v27

    invoke-virtual {v3, v7, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    new-instance v1, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;

    move-object/from16 v0, v21

    invoke-direct {v1, v3, v0}, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;-><init>(Landroid/os/Bundle;Lcom/motorola/camera/cli/CliEventListener;)V

    goto :goto_5

    :cond_8
    move-object/from16 v18, v0

    move-object/from16 v19, v2

    move/from16 v20, v3

    move-object v0, v10

    const-string v2, "com.motorola.camera3.EXTRA_COUNTDOWN_TIMER"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;

    invoke-direct {v2, v1, v0}, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;-><init>(ILcom/motorola/camera/cli/CliEventListener;)V

    move-object v1, v2

    goto :goto_5

    :cond_9
    move-object/from16 v18, v0

    move-object/from16 v19, v2

    move/from16 v20, v3

    move-object v0, v10

    new-instance v1, Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation;

    invoke-direct {v1, v0}, Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation;-><init>(Lcom/motorola/camera/cli/CliEventListener;)V

    :goto_5
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v2, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    invoke-virtual/range {v18 .. v18}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v2, "from(context)"

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, v18

    iget-object v3, v2, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->presentationContainer$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v3}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const-string v4, "presentationContainer"

    invoke-static {v3, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    if-nez v4, :cond_a

    invoke-virtual {v1}, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->presentationLayoutRes()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    invoke-virtual {v1}, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->onViewInflated()V

    :cond_a
    iget v0, v2, Lcom/motorola/camera/arch/view/BasePresentation;->orientation:I

    iput v0, v1, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->orientation:I

    invoke-virtual {v1}, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->onOrientationChanged()V

    new-instance v0, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1$3;

    move/from16 v3, v20

    const/4 v4, 0x2

    invoke-direct {v0, v2, v3, v4}, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1$3;-><init>(Ljava/lang/Object;II)V

    iput-object v0, v1, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->removeSelf:Lkotlin/jvm/functions/Function0;

    iget-object v0, v2, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->viewMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, v1, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    if-eqz v0, :cond_c

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, v2, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->presentationContainer$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v2}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_b

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_b
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_c
    invoke-virtual {v1}, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->onViewAdded()V

    :cond_d
    return-void

    :pswitch_5
    iget-object v1, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadSeekBarThumbnails;

    iget-object v0, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadSeekBarThumbnails;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    iget-object v2, v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTrimSeekBar:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    invoke-virtual {v2, v0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->setThumbnails(Ljava/util/List;)V

    iget-object v0, v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTrimSeekBar:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    invoke-virtual {v0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->play()V

    return-void

    :pswitch_6
    iget-object v1, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;

    iget-object v0, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaPlayer;

    sget-object v2, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;->TAG:Ljava/lang/String;

    const-string v2, "this$0"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$mediaPlayerToDiscard"

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;->prepareStartFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v1}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    return-void

    :pswitch_7
    iget-object v1, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/HeadsetReceiver;

    iget-object v0, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;

    sget v2, Lcom/motorola/camera/HeadsetReceiver;->$r8$clinit:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->HEADSET_PLUG:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v2, v3, v0}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->HEADSET_PLUG:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    iget-object v0, v1, Lcom/motorola/camera/HeadsetReceiver;->mEventListener:Lcom/motorola/camera/EventListener;

    invoke-interface {v0, v2}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    :pswitch_8
    iget-object v1, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/Controller;

    iget-object v0, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;

    invoke-virtual {v1}, Lcom/motorola/camera/Controller;->getOrientation()Lcom/motorola/camera/shared/OrientationEvent;

    move-result-object v1

    sget v2, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    iget v1, v1, Lcom/motorola/camera/shared/OrientationEvent;->mDisplayRotation:I

    invoke-interface {v0, v2, v1}, Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;->onRotationChanged(II)V

    return-void

    :pswitch_9
    iget-object v1, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/Controller;

    iget-object v0, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/Controller;->handleIntent(Landroid/content/Intent;)V

    invoke-static {}, Lcom/motorola/camera/CameraIntentReceiver;->checkVibrate()V

    return-void

    :pswitch_a
    iget-object v1, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v1, Landroidx/work/impl/workers/ConstraintTrackingWorker;

    iget-object v0, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    const-string v2, "this$0"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$innerFuture"

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v1, Landroidx/work/impl/workers/ConstraintTrackingWorker;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iget-boolean v3, v1, Landroidx/work/impl/workers/ConstraintTrackingWorker;->areConstraintsUnmet:Z

    if-eqz v3, :cond_e

    iget-object v0, v1, Landroidx/work/impl/workers/ConstraintTrackingWorker;->future:Landroidx/work/impl/utils/futures/SettableFuture;

    const-string v1, "future"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt;->TAG:Ljava/lang/String;

    new-instance v1, Landroidx/work/ListenableWorker$Result$Retry;

    invoke-direct {v1}, Landroidx/work/ListenableWorker$Result$Retry;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/work/impl/utils/futures/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_e
    iget-object v1, v1, Landroidx/work/impl/workers/ConstraintTrackingWorker;->future:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {v1, v0}, Landroidx/work/impl/utils/futures/SettableFuture;->setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_6
    monitor-exit v2

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    :pswitch_b
    iget-object v1, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v0, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    const-string v2, "$listenersList"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "this$0"

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/work/impl/constraints/controllers/ConstraintController;

    iget-object v3, v0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->currentState:Ljava/lang/Object;

    iput-object v3, v2, Landroidx/work/impl/constraints/controllers/ConstraintController;->currentValue:Ljava/lang/Object;

    iget-object v4, v2, Landroidx/work/impl/constraints/controllers/ConstraintController;->callback:Landroidx/work/impl/constraints/WorkConstraintsTrackerImpl;

    invoke-virtual {v2, v4, v3}, Landroidx/work/impl/constraints/controllers/ConstraintController;->updateCallback(Landroidx/work/impl/constraints/WorkConstraintsTrackerImpl;Ljava/lang/Object;)V

    goto :goto_7

    :cond_f
    return-void

    :pswitch_c
    iget-object v1, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v1, Landroidx/work/impl/WorkerWrapper;

    iget-object v0, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v1, v1, Landroidx/work/impl/WorkerWrapper;->mWorkerResultFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    iget-object v1, v1, Landroidx/work/impl/utils/futures/AbstractFuture;->value:Ljava/lang/Object;

    instance-of v1, v1, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;

    if-eqz v1, :cond_10

    invoke-interface {v0, v8}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_10
    return-void

    :pswitch_d
    iget-object v1, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v1, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;

    iget-object v0, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast v0, Landroidx/window/layout/WindowLayoutInfo;

    const-string v2, "this$0"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$newLayoutInfo"

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v1, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;->callback:Landroidx/core/util/Consumer;

    invoke-interface {v1, v0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_e
    iget-object v1, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    iget-object v0, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroidx/room/TransactionExecutor;

    const-string v0, "$command"

    invoke-static {v1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {v2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_5
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-virtual {v2}, Landroidx/room/TransactionExecutor;->scheduleNext()V

    return-void

    :catchall_2
    move-exception v0

    move-object v1, v0

    invoke-virtual {v2}, Landroidx/room/TransactionExecutor;->scheduleNext()V

    throw v1

    :pswitch_f
    iget-object v1, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v1, Landroidx/room/MultiInstanceInvalidationClient;

    iget-object v0, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    sget v2, Landroidx/room/MultiInstanceInvalidationClient$callback$1;->$r8$clinit:I

    const-string v2, "this$0"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$tables"

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v1, Landroidx/room/MultiInstanceInvalidationClient;->invalidationTracker:Landroidx/room/InvalidationTracker;

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "tables"

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v1, Landroidx/room/InvalidationTracker;->observerMap:Landroidx/arch/core/internal/SafeIterableMap;

    monitor-enter v2

    :try_start_6
    iget-object v0, v1, Landroidx/room/InvalidationTracker;->observerMap:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {v0}, Landroidx/arch/core/internal/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    move-object v1, v0

    check-cast v1, Landroidx/arch/core/internal/SafeIterableMap$ListIterator;

    invoke-virtual {v1}, Landroidx/arch/core/internal/SafeIterableMap$ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v1}, Landroidx/arch/core/internal/SafeIterableMap$ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const-string v3, "(observer, wrapper)"

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/room/MultiInstanceInvalidationClient$1;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/room/InvalidationTracker$ObserverWrapper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_8

    :cond_11
    monitor-exit v2

    return-void

    :catchall_3
    move-exception v0

    monitor-exit v2

    throw v0

    :pswitch_10
    iget-object v1, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    iget-object v0, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/SurfaceTexture;

    iget-object v2, v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v3, v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->surface:Landroid/view/Surface;

    new-instance v4, Landroid/view/Surface;

    invoke-direct {v4, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    iput-object v4, v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->surface:Landroid/view/Surface;

    iget-object v0, v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->videoSurfaceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    iget-object v1, v1, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v1, v4}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    goto :goto_9

    :cond_12
    if-eqz v2, :cond_13

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_13
    if-eqz v3, :cond_14

    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    :cond_14
    return-void

    :pswitch_11
    iget-object v1, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v0, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->listener:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    iget-object v1, v1, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object v1, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    check-cast v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v2

    new-instance v3, Lcom/motorola/camera/service/WatermarkEditorService$$ExternalSyntheticLambda1;

    invoke-direct {v3, v8, v2, v0}, Lcom/motorola/camera/service/WatermarkEditorService$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x3fb

    invoke-virtual {v1, v2, v0, v3}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void

    :pswitch_12
    iget-object v1, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v0, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/VideoSize;

    iget-object v1, v1, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->listener:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    iget-object v1, v1, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iput-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoSize:Landroidx/media3/common/VideoSize;

    new-instance v2, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;

    const/16 v3, 0x8

    invoke-direct {v2, v0, v3}, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    const/16 v0, 0x19

    iget-object v1, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v1, v0, v2}, Landroidx/media3/common/util/ListenerSet;->sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void

    :pswitch_13
    iget-object v1, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v0, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Exception;

    iget-object v1, v1, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->listener:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    iget-object v1, v1, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object v1, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    check-cast v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v2

    new-instance v3, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda5;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v0, v4}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda5;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;I)V

    const/16 v0, 0x406

    invoke-virtual {v1, v2, v0, v3}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void

    :pswitch_14
    iget-object v1, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    iget-object v0, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/extractor/SeekMap;

    iget-object v2, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->icyHeaders:Landroidx/media3/extractor/metadata/icy/IcyHeaders;

    if-nez v2, :cond_15

    move-object v2, v0

    goto :goto_a

    :cond_15
    new-instance v2, Landroidx/media3/extractor/SeekMap$Unseekable;

    invoke-direct {v2, v3, v4}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    :goto_a
    iput-object v2, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->seekMap:Landroidx/media3/extractor/SeekMap;

    invoke-interface {v0}, Landroidx/media3/extractor/SeekMap;->getDurationUs()J

    move-result-wide v5

    iput-wide v5, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->durationUs:J

    iget-boolean v2, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->isLengthKnown:Z

    if-nez v2, :cond_16

    invoke-interface {v0}, Landroidx/media3/extractor/SeekMap;->getDurationUs()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-nez v2, :cond_16

    move v7, v8

    goto :goto_b

    :cond_16
    const/4 v7, 0x0

    :goto_b
    iput-boolean v7, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->isLive:Z

    if-eqz v7, :cond_17

    const/4 v8, 0x7

    :cond_17
    iput v8, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->dataType:I

    iget-wide v2, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->durationUs:J

    invoke-interface {v0}, Landroidx/media3/extractor/SeekMap;->isSeekable()Z

    move-result v0

    iget-boolean v4, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->isLive:Z

    iget-object v5, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->listener:Landroidx/media3/exoplayer/source/ProgressiveMediaSource;

    invoke-virtual {v5, v2, v3, v0, v4}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->onSourceInfoRefreshed(JZZ)V

    iget-boolean v0, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->prepared:Z

    if-nez v0, :cond_18

    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->maybeFinishPrepare()V

    :cond_18
    return-void

    :pswitch_15
    iget-object v1, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;

    iget-object v0, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/Format;

    iget-object v2, v1, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    iget v3, v2, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->prepareCallsCount:I

    if-eqz v3, :cond_1a

    iget-boolean v3, v1, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->isReleased:Z

    if-eqz v3, :cond_19

    goto :goto_c

    :cond_19
    iget-object v3, v2, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v1, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->eventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v0, v5}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->acquireSession(Landroid/os/Looper;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/common/Format;Z)Landroidx/media3/exoplayer/drm/DrmSession;

    move-result-object v0

    iput-object v0, v1, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->session:Landroidx/media3/exoplayer/drm/DrmSession;

    iget-object v0, v2, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->preacquiredSessionReferences:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1a
    :goto_c
    return-void

    :pswitch_16
    iget-object v1, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object v0, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroidx/media3/exoplayer/PlayerMessage;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_7
    monitor-enter v2
    :try_end_7
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_7 .. :try_end_7} :catch_2

    :try_start_8
    iget-boolean v0, v2, Landroidx/media3/exoplayer/PlayerMessage;->isCanceled:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_9 .. :try_end_9} :catch_2

    if-eqz v0, :cond_1b

    goto :goto_d

    :cond_1b
    :try_start_a
    iget-object v0, v2, Landroidx/media3/exoplayer/PlayerMessage;->target:Landroidx/media3/exoplayer/PlayerMessage$Target;

    iget v1, v2, Landroidx/media3/exoplayer/PlayerMessage;->type:I

    iget-object v3, v2, Landroidx/media3/exoplayer/PlayerMessage;->payload:Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Landroidx/media3/exoplayer/PlayerMessage$Target;->handleMessage(ILjava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    invoke-virtual {v2, v8}, Landroidx/media3/exoplayer/PlayerMessage;->markAsProcessed(Z)V

    :goto_d
    return-void

    :catch_2
    move-exception v0

    goto :goto_e

    :catchall_4
    move-exception v0

    invoke-virtual {v2, v8}, Landroidx/media3/exoplayer/PlayerMessage;->markAsProcessed(Z)V

    throw v0

    :catchall_5
    move-exception v0

    move-object v1, v0

    monitor-exit v2

    throw v1
    :try_end_b
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_b .. :try_end_b} :catch_2

    :goto_e
    const-string v1, "ExoPlayerImplInternal"

    const-string v2, "Unexpected error delivering message on external thread."

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :pswitch_17
    iget-object v1, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object v0, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    iget v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->operationAcks:I

    sub-int/2addr v5, v6

    iput v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    iget-boolean v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->positionDiscontinuity:Z

    if-eqz v6, :cond_1c

    iget v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->discontinuityReason:I

    iput v6, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingDiscontinuityReason:I

    iput-boolean v8, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingDiscontinuity:Z

    :cond_1c
    iget-boolean v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->hasPlayWhenReadyChangeReason:Z

    if-eqz v6, :cond_1d

    iget v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->playWhenReadyChangeReason:I

    iput v6, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingPlayWhenReadyChangeReason:I

    :cond_1d
    if-nez v5, :cond_27

    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v5, v5, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v6, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v6, v6, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v6}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1e

    invoke-virtual {v5}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1e

    iput v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingWindowIndex:I

    const-wide/16 v6, 0x0

    iput-wide v6, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingWindowPositionMs:J

    :cond_1e
    invoke-virtual {v5}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_20

    move-object v2, v5

    check-cast v2, Landroidx/media3/exoplayer/PlaylistTimeline;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaylistTimeline;->timelines:[Landroidx/media3/common/Timeline;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    iget-object v7, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v6, v7, :cond_1f

    move v6, v8

    goto :goto_f

    :cond_1f
    const/4 v6, 0x0

    :goto_f
    invoke-static {v6}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    const/4 v6, 0x0

    :goto_10
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_20

    iget-object v7, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/common/Timeline;

    iput-object v9, v7, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;->timeline:Landroidx/media3/common/Timeline;

    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_20
    iget-boolean v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingDiscontinuity:Z

    if-eqz v2, :cond_26

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v6, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v6, v6, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2, v6}, Landroidx/media3/common/MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v6, v2, Landroidx/media3/exoplayer/PlaybackInfo;->discontinuityStartPositionUs:J

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v9, v2, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    cmp-long v2, v6, v9

    if-eqz v2, :cond_21

    goto :goto_11

    :cond_21
    const/4 v8, 0x0

    :cond_22
    :goto_11
    if-eqz v8, :cond_25

    invoke-virtual {v5}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_24

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2}, Landroidx/media3/common/MediaPeriodId;->isAd()Z

    move-result v2

    if-eqz v2, :cond_23

    goto :goto_12

    :cond_23
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v3, v2, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v6, v2, Landroidx/media3/exoplayer/PlaybackInfo;->discontinuityStartPositionUs:J

    iget-object v2, v3, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v5, v2, v3}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget-wide v2, v3, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    add-long/2addr v6, v2

    goto :goto_13

    :cond_24
    :goto_12
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v6, v2, Landroidx/media3/exoplayer/PlaybackInfo;->discontinuityStartPositionUs:J

    :goto_13
    move-wide v3, v6

    :cond_25
    move-wide/from16 v31, v3

    move/from16 v29, v8

    const/4 v2, 0x0

    goto :goto_14

    :cond_26
    move-wide/from16 v31, v3

    const/4 v2, 0x0

    const/16 v29, 0x0

    :goto_14
    iput-boolean v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingDiscontinuity:Z

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    const/16 v27, 0x1

    iget v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingPlayWhenReadyChangeReason:I

    iget v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingDiscontinuityReason:I

    const/16 v33, -0x1

    const/16 v34, 0x0

    move-object/from16 v25, v1

    move-object/from16 v26, v0

    move/from16 v28, v2

    move/from16 v30, v3

    invoke-virtual/range {v25 .. v34}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlaybackInfo(Landroidx/media3/exoplayer/PlaybackInfo;IIZIJIZ)V

    :cond_27
    return-void

    :pswitch_18
    iget-object v1, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/util/NetworkTypeObserver;

    iget-object v0, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter$$ExternalSyntheticLambda0;

    iget-object v2, v1, Landroidx/media3/common/util/NetworkTypeObserver;->networkTypeLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_c
    iget v1, v1, Landroidx/media3/common/util/NetworkTypeObserver;->networkType:I

    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter$$ExternalSyntheticLambda0;->onNetworkTypeChanged(I)V

    return-void

    :catchall_6
    move-exception v0

    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    throw v0

    :pswitch_19
    iget-object v1, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v1, L_COROUTINE/_BOUNDARY;

    iget-object v0, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, L_COROUTINE/_BOUNDARY;->onFontRetrieved(Landroid/graphics/Typeface;)V

    return-void

    :pswitch_1a
    iget-object v1, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v1, Landroidx/room/TransactionExecutor;

    iget-object v0, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_e
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    invoke-virtual {v1}, Landroidx/room/TransactionExecutor;->scheduleNext()V

    return-void

    :catchall_7
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1}, Landroidx/room/TransactionExecutor;->scheduleNext()V

    throw v2

    :pswitch_1b
    iget-object v1, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/Controller;

    iget-object v0, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    iget-boolean v2, v1, Lcom/motorola/camera/Controller;->mIsSplitScreen:Z

    invoke-virtual {v1, v2, v8}, Lcom/motorola/camera/Controller;->setLayoutChanged(ZZ)V

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :goto_15
    iget-object v1, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;

    iget-object v0, v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    iget-object v1, v1, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    iget-object v1, v1, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mCreateCaptureSessionListener:Lcom/motorola/camera/device/callables/CreateCaptureSessionListener;

    check-cast v1, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;

    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-boolean v1, v1, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->mMcfSupportCurrentMode:Z

    invoke-static {v2, v0, v1}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->updateSceneMode(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/mcf/Mcf$SceneMode;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
