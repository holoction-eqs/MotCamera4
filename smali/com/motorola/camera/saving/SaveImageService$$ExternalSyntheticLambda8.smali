.class public final synthetic Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/saving/SaveImageService;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/io/File;

.field public final synthetic f$3:Ljava/lang/Integer;

.field public final synthetic f$4:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/saving/SaveImageService;JLjava/io/File;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$0:Lcom/motorola/camera/saving/SaveImageService;

    iput-wide p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$1:J

    iput-object p4, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$2:Ljava/io/File;

    iput-object p5, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$3:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$4:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$0:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService;->mBgCaptureRecords:Lcom/motorola/camera/background/provider/BgCaptureRecordRepository;

    iget-object v1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$2:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$3:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$4:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, v0, Lcom/motorola/camera/background/provider/BgCaptureRecordRepository;->mDao:Lcom/google/android/material/datepicker/CalendarStyle;

    if-eqz v0, :cond_1

    iget-object v4, v0, Lcom/google/android/material/datepicker/CalendarStyle;->day:Ljava/lang/Object;

    check-cast v4, Landroidx/room/RoomDatabase;

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v4, v0, Lcom/google/android/material/datepicker/CalendarStyle;->selectedYear:Ljava/lang/Object;

    check-cast v4, Landroidx/collection/MapCollections;

    invoke-virtual {v4}, Landroidx/collection/MapCollections;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v4

    const/4 v5, 0x1

    if-nez v1, :cond_0

    invoke-interface {v4, v5}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v4, v5, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 v1, 0x2

    int-to-long v5, v2

    invoke-interface {v4, v1, v5, v6}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 v1, 0x3

    int-to-long v2, v3

    invoke-interface {v4, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;->f$1:J

    invoke-interface {v4, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-object p0, v0, Lcom/google/android/material/datepicker/CalendarStyle;->day:Ljava/lang/Object;

    check-cast p0, Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {v4}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p0, v0, Lcom/google/android/material/datepicker/CalendarStyle;->day:Ljava/lang/Object;

    check-cast p0, Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, v0, Lcom/google/android/material/datepicker/CalendarStyle;->day:Ljava/lang/Object;

    check-cast p0, Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    iget-object p0, v0, Lcom/google/android/material/datepicker/CalendarStyle;->selectedYear:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/MapCollections;

    invoke-virtual {p0, v4}, Landroidx/collection/MapCollections;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    iget-object v1, v0, Lcom/google/android/material/datepicker/CalendarStyle;->day:Ljava/lang/Object;

    check-cast v1, Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    iget-object v0, v0, Lcom/google/android/material/datepicker/CalendarStyle;->selectedYear:Ljava/lang/Object;

    check-cast v0, Landroidx/collection/MapCollections;

    invoke-virtual {v0, v4}, Landroidx/collection/MapCollections;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p0

    :cond_1
    :goto_1
    return-void
.end method
