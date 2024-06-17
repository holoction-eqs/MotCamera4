.class public final Lcom/adobe/xmp/impl/ParseState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;
.implements Landroidx/core/view/accessibility/AccessibilityViewCommand;


# instance fields
.field public pos:I

.field public str:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x4

    const/16 v1, 0x8

    if-eq p1, v0, :cond_4

    const/16 v0, 0xb

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/adobe/xmp/impl/ParseState;-><init>()V

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzah;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzah;

    iput-object p1, p0, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    return-void

    .line 4
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdj;

    iput-object p1, p0, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    return-void

    .line 5
    :cond_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 6
    :cond_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    return-void

    .line 7
    :cond_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(I[Ljava/lang/Object;)V
    .locals 0

    .line 8
    iput p1, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    iput-object p2, p0, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    iput p2, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput p1, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    return-void
.end method


# virtual methods
.method public final add(J)V
    .locals 3

    iget v0, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    iget-object v1, p0, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, [J

    array-length v2, v2

    if-ne v0, v2, :cond_0

    check-cast v1, [J

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    check-cast v0, [J

    iget v1, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public final get(I)J
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    check-cast p0, [J

    aget-wide p0, p0, p1

    return-wide p0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Invalid index "

    const-string v2, ", size is "

    invoke-static {v1, p1, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getCodecCount()I
    .locals 2

    iget-object v0, p0, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    check-cast v0, [Landroid/media/MediaCodecInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/MediaCodecList;

    iget v1, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    check-cast p0, [Landroid/media/MediaCodecInfo;

    array-length p0, p0

    return p0
.end method

.method public final getCodecInfoAt(I)Landroid/media/MediaCodecInfo;
    .locals 2

    iget-object v0, p0, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    check-cast v0, [Landroid/media/MediaCodecInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/MediaCodecList;

    iget v1, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    check-cast p0, [Landroid/media/MediaCodecInfo;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final isFeatureRequired(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 0

    invoke-virtual {p2, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureRequired(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isFeatureSupported(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 0

    invoke-virtual {p3, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final perform(Landroid/view/View;)Z
    .locals 0

    iget-object p1, p0, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget p0, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    invoke-virtual {p1, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final readUint(Landroidx/media3/extractor/DefaultExtractorInput;)J
    .locals 6

    iget-object v0, p0, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2, v1}, Landroidx/media3/extractor/DefaultExtractorInput;->peekFully([BIIZ)Z

    iget-object v0, p0, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_0

    const-wide/high16 p0, -0x8000000000000000L

    return-wide p0

    :cond_0
    const/16 v3, 0x80

    move v4, v1

    :goto_0
    and-int v5, v0, v3

    if-nez v5, :cond_1

    shr-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    not-int v3, v3

    and-int/2addr v0, v3

    iget-object v3, p0, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v3, v3, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-virtual {p1, v3, v2, v4, v1}, Landroidx/media3/extractor/DefaultExtractorInput;->peekFully([BIIZ)Z

    :goto_1
    if-ge v1, v4, :cond_2

    shl-int/lit8 p1, v0, 0x8

    iget-object v0, p0, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, p1

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    add-int/2addr v4, v2

    add-int/2addr v4, p1

    iput v4, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    int-to-long p0, v0

    return-wide p0
.end method

.method public final secureDecodersExplicit()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdf;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdf;

    iget v1, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    iget-object p0, p0, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdj;

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdf;-><init>(ILcom/google/android/gms/internal/mlkit_vision_barcode/zzdj;)V

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_common/zzad;
    .locals 2

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzad;

    iget v1, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    iget-object p0, p0, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzah;

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzad;-><init>(ILcom/google/android/gms/internal/mlkit_vision_common/zzah;)V

    return-object v0
.end method
