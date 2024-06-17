.class public final Lokio/Buffer$2;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lokio/Buffer$2;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lokio/Buffer$2;->this$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lokio/BufferedSource;I)V
    .locals 0

    .line 2
    iput p2, p0, Lokio/Buffer$2;->$r8$classId:I

    iput-object p1, p0, Lokio/Buffer$2;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 5

    iget v0, p0, Lokio/Buffer$2;->$r8$classId:I

    const-wide/32 v1, 0x7fffffff

    iget-object p0, p0, Lokio/Buffer$2;->this$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result p0

    return p0

    :pswitch_1
    check-cast p0, Lokio/Buffer;

    iget-wide v3, p0, Lokio/Buffer;->size:J

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0

    :goto_0
    check-cast p0, Lokio/RealBufferedSource;

    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-wide v3, p0, Lokio/Buffer;->size:J

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final close()V
    .locals 1

    iget v0, p0, Lokio/Buffer$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    return-void

    :pswitch_1
    iget-object p0, p0, Lokio/Buffer$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lokio/RealBufferedSource;

    invoke-virtual {p0}, Lokio/RealBufferedSource;->close()V

    :pswitch_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final read()I
    .locals 6

    iget v0, p0, Lokio/Buffer$2;->$r8$classId:I

    const-wide/16 v1, 0x0

    const/4 v3, -0x1

    iget-object p0, p0, Lokio/Buffer$2;->this$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1
    :pswitch_0
    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    and-int/lit16 v3, p0, 0xff

    :goto_0
    return v3

    .line 2
    :pswitch_1
    check-cast p0, Lokio/Buffer;

    iget-wide v4, p0, Lokio/Buffer;->size:J

    cmp-long v0, v4, v1

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result p0

    and-int/lit16 v3, p0, 0xff

    :cond_1
    return v3

    .line 3
    :goto_1
    check-cast p0, Lokio/RealBufferedSource;

    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-wide v4, v0, Lokio/Buffer;->size:J

    cmp-long v1, v4, v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    const-wide/16 v1, 0x2000

    invoke-interface {p0, v0, v1, v2}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v1

    const-wide/16 v4, -0x1

    cmp-long p0, v1, v4

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    move-result p0

    and-int/lit16 v3, p0, 0xff

    :goto_2
    return v3

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final read([BII)I
    .locals 8

    iget v0, p0, Lokio/Buffer$2;->$r8$classId:I

    const/4 v1, -0x1

    iget-object p0, p0, Lokio/Buffer$2;->this$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 4
    :pswitch_0
    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, p1, p2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :goto_0
    return v1

    .line 5
    :pswitch_1
    check-cast p0, Lokio/Buffer;

    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->read([BII)I

    move-result p0

    return p0

    .line 6
    :goto_1
    check-cast p0, Lokio/RealBufferedSource;

    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_2

    array-length v0, p1

    int-to-long v2, v0

    int-to-long v4, p2

    int-to-long v6, p3

    invoke-static/range {v2 .. v7}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-wide v2, v0, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-object p0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    const-wide/16 v2, 0x2000

    invoke-interface {p0, v0, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long p0, v2, v4

    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->read([BII)I

    move-result v1

    :goto_2
    return v1

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lokio/Buffer$2;->$r8$classId:I

    const-string v1, ".inputStream()"

    iget-object v2, p0, Lokio/Buffer$2;->this$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v2, Lokio/RealBufferedSource;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v2, Lokio/Buffer;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
