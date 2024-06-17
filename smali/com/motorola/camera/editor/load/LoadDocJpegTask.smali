.class public final Lcom/motorola/camera/editor/load/LoadDocJpegTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field public final mCropUri:Landroid/net/Uri;

.field public final mJpegUri:Landroid/net/Uri;

.field public final mListener:Lcom/motorola/camera/editor/load/LoadDocJpegListener;

.field public final mOrigUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Lcom/motorola/camera/editor/load/LoadDocJpegListener;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/load/LoadDocJpegTask;->mJpegUri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/motorola/camera/editor/load/LoadDocJpegTask;->mOrigUri:Landroid/net/Uri;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/motorola/camera/editor/load/LoadDocJpegTask;->mCropUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/motorola/camera/editor/load/LoadDocJpegTask;->mListener:Lcom/motorola/camera/editor/load/LoadDocJpegListener;

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    check-cast p1, [Ljava/lang/Void;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    new-instance p1, Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v0, p0, Lcom/motorola/camera/editor/load/LoadDocJpegTask;->mJpegUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/motorola/camera/editor/load/LoadDocJpegTask;->mCropUri:Landroid/net/Uri;

    invoke-direct {p1, v0, v1}, Lcom/motorola/camera/editor/DocJpegHolder;-><init>(Landroid/net/Uri;Landroid/net/Uri;)V

    if-eqz v0, :cond_10

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v4, "LoadDocJpegTask"

    const/4 v5, 0x2

    if-eqz v1, :cond_8

    sget-object v1, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/motorola/camera/settings/CacheBehavior;->extractBufferFromContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;)[B

    move-result-object v1

    iput-object v1, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mCropBuffer:[B

    if-nez v1, :cond_1

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object p0, p0, Lcom/motorola/camera/editor/load/LoadDocJpegTask;->mOrigUri:Landroid/net/Uri;

    invoke-static {v1, p0}, Lcom/motorola/camera/settings/CacheBehavior;->extractBufferFromContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;)[B

    move-result-object p0

    iput-object p0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mCropBuffer:[B

    :cond_1
    iget-object p0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mCropBuffer:[B

    const/4 v1, 0x0

    if-nez p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "load jpeg error:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v1

    goto/16 :goto_d

    :cond_2
    new-instance p0, Lcom/motorola/camera/editor/parser/DocDataParser;

    invoke-direct {p0}, Lcom/motorola/camera/editor/parser/DocDataParser;-><init>()V

    new-instance v0, Lkotlin/jvm/internal/SpreadBuilder;

    invoke-direct {v0}, Lkotlin/jvm/internal/SpreadBuilder;-><init>()V

    iget-object v6, v0, Lkotlin/jvm/internal/SpreadBuilder;->list:Ljava/util/ArrayList;

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mCropBuffer:[B

    :try_start_0
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v1, Lcom/motorola/camera/editor/parser/XMPStream;

    invoke-direct {v1, v7}, Lcom/motorola/camera/editor/parser/XMPStream;-><init>(Ljava/io/ByteArrayInputStream;)V

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/SpreadBuilder;->parse(Lcom/motorola/camera/editor/parser/XMPStream;)V

    iget-object v6, v1, Lcom/motorola/camera/editor/parser/XMPStream;->extended:Ljava/lang/String;

    if-eqz v6, :cond_3

    iput v5, v1, Lcom/motorola/camera/editor/parser/XMPStream;->status:I

    :cond_3
    if-eqz v6, :cond_4

    move v6, v3

    goto :goto_1

    :cond_4
    move v6, v2

    :goto_1
    if-eqz v6, :cond_5

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/SpreadBuilder;->parse(Lcom/motorola/camera/editor/parser/XMPStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    invoke-static {v7}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_0
    move-exception p0

    move-object v1, v7

    goto :goto_2

    :catch_0
    move-object v1, v7

    goto :goto_3

    :catchall_1
    move-exception p0

    :goto_2
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw p0

    :catch_1
    :goto_3
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    :goto_4
    iget-object p0, p0, Lcom/motorola/camera/editor/parser/DocDataParser;->mImageData:[B

    if-eqz p0, :cond_6

    move v0, v3

    goto :goto_5

    :cond_6
    move v0, v2

    :goto_5
    if-eqz v0, :cond_7

    iput-object p0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegBuffer:[B

    goto :goto_6

    :cond_7
    iget-object p0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mCropBuffer:[B

    array-length v0, p0

    new-array v0, v0, [B

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegBuffer:[B

    goto :goto_6

    :cond_8
    sget-object p0, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils;->TAG:Ljava/lang/String;

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/CacheBehavior;->extractBufferFromContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;)[B

    move-result-object p0

    iput-object p0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegBuffer:[B

    :goto_6
    iget-object p0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegBuffer:[B

    array-length v0, p0

    invoke-static {p0, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegWidth:I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegHeight:I

    invoke-static {p0}, Lcom/motorola/camera/Util;->recycleBitmap(Landroid/graphics/Bitmap;)V

    :try_start_2
    iget-object p0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mCropUri:Landroid/net/Uri;

    if-nez p0, :cond_9

    move p0, v3

    goto :goto_7

    :cond_9
    move p0, v2

    :goto_7
    if-eqz p0, :cond_a

    iget-object p0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mCropBuffer:[B

    goto :goto_8

    :cond_a
    iget-object p0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegBuffer:[B

    :goto_8
    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    const-string p0, "Orientation"

    invoke-virtual {v0, v3, p0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttributeInt(ILjava/lang/String;)I

    move-result p0

    const/4 v1, 0x3

    const/4 v6, 0x6

    const/16 v7, 0x8

    if-eq p0, v1, :cond_d

    if-eq p0, v6, :cond_c

    if-eq p0, v7, :cond_b

    const/4 p0, 0x0

    goto :goto_9

    :cond_b
    const/high16 p0, 0x43870000    # 270.0f

    goto :goto_9

    :cond_c
    const/high16 p0, 0x42b40000    # 90.0f

    goto :goto_9

    :cond_d
    const/high16 p0, 0x43340000    # 180.0f

    :goto_9
    iput p0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    new-array p0, v7, [F

    sget-object v8, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_DOC_POINTS:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v0, v8}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_e

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_e

    const-string v1, ";"

    invoke-virtual {v8, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v5, v1

    if-lt v5, v7, :cond_f

    :goto_a
    if-ge v2, v7, :cond_f

    aget-object v5, v1, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    aput v5, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_e
    iget v7, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegWidth:I

    div-int/lit8 v8, v7, 0x3

    iget v9, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegHeight:I

    div-int/lit8 v10, v9, 0x3

    int-to-float v11, v8

    aput v11, p0, v2

    int-to-float v2, v10

    aput v2, p0, v3

    sub-int/2addr v7, v8

    int-to-float v7, v7

    aput v7, p0, v5

    aput v2, p0, v1

    const/4 v1, 0x4

    aput v7, p0, v1

    sub-int/2addr v9, v10

    int-to-float v1, v9

    const/4 v2, 0x5

    aput v1, p0, v2

    aput v11, p0, v6

    const/4 v2, 0x7

    aput v1, p0, v2

    :cond_f
    iput-object p0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mOriginalPoints:[F

    sget-object p0, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_DOC_FILTER:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    sget-object v1, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;->mLookUp:Ljava/util/HashMap;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    invoke-virtual {v0, p0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_b

    :catch_2
    :try_start_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_b
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mFilterMode:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_c

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    :goto_c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    :goto_d
    return-object p1
.end method

.method public final bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/motorola/camera/editor/DocJpegHolder;

    return-void
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/motorola/camera/editor/DocJpegHolder;

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/editor/load/LoadDocJpegTask;->mListener:Lcom/motorola/camera/editor/load/LoadDocJpegListener;

    if-eqz p0, :cond_2

    check-cast p0, Lcom/motorola/camera/editor/DocEditorActivity;

    iput-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget v0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    iput v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mInitRotate:F

    iget v0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mFilterMode:I

    iput v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mInitFilter:I

    iget-object p1, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mOriginalPoints:[F

    invoke-virtual {p0, p1}, Lcom/motorola/camera/editor/DocEditorActivity;->updateAdjustBitmap([F)V

    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mFilterButtons:Lcom/motorola/camera/editor/ui/FilterButtonView;

    iget v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mInitFilter:I

    invoke-virtual {p1, v0}, Lcom/motorola/camera/editor/ui/FilterButtonView;->setCenter(I)V

    iget p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mInitFilter:I

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mDocEditValues:Landroidx/work/impl/StartStopTokens;

    const-string v1, "ANALYTICS_DOC_EDITOR_FILTER"

    invoke-virtual {v0, p1, v1}, Landroidx/work/impl/StartStopTokens;->putInt(ILjava/lang/String;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/motorola/camera/editor/DocEditorActivity;->updateViewForState$enumunboxing$(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegLoadFinish:Z

    :cond_2
    :goto_0
    return-void
.end method
