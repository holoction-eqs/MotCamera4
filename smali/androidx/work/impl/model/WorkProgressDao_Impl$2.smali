.class public final Landroidx/work/impl/model/WorkProgressDao_Impl$2;
.super Landroidx/collection/MapCollections;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Landroidx/room/RoomDatabase;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/work/impl/model/WorkProgressDao_Impl$2;->$r8$classId:I

    invoke-direct {p0, p1}, Landroidx/collection/MapCollections;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/work/impl/utils/SerialExecutorImpl;Landroidx/work/multiprocess/IWorkManagerImplCallback;Landroidx/work/impl/utils/futures/SettableFuture;I)V
    .locals 0

    .line 2
    iput p4, p0, Landroidx/work/impl/model/WorkProgressDao_Impl$2;->$r8$classId:I

    invoke-direct {p0, p1, p2, p3}, Landroidx/collection/MapCollections;-><init>(Landroidx/work/impl/utils/SerialExecutorImpl;Landroidx/work/multiprocess/IWorkManagerImplCallback;Landroidx/work/impl/utils/futures/SettableFuture;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 0

    iget p0, p0, Landroidx/work/impl/model/WorkProgressDao_Impl$2;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "DELETE FROM WorkProgress"

    return-object p0

    :pswitch_0
    const-string p0, "DELETE from WorkProgress where work_spec_id=?"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public toByteArray()[B
    .locals 0

    .line 1
    iget p0, p0, Landroidx/work/impl/model/WorkProgressDao_Impl$2;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->sEMPTY:[B

    return-object p0

    :pswitch_1
    sget-object p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->sEMPTY:[B

    return-object p0

    :pswitch_2
    sget-object p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->sEMPTY:[B

    return-object p0

    :pswitch_3
    sget-object p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->sEMPTY:[B

    return-object p0

    :pswitch_4
    sget-object p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->sEMPTY:[B

    return-object p0

    :pswitch_5
    sget-object p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->sEMPTY:[B

    return-object p0

    :goto_0
    sget-object p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->sEMPTY:[B

    return-object p0

    nop

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

.method public toByteArray(Ljava/lang/Object;)[B
    .locals 1

    iget v0, p0, Landroidx/work/impl/model/WorkProgressDao_Impl$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    check-cast p1, Ljava/lang/Void;

    packed-switch v0, :pswitch_data_1

    :pswitch_1
    sget-object p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->sEMPTY:[B

    return-object p0

    .line 3
    :pswitch_2
    check-cast p1, Ljava/util/List;

    .line 4
    new-instance p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkInfos;

    invoke-direct {p0, p1}, Landroidx/work/multiprocess/parcelable/ParcelableWorkInfos;-><init>(Ljava/util/List;)V

    invoke-static {p0}, Lokio/SegmentPool;->marshall(Landroid/os/Parcelable;)[B

    move-result-object p0

    return-object p0

    .line 5
    :pswitch_3
    check-cast p1, Landroidx/work/Operation$State$SUCCESS;

    invoke-virtual {p0}, Landroidx/work/impl/model/WorkProgressDao_Impl$2;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 6
    :pswitch_4
    check-cast p1, Landroidx/work/Operation$State$SUCCESS;

    invoke-virtual {p0}, Landroidx/work/impl/model/WorkProgressDao_Impl$2;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 7
    :pswitch_5
    check-cast p1, Landroidx/work/Operation$State$SUCCESS;

    invoke-virtual {p0}, Landroidx/work/impl/model/WorkProgressDao_Impl$2;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 8
    :pswitch_6
    check-cast p1, Landroidx/work/Operation$State$SUCCESS;

    invoke-virtual {p0}, Landroidx/work/impl/model/WorkProgressDao_Impl$2;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 9
    :pswitch_7
    check-cast p1, Landroidx/work/Operation$State$SUCCESS;

    invoke-virtual {p0}, Landroidx/work/impl/model/WorkProgressDao_Impl$2;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 10
    :pswitch_8
    check-cast p1, Landroidx/work/Operation$State$SUCCESS;

    invoke-virtual {p0}, Landroidx/work/impl/model/WorkProgressDao_Impl$2;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 11
    :pswitch_9
    check-cast p1, Landroidx/work/Operation$State$SUCCESS;

    invoke-virtual {p0}, Landroidx/work/impl/model/WorkProgressDao_Impl$2;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 12
    :goto_0
    check-cast p1, Ljava/lang/Void;

    packed-switch v0, :pswitch_data_2

    :pswitch_a
    sget-object p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->sEMPTY:[B

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x8
        :pswitch_a
    .end packed-switch
.end method
