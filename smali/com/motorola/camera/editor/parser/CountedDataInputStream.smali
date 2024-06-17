.class public final Lcom/motorola/camera/editor/parser/CountedDataInputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field public final mByteArray:[B

.field public final mByteBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/io/ByteArrayInputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 p1, 0x8

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/motorola/camera/editor/parser/CountedDataInputStream;->mByteArray:[B

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/editor/parser/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final read()I
    .locals 0

    .line 1
    iget-object p0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    return p0
.end method

.method public final read([B)I
    .locals 0

    .line 2
    iget-object p0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p0

    return p0
.end method

.method public final read([BII)I
    .locals 0

    .line 3
    iget-object p0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public final readShort()S
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/motorola/camera/editor/parser/CountedDataInputStream;->mByteArray:[B

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v0, v2}, Lcom/motorola/camera/editor/parser/CountedDataInputStream;->read([BII)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/editor/parser/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public final skip(J)J
    .locals 0

    iget-object p0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p0

    return-wide p0
.end method
