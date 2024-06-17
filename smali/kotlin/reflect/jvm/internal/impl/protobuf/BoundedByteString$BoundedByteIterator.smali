.class public final Lkotlin/reflect/jvm/internal/impl/protobuf/BoundedByteString$BoundedByteIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final synthetic $r8$classId:I

.field public final limit:I

.field public position:I

.field public final synthetic this$0:Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/BoundedByteString$BoundedByteIterator;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/BoundedByteString$BoundedByteIterator;->this$0:Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/BoundedByteString$BoundedByteIterator;->position:I

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->size()I

    move-result p1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/BoundedByteString$BoundedByteIterator;->limit:I

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;I)V
    .locals 0

    const/4 p2, 0x1

    iput p2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/BoundedByteString$BoundedByteIterator;->$r8$classId:I

    .line 2
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/BoundedByteString$BoundedByteIterator;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;)V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 4

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/BoundedByteString$BoundedByteIterator;->$r8$classId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/BoundedByteString$BoundedByteIterator;->limit:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/BoundedByteString$BoundedByteIterator;->position:I

    if-ge p0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :goto_1
    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/BoundedByteString$BoundedByteIterator;->position:I

    if-ge p0, v3, :cond_1

    goto :goto_2

    :cond_1
    move v1, v2

    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Byte;
    .locals 1

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/BoundedByteString$BoundedByteIterator;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/BoundedByteString$BoundedByteIterator;->nextByte()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/BoundedByteString$BoundedByteIterator;->nextByte()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/BoundedByteString$BoundedByteIterator;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/BoundedByteString$BoundedByteIterator;->next()Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/BoundedByteString$BoundedByteIterator;->next()Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final nextByte()B
    .locals 3

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/BoundedByteString$BoundedByteIterator;->$r8$classId:I

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/BoundedByteString$BoundedByteIterator;->this$0:Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/BoundedByteString$BoundedByteIterator;->position:I

    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/BoundedByteString$BoundedByteIterator;->limit:I

    if-ge v0, p0, :cond_0

    invoke-static {v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :goto_0
    :try_start_0
    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->bytes:[B

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/BoundedByteString$BoundedByteIterator;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/BoundedByteString$BoundedByteIterator;->position:I

    aget-byte p0, v0, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 0

    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/BoundedByteString$BoundedByteIterator;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :goto_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
