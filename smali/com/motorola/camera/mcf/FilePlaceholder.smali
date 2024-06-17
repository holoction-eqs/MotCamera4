.class public final Lcom/motorola/camera/mcf/FilePlaceholder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData;,
        Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData2;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u0002\u001b\u001cB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0007J\u0018\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000bH\u0007JP\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000bH\u0007JP\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000bH\u0007JP\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000bH\u0002R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/motorola/camera/mcf/FilePlaceholder;",
        "",
        "()V",
        "TAG",
        "",
        "kotlin.jvm.PlatformType",
        "deleteData",
        "",
        "context",
        "Landroid/content/Context;",
        "id",
        "",
        "deleteTagData",
        "tag",
        "requestFilePlaceholder",
        "Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData;",
        "fileNamePrefix",
        "mime",
        "timeExpireMs",
        "size",
        "width",
        "height",
        "stride",
        "requestFilePlaceholder2",
        "Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData2;",
        "requestFileUriPair",
        "Lcom/motorola/camera/background/provider/FileDataContract$IdUriPair;",
        "FilePlaceholderData",
        "FilePlaceholderData2",
        "MotCamera-MCF_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/mcf/FilePlaceholder;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/mcf/FilePlaceholder;

    invoke-direct {v0}, Lcom/motorola/camera/mcf/FilePlaceholder;-><init>()V

    sput-object v0, Lcom/motorola/camera/mcf/FilePlaceholder;->INSTANCE:Lcom/motorola/camera/mcf/FilePlaceholder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/mcf/FilePlaceholder;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final deleteData(Landroid/content/Context;J)I
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/motorola/camera/background/provider/FileDataContract;->deleteData(Landroid/content/Context;J)I

    move-result p0

    return p0
.end method

.method public static final deleteTagData(Landroid/content/Context;J)I
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/motorola/camera/background/provider/FileDataContract;->deleteTagData(Landroid/content/Context;J)I

    move-result p0

    return p0
.end method

.method public static final requestFilePlaceholder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JIIIIJ)Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData;
    .locals 13

    const-string v0, "context"

    move-object v2, p0

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileNamePrefix"

    move-object v3, p1

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mime"

    move-object v4, p2

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/motorola/camera/mcf/FilePlaceholder;->INSTANCE:Lcom/motorola/camera/mcf/FilePlaceholder;

    move-wide/from16 v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-wide/from16 v11, p9

    invoke-direct/range {v1 .. v12}, Lcom/motorola/camera/mcf/FilePlaceholder;->requestFileUriPair(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JIIIIJ)Lcom/motorola/camera/background/provider/FileDataContract$IdUriPair;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/mcf/FilePlaceholder;->TAG:Ljava/lang/String;

    iget-object v2, v0, Lcom/motorola/camera/background/provider/FileDataContract$IdUriPair;->uriFileDB:Landroid/net/Uri;

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/motorola/camera/background/provider/FileDataContract$IdUriPair;->uriFile:Landroid/net/Uri;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v3

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "requestFilePlaceholder: idUriPair = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " fileUri = "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " filePath = "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/motorola/camera/background/provider/FileDataContract$IdUriPair;->uriFileDB:Landroid/net/Uri;

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, -0x1

    :goto_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v3

    :goto_2
    if-eqz v2, :cond_3

    const-string v3, "/private_cache_root"

    invoke-static {v3, v2}, Lkotlin/text/StringsKt__StringsKt;->removePrefix(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_3
    new-instance v2, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData;

    invoke-direct {v2, v0, v1, v3}, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData;-><init>(JLjava/lang/String;)V

    return-object v2
.end method

.method public static final requestFilePlaceholder2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JIIIIJ)Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData2;
    .locals 14

    const-string v0, "context"

    move-object v13, p0

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileNamePrefix"

    move-object v3, p1

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mime"

    move-object/from16 v4, p2

    invoke-static {v4, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/motorola/camera/mcf/FilePlaceholder;->INSTANCE:Lcom/motorola/camera/mcf/FilePlaceholder;

    move-object v2, p0

    move-wide/from16 v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-wide/from16 v11, p9

    invoke-direct/range {v1 .. v12}, Lcom/motorola/camera/mcf/FilePlaceholder;->requestFileUriPair(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JIIIIJ)Lcom/motorola/camera/background/provider/FileDataContract$IdUriPair;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/mcf/FilePlaceholder;->TAG:Ljava/lang/String;

    iget-object v2, v0, Lcom/motorola/camera/background/provider/FileDataContract$IdUriPair;->uriFileDB:Landroid/net/Uri;

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/motorola/camera/background/provider/FileDataContract$IdUriPair;->uriFile:Landroid/net/Uri;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v3

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "requestFilePlaceholder: idUriPair = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " fileUri = "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " filePath = "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/motorola/camera/background/provider/FileDataContract$IdUriPair;->uriFileDB:Landroid/net/Uri;

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    goto :goto_1

    :cond_1
    const-wide/16 v5, -0x1

    :goto_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "w"

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    if-eqz v2, :cond_2

    :try_start_0
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-static {v2, v1}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    :cond_2
    move-object v0, v3

    :goto_2
    invoke-static {v2, v3}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fd is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", expect problems"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance v1, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData2;

    invoke-direct {v1, v5, v6, v0}, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData2;-><init>(JLjava/lang/Integer;)V

    return-object v1
.end method

.method private final requestFileUriPair(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JIIIIJ)Lcom/motorola/camera/background/provider/FileDataContract$IdUriPair;
    .locals 20

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    sget-object v3, Lcom/motorola/camera/background/common/IOMIMEType;->UNDEFINED:Lcom/motorola/camera/background/common/IOMIMEType;

    sget-object v4, Lcom/motorola/camera/background/common/IOFormat;->BIN:Lcom/motorola/camera/background/common/IOFormat;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    const-string v5, "makernote"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_3

    :cond_0
    sget-object v2, Lcom/motorola/camera/background/common/IOMIMEType;->MAKERNOTE_DATA:Lcom/motorola/camera/background/common/IOMIMEType;

    goto :goto_0

    :sswitch_1
    const-string v5, "thumb"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto/16 :goto_3

    :sswitch_2
    const-string v5, "nv21"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_3

    :cond_1
    sget-object v2, Lcom/motorola/camera/background/common/IOFormat;->NV21:Lcom/motorola/camera/background/common/IOFormat;

    goto :goto_1

    :sswitch_3
    const-string v5, "nv12"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_3

    :cond_2
    sget-object v2, Lcom/motorola/camera/background/common/IOFormat;->NV12:Lcom/motorola/camera/background/common/IOFormat;

    goto :goto_1

    :sswitch_4
    const-string v5, "json"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    sget-object v2, Lcom/motorola/camera/background/common/IOFormat;->JSON:Lcom/motorola/camera/background/common/IOFormat;

    sget-object v3, Lcom/motorola/camera/background/common/IOMIMEType;->JSON_DATA:Lcom/motorola/camera/background/common/IOMIMEType;

    goto :goto_2

    :sswitch_5
    const-string v5, "jpeg"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    sget-object v2, Lcom/motorola/camera/background/common/IOFormat;->JPEG:Lcom/motorola/camera/background/common/IOFormat;

    sget-object v3, Lcom/motorola/camera/background/common/IOMIMEType;->JPEG_IMAGE:Lcom/motorola/camera/background/common/IOMIMEType;

    goto :goto_2

    :sswitch_6
    const-string v5, "exif"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_3

    :cond_5
    sget-object v2, Lcom/motorola/camera/background/common/IOMIMEType;->EXIF_DATA:Lcom/motorola/camera/background/common/IOMIMEType;

    goto :goto_0

    :sswitch_7
    const-string v5, "app6"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_3

    :cond_6
    sget-object v2, Lcom/motorola/camera/background/common/IOMIMEType;->APP6_DATA:Lcom/motorola/camera/background/common/IOMIMEType;

    :goto_0
    move-object v3, v2

    goto :goto_4

    :sswitch_8
    const-string v5, "raw"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_3

    :cond_7
    sget-object v2, Lcom/motorola/camera/background/common/IOFormat;->RAW:Lcom/motorola/camera/background/common/IOFormat;

    :goto_1
    sget-object v3, Lcom/motorola/camera/background/common/IOMIMEType;->RAW_IMAGE:Lcom/motorola/camera/background/common/IOMIMEType;

    :goto_2
    move-object v8, v2

    move-object v7, v3

    goto :goto_5

    :goto_3
    sget-object v5, Lcom/motorola/camera/mcf/FilePlaceholder;->TAG:Ljava/lang/String;

    const-string v6, "Unknown mime type: "

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    move-object v7, v3

    move-object v8, v4

    :goto_5
    sget-object v2, Lcom/motorola/camera/background/provider/FileDataContract;->CONTENT_URI:Landroid/net/Uri;

    sget-object v13, Lcom/motorola/camera/background/common/IOCompression;->NONE:Lcom/motorola/camera/background/common/IOCompression;

    sget-object v14, Lcom/motorola/camera/background/common/IOEncryption;->NONE:Lcom/motorola/camera/background/common/IOEncryption;

    const-string v2, "context"

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "fileNamePrefix"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v9

    invoke-static {}, L_COROUTINE/ArtificialStackFrames;->generateUniqueId()J

    move-result-wide v2

    move-wide/from16 v4, p10

    invoke-static {v7, v8, v1, v4, v5}, Lcom/motorola/camera/background/provider/FileDataContract;->createBaseFileName(Lcom/motorola/camera/background/common/IOMIMEType;Lcom/motorola/camera/background/common/IOFormat;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    sget-object v1, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils;->TAG:Ljava/lang/String;

    const-string v1, "fileName"

    invoke-static {v6, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/motorola/camera/settings/CacheBehavior;->getBasePathFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/motorola/camera/settings/CacheBehavior;->createBaseDir(Landroid/content/Context;)V

    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "com.motorola.camera3.background.provider.filedatacontract.FileProviderCustom"

    invoke-static {v0, v1, v11}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    move-object v15, v1

    goto :goto_6

    :cond_8
    sget-object v1, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v12, "requestNewContentUri: Not able to create file: "

    invoke-direct {v15, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    :goto_6
    if-eqz v15, :cond_9

    move-object/from16 v0, p1

    move-wide v1, v2

    move-wide/from16 v3, p10

    move-object v5, v6

    move-object v6, v15

    move-wide/from16 v11, p4

    move-object/from16 v19, v15

    move/from16 v15, p6

    move/from16 v16, p7

    move/from16 v17, p8

    move/from16 v18, p9

    invoke-static/range {v0 .. v18}, Lcom/motorola/camera/background/provider/FileDataContract;->insertFileDatabase(Landroid/content/Context;JJLjava/lang/String;Landroid/net/Uri;Lcom/motorola/camera/background/common/IOMIMEType;Lcom/motorola/camera/background/common/IOFormat;JJLcom/motorola/camera/background/common/IOCompression;Lcom/motorola/camera/background/common/IOEncryption;IIII)Landroid/net/Uri;

    move-result-object v12

    goto :goto_7

    :cond_9
    move-object/from16 v19, v15

    const/4 v12, 0x0

    :goto_7
    new-instance v0, Lcom/motorola/camera/background/provider/FileDataContract$IdUriPair;

    move-object/from16 v1, v19

    invoke-direct {v0, v12, v1}, Lcom/motorola/camera/background/provider/FileDataContract$IdUriPair;-><init>(Landroid/net/Uri;Landroid/net/Uri;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1b828 -> :sswitch_8
        0x2dca35 -> :sswitch_7
        0x2fb910 -> :sswitch_6
        0x31e068 -> :sswitch_5
        0x31ece8 -> :sswitch_4
        0x33c1e9 -> :sswitch_3
        0x33c207 -> :sswitch_2
        0x693b1d6 -> :sswitch_1
        0x4c83a636 -> :sswitch_0
    .end sparse-switch
.end method
