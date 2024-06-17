.class public final Landroidx/collection/ArrayMap$1;
.super Landroidx/collection/MapCollections;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/collection/ArrayMap$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/collection/ArrayMap$1;->this$0:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/collection/MapCollections;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Landroidx/room/RoomDatabase;I)V
    .locals 0

    .line 2
    iput p3, p0, Landroidx/collection/ArrayMap$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/collection/ArrayMap$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroidx/collection/MapCollections;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public colClear()V
    .locals 1

    iget v0, p0, Landroidx/collection/ArrayMap$1;->$r8$classId:I

    iget-object p0, p0, Landroidx/collection/ArrayMap$1;->this$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Landroidx/collection/ArrayMap;

    invoke-virtual {p0}, Landroidx/collection/SimpleArrayMap;->clear()V

    return-void

    :goto_0
    check-cast p0, Landroidx/collection/ArraySet;

    invoke-virtual {p0}, Landroidx/collection/ArraySet;->clear()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public colGetEntry(II)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Landroidx/collection/ArrayMap$1;->$r8$classId:I

    iget-object p0, p0, Landroidx/collection/ArrayMap$1;->this$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Landroidx/collection/ArrayMap;

    iget-object p0, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p1, p2

    aget-object p0, p0, p1

    return-object p0

    :goto_0
    check-cast p0, Landroidx/collection/ArraySet;

    iget-object p0, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public colGetMap()Landroidx/collection/ArrayMap;
    .locals 1

    iget v0, p0, Landroidx/collection/ArrayMap$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Landroidx/collection/ArrayMap$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/ArrayMap;

    return-object p0

    :goto_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "not a map"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public colGetSize()I
    .locals 1

    iget v0, p0, Landroidx/collection/ArrayMap$1;->$r8$classId:I

    iget-object p0, p0, Landroidx/collection/ArrayMap$1;->this$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Landroidx/collection/ArrayMap;

    iget p0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    return p0

    :goto_0
    check-cast p0, Landroidx/collection/ArraySet;

    iget p0, p0, Landroidx/collection/ArraySet;->mSize:I

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public colIndexOfKey(Ljava/lang/Object;)I
    .locals 1

    iget v0, p0, Landroidx/collection/ArrayMap$1;->$r8$classId:I

    iget-object p0, p0, Landroidx/collection/ArrayMap$1;->this$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Landroidx/collection/ArrayMap;

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p0

    return p0

    :goto_0
    check-cast p0, Landroidx/collection/ArraySet;

    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public colIndexOfValue(Ljava/lang/Object;)I
    .locals 1

    iget v0, p0, Landroidx/collection/ArrayMap$1;->$r8$classId:I

    iget-object p0, p0, Landroidx/collection/ArrayMap$1;->this$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Landroidx/collection/ArrayMap;

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result p0

    return p0

    :goto_0
    check-cast p0, Landroidx/collection/ArraySet;

    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public colPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Landroidx/collection/ArrayMap$1;->$r8$classId:I

    iget-object p0, p0, Landroidx/collection/ArrayMap$1;->this$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Landroidx/collection/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :goto_0
    check-cast p0, Landroidx/collection/ArraySet;

    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public colRemoveAt(I)V
    .locals 1

    iget v0, p0, Landroidx/collection/ArrayMap$1;->$r8$classId:I

    iget-object p0, p0, Landroidx/collection/ArrayMap$1;->this$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Landroidx/collection/ArrayMap;

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    return-void

    :goto_0
    check-cast p0, Landroidx/collection/ArraySet;

    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->removeAt(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Landroidx/collection/ArrayMap$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Landroidx/collection/ArrayMap$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/ArrayMap;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    aget-object v0, p0, p1

    aput-object p2, p0, p1

    return-object v0

    :goto_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "not a map"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public createQuery()Ljava/lang/String;
    .locals 0

    iget p0, p0, Landroidx/collection/ArrayMap$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "DELETE FROM SystemIdInfo where work_spec_id=?"

    return-object p0

    :pswitch_0
    const-string p0, "DELETE FROM SystemIdInfo where work_spec_id=? AND generation=?"

    return-object p0

    :pswitch_1
    const-string p0, "DELETE FROM worktag WHERE work_spec_id=?"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
