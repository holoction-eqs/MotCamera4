.class public final Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$2;
.super Landroidx/room/EntityInsertionAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Landroidx/room/RoomDatabase;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$2;->$r8$classId:I

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;I)V

    return-void
.end method


# virtual methods
.method public final bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/motorola/camera/background/service/jms/db/Transaction;)V
    .locals 3

    iget p0, p0, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$2;->$r8$classId:I

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-wide v1, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->id:J

    .line 2
    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    return-void

    .line 3
    :goto_0
    iget-wide v1, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->id:J

    .line 4
    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-boolean p0, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->markForDelete:Z

    int-to-long v0, p0

    const/4 p0, 0x2

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p0, 0x3

    iget-wide v0, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->ts:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget p0, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->clientId:I

    int-to-long v0, p0

    const/4 p0, 0x4

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget p0, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->sourceId:I

    int-to-long v0, p0

    const/4 p0, 0x5

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget p0, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->targetId:I

    int-to-long v0, p0

    const/4 p0, 0x6

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p0, 0x7

    iget-wide v0, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->jobNum:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 p0, 0x8

    iget-wide v0, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->taskNum:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 5
    iget p0, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->priority:I

    int-to-long v0, p0

    const/16 p0, 0x9

    .line 6
    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 7
    iget-boolean p0, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->useFifo:Z

    const/16 v0, 0xa

    int-to-long v1, p0

    .line 8
    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 p0, 0xb

    iget-object v0, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->comment:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    :cond_0
    invoke-interface {p1, p0, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    iget p0, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->coProcId:I

    int-to-long v0, p0

    const/16 p0, 0xc

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget p0, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->callerId:I

    int-to-long v0, p0

    const/16 p0, 0xd

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget p0, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->msgType:I

    int-to-long v0, p0

    const/16 p0, 0xe

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 p0, 0xf

    iget-object v0, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->msg:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    :cond_1
    invoke-interface {p1, p0, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_2
    iget p0, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->returnCode:I

    int-to-long v0, p0

    const/16 p0, 0x10

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget p0, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->iCallerId:I

    int-to-long v0, p0

    const/16 p0, 0x11

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget p0, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->iMsgType:I

    int-to-long v0, p0

    const/16 p0, 0x12

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 p0, 0x13

    iget-object v0, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->iMsg:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_3

    :cond_2
    invoke-interface {p1, p0, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_3
    iget p0, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->iReturnCode:I

    int-to-long v0, p0

    const/16 p0, 0x14

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 p0, 0x15

    iget-object v0, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->state:Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_4

    :cond_3
    invoke-interface {p1, p0, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_4
    iget p0, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->progressInd:I

    int-to-long v0, p0

    const/16 p0, 0x16

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 p0, 0x17

    iget-wide v0, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->timeExpiration:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-boolean p0, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->scheduled:Z

    int-to-long v0, p0

    const/16 p0, 0x18

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 9
    iget p0, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->retryCount:I

    int-to-long v0, p0

    const/16 p0, 0x19

    .line 10
    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 11
    iget-wide v0, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->id:J

    const/16 p0, 0x1a

    .line 12
    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 13
    :pswitch_0
    check-cast p2, Lcom/motorola/camera/background/service/jms/db/Transaction;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/motorola/camera/background/service/jms/db/Transaction;)V

    return-void

    .line 14
    :goto_0
    check-cast p2, Lcom/motorola/camera/background/service/jms/db/Transaction;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/motorola/camera/background/service/jms/db/Transaction;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final createQuery()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$2;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "UPDATE OR ABORT `transaction_table` SET `id` = ?,`markForDelete` = ?,`ts` = ?,`clientId` = ?,`sourceId` = ?,`targetId` = ?,`jobNum` = ?,`taskNum` = ?,`priority` = ?,`useFifo` = ?,`comment` = ?,`coProcId` = ?,`callerId` = ?,`msgType` = ?,`msg` = ?,`returnCode` = ?,`iCallerId` = ?,`iMsgType` = ?,`iMsg` = ?,`iReturnCode` = ?,`state` = ?,`progressInd` = ?,`timeExpiration` = ?,`scheduled` = ?,`retryCount` = ? WHERE `id` = ?"

    return-object p0

    :pswitch_0
    const-string p0, "DELETE FROM `transaction_table` WHERE `id` = ?"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
