.class public abstract Lcom/motorola/camera/background/provider/FileDataContract;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final IN_MEMORY_CONTENT_URI:Landroid/net/Uri;

.field public static isForegroundProcessingEnabled:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.motorola.camera3.background.provider.filedatacontract.FileDataContentProvider/fileData_table"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "parse(CONTENT_STRING)"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/background/provider/FileDataContract;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.motorola.camera3.background.provider.MemoryDataContentProvider/fileData_table"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "parse(IN_MEMORY_CONTENT_STRING)"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/background/provider/FileDataContract;->IN_MEMORY_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public static createBaseFileName(Lcom/motorola/camera/background/common/IOMIMEType;Lcom/motorola/camera/background/common/IOFormat;Ljava/lang/String;J)Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    const-string v1, "randomUUID()"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_tag_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static cursorReaderHelperInt(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 2

    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, " exception"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "FileDataContract"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static cursorReaderHelperLong(Landroid/database/Cursor;Ljava/lang/String;J)J
    .locals 2

    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, " exception"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "FileDataContract"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-wide p2
.end method

.method public static cursorReaderHelperStr(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "cursor.getString(columnIndex)"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, " exception"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "FileDataContract"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static deleteData(Landroid/content/Context;J)I
    .locals 12

    const-string v0, "deleteData: Cannot find: "

    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "id"

    const-string v8, "uri"

    filled-new-array {v2, v8}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, p2}, Lcom/motorola/camera/background/provider/FileDataContract;->getContentUri(J)Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x0

    const-string v11, "FileDataContract"

    if-nez v9, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "deleteData: Entry does not exist: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v11, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, p2

    :goto_0
    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_3

    :goto_1
    const/4 v10, 0x1

    :cond_3
    if-eqz v10, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1, v8}, Lcom/motorola/camera/background/provider/FileDataContract;->cursorReaderHelperStr(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "parse(getColumnUriValue(cursor))"

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0, p2, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v9, p2, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1, p2}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return p0

    :goto_3
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {p1, p0}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static deleteTagData(Landroid/content/Context;J)I
    .locals 12

    const-string v0, "deleteData: Cannot find: tag "

    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "tag"

    const-string v8, "id"

    const-string v9, "uri"

    filled-new-array {v1, v8, v9}, [Ljava/lang/String;

    move-result-object v4

    sget-boolean v2, Lcom/motorola/camera/background/provider/FileDataContract;->isForegroundProcessingEnabled:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/motorola/camera/background/provider/FileDataContract;->IN_MEMORY_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/motorola/camera/background/provider/FileDataContract;->CONTENT_URI:Landroid/net/Uri;

    :goto_0
    move-object v3, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    const/4 v5, 0x0

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_3

    :goto_2
    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    move v4, v5

    :goto_3
    const-string v6, "FileDataContract"

    if-eqz v4, :cond_4

    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_4
    :goto_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    const-wide/16 v10, -0x1

    invoke-static {v2, v1, v10, v11}, Lcom/motorola/camera/background/provider/FileDataContract;->cursorReaderHelperLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v10

    cmp-long v0, v10, p1

    if-nez v0, :cond_4

    const-wide/16 v10, 0x0

    invoke-static {v2, v8, v10, v11}, Lcom/motorola/camera/background/provider/FileDataContract;->cursorReaderHelperLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/motorola/camera/background/provider/FileDataContract;->getContentUri(J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v2, v9}, Lcom/motorola/camera/background/provider/FileDataContract;->cursorReaderHelperStr(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v7, "parse(getColumnUriValue(cursor))"

    invoke-static {v4, v7}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0, v4, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catch_0
    move-exception v4

    :try_start_3
    const-string v7, "deleteTagData: fileUri is invalid "

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_5
    if-eqz v0, :cond_5

    :try_start_4
    invoke-virtual {p0, v0, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    :catch_1
    move-exception v0

    :try_start_5
    const-string v4, "deleteTagData: dbUri is invalid "

    invoke-static {v6, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_5
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_8

    :cond_6
    :goto_7
    invoke-static {v2, v3}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return v5

    :goto_8
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v2, p0}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getBaseProjection()[Ljava/lang/String;
    .locals 14

    const-string v0, "id"

    const-string v1, "tag"

    const-string v2, "file_name"

    const-string v3, "uri"

    const-string v4, "MIME_type"

    const-string v5, "format"

    const-string v6, "ts"

    const-string v7, "time_out"

    const-string v8, "compression_type"

    const-string v9, "encryption_type"

    const-string v10, "mSize"

    const-string v11, "width"

    const-string v12, "height"

    const-string v13, "stride"

    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getContentUri(J)Landroid/net/Uri;
    .locals 2

    sget-boolean v0, Lcom/motorola/camera/background/provider/FileDataContract;->isForegroundProcessingEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "content://com.motorola.camera3.background.provider.MemoryDataContentProvider/fileData_table"

    goto :goto_0

    :cond_0
    const-string v0, "content://com.motorola.camera3.background.provider.filedatacontract.FileDataContentProvider/fileData_table"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getImageDims(Landroid/content/Context;J)Landroid/util/Size;
    .locals 8

    const-string v0, "getImageDims: Cannot find: "

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    move-object v2, p0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_1

    return-object v1

    :cond_1
    invoke-static {p1, p2}, Lcom/motorola/camera/background/provider/FileDataContract;->getContentUri(J)Landroid/net/Uri;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v1

    :cond_2
    invoke-static {}, Lcom/motorola/camera/background/provider/FileDataContract;->getBaseProjection()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_3
    move-object p2, v1

    :goto_1
    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p2, :cond_5

    :goto_2
    const/4 p2, 0x1

    goto :goto_3

    :cond_5
    const/4 p2, 0x0

    :goto_3
    if-eqz p2, :cond_6

    const-string p2, "FileDataContract"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "width"

    invoke-static {p1, p0}, Lcom/motorola/camera/background/provider/FileDataContract;->cursorReaderHelperInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p0

    const-string p2, "height"

    invoke-static {p1, p2}, Lcom/motorola/camera/background/provider/FileDataContract;->cursorReaderHelperInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p2

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p0, p2}, Landroid/util/Size;-><init>(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1, v1}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :cond_7
    :goto_4
    invoke-static {p1, v1}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    :goto_5
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {p1, p0}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static insertFileDatabase(Landroid/content/Context;JJLjava/lang/String;Landroid/net/Uri;Lcom/motorola/camera/background/common/IOMIMEType;Lcom/motorola/camera/background/common/IOFormat;JJLcom/motorola/camera/background/common/IOCompression;Lcom/motorola/camera/background/common/IOEncryption;IIII)Landroid/net/Uri;
    .locals 5

    sget v0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->$r8$clinit:I

    const-wide/16 v0, 0x0

    cmp-long v2, p9, v0

    const-wide v3, 0x7fffffffffffffffL

    if-lez v2, :cond_2

    cmp-long v0, p11, v0

    if-nez v0, :cond_0

    sget-wide v0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->DEFAULT_TIMEOUT_MS:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    add-long/2addr v0, p9

    goto :goto_0

    :cond_0
    if-gez v0, :cond_1

    move-wide v0, v3

    goto :goto_0

    :cond_1
    move-wide/from16 v0, p11

    :goto_0
    move-wide v3, v0

    :cond_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "tag"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "file_name"

    move-object v2, p5

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "uri"

    invoke-virtual {p6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p7}, Lcom/motorola/camera/background/common/IOMIMEType;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MIME_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p8}, Lcom/motorola/camera/background/common/IOFormat;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "format"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ts"

    invoke-static {p9, p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "time_out"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "compression_type"

    invoke-virtual/range {p13 .. p13}, Lcom/motorola/camera/background/common/IOCompression;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "encryption_type"

    invoke-virtual/range {p14 .. p14}, Lcom/motorola/camera/background/common/IOEncryption;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mSize"

    invoke-static/range {p15 .. p15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "width"

    invoke-static/range {p16 .. p16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "height"

    invoke-static/range {p17 .. p17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "stride"

    invoke-static/range {p18 .. p18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v2, Lcom/motorola/camera/background/provider/FileDataContract$insertFileDatabase$1;

    const/4 v3, 0x0

    move-object v4, p0

    invoke-direct {v2, v1, p0, v0, v3}, Lcom/motorola/camera/background/provider/FileDataContract$insertFileDatabase$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;Landroid/content/ContentValues;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2}, Lkotlinx/coroutines/DelayKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    iget-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public static retrieveFile(Landroid/content/Context;Landroid/net/Uri;)[B
    .locals 17

    move-object/from16 v0, p1

    const-string v7, "retrieveFile: error getting file "

    const-string v8, "retrieveFile: Cannot find: "

    const/4 v9, 0x0

    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v10, v1

    goto :goto_0

    :cond_0
    move-object v10, v9

    :goto_0
    if-eqz p0, :cond_a

    if-eqz v10, :cond_a

    if-nez v0, :cond_1

    goto/16 :goto_8

    :cond_1
    invoke-static {}, Lcom/motorola/camera/background/provider/FileDataContract;->getBaseProjection()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v10

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_7

    :cond_2
    move-object v2, v9

    :goto_1
    const/4 v3, 0x0

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_4

    :goto_2
    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    move v2, v3

    :goto_3
    const-string v4, "FileDataContract"

    if-eqz v2, :cond_5

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/motorola/camera/background/provider/FileDataContract;->getBaseProjection()[Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-boolean v0, Lcom/motorola/camera/background/provider/FileDataContract;->isForegroundProcessingEnabled:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/motorola/camera/background/provider/FileDataContract;->IN_MEMORY_CONTENT_URI:Landroid/net/Uri;

    goto :goto_4

    :cond_6
    sget-object v0, Lcom/motorola/camera/background/provider/FileDataContract;->CONTENT_URI:Landroid/net/Uri;

    :goto_4
    move-object v12, v0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_7

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_7

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    move-object v4, v0

    :try_start_4
    invoke-static {v2, v3}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4

    :cond_7
    :goto_5
    invoke-static {v2, v9}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string v0, "id"

    const-wide/16 v5, 0x0

    invoke-static {v1, v0, v5, v6}, Lcom/motorola/camera/background/provider/FileDataContract;->cursorReaderHelperLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    const-string v0, "file_name"

    invoke-static {v1, v0}, Lcom/motorola/camera/background/provider/FileDataContract;->cursorReaderHelperStr(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "uri"

    invoke-static {v1, v0}, Lcom/motorola/camera/background/provider/FileDataContract;->cursorReaderHelperStr(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "MIME_type"

    invoke-static {v1, v2}, Lcom/motorola/camera/background/provider/FileDataContract;->cursorReaderHelperStr(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "format"

    invoke-static {v1, v2}, Lcom/motorola/camera/background/provider/FileDataContract;->cursorReaderHelperStr(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "ts"

    invoke-static {v1, v2, v5, v6}, Lcom/motorola/camera/background/provider/FileDataContract;->cursorReaderHelperLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v2, :cond_8

    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-static {v2, v9}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {v1, v9}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v9

    :cond_8
    :try_start_7
    sget-object v0, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils;->TAG:Ljava/lang/String;

    const-string v0, "fileUri"

    invoke-static {v11, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    const-string v4, "_size"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    new-array v0, v4, [B

    invoke-virtual {v2, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    invoke-static {v2, v9}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-static {v1, v9}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_3
    move-exception v0

    move-object v3, v0

    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception v0

    move-object v4, v0

    :try_start_a
    invoke-static {v2, v3}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_9
    :goto_6
    invoke-static {v1, v9}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v9

    :goto_7
    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :catchall_5
    move-exception v0

    move-object v3, v0

    invoke-static {v1, v2}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    :cond_a
    :goto_8
    return-object v9
.end method

.method public static final retrieveFileInBuffer(Landroid/content/Context;J)[B
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p1, p2}, Lcom/motorola/camera/background/provider/FileDataContract;->getContentUri(J)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/motorola/camera/background/provider/FileDataContract;->retrieveFile(Landroid/content/Context;Landroid/net/Uri;)[B

    move-result-object p0

    return-object p0
.end method
