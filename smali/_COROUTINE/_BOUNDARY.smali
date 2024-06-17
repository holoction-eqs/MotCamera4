.class public abstract L_COROUTINE/_BOUNDARY;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static buildScaleAndRotateTransformationMethod:Ljava/lang/reflect/Method;

.field public static buildVideoFrameProcessorFactoryMethod:Ljava/lang/reflect/Method;

.field public static scaleAndRotateTransformationBuilderConstructor:Ljava/lang/reflect/Constructor;

.field public static setRotationMethod:Ljava/lang/reflect/Method;

.field public static videoFrameProcessorFactoryBuilderConstructor:Ljava/lang/reflect/Constructor;

.field public static zza:Landroid/content/Context;

.field public static zzb:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkArgumentNonnegative(I)V
    .locals 0

    if-ltz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    :cond_2
    :goto_0
    return v0
.end method

.method public static final getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 2

    const-string v0, "c"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "`"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x60

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static final getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 7

    const-string v0, "c"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, L_COROUTINE/_BOUNDARY;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    const-string p0, "c.columnNames"

    invoke-static {v1, p0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3f

    invoke-static/range {v1 .. v6}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/coroutines/CoroutineDispatcher$Key$1;I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "RoomCursorUtil"

    const-string v1, "Cannot collect column names for debug purposes"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p0, "unknown"

    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "column \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not exist. Available columns: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static prepare()V
    .locals 5

    sget-object v0, L_COROUTINE/_BOUNDARY;->scaleAndRotateTransformationBuilderConstructor:Ljava/lang/reflect/Constructor;

    const-string v1, "build"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, L_COROUTINE/_BOUNDARY;->setRotationMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, L_COROUTINE/_BOUNDARY;->buildScaleAndRotateTransformationMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "androidx.media3.effect.ScaleAndRotateTransformation$Builder"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    sput-object v3, L_COROUTINE/_BOUNDARY;->scaleAndRotateTransformationBuilderConstructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v2

    const-string v4, "setRotationDegrees"

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, L_COROUTINE/_BOUNDARY;->setRotationMethod:Ljava/lang/reflect/Method;

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, L_COROUTINE/_BOUNDARY;->buildScaleAndRotateTransformationMethod:Ljava/lang/reflect/Method;

    :cond_1
    sget-object v0, L_COROUTINE/_BOUNDARY;->videoFrameProcessorFactoryBuilderConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_2

    sget-object v0, L_COROUTINE/_BOUNDARY;->buildVideoFrameProcessorFactoryMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "androidx.media3.effect.DefaultVideoFrameProcessor$Factory$Builder"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    sput-object v3, L_COROUTINE/_BOUNDARY;->videoFrameProcessorFactoryBuilderConstructor:Ljava/lang/reflect/Constructor;

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, L_COROUTINE/_BOUNDARY;->buildVideoFrameProcessorFactoryMethod:Ljava/lang/reflect/Method;

    :cond_3
    return-void
.end method

.method public static readPcrFromPacket(IILandroidx/media3/common/util/ParsableByteArray;)J
    .locals 10

    invoke-virtual {p2, p0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget p0, p2, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v0, p2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr p0, v0

    const/4 v0, 0x5

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-ge p0, v0, :cond_0

    return-wide v1

    :cond_0
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result p0

    const/high16 v0, 0x800000

    and-int/2addr v0, p0

    if-eqz v0, :cond_1

    return-wide v1

    :cond_1
    const v0, 0x1fff00

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x8

    if-eq v0, p1, :cond_2

    return-wide v1

    :cond_2
    and-int/lit8 p0, p0, 0x20

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    move p0, p1

    goto :goto_0

    :cond_3
    move p0, v0

    :goto_0
    if-nez p0, :cond_4

    return-wide v1

    :cond_4
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/4 v3, 0x7

    if-lt p0, v3, :cond_6

    iget p0, p2, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v4, p2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr p0, v4

    if-lt p0, v3, :cond_6

    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 v4, 0x10

    and-int/2addr p0, v4

    if-ne p0, v4, :cond_5

    move p0, p1

    goto :goto_1

    :cond_5
    move p0, v0

    :goto_1
    if-eqz p0, :cond_6

    const/4 p0, 0x6

    new-array v1, p0, [B

    invoke-virtual {p2, v0, p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    aget-byte p0, v1, v0

    int-to-long v4, p0

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    const/16 p0, 0x19

    shl-long/2addr v4, p0

    aget-byte p0, v1, p1

    int-to-long v8, p0

    and-long/2addr v8, v6

    const/16 p0, 0x11

    shl-long/2addr v8, p0

    or-long/2addr v4, v8

    const/4 p0, 0x2

    aget-byte p0, v1, p0

    int-to-long v8, p0

    and-long/2addr v8, v6

    const/16 p0, 0x9

    shl-long/2addr v8, p0

    or-long/2addr v4, v8

    const/4 p0, 0x3

    aget-byte p0, v1, p0

    int-to-long v8, p0

    and-long/2addr v8, v6

    shl-long p0, v8, p1

    or-long/2addr p0, v4

    const/4 p2, 0x4

    aget-byte p2, v1, p2

    int-to-long v0, p2

    and-long/2addr v0, v6

    shr-long/2addr v0, v3

    or-long/2addr p0, v0

    return-wide p0

    :cond_6
    return-wide v1
.end method

.method public static readSeekTableMetadataBlock(Landroidx/media3/common/util/ParsableByteArray;)Lcom/airbnb/lottie/model/MutablePair;
    .locals 10

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v0

    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    int-to-long v1, v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    div-int/lit8 v0, v0, 0x12

    new-array v3, v0, [J

    new-array v4, v0, [J

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_1

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-nez v8, :cond_0

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    goto :goto_1

    :cond_0
    aput-wide v6, v3, v5

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v6

    aput-wide v6, v4, v5

    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget v0, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    int-to-long v5, v0

    sub-long/2addr v1, v5

    long-to-int v0, v1

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    new-instance p0, Lcom/airbnb/lottie/model/MutablePair;

    const/4 v0, 0x5

    invoke-direct {p0, v0, v3, v4}, Lcom/airbnb/lottie/model/MutablePair;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public arrayListValues()Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;
    .locals 2

    const-string v0, "expectedValuesPerKey"

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lkotlin/LazyKt__LazyKt;->checkNonnegative(ILjava/lang/String;)V

    new-instance v0, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;-><init>(L_COROUTINE/_BOUNDARY;)V

    return-object v0
.end method

.method public callbackFailAsync(I)V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/motorola/camera/mediacodec/MediaCodecEngine$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public callbackSuccessAsync(Landroid/graphics/Typeface;)V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0, p1}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public abstract createIntent(Landroidx/activity/ComponentActivity;Ljava/lang/Object;)Landroid/content/Intent;
.end method

.method public abstract createMap()Ljava/util/Map;
.end method

.method public getSynchronousResult(Landroidx/activity/ComponentActivity;Ljava/lang/Object;)Lcom/adobe/xmp/impl/xpath/XMPPath;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract onFontRetrievalFailed(I)V
.end method

.method public abstract onFontRetrieved(Landroid/graphics/Typeface;)V
.end method

.method public abstract parseResult(Landroid/content/Intent;I)Ljava/lang/Object;
.end method

.method public abstract query()V
.end method
