.class public final Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl$2;
.super Landroidx/room/EntityInsertionAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Landroidx/room/RoomDatabase;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl$2;->$r8$classId:I

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;I)V

    return-void
.end method


# virtual methods
.method public final bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/motorola/camera/background/provider/filedatacontract/FileData;)V
    .locals 5

    iget p0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl$2;->$r8$classId:I

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-wide v1, p2, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->id:J

    .line 2
    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    return-void

    .line 3
    :goto_0
    iget-wide v1, p2, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->id:J

    .line 4
    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 5
    iget-object p0, p2, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->tag:Ljava/lang/Long;

    const/4 v0, 0x2

    if-nez p0, :cond_0

    .line 6
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 7
    :goto_1
    iget-object p0, p2, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->fileName:Ljava/lang/String;

    const/4 v0, 0x3

    if-nez p0, :cond_1

    .line 8
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    :cond_1
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 9
    :goto_2
    iget-object p0, p2, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->uri:Ljava/lang/String;

    const/4 v0, 0x4

    if-nez p0, :cond_2

    .line 10
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_3

    :cond_2
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 11
    :goto_3
    iget-object p0, p2, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->ts:Ljava/lang/Long;

    const/4 v0, 0x5

    if-nez p0, :cond_3

    .line 12
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_4

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 13
    :goto_4
    iget-object p0, p2, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->MIMEType:Ljava/lang/String;

    const/4 v0, 0x6

    if-nez p0, :cond_4

    .line 14
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_5

    :cond_4
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 15
    :goto_5
    iget-object p0, p2, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->format:Ljava/lang/String;

    const/4 v0, 0x7

    if-nez p0, :cond_5

    .line 16
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_6

    :cond_5
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 17
    :goto_6
    iget-object p0, p2, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->expirationTime:Ljava/lang/Long;

    const/16 v0, 0x8

    if-nez p0, :cond_6

    .line 18
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_7

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :goto_7
    const/16 p0, 0x9

    iget-object v0, p2, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->refCount:Ljava/lang/Integer;

    if-nez v0, :cond_7

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_8

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 19
    :goto_8
    iget-object p0, p2, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->compressionType:Ljava/lang/String;

    const/16 v0, 0xa

    if-nez p0, :cond_8

    .line 20
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_9

    :cond_8
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 21
    :goto_9
    iget-object p0, p2, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->encryptionType:Ljava/lang/String;

    const/16 v0, 0xb

    if-nez p0, :cond_9

    .line 22
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_a

    :cond_9
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 23
    :goto_a
    iget-object p0, p2, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mSize:Ljava/lang/Integer;

    const/16 v0, 0xc

    if-nez p0, :cond_a

    .line 24
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_b

    :cond_a
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v1, p0

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :goto_b
    const/16 p0, 0xf

    const/16 v0, 0xe

    const/16 v1, 0xd

    iget-object v2, p2, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->dims:Lcom/motorola/camera/background/provider/filedatacontract/DimProp;

    if-eqz v2, :cond_e

    .line 25
    iget-object v3, v2, Lcom/motorola/camera/background/provider/filedatacontract/DimProp;->width:Ljava/lang/Integer;

    if-nez v3, :cond_b

    .line 26
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_c

    :cond_b
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-interface {p1, v1, v3, v4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 27
    :goto_c
    iget-object v1, v2, Lcom/motorola/camera/background/provider/filedatacontract/DimProp;->height:Ljava/lang/Integer;

    if-nez v1, :cond_c

    .line 28
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_d

    :cond_c
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v3, v1

    invoke-interface {p1, v0, v3, v4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 29
    :goto_d
    iget-object v0, v2, Lcom/motorola/camera/background/provider/filedatacontract/DimProp;->stride:Ljava/lang/Integer;

    if-nez v0, :cond_d

    goto :goto_e

    .line 30
    :cond_d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    goto :goto_f

    :cond_e
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    :goto_e
    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    .line 31
    :goto_f
    iget-wide v0, p2, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->id:J

    const/16 p0, 0x10

    .line 32
    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 33
    :pswitch_0
    check-cast p2, Lcom/motorola/camera/background/provider/filedatacontract/FileData;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/motorola/camera/background/provider/filedatacontract/FileData;)V

    return-void

    .line 34
    :goto_0
    check-cast p2, Lcom/motorola/camera/background/provider/filedatacontract/FileData;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/motorola/camera/background/provider/filedatacontract/FileData;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final createQuery()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl$2;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "UPDATE OR ABORT `fileData_table` SET `id` = ?,`tag` = ?,`file_name` = ?,`uri` = ?,`ts` = ?,`MIME_type` = ?,`format` = ?,`time_out` = ?,`ref_count` = ?,`compression_type` = ?,`encryption_type` = ?,`mSize` = ?,`width` = ?,`height` = ?,`stride` = ? WHERE `id` = ?"

    return-object p0

    :pswitch_0
    const-string p0, "DELETE FROM `fileData_table` WHERE `id` = ?"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
