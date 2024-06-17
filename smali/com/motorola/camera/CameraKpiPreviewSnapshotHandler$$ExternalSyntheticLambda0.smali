.class public final synthetic Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

.field public final synthetic f$1:Ljava/nio/Buffer;

.field public final synthetic f$2:Landroid/util/Size;

.field public final synthetic f$3:I

.field public final synthetic f$4:J

.field public final synthetic f$5:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;Ljava/nio/Buffer;Landroid/util/Size;IJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

    iput-object p2, p0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler$$ExternalSyntheticLambda0;->f$1:Ljava/nio/Buffer;

    iput-object p3, p0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler$$ExternalSyntheticLambda0;->f$2:Landroid/util/Size;

    iput p4, p0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler$$ExternalSyntheticLambda0;->f$3:I

    iput-wide p5, p0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler$$ExternalSyntheticLambda0;->f$4:J

    iput-object p7, p0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler$$ExternalSyntheticLambda0;->f$5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const-string v0, "this$0"

    iget-object v1, p0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

    invoke-static {v1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler$$ExternalSyntheticLambda0;->f$1:Ljava/nio/Buffer;

    const-string v1, "$frameToSave"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler$$ExternalSyntheticLambda0;->f$2:Landroid/util/Size;

    const-string v2, "$bmpSize"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler$$ExternalSyntheticLambda0;->f$5:Ljava/lang/String;

    const-string v3, "$metaData"

    invoke-static {v2, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    iget v3, p0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler$$ExternalSyntheticLambda0;->f$3:I

    int-to-float v4, v3

    invoke-virtual {v9, v4}, Landroid/graphics/Matrix;->preRotate(F)Z

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v3, :cond_1

    const/16 v6, 0x5a

    if-eq v3, v6, :cond_0

    const/16 v6, 0xb4

    if-eq v3, v6, :cond_1

    const/16 v6, 0x10e

    if-eq v3, v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v9, v4, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v9, v5, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    :goto_0
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v3, "createBitmap(bmpSize.wid\u2026 Bitmap.Config.ARGB_8888)"

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x0

    move-object v4, v1

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v3, "createBitmap(bitmap, 0, \u2026 bitmap.height, m, false)"

    invoke-static {v0, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v1, Lcom/motorola/camera/saving/FileName;

    sget-object v3, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    iget-wide v4, p0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler$$ExternalSyntheticLambda0;->f$4:J

    invoke-direct {v1, v3, v4, v5}, Lcom/motorola/camera/saving/FileName;-><init>(Lcom/motorola/camera/ShotType;J)V

    const/high16 p0, 0x100000

    invoke-virtual {v1, p0}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/motorola/camera/saving/FileName;->suffix(Ljava/lang/String;)Lcom/motorola/camera/saving/FileName;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/storage/StorageUtils;->getCameraMediaFilePathWithFallback(Ljava/lang/String;)Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/storage/MediaFile;->fromMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;)Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    move-result-object p0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->getWriteFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getJpegQuality()I

    move-result v3

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :cond_2
    :try_start_3
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Bitmap.compress() failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_5
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_6
    const-string v2, "SaveImageService"

    const-string v3, "savePreviewFrameDump failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p0}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    :goto_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    throw p0
.end method
