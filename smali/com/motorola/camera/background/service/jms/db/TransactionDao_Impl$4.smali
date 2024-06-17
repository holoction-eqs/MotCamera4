.class public final Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$4;
.super Landroidx/collection/MapCollections;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Landroidx/room/RoomDatabase;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$4;->$r8$classId:I

    invoke-direct {p0, p1}, Landroidx/collection/MapCollections;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public final createQuery()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$4;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "UPDATE transaction_table SET markForDelete = ? WHERE id = ?"

    return-object p0

    :pswitch_0
    const-string p0, "UPDATE transaction_table SET retryCount = ? WHERE id = ?"

    return-object p0

    :pswitch_1
    const-string p0, "DELETE from transaction_table"

    return-object p0

    :pswitch_2
    const-string p0, "DELETE FROM transaction_table WHERE id = ?"

    return-object p0

    :pswitch_3
    const-string p0, "UPDATE transaction_table SET timeExpiration = ? WHERE id = ?"

    return-object p0

    :pswitch_4
    const-string p0, "UPDATE transaction_table SET callerId = ?, msgType = ?, msg = ?, returnCode = ? WHERE id = ?"

    return-object p0

    :pswitch_5
    const-string p0, "UPDATE transaction_table SET state = ? WHERE id = ?"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
