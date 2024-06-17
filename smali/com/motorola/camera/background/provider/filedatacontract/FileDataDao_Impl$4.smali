.class public final Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl$4;
.super Landroidx/collection/MapCollections;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Landroidx/room/RoomDatabase;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl$4;->$r8$classId:I

    invoke-direct {p0, p1}, Landroidx/collection/MapCollections;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public final createQuery()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl$4;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "DELETE FROM fileData_table"

    return-object p0

    :pswitch_0
    const-string p0, "DELETE FROM fileData_table WHERE tag = ?"

    return-object p0

    :pswitch_1
    const-string p0, "DELETE FROM fileData_table WHERE id = ?"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
