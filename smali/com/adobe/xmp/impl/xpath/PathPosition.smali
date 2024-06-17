.class public final Lcom/adobe/xmp/impl/xpath/PathPosition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/mp4/AtomParsers$SampleSizeBox;


# instance fields
.field public nameEnd:I

.field public nameStart:I

.field public path:Ljava/lang/Object;

.field public stepBegin:I

.field public stepEnd:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameStart:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameEnd:I

    iput v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/Object;

    const/16 v0, 0xf

    iput v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/mp4/Atom$LeafAtom;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    iput-object p1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/Object;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object p1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameEnd:I

    iget-object p1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p1

    iput p1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameStart:I

    return-void
.end method


# virtual methods
.method public final add(I)V
    .locals 6

    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    iget-object v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, [I

    array-length v2, v2

    if-ne v0, v2, :cond_1

    check-cast v1, [I

    array-length v0, v1

    shl-int/lit8 v0, v0, 0x1

    if-ltz v0, :cond_0

    new-array v2, v0, [I

    array-length v3, v1

    iget v4, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameStart:I

    sub-int/2addr v3, v4

    const/4 v5, 0x0

    invoke-static {v1, v4, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/Object;

    check-cast v1, [I

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v5, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameStart:I

    iget v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameEnd:I

    iput-object v2, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameEnd:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    and-int/2addr v0, v1

    iput v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameEnd:I

    iget-object v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/Object;

    check-cast v1, [I

    aput p1, v1, v0

    iget p1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    return-void
.end method

.method public final getFixedSampleSize()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public final getSampleCount()I
    .locals 0

    iget p0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameStart:I

    return p0
.end method

.method public final readNextSampleSize()I
    .locals 2

    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameEnd:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    return p0

    :cond_0
    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result p0

    return p0

    :cond_1
    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    and-int/lit16 p0, v0, 0xf0

    shr-int/lit8 p0, p0, 0x4

    return p0

    :cond_2
    iget p0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    and-int/lit8 p0, p0, 0xf

    return p0
.end method

.method public final remove()I
    .locals 4

    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/Object;

    check-cast v1, [I

    iget v2, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameStart:I

    aget v1, v1, v2

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    and-int/2addr v2, v3

    iput v2, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameStart:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    return v1

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
