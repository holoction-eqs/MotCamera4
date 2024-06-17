.class public final Lcom/motorola/camera/service/BgJobService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/motorola/camera/service/BgJobService;",
        "Landroid/app/Service;",
        "<init>",
        "()V",
        "Companion",
        "ButtonHandler",
        "MotCamera4-v9.1.0.91_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final messenger:Landroid/os/Messenger;

.field public final responseMap:Ljava/util/LinkedHashMap;

.field public final saveListener:Lcom/motorola/camera/service/BgJobService$saveListener$1;

.field public final subTaskCount:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/service/BgJobService;->responseMap:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/service/BgJobService;->subTaskCount:Ljava/util/LinkedHashMap;

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Landroidx/appcompat/app/AlertController$ButtonHandler;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertController$ButtonHandler;-><init>(Lcom/motorola/camera/service/BgJobService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/motorola/camera/service/BgJobService;->messenger:Landroid/os/Messenger;

    new-instance v0, Lcom/motorola/camera/service/BgJobService$saveListener$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/service/BgJobService$saveListener$1;-><init>(Lcom/motorola/camera/service/BgJobService;)V

    iput-object v0, p0, Lcom/motorola/camera/service/BgJobService;->saveListener:Lcom/motorola/camera/service/BgJobService$saveListener$1;

    return-void
.end method

.method public static acknowledgeJob(Landroid/os/Message;Lcom/motorola/camera/background/common/TaskId;)V
    .locals 3

    const-string v0, "msg"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "task_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x7

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {p0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can Not acknowledge job "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BgJobService"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static addMetadataToJpeg(Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V
    .locals 5

    const-string v0, "JOB_CONTEXT"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    if-nez v2, :cond_7

    const-string v2, "metadataContext"

    invoke-static {p0, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    if-eqz v1, :cond_3

    const-string p0, "Cannot parse empty string"

    goto :goto_3

    :cond_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "Missing metadataContext object"

    goto :goto_3

    :cond_4
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "makerNotes"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string p0, "Missing makernotes object"

    :goto_3
    const-string v0, "BgJobContext"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    :goto_4
    if-ge v0, v3, :cond_6

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    new-instance p0, Lcom/motorola/camera/background/provider/BgJobContext$MetadataContext;

    invoke-direct {p0, v1}, Lcom/motorola/camera/background/provider/BgJobContext$MetadataContext;-><init>(Ljava/nio/ByteBuffer;)V

    :goto_5
    if-eqz p0, :cond_7

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    iget-object p0, p0, Lcom/motorola/camera/background/provider/BgJobContext$MetadataContext;->makerNotesData:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setMakernoteByteArray([B)V

    invoke-virtual {v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->saveAttributesToByteArray()[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->setByteBuffer(Ljava/nio/ByteBuffer;)V

    :cond_7
    return-void
.end method

.method public static getResponseMessage(ILcom/motorola/camera/background/common/TaskId;)Landroid/os/Message;
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p0, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p0

    const-class v1, Lcom/motorola/camera/background/common/TaskId;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "task_id"

    invoke-virtual {p0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method public static getTaskID(Landroid/os/Bundle;)Lcom/motorola/camera/background/common/TaskId;
    .locals 2

    const-class v0, Lcom/motorola/camera/background/common/TaskId;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "task_id"

    invoke-static {p0, v1, v0}, Lokio/SegmentPool;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/common/TaskId;

    return-object p0
.end method

.method public static isValidData(Landroid/os/Bundle;)Z
    .locals 3

    const-string v0, "task_id"

    const-class v1, Lcom/motorola/camera/background/common/TaskId;

    invoke-static {p0, v0, v1}, Lokio/SegmentPool;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/common/TaskId;

    if-eqz p0, :cond_1

    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService;->mProcessingRecords:Ljava/util/Map;

    iget-wide v1, p0, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    long-to-int p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/CameraData;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "TaskID data can not be null "

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static loadAuxiliaryData(JLjava/util/ArrayList;Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Landroid/content/Context;)Z
    .locals 7

    invoke-static {p4, p0, p1}, Lcom/motorola/camera/background/provider/FileDataContract;->retrieveFileInBuffer(Landroid/content/Context;J)[B

    move-result-object p0

    new-instance p1, Ljava/lang/String;

    invoke-static {p0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-object p0, p3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    invoke-virtual {p0, p4, p1}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->parseFromJson(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p1, Lcom/motorola/camera/mcf/McfAuxiliaryData;->DEPTHRENDER:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/mcf/McfDepthRender;

    const-string v0, "BgJobService"

    if-eqz p1, :cond_4

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v1, -0x1

    move-wide v3, v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;

    if-eqz p2, :cond_1

    iget-object v5, p2, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;->category:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    const-string v6, "ORIGIN"

    invoke-static {v5, v6}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-wide v3, p2, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;->fid:J

    goto :goto_0

    :cond_2
    cmp-long p1, v3, v1

    if-eqz p1, :cond_3

    invoke-static {p4, v3, v4}, Lcom/motorola/camera/background/provider/FileDataContract;->retrieveFileInBuffer(Landroid/content/Context;J)[B

    move-result-object p1

    invoke-static {p1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-object p2, p3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mAuxImages:Ljava/util/HashMap;

    const-string p4, "record.mAuxImages"

    invoke-static {p2, p4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord$AuxiliaryImage;->DEPTH_RENDER_ORIGINAL:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord$AuxiliaryImage;

    invoke-virtual {p2, p4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    const-string p0, "missing origin image for depth capture"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    sget-object p1, Lcom/motorola/camera/mcf/McfAuxiliaryData;->DEPTHMAP:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/mcf/McfAuxFrameData;

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getData()[B

    move-result-object p0

    if-nez p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "missing depth map for record "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public static notifyJobStatus(Landroid/os/Messenger;Lcom/motorola/camera/background/common/TaskId;I)V
    .locals 1

    :try_start_0
    invoke-static {p2, p1}, Lcom/motorola/camera/service/BgJobService;->getResponseMessage(ILcom/motorola/camera/background/common/TaskId;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Messenger for task "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is dead"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BgJobService"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static retrieveCaptureData(Landroid/content/Context;Landroid/os/Bundle;)Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;
    .locals 2

    const-string v0, "DB_URI"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0, v0}, Lkotlin/ResultKt;->readByteRecord(Landroid/content/Context;Landroid/net/Uri;)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/motorola/camera/utility/GsonUtility;->convertFromJson(Ljava/lang/String;)Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mByteBufferUri:Landroid/net/Uri;

    invoke-static {p0, v1}, Lkotlin/ResultKt;->readByteRecord(Landroid/content/Context;Landroid/net/Uri;)[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->setByteBuffer(Ljava/nio/ByteBuffer;)V

    iget-object p0, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed to deserialize json to CapturedImageMediaData."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DB URL can not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final cancelSaveImage(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "task_id"

    const-class v1, Lcom/motorola/camera/background/common/TaskId;

    invoke-static {p1, v0, v1}, Lokio/SegmentPool;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/background/common/TaskId;

    iget-object p0, p0, Lcom/motorola/camera/service/BgJobService;->responseMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Messenger;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;

    const/16 v2, 0x1b

    invoke-direct {v1, v2, v0, p1}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/saving/SaveImageService;->addSaveRunnable(Ljava/lang/Runnable;)V

    if-eqz p0, :cond_0

    const/4 v0, 0x5

    invoke-static {p0, p1, v0}, Lcom/motorola/camera/service/BgJobService;->notifyJobStatus(Landroid/os/Messenger;Lcom/motorola/camera/background/common/TaskId;I)V

    goto :goto_1

    :cond_0
    const-string p0, "resultReceiver is null"

    goto :goto_0

    :cond_1
    const-string p0, "Missing taskID/callback information"

    :goto_0
    const-string p1, "BgJobService"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/service/BgJobService;->messenger:Landroid/os/Messenger;

    invoke-virtual {p0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public final onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    iget-object p0, p0, Lcom/motorola/camera/service/BgJobService;->saveListener:Lcom/motorola/camera/service/BgJobService$saveListener$1;

    invoke-static {p0}, Lcom/motorola/camera/saving/SaveImageService;->addSaveListener(Lcom/motorola/camera/saving/SaveListener;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object p0, p0, Lcom/motorola/camera/service/BgJobService;->saveListener:Lcom/motorola/camera/service/BgJobService$saveListener$1;

    invoke-static {p0}, Lcom/motorola/camera/saving/SaveImageService;->removeSaveListener(Lcom/motorola/camera/saving/SaveListener;)V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public final saveBgProcessImage(Landroid/os/Bundle;Landroid/content/Context;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "data.taskID"

    iget-object v5, v0, Lcom/motorola/camera/service/BgJobService;->responseMap:Ljava/util/LinkedHashMap;

    const-string v6, "ERROR_CASE"

    const-string v7, "GLOBAL_UUID"

    const-string v8, "DATE_TYPE"

    const-string v9, "FILE_NAME"

    const-string v10, "URI"

    const-string v11, "Failed to save Image: "

    const-string v12, "task_id"

    const-string v13, "context"

    invoke-static {v2, v13}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/motorola/camera/service/BgJobService;->isValidData(Landroid/os/Bundle;)Z

    move-result v13

    const-string v14, "BgJobService"

    if-nez v13, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Duplicate job. Job will be ignored. Data received: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p1}, Lcom/motorola/camera/service/BgJobService;->cancelSaveImage(Landroid/os/Bundle;)V

    return-void

    :cond_0
    move-object v13, v4

    move-object v15, v5

    :try_start_0
    const-string v5, "JOB_CONTEXT"
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1c

    :try_start_1
    invoke-virtual {v1, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/dynamite/zzo;->parseJobContext(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lcom/motorola/camera/service/BgJobService;->getTaskID(Landroid/os/Bundle;)Lcom/motorola/camera/background/common/TaskId;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1c

    if-eqz v4, :cond_1

    move-object/from16 v16, v13

    :try_start_2
    iget-object v13, v0, Lcom/motorola/camera/service/BgJobService;->subTaskCount:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v17
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v18, v15

    :try_start_3
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v13, v4, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_19

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v18, v15

    goto/16 :goto_18

    :catch_2
    move-exception v0

    move-object/from16 v18, v15

    :goto_0
    move-object v4, v1

    move-object v5, v8

    move-object v3, v9

    move-object v2, v10

    move-object v1, v11

    move-object v8, v12

    move-object/from16 v10, v16

    move-object/from16 v9, v18

    goto/16 :goto_1b

    :cond_1
    move-object/from16 v16, v13

    move-object/from16 v18, v15

    :goto_1
    :try_start_4
    invoke-static {v5}, Lkotlin/collections/MapsKt;->toList(Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    new-instance v13, Landroidx/viewpager/widget/ViewPager$1;

    const/16 v15, 0xa

    invoke-direct {v13, v15}, Landroidx/viewpager/widget/ViewPager$1;-><init>(I)V

    invoke-static {v4, v13}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v4

    sget-object v13, Lcom/motorola/camera/BurstShotFileUtils;->FORMAT_BURST_SUFFIX:Ljava/lang/String;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v13

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_19

    move-object/from16 v17, v12

    const/4 v12, 0x0

    const/4 v15, 0x0

    :goto_2
    :try_start_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_19

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    add-int/lit8 v20, v15, 0x1

    if-ltz v15, :cond_18

    move-object/from16 v21, v4

    move-object/from16 v4, v19

    check-cast v4, Lkotlin/Pair;

    iget-object v4, v4, Lkotlin/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_17
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_18

    move-object/from16 v19, v6

    :try_start_6
    iget-object v6, v4, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;->jpegFids:Ljava/util/ArrayList;
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_16
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_15

    move-object/from16 v22, v7

    :try_start_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_14
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_13

    move-object/from16 v23, v8

    const/4 v8, 0x5

    if-lt v7, v8, :cond_17

    if-eqz v3, :cond_3

    :try_start_8
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_2

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v7

    sub-int/2addr v7, v8

    if-ge v15, v7, :cond_2

    invoke-static/range {p3 .. p3}, Lcom/motorola/camera/utility/GsonUtility;->convertToJson(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/motorola/camera/utility/GsonUtility;->convertFromJson(Ljava/lang/String;)Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->setByteBuffer(Ljava/nio/ByteBuffer;)V

    iget-object v8, v7, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v8, v8, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_3

    :cond_2
    iget-object v7, v3, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v7, v7, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    move-object v7, v3

    goto :goto_3

    :catch_3
    move-exception v0

    move-object/from16 v24, v9

    goto/16 :goto_5

    :catch_4
    move-exception v0

    move-object v4, v1

    move-object v3, v9

    move-object v2, v10

    move-object v1, v11

    move-object/from16 v10, v16

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move-object/from16 v7, v19

    move-object/from16 v6, v22

    move-object/from16 v5, v23

    goto/16 :goto_1c

    :cond_3
    :try_start_9
    invoke-static {v2, v1}, Lcom/motorola/camera/service/BgJobService;->retrieveCaptureData(Landroid/content/Context;Landroid/os/Bundle;)Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    move-result-object v7

    :goto_3
    iget-object v8, v7, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    const-string v15, "null cannot be cast to non-null type com.motorola.camera.fsm.camera.record.ImageCaptureRecord"

    invoke-static {v8, v15}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v15, v8

    check-cast v15, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-wide v3, v4, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;->slot:J

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->values()[Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    move-result-object v24

    long-to-int v3, v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    aget-object v3, v24, v3
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_12
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_11

    move-object/from16 v24, v9

    :try_start_a
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v9
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_10
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_f

    if-le v9, v4, :cond_5

    :try_start_b
    iput-object v3, v7, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    iget-object v3, v8, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v9, "ALTERNATE_SHOT"

    invoke-virtual {v3, v9, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, v8, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v4, "UUID"

    invoke-virtual {v3, v4, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v7, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "alternate_shot_index_"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v8, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    add-int/lit8 v8, v12, 0x1

    invoke-virtual {v4, v3, v12}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, v7, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    sget-object v4, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->DEFAULT:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    if-eq v3, v4, :cond_4

    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->setMotionVideoFile(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    :cond_4
    move v12, v8

    goto :goto_7

    :catch_5
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    goto :goto_6

    :cond_5
    :try_start_c
    sget-object v4, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->AI_LLS:Lcom/motorola/camera/mcf/Mcf$ShotSlot;
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_10
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_f

    if-ne v3, v4, :cond_6

    :try_start_d
    sget-object v3, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->AI_LLS:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    :goto_4
    iput-object v3, v7, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mSnapType:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    goto :goto_7

    :cond_6
    :try_start_e
    sget-object v4, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->AI_IST:Lcom/motorola/camera/mcf/Mcf$ShotSlot;
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_10
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_f

    if-ne v3, v4, :cond_7

    :try_start_f
    sget-object v3, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->AI_IST:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_6
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    goto :goto_4

    :cond_7
    :try_start_10
    sget-object v4, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->AI_CUD:Lcom/motorola/camera/mcf/Mcf$ShotSlot;
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_f

    if-ne v3, v4, :cond_8

    :try_start_11
    sget-object v3, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->AI_CUD:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_6
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5

    goto :goto_4

    :goto_5
    move-object/from16 v28, v10

    move-object/from16 v29, v11

    goto/16 :goto_d

    :goto_6
    move-object v4, v1

    move-object v2, v10

    move-object v1, v11

    move-object/from16 v10, v16

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move-object/from16 v7, v19

    move-object/from16 v6, v22

    move-object/from16 v5, v23

    move-object/from16 v3, v24

    goto/16 :goto_1c

    :cond_8
    :goto_7
    :try_start_12
    invoke-static {v6}, Lcom/google/android/gms/dynamite/zzo;->parseAlgContext(Ljava/util/ArrayList;)Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;

    move-result-object v3

    iget-object v4, v3, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->jpegFids:Ljava/util/ArrayList;

    iget-wide v8, v3, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->thumbFid:J

    move-object/from16 v25, v5

    iget-wide v5, v3, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->exifFid:J

    move/from16 v27, v12

    move-object/from16 v26, v13

    iget-wide v12, v3, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->makerNoteFid:J
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_12} :catch_10
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_f

    move-object/from16 v28, v10

    move-object/from16 v29, v11

    :try_start_13
    iget-wide v10, v3, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->app6Fid:J
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_13} :catch_e
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_d

    :try_start_14
    iget-wide v0, v3, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->auxliaryDataFid:J

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_14} :catch_c
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_b

    move-wide/from16 v30, v0

    const-string v0, "]"

    if-nez v3, :cond_16

    const-wide/16 v32, -0x1

    cmp-long v1, v8, v32

    if-eqz v1, :cond_16

    cmp-long v1, v5, v32

    if-eqz v1, :cond_16

    cmp-long v1, v12, v32

    if-eqz v1, :cond_16

    cmp-long v1, v10, v32

    if-eqz v1, :cond_16

    :try_start_15
    invoke-static {v2, v5, v6}, Lcom/motorola/camera/background/provider/FileDataContract;->retrieveFileInBuffer(Landroid/content/Context;J)[B

    move-result-object v1

    invoke-static {v2, v12, v13}, Lcom/motorola/camera/background/provider/FileDataContract;->retrieveFileInBuffer(Landroid/content/Context;J)[B

    move-result-object v3

    invoke-static {v2, v10, v11}, Lcom/motorola/camera/background/provider/FileDataContract;->retrieveFileInBuffer(Landroid/content/Context;J)[B

    move-result-object v5

    if-eqz v3, :cond_15

    if-eqz v5, :cond_15

    invoke-virtual {v7}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v11

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-direct {v6, v10, v11, v0}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;

    iget-wide v10, v0, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;->fid:J

    iget-object v0, v15, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isBokeh()Z

    move-result v0
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_15} :catch_c
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_b

    if-eqz v0, :cond_a

    :try_start_16
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;

    invoke-static {v12}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    iget-object v13, v12, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;->category:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v0, "RENDER"

    invoke-static {v13, v0}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-wide v10, v12, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;->fid:J
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_16} :catch_8
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_7

    :cond_9
    move-object/from16 v0, v34

    goto :goto_8

    :catch_7
    move-exception v0

    goto/16 :goto_d

    :catch_8
    move-exception v0

    goto/16 :goto_e

    :cond_a
    :try_start_17
    invoke-static {v2, v10, v11}, Lcom/motorola/camera/background/provider/FileDataContract;->retrieveFileInBuffer(Landroid/content/Context;J)[B

    move-result-object v0

    if-eqz v0, :cond_14

    new-instance v12, Lcom/motorola/camera/photometadata/PhotoMetadata;

    new-instance v13, Ljava/io/ByteArrayInputStream;

    invoke-direct {v13, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v12, v13}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata;

    invoke-direct {v0, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v12, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->copyPhotoMetadata(Lcom/motorola/camera/photometadata/PhotoMetadata;)V
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_17} :catch_c
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_b

    if-eqz v1, :cond_b

    :try_start_18
    const-string v0, "Exif currently not supported by BgProcessing"

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_18} :catch_8
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_7

    :cond_b
    :try_start_19
    invoke-virtual {v12, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setMakernoteByteArray([B)V

    invoke-virtual {v12, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setApp6ByteArray([B)V

    invoke-static {v2, v8, v9}, Lcom/motorola/camera/background/provider/FileDataContract;->retrieveFileInBuffer(Landroid/content/Context;J)[B

    move-result-object v0
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_19} :catch_c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_b

    if-eqz v0, :cond_c

    :try_start_1a
    invoke-virtual {v12, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setThumbnailBytes([B)V
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_1a} :catch_8
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_7

    :cond_c
    :try_start_1b
    invoke-static {v2, v10, v11}, Lcom/motorola/camera/background/provider/FileDataContract;->getImageDims(Landroid/content/Context;J)Landroid/util/Size;

    move-result-object v0
    :try_end_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_1b} :catch_c
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_b

    if-eqz v0, :cond_d

    :try_start_1c
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    goto :goto_9

    :cond_d
    const/4 v1, 0x0

    :goto_9
    if-lez v1, :cond_11

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v1

    goto :goto_a

    :cond_e
    const/4 v1, 0x0

    :goto_a
    if-lez v1, :cond_11

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_b

    :cond_f
    const/4 v1, 0x0

    :goto_b
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_c

    :cond_10
    const/4 v0, 0x0

    :goto_c
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "ImageWidth"

    invoke-virtual {v12, v3, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "ImageLength"

    invoke-virtual {v12, v3, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "PixelXDimension"

    invoke-virtual {v12, v3, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "PixelYDimension"

    invoke-virtual {v12, v1, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_1c} :catch_8
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_7

    goto :goto_f

    :goto_d
    move-object/from16 v4, p1

    goto/16 :goto_1a

    :goto_e
    move-object/from16 v4, p1

    goto/16 :goto_19

    :cond_11
    :goto_f
    :try_start_1d
    invoke-virtual {v12}, Lcom/motorola/camera/photometadata/PhotoMetadata;->saveAttributesToByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->setByteBuffer(Ljava/nio/ByteBuffer;)V

    iget-object v0, v15, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isBokeh()Z

    move-result v0

    if-eqz v0, :cond_12

    cmp-long v0, v30, v32

    if-eqz v0, :cond_12

    move-wide/from16 v0, v30

    invoke-static {v0, v1, v4, v15, v2}, Lcom/motorola/camera/service/BgJobService;->loadAuxiliaryData(JLjava/util/ArrayList;Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "applicationContext"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_1d} :catch_c
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_b

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    const/4 v3, 0x0

    :try_start_1e
    invoke-virtual {v1, v4, v0, v3}, Lcom/motorola/camera/service/BgJobService;->saveNormalProcessImage(Landroid/os/Bundle;Landroid/content/Context;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    const/4 v0, 0x1

    goto :goto_10

    :catch_9
    move-exception v0

    goto/16 :goto_1a

    :catch_a
    move-exception v0

    goto/16 :goto_19

    :catch_b
    move-exception v0

    goto :goto_d

    :catch_c
    move-exception v0

    goto :goto_e

    :cond_12
    move-object/from16 v1, p0

    move-object/from16 v4, p1

    const/4 v0, 0x0

    :goto_10
    if-nez v0, :cond_13

    invoke-static {v7}, Lcom/motorola/camera/saving/SaveImageService;->saveImage(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    :cond_13
    move-object/from16 v3, p3

    move-object v0, v1

    move-object v1, v4

    move-object/from16 v6, v19

    move/from16 v15, v20

    move-object/from16 v4, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move-object/from16 v5, v25

    move-object/from16 v13, v26

    move/from16 v12, v27

    move-object/from16 v10, v28

    move-object/from16 v11, v29

    goto/16 :goto_2

    :cond_14
    move-object/from16 v4, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BG Jpeg is null for shot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "no file to retrieve"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    move-object/from16 v4, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "missing meta data: [exif="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", makerNote="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", app6="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/IOException;

    const-string v1, "missing meta data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    move-object/from16 v4, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid Jpeg file Id(s): [thumbFid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", exifFid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", makerNoteFid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", app6Fid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid Jpeg file Id(s)"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_d
    move-exception v0

    move-object v4, v1

    goto/16 :goto_1a

    :catch_e
    move-exception v0

    move-object v4, v1

    goto/16 :goto_19

    :catch_f
    move-exception v0

    move-object v4, v1

    goto :goto_14

    :catch_10
    move-exception v0

    move-object v4, v1

    :goto_11
    move-object/from16 v28, v10

    move-object/from16 v29, v11

    goto/16 :goto_19

    :catch_11
    move-exception v0

    move-object v4, v1

    move-object/from16 v24, v9

    goto :goto_14

    :catch_12
    move-exception v0

    move-object v4, v1

    :goto_12
    move-object/from16 v24, v9

    goto :goto_11

    :cond_17
    move-object v4, v1

    move-object/from16 v24, v9

    move-object/from16 v28, v10

    move-object/from16 v29, v11

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "missing Jpeg components: jpeg/thumb/exit/makenote/app6, component count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " which should be >= 5"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/IOException;

    const-string v1, "missing Jpeg components"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_13
    move-exception v0

    move-object v4, v1

    :goto_13
    move-object/from16 v23, v8

    move-object/from16 v24, v9

    :goto_14
    move-object/from16 v28, v10

    move-object/from16 v29, v11

    goto/16 :goto_1a

    :catch_14
    move-exception v0

    move-object v4, v1

    :goto_15
    move-object/from16 v23, v8

    goto :goto_12

    :catch_15
    move-exception v0

    move-object v4, v1

    :goto_16
    move-object/from16 v22, v7

    goto :goto_13

    :catch_16
    move-exception v0

    move-object v4, v1

    :goto_17
    move-object/from16 v22, v7

    goto :goto_15

    :catch_17
    move-exception v0

    move-object v4, v1

    move-object/from16 v19, v6

    goto :goto_17

    :cond_18
    move-object v4, v1

    move-object/from16 v19, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v28, v10

    move-object/from16 v29, v11

    invoke-static {}, Lkotlin/jvm/JvmClassMappingKt;->throwIndexOverflow()V

    const/4 v1, 0x0

    throw v1
    :try_end_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_1e} :catch_a
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_9

    :catch_18
    move-exception v0

    move-object v4, v1

    move-object/from16 v19, v6

    goto :goto_16

    :catch_19
    move-exception v0

    :goto_18
    move-object v4, v1

    move-object/from16 v19, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v28, v10

    move-object/from16 v29, v11

    move-object/from16 v17, v12

    goto :goto_1a

    :catch_1a
    move-exception v0

    move-object v4, v1

    move-object/from16 v19, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v28, v10

    move-object/from16 v29, v11

    move-object/from16 v17, v12

    goto :goto_19

    :catch_1b
    move-exception v0

    move-object v4, v1

    move-object/from16 v19, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v28, v10

    move-object/from16 v29, v11

    move-object/from16 v17, v12

    move-object/from16 v16, v13

    move-object/from16 v18, v15

    :goto_19
    move-object/from16 v10, v16

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move-object/from16 v7, v19

    move-object/from16 v6, v22

    move-object/from16 v5, v23

    move-object/from16 v3, v24

    move-object/from16 v2, v28

    move-object/from16 v1, v29

    goto/16 :goto_1c

    :catch_1c
    move-exception v0

    move-object v4, v1

    move-object/from16 v19, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v28, v10

    move-object/from16 v29, v11

    move-object/from16 v17, v12

    move-object/from16 v16, v13

    move-object/from16 v18, v15

    :goto_1a
    move-object/from16 v1, v29

    invoke-static {v14, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Landroidx/work/impl/StartStopTokens;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroidx/work/impl/StartStopTokens;-><init>(I)V

    move-object/from16 v2, v28

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroidx/work/impl/StartStopTokens;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object/from16 v3, v24

    invoke-virtual {v0, v3, v1}, Landroidx/work/impl/StartStopTokens;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, v23

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Landroidx/work/impl/StartStopTokens;->putInt(ILjava/lang/String;)V

    move-object/from16 v6, v22

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, v6}, Landroidx/work/impl/StartStopTokens;->putLong(JLjava/lang/String;)V

    invoke-virtual {v0, v4}, Landroidx/work/impl/StartStopTokens;->putAll(Landroid/os/Bundle;)V

    move-object/from16 v7, v19

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v7}, Landroidx/work/impl/StartStopTokens;->putInt(ILjava/lang/String;)V

    move-object/from16 v8, v17

    invoke-virtual {v0, v8}, Landroidx/work/impl/StartStopTokens;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/background/common/TaskId;

    move-object/from16 v9, v18

    invoke-virtual {v9, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    if-eqz v1, :cond_19

    invoke-virtual {v0, v8}, Landroidx/work/impl/StartStopTokens;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/common/TaskId;

    move-object/from16 v10, v16

    goto :goto_1d

    :catch_1d
    move-exception v0

    move-object v4, v1

    move-object v5, v8

    move-object v3, v9

    move-object v2, v10

    move-object v1, v11

    move-object v8, v12

    move-object v10, v13

    move-object v9, v15

    :goto_1b
    move-object/from16 v35, v7

    move-object v7, v6

    move-object/from16 v6, v35

    :goto_1c
    invoke-static {v14, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Landroidx/work/impl/StartStopTokens;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroidx/work/impl/StartStopTokens;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroidx/work/impl/StartStopTokens;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v3, v1}, Landroidx/work/impl/StartStopTokens;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Landroidx/work/impl/StartStopTokens;->putInt(ILjava/lang/String;)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, v6}, Landroidx/work/impl/StartStopTokens;->putLong(JLjava/lang/String;)V

    invoke-virtual {v0, v4}, Landroidx/work/impl/StartStopTokens;->putAll(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v7}, Landroidx/work/impl/StartStopTokens;->putInt(ILjava/lang/String;)V

    invoke-virtual {v0, v8}, Landroidx/work/impl/StartStopTokens;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/background/common/TaskId;

    invoke-virtual {v9, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    if-eqz v1, :cond_19

    invoke-virtual {v0, v8}, Landroidx/work/impl/StartStopTokens;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/common/TaskId;

    :goto_1d
    invoke-static {v0, v10}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x6

    invoke-static {v1, v0, v2}, Lcom/motorola/camera/service/BgJobService;->notifyJobStatus(Landroid/os/Messenger;Lcom/motorola/camera/background/common/TaskId;I)V

    :cond_19
    return-void
.end method

.method public final saveNormalProcessImage(Landroid/os/Bundle;Landroid/content/Context;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Lcom/motorola/camera/service/BgJobService;->responseMap:Ljava/util/LinkedHashMap;

    const-string v5, "ERROR_CASE"

    const-string v6, "GLOBAL_UUID"

    const-string v7, "DATE_TYPE"

    const-string v8, "FILE_NAME"

    const-string v9, "URI"

    const-string v10, "Failed to save Image "

    const-string v11, "task_id"

    const-string v12, "context"

    invoke-static {v2, v12}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/motorola/camera/service/BgJobService;->isValidData(Landroid/os/Bundle;)Z

    move-result v12

    const-string v13, "BgJobService"

    if-nez v12, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Duplicate job. Job will be ignored. Data received:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p1}, Lcom/motorola/camera/service/BgJobService;->cancelSaveImage(Landroid/os/Bundle;)V

    return-void

    :cond_0
    const/4 v12, 0x1

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/motorola/camera/service/BgJobService;->getTaskID(Landroid/os/Bundle;)Lcom/motorola/camera/background/common/TaskId;

    move-result-object v14

    if-eqz v14, :cond_1

    iget-object v0, v0, Lcom/motorola/camera/service/BgJobService;->subTaskCount:Ljava/util/LinkedHashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    iget-object v0, v3, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    move-object v0, v3

    goto :goto_1

    :cond_2
    invoke-static {v2, v1}, Lcom/motorola/camera/service/BgJobService;->retrieveCaptureData(Landroid/content/Context;Landroid/os/Bundle;)Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    move-result-object v0

    :goto_1
    iget-object v2, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    const-string v3, "null cannot be cast to non-null type com.motorola.camera.fsm.camera.record.ImageCaptureRecord"

    invoke-static {v2, v3}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    sget-object v3, Lcom/motorola/camera/mcf/Mcf$InstanceType;->NORMAL:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mInstanceType:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    invoke-static {v1, v0}, Lcom/motorola/camera/service/BgJobService;->addMetadataToJpeg(Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->saveImage(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    invoke-static {v13, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Landroidx/work/impl/StartStopTokens;

    const/16 v2, 0xc

    invoke-direct {v0, v2}, Landroidx/work/impl/StartStopTokens;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v9, v2}, Landroidx/work/impl/StartStopTokens;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v8, v2}, Landroidx/work/impl/StartStopTokens;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v7}, Landroidx/work/impl/StartStopTokens;->putInt(ILjava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3, v6}, Landroidx/work/impl/StartStopTokens;->putLong(JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/work/impl/StartStopTokens;->putAll(Landroid/os/Bundle;)V

    invoke-virtual {v0, v12, v5}, Landroidx/work/impl/StartStopTokens;->putInt(ILjava/lang/String;)V

    invoke-virtual {v0, v11}, Landroidx/work/impl/StartStopTokens;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/background/common/TaskId;

    invoke-virtual {v4, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    if-eqz v1, :cond_3

    :goto_2
    invoke-virtual {v0, v11}, Landroidx/work/impl/StartStopTokens;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/common/TaskId;

    goto :goto_4

    :goto_3
    invoke-static {v13, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Landroidx/work/impl/StartStopTokens;

    const/16 v2, 0xc

    invoke-direct {v0, v2}, Landroidx/work/impl/StartStopTokens;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v9, v2}, Landroidx/work/impl/StartStopTokens;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v8, v2}, Landroidx/work/impl/StartStopTokens;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v7}, Landroidx/work/impl/StartStopTokens;->putInt(ILjava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3, v6}, Landroidx/work/impl/StartStopTokens;->putLong(JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/work/impl/StartStopTokens;->putAll(Landroid/os/Bundle;)V

    invoke-virtual {v0, v12, v5}, Landroidx/work/impl/StartStopTokens;->putInt(ILjava/lang/String;)V

    invoke-virtual {v0, v11}, Landroidx/work/impl/StartStopTokens;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/background/common/TaskId;

    invoke-virtual {v4, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    if-eqz v1, :cond_3

    goto :goto_2

    :goto_4
    const-string v2, "data.taskID"

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x6

    invoke-static {v1, v0, v2}, Lcom/motorola/camera/service/BgJobService;->notifyJobStatus(Landroid/os/Messenger;Lcom/motorola/camera/background/common/TaskId;I)V

    :cond_3
    :goto_5
    return-void
.end method
