.class public final Landroidx/media3/extractor/TrackOutput$CryptoData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final clearBlocks:I

.field public final cryptoMode:I

.field public final encryptedBlocks:I

.field public final encryptionKey:[B


# direct methods
.method public constructor <init>(I[BII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/extractor/TrackOutput$CryptoData;->cryptoMode:I

    iput-object p2, p0, Landroidx/media3/extractor/TrackOutput$CryptoData;->encryptionKey:[B

    iput p3, p0, Landroidx/media3/extractor/TrackOutput$CryptoData;->encryptedBlocks:I

    iput p4, p0, Landroidx/media3/extractor/TrackOutput$CryptoData;->clearBlocks:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-class v2, Landroidx/media3/extractor/TrackOutput$CryptoData;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroidx/media3/extractor/TrackOutput$CryptoData;

    iget v2, p0, Landroidx/media3/extractor/TrackOutput$CryptoData;->cryptoMode:I

    iget v3, p1, Landroidx/media3/extractor/TrackOutput$CryptoData;->cryptoMode:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/extractor/TrackOutput$CryptoData;->encryptedBlocks:I

    iget v3, p1, Landroidx/media3/extractor/TrackOutput$CryptoData;->encryptedBlocks:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/extractor/TrackOutput$CryptoData;->clearBlocks:I

    iget v3, p1, Landroidx/media3/extractor/TrackOutput$CryptoData;->clearBlocks:I

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Landroidx/media3/extractor/TrackOutput$CryptoData;->encryptionKey:[B

    iget-object p1, p1, Landroidx/media3/extractor/TrackOutput$CryptoData;->encryptionKey:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Landroidx/media3/extractor/TrackOutput$CryptoData;->cryptoMode:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media3/extractor/TrackOutput$CryptoData;->encryptionKey:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/extractor/TrackOutput$CryptoData;->encryptedBlocks:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget p0, p0, Landroidx/media3/extractor/TrackOutput$CryptoData;->clearBlocks:I

    add-int/2addr v1, p0

    return v1
.end method
