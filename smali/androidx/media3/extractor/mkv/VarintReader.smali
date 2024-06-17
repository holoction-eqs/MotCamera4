.class public final Landroidx/media3/extractor/mkv/VarintReader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final VARINT_LENGTH_MASKS:[J


# instance fields
.field public length:I

.field public final scratch:[B

.field public state:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/extractor/mkv/VarintReader;->VARINT_LENGTH_MASKS:[J

    return-void

    :array_0
    .array-data 8
        0x80
        0x40
        0x20
        0x10
        0x8
        0x4
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/media3/extractor/mkv/VarintReader;->scratch:[B

    return-void
.end method

.method public static assembleVarint(IZ[B)J
    .locals 6

    const/4 v0, 0x0

    aget-byte v0, p2, v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    if-eqz p1, :cond_0

    sget-object p1, Landroidx/media3/extractor/mkv/VarintReader;->VARINT_LENGTH_MASKS:[J

    add-int/lit8 v4, p0, -0x1

    aget-wide v4, p1, v4

    not-long v4, v4

    and-long/2addr v0, v4

    :cond_0
    const/4 p1, 0x1

    :goto_0
    if-ge p1, p0, :cond_1

    const/16 v4, 0x8

    shl-long/2addr v0, v4

    aget-byte v4, p2, p1

    int-to-long v4, v4

    and-long/2addr v4, v2

    or-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method


# virtual methods
.method public final readUnsignedVarint(Landroidx/media3/extractor/ExtractorInput;ZZI)J
    .locals 10

    iget v0, p0, Landroidx/media3/extractor/mkv/VarintReader;->state:I

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/media3/extractor/mkv/VarintReader;->scratch:[B

    const/4 v3, 0x1

    if-nez v0, :cond_4

    invoke-interface {p1, v2, v1, v3, p2}, Landroidx/media3/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result p2

    if-nez p2, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_0
    aget-byte p2, v2, v1

    and-int/lit16 p2, p2, 0xff

    move v0, v1

    :cond_1
    const/16 v4, 0x8

    const/4 v5, -0x1

    if-ge v0, v4, :cond_2

    sget-object v4, Landroidx/media3/extractor/mkv/VarintReader;->VARINT_LENGTH_MASKS:[J

    aget-wide v6, v4, v0

    int-to-long v8, p2

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    add-int/lit8 v0, v0, 0x1

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_2
    move v0, v5

    :goto_0
    iput v0, p0, Landroidx/media3/extractor/mkv/VarintReader;->length:I

    if-eq v0, v5, :cond_3

    iput v3, p0, Landroidx/media3/extractor/mkv/VarintReader;->state:I

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No valid varint length mask found"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    iget p2, p0, Landroidx/media3/extractor/mkv/VarintReader;->length:I

    if-le p2, p4, :cond_5

    iput v1, p0, Landroidx/media3/extractor/mkv/VarintReader;->state:I

    const-wide/16 p0, -0x2

    return-wide p0

    :cond_5
    if-eq p2, v3, :cond_6

    sub-int/2addr p2, v3

    invoke-interface {p1, v2, v3, p2}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    :cond_6
    iput v1, p0, Landroidx/media3/extractor/mkv/VarintReader;->state:I

    iget p0, p0, Landroidx/media3/extractor/mkv/VarintReader;->length:I

    invoke-static {p0, p3, v2}, Landroidx/media3/extractor/mkv/VarintReader;->assembleVarint(IZ[B)J

    move-result-wide p0

    return-wide p0
.end method
