.class public final Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# instance fields
.field public mByteOrder:Ljava/nio/ByteOrder;

.field public final mOutputStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    iput-object p2, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->mByteOrder:Ljava/nio/ByteOrder;

    return-void
.end method


# virtual methods
.method public final write([B)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public final write([BII)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public final writeByte(I)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public final writeInt(I)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    iget-object p0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    if-ne v0, v1, :cond_0

    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 p1, p1, 0x18

    :goto_0
    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    :cond_0
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_1

    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final writeShort(S)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    iget-object p0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    if-ne v0, v1, :cond_0

    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 p1, p1, 0x8

    :goto_0
    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    :cond_0
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_1

    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
