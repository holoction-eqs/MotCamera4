.class public final Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final chunkSize:I

.field public final headerSize:S

.field public final type:S


# direct methods
.method public constructor <init>(SSI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->type:S

    iput-short p2, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->headerSize:S

    iput p3, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->chunkSize:I

    return-void
.end method


# virtual methods
.method public final writeTo(Ljava/io/ByteArrayOutputStream;)V
    .locals 1

    iget-short v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->type:S

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlv;->shortToByteArray(S)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-short v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->headerSize:S

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlv;->shortToByteArray(S)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget p0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->chunkSize:I

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlv;->access$500(I)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
