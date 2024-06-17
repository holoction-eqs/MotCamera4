.class public final Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString$RopeByteIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public bytes:Lkotlin/reflect/jvm/internal/impl/protobuf/BoundedByteString$BoundedByteIterator;

.field public bytesRemaining:I

.field public final pieces:Lcom/adobe/xmp/impl/XMPNode$1;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/adobe/xmp/impl/XMPNode$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/adobe/xmp/impl/XMPNode$1;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;I)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString$RopeByteIterator;->pieces:Lcom/adobe/xmp/impl/XMPNode$1;

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode$1;->next()Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/protobuf/BoundedByteString$BoundedByteIterator;

    invoke-direct {v2, v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/BoundedByteString$BoundedByteIterator;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;I)V

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString$RopeByteIterator;->bytes:Lkotlin/reflect/jvm/internal/impl/protobuf/BoundedByteString$BoundedByteIterator;

    iget p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString;->totalLength:I

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString$RopeByteIterator;->bytesRemaining:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 0

    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString$RopeByteIterator;->bytesRemaining:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString$RopeByteIterator;->nextByte()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final nextByte()B
    .locals 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString$RopeByteIterator;->bytes:Lkotlin/reflect/jvm/internal/impl/protobuf/BoundedByteString$BoundedByteIterator;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/BoundedByteString$BoundedByteIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString$RopeByteIterator;->pieces:Lcom/adobe/xmp/impl/XMPNode$1;

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode$1;->next()Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/protobuf/BoundedByteString$BoundedByteIterator;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/BoundedByteString$BoundedByteIterator;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;I)V

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString$RopeByteIterator;->bytes:Lkotlin/reflect/jvm/internal/impl/protobuf/BoundedByteString$BoundedByteIterator;

    :cond_0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString$RopeByteIterator;->bytesRemaining:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString$RopeByteIterator;->bytesRemaining:I

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString$RopeByteIterator;->bytes:Lkotlin/reflect/jvm/internal/impl/protobuf/BoundedByteString$BoundedByteIterator;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/BoundedByteString$BoundedByteIterator;->nextByte()B

    move-result p0

    return p0
.end method

.method public final remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
