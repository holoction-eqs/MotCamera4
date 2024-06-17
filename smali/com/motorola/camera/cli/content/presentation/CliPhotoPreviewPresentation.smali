.class public final Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;
.super Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ui/widgets/gl/photoroll/iThumbnail;


# instance fields
.field public cameraData:Lcom/motorola/camera/CameraData;

.field public cliPreviewBmp:Landroid/widget/ImageView;

.field public cliPreviewLayout:Lcom/motorola/camera/ui/widgets/OrientedFrameLayout;

.field public cliPreviewLoading:Landroid/widget/ProgressBar;

.field public final data:Landroid/os/Bundle;

.field public dismissed:Z


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Lcom/motorola/camera/cli/CliEventListener;)V
    .locals 1

    const-string v0, "eventListener"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;-><init>(Lcom/motorola/camera/cli/CliEventListener;)V

    iput-object p1, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->data:Landroid/os/Bundle;

    return-void
.end method

.method public static final access$getImage(Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IIIJJ)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v15, p8

    iget-object v1, v0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->cameraData:Lcom/motorola/camera/CameraData;

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, v0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x320

    :goto_0
    int-to-double v2, v1

    move/from16 v4, p6

    int-to-double v4, v4

    div-double/2addr v2, v4

    new-instance v14, Landroid/util/Size;

    move/from16 v4, p7

    int-to-double v4, v4

    mul-double/2addr v4, v2

    double-to-int v2, v4

    invoke-direct {v14, v1, v2}, Landroid/util/Size;-><init>(II)V

    new-instance v13, Lcom/motorola/camera/CameraData;

    invoke-virtual {v14}, Landroid/util/Size;->getWidth()I

    move-result v11

    invoke-virtual {v14}, Landroid/util/Size;->getHeight()I

    move-result v12

    const/16 v16, 0x0

    move-object v1, v13

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p9

    move-wide/from16 v9, p11

    move-object v15, v13

    move/from16 v13, p8

    move-object/from16 v17, v14

    move/from16 v14, v16

    invoke-direct/range {v1 .. v14}, Lcom/motorola/camera/CameraData;-><init>(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJIIII)V

    iput-object v15, v0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->cameraData:Lcom/motorola/camera/CameraData;

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v1, v1, Lcom/motorola/camera/CameraApp;->mRawSize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_2

    move v2, v3

    :cond_2
    mul-int/2addr v2, v1

    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_3

    move v3, v4

    :cond_3
    div-int/2addr v2, v3

    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getHeight()I

    move-result v4

    if-gt v3, v4, :cond_4

    const/16 v3, 0x5a

    move/from16 v4, p8

    if-eq v4, v3, :cond_5

    const/16 v3, 0x10e

    if-eq v4, v3, :cond_5

    goto :goto_1

    :cond_4
    move/from16 v4, p8

    :goto_1
    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getHeight()I

    move-result v5

    if-le v3, v5, :cond_6

    if-eqz v4, :cond_5

    const/16 v3, 0xb4

    if-ne v4, v3, :cond_6

    :cond_5
    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v2, v1}, Landroid/util/Size;-><init>(II)V

    goto :goto_2

    :cond_6
    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v1, v2}, Landroid/util/Size;-><init>(II)V

    :goto_2
    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->sInstance:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;

    iget-object v2, v0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->eventListener:Lcom/motorola/camera/cli/CliEventListener;

    check-cast v2, Lcom/motorola/camera/cli/content/CliContentManager;

    iget-object v2, v2, Lcom/motorola/camera/cli/content/CliContentManager;->controller:Lcom/motorola/camera/Controller;

    invoke-virtual {v2}, Lcom/motorola/camera/Controller;->getUiContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "controller.uiContext"

    invoke-static {v2, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->loadThumbnail(Landroid/content/Context;Lcom/motorola/camera/ui/widgets/gl/photoroll/iThumbnail;Landroid/util/Size;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public final getCameraData()Lcom/motorola/camera/CameraData;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->cameraData:Lcom/motorola/camera/CameraData;

    return-object p0
.end method

.method public final onOrientationChanged()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->cliPreviewLayout:Lcom/motorola/camera/ui/widgets/OrientedFrameLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->getCliOrientation()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/OrientedFrameLayout;->setOrientation(I)V

    :goto_0
    return-void
.end method

.method public final onViewAdded()V
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "GLOBAL_UUID"

    iget-object v2, v1, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->data:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v0, "THUMB_PATH"

    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "FILE_NAME"

    invoke-virtual {v2, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "FILE_PATH"

    invoke-virtual {v2, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ORIENTATION"

    invoke-virtual {v2, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v7, "THUMB_WIDTH"

    invoke-virtual {v2, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "THUMB_HEIGHT"

    invoke-virtual {v2, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v10, "DATE_TAKEN"

    invoke-virtual {v2, v10}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    const-string v12, "DATE_MODIFIED"

    invoke-virtual {v2, v12}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    const-string v14, "CliPhotoPreviewPresentation"

    if-lez v7, :cond_4

    if-gtz v8, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz v0, :cond_1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v3, "createBitmap(width, heig\u2026 Bitmap.Config.ARGB_8888)"

    invoke-static {v2, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static {v3}, Lcom/motorola/camera/Util;->readFile(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object v3

    const-string v4, "readFile(file)"

    invoke-static {v3, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v3, "Bitmap can`t be read. Thumbnail path: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {v1, v2}, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->showImagePreview(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_1
    const-string v0, "URI"

    const-class v14, Landroid/net/Uri;

    invoke-static {v2, v0, v14}, Lokio/SegmentPool;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/net/Uri;

    if-eqz v14, :cond_3

    iget-object v15, v1, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    if-eqz v15, :cond_3

    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v15}, Landroidx/core/view/ViewCompat$Api19Impl;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v15}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_2

    move-object/from16 v0, p0

    move-wide v1, v3

    move-object v3, v14

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move-wide v9, v10

    move-wide v11, v12

    invoke-static/range {v0 .. v12}, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->access$getImage(Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IIIJJ)V

    goto :goto_1

    :cond_2
    new-instance v2, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$onViewAdded$lambda$3$lambda$2$$inlined$doOnLayout$1;

    move-object v0, v2

    move-object/from16 v1, p0

    move-object/from16 v16, v2

    move-wide v2, v3

    move-object v4, v14

    invoke-direct/range {v0 .. v13}, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$onViewAdded$lambda$3$lambda$2$$inlined$doOnLayout$1;-><init>(Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IIIJJ)V

    move-object/from16 v0, v16

    invoke-virtual {v15, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bitmap cannot be created. Width and Height must be greater than zero. {width="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onViewInflated()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v2, 0x7f0a00f0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/OrientedFrameLayout;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->cliPreviewLayout:Lcom/motorola/camera/ui/widgets/OrientedFrameLayout;

    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    if-eqz v0, :cond_1

    const v2, 0x7f0a00ef

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->cliPreviewBmp:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    if-eqz v0, :cond_2

    const v1, 0x7f0a00f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/ProgressBar;

    :cond_2
    iput-object v1, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->cliPreviewLoading:Landroid/widget/ProgressBar;

    return-void
.end method

.method public final onViewRemoved()V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->dismissed:Z

    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->cameraData:Lcom/motorola/camera/CameraData;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->sInstance:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->cameraData:Lcom/motorola/camera/CameraData;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v1

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->mLoadBitmapTaskMap:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v5, v3, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;->mThumbnailList:Ljava/util/Set;

    invoke-interface {v5, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v5, v3, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;->mThumbnailList:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->mLoadBitmapTaskMap:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->mLargeKindBitmapTaskMap:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$UpdateLargeKindBitmapTask;

    if-eqz v3, :cond_1

    iget-object v5, v3, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$UpdateLargeKindBitmapTask;->mThumbnailList:Ljava/util/Set;

    invoke-interface {v5, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p0, v3, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$UpdateLargeKindBitmapTask;->mThumbnailList:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->mLargeKindBitmapTaskMap:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public final presentationLayoutRes()I
    .locals 0

    const p0, 0x7f0d003a

    return p0
.end method

.method public final setBitmap(Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;)V
    .locals 2

    iget-boolean p2, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->dismissed:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    if-eqz p2, :cond_0

    new-instance v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;

    const/16 v1, 0x1a

    invoke-direct {v0, v1, p0, p1}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final setLargeKindBitmap(Lcom/motorola/camera/CameraData;Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public final showImagePreview(Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->cliPreviewBmp:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    sget-boolean p1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_CLI_MIRROR_INSTANT_REVIEW:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->cliPreviewBmp:Landroid/widget/ImageView;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->cliPreviewLoading:Landroid/widget/ProgressBar;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object p1, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->cliPreviewBmp:Landroid/widget/ImageView;

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object p1, p1, Lcom/motorola/camera/CameraApp;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    const/16 v1, 0x1b

    invoke-direct {v0, p0, v1}, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Lcom/motorola/camera/CameraApp;->postDelayed(Ljava/lang/Runnable;J)V

    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->acquireCliWakeLock()V

    return-void
.end method
