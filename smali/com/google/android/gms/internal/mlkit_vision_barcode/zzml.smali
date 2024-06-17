.class public abstract Lcom/google/android/gms/internal/mlkit_vision_barcode/zzml;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static convertToNv21Buffer(Lcom/google/mlkit/vision/common/InputImage;)Ljava/nio/ByteBuffer;
    .locals 7

    iget v0, p0, Lcom/google/mlkit/vision/common/InputImage;->zzg:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/16 v1, 0x11

    if-eq v0, v1, :cond_4

    const/16 v1, 0x23

    if-eq v0, v1, :cond_3

    const v1, 0x32315659

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lcom/google/mlkit/vision/common/InputImage;->zzb:Ljava/nio/ByteBuffer;

    invoke-static {p0}, Landroidx/room/util/DBUtil;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    div-int/lit8 v1, v0, 0x6

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    mul-int/lit8 v4, v1, 0x4

    if-ge v3, v4, :cond_0

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    add-int v3, v1, v1

    if-ge v2, v3, :cond_1

    add-int v3, v4, v2

    rem-int/lit8 v5, v2, 0x2

    mul-int/2addr v5, v1

    add-int/2addr v5, v4

    div-int/lit8 v6, v2, 0x2

    add-int/2addr v6, v5

    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-virtual {v0, v3, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v0

    :cond_2
    new-instance p0, Lcom/google/mlkit/common/MlKitException;

    const-string v0, "Unsupported image format"

    const/16 v1, 0xd

    invoke-direct {p0, v0, v1}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_3
    invoke-static {v2}, Landroidx/room/util/DBUtil;->checkNotNull(Ljava/lang/Object;)V

    throw v2

    :cond_4
    iget-object p0, p0, Lcom/google/mlkit/vision/common/InputImage;->zzb:Ljava/nio/ByteBuffer;

    invoke-static {p0}, Landroidx/room/util/DBUtil;->checkNotNull(Ljava/lang/Object;)V

    return-object p0

    :cond_5
    invoke-static {v2}, Landroidx/room/util/DBUtil;->checkNotNull(Ljava/lang/Object;)V

    throw v2
.end method
