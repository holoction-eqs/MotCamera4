.class public abstract Lcom/adobe/xmp/XMPMetaFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final schema:Landroidx/work/WorkQuery;

.field public static versionInfo:Lcom/adobe/xmp/XMPMetaFactory$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/work/WorkQuery;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroidx/work/WorkQuery;-><init>(I)V

    sput-object v0, Lcom/adobe/xmp/XMPMetaFactory;->schema:Landroidx/work/WorkQuery;

    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/xmp/XMPMetaFactory;->versionInfo:Lcom/adobe/xmp/XMPMetaFactory$1;

    return-void
.end method

.method public static serializeToBuffer(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/options/SerializeOptions;)[B
    .locals 13

    instance-of v0, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    if-eqz v0, :cond_9

    check-cast p0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v1, 0x1000

    invoke-virtual {p1, v1}, Lcom/adobe/xmp/options/Options;->getOption(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->sort()V

    :cond_0
    new-instance v1, Lcom/adobe/xmp/impl/XMPSerializerRDF;

    invoke-direct {v1}, Lcom/adobe/xmp/impl/XMPSerializerRDF;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lcom/adobe/xmp/impl/CountOutputStream;

    invoke-direct {v3, v0}, Lcom/adobe/xmp/impl/CountOutputStream;-><init>(Ljava/io/ByteArrayOutputStream;)V

    iput-object v3, v1, Lcom/adobe/xmp/impl/XMPSerializerRDF;->outputStream:Lcom/adobe/xmp/impl/CountOutputStream;

    new-instance v3, Ljava/io/OutputStreamWriter;

    iget-object v4, v1, Lcom/adobe/xmp/impl/XMPSerializerRDF;->outputStream:Lcom/adobe/xmp/impl/CountOutputStream;

    iget v5, p1, Lcom/adobe/xmp/options/Options;->options:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x3

    and-int/2addr v5, v6

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-ne v5, v8, :cond_1

    move v9, v7

    goto :goto_0

    :cond_1
    move v9, v2

    :goto_0
    const-string v10, "UTF-16LE"

    const-string v11, "UTF-8"

    const-string v12, "UTF-16BE"

    if-eqz v9, :cond_2

    move-object v5, v12

    goto :goto_2

    :cond_2
    if-ne v5, v6, :cond_3

    move v5, v7

    goto :goto_1

    :cond_3
    move v5, v2

    :goto_1
    if-eqz v5, :cond_4

    move-object v5, v10

    goto :goto_2

    :cond_4
    move-object v5, v11

    :goto_2
    :try_start_1
    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v3, v1, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    iput-object p0, v1, Lcom/adobe/xmp/impl/XMPSerializerRDF;->xmp:Lcom/adobe/xmp/impl/XMPMetaImpl;

    iput-object p1, v1, Lcom/adobe/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/xmp/options/SerializeOptions;

    iget p0, p1, Lcom/adobe/xmp/options/SerializeOptions;->padding:I

    iput p0, v1, Lcom/adobe/xmp/impl/XMPSerializerRDF;->padding:I

    new-instance p0, Ljava/io/OutputStreamWriter;

    iget-object v3, v1, Lcom/adobe/xmp/impl/XMPSerializerRDF;->outputStream:Lcom/adobe/xmp/impl/CountOutputStream;

    iget p1, p1, Lcom/adobe/xmp/options/Options;->options:I

    and-int/2addr p1, v6

    if-ne p1, v8, :cond_5

    move v4, v7

    goto :goto_3

    :cond_5
    move v4, v2

    :goto_3
    if-eqz v4, :cond_6

    move-object v10, v12

    goto :goto_5

    :cond_6
    if-ne p1, v6, :cond_7

    goto :goto_4

    :cond_7
    move v7, v2

    :goto_4
    if-eqz v7, :cond_8

    goto :goto_5

    :cond_8
    move-object v10, v11

    :goto_5
    invoke-direct {p0, v3, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object p0, v1, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->checkOptionsConsistence()V

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->serializeAsRDF()Ljava/lang/String;

    move-result-object p0

    iget-object p1, v1, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->flush()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->addPadding(I)V

    invoke-virtual {v1, p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    iget-object p0, v1, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {p0}, Ljava/io/OutputStreamWriter;->flush()V

    iget-object p0, v1, Lcom/adobe/xmp/impl/XMPSerializerRDF;->outputStream:Lcom/adobe/xmp/impl/CountOutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_0
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string p1, "Error writing to the OutputStream"

    invoke-direct {p0, p1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "The serializing service works onlywith the XMPMeta implementation of this library"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
