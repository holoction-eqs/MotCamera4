.class public final Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final chunkSize:I

.field public final header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

.field public final stringCount:I

.field public final stringIndex:Ljava/util/ArrayList;

.field public final strings:Ljava/util/ArrayList;

.field public final stringsPaddingSize:I

.field public final stringsStart:I

.field public final styledSpanCount:I

.field public final styledSpanIndex:Ljava/util/ArrayList;

.field public final styledSpans:Ljava/util/ArrayList;

.field public final styledSpansStart:I

.field public final utf8Encode:Z


# direct methods
.method public varargs constructor <init>(Z[Ljava/lang/String;)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->stringIndex:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpanIndex:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->strings:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpans:Ljava/util/ArrayList;

    iput-boolean p1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->utf8Encode:Z

    array-length p1, p2

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v1, p1, :cond_2

    aget-object v4, p2, v1

    new-instance v5, Landroid/util/Pair;

    iget-boolean v6, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->utf8Encode:Z

    const/4 v7, 0x2

    if-eqz v6, :cond_0

    const-string v6, "UTF-8"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    array-length v6, v4

    int-to-byte v6, v6

    array-length v8, v4

    add-int/lit8 v8, v8, 0x3

    new-array v9, v8, [B

    invoke-static {v4, v0, v9, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v6, v9, v3

    aput-byte v6, v9, v0

    sub-int/2addr v8, v3

    aput-byte v0, v9, v8

    goto :goto_2

    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v6, v4

    mul-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x4

    new-array v9, v6, [B

    array-length v7, v4

    int-to-short v7, v7

    invoke-static {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlv;->shortToByteArray(S)[B

    move-result-object v7

    aget-byte v8, v7, v0

    aput-byte v8, v9, v0

    aget-byte v7, v7, v3

    aput-byte v7, v9, v3

    move v7, v0

    :goto_1
    array-length v8, v4

    if-ge v7, v8, :cond_1

    aget-char v8, v4, v7

    invoke-static {v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlv;->charToByteArray(C)[B

    move-result-object v8

    mul-int/lit8 v10, v7, 0x2

    add-int/lit8 v11, v10, 0x2

    aget-byte v12, v8, v0

    aput-byte v12, v9, v11

    add-int/lit8 v10, v10, 0x3

    aget-byte v8, v8, v3

    aput-byte v8, v9, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v6, -0x2

    aput-byte v0, v9, v3

    add-int/lit8 v6, v6, -0x1

    aput-byte v0, v9, v6

    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v5, v9, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->stringIndex:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, [B

    array-length v4, v3

    add-int/2addr v2, v4

    iget-object v4, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->strings:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpans:Ljava/util/ArrayList;

    iget-object v4, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpans:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v1, v0

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v5, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpanIndex:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0xc

    add-int/lit8 v4, v4, 0x4

    add-int/2addr v1, v4

    goto :goto_3

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->stringIndex:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    throw p0

    :cond_4
    rem-int/lit8 p1, v2, 0x4

    if-nez p1, :cond_5

    move p1, v0

    goto :goto_4

    :cond_5
    rsub-int/lit8 p1, p1, 0x4

    :goto_4
    iput p1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->stringsPaddingSize:I

    iget-object v4, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->strings:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->stringCount:I

    iget-object v5, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->strings:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    array-length v6, p2

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpanCount:I

    iget-object v5, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->strings:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    array-length p2, p2

    sub-int/2addr v5, p2

    if-lez v5, :cond_6

    move p2, v3

    goto :goto_5

    :cond_6
    move p2, v0

    :goto_5
    if-nez p2, :cond_7

    iget-object v5, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpanIndex:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpans:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :cond_7
    mul-int/lit8 v4, v4, 0x4

    const/16 v5, 0x1c

    add-int/2addr v4, v5

    iget-object v6, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpanIndex:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v6, v4

    iput v6, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->stringsStart:I

    add-int/2addr v2, p1

    if-eqz p2, :cond_8

    add-int p1, v6, v2

    goto :goto_6

    :cond_8
    move p1, v0

    :goto_6
    iput p1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpansStart:I

    add-int/2addr v6, v2

    if-eqz p2, :cond_9

    move v0, v1

    :cond_9
    add-int/2addr v6, v0

    iput v6, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->chunkSize:I

    new-instance p1, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    invoke-direct {p1, v3, v5, v6}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;-><init>(SSI)V

    iput-object p1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    return-void
.end method


# virtual methods
.method public final writeTo(Ljava/io/ByteArrayOutputStream;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    invoke-virtual {v0, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    iget v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->stringCount:I

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlv;->access$500(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpanCount:I

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlv;->access$500(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-boolean v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->utf8Encode:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x100

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlv;->access$500(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->stringsStart:I

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlv;->access$500(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpansStart:I

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlv;->access$500(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->stringIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlv;->access$500(I)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpanIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlv;->access$500(I)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->strings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_3

    :cond_3
    iget v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->stringsPaddingSize:I

    if-lez v0, :cond_4

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_4
    iget-object p0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpans:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, -0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlv;->access$500(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_4

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_6
    return-void
.end method
