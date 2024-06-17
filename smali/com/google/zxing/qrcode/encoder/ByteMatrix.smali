.class public final Lcom/google/zxing/qrcode/encoder/ByteMatrix;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/mp4/AtomParsers$SampleSizeBox;


# instance fields
.field public final synthetic $r8$classId:I

.field public final bytes:Ljava/lang/Object;

.field public final height:I

.field public final width:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;->WRAP_CONTENT:Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;

    const/4 v1, 0x6

    .line 2
    iput v1, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->$r8$classId:I

    const/4 v2, 0x0

    .line 3
    invoke-direct {p0, v0, v2, v2, v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;-><init>(Ljava/lang/Enum;III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    iput p3, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->$r8$classId:I

    const/4 v0, 0x6

    if-eq p3, v0, :cond_0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    filled-new-array {p2, p1}, [I

    move-result-object p3

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [[B

    iput-object p3, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:Ljava/lang/Object;

    iput p1, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    iput p2, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    return-void

    .line 5
    :cond_0
    sget-object p3, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;->FIXED:Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;

    invoke-direct {p0, p3, p1, p2, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;-><init>(Ljava/lang/Enum;III)V

    return-void
.end method

.method public constructor <init>(IILcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda1;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->$r8$classId:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    iput p2, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(IILcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda1;I)V
    .locals 0

    .line 7
    const/4 p4, 0x4

    iput p4, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->$r8$classId:I

    invoke-direct {p0, p1, p2, p3}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;-><init>(IILcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda1;)V

    return-void
.end method

.method public constructor <init>(Landroid/media/Image;)V
    .locals 7

    const/4 v0, 0x5

    iput v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->$r8$classId:I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v2

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    .line 9
    div-int/lit8 v3, v3, 0x8

    mul-int v4, p1, v3

    new-array v4, v4, [B

    move v5, v1

    :goto_0
    if-ge v1, v3, :cond_0

    mul-int/lit8 v6, v1, 0x8

    mul-int/2addr v6, v2

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0, v4, v5, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v5, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_0
    iput-object v4, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->$r8$classId:I

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    if-eqz p1, :cond_0

    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;

    invoke-direct {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:Ljava/lang/Object;

    return-void

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "editText cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Landroidx/media3/extractor/mp4/Atom$LeafAtom;Landroidx/media3/common/Format;)V
    .locals 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->$r8$classId:I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    iput-object p1, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:Ljava/lang/Object;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    iget-object v1, p2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v2, "audio/raw"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p2, Landroidx/media3/common/Format;->pcmEncoding:I

    iget p2, p2, Landroidx/media3/common/Format;->channelCount:I

    invoke-static {v1, p2}, Landroidx/media3/common/util/Util;->getPcmFrameSize(II)I

    move-result p2

    if-eqz v0, :cond_0

    rem-int v1, v0, p2

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Audio sample size mismatch. stsd sample size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", stsz sample size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AtomParsers"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, p2

    :cond_1
    if-nez v0, :cond_2

    const/4 v0, -0x1

    :cond_2
    iput v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p1

    iput p1, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Enum;III)V
    .locals 0

    .line 14
    iput p4, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->$r8$classId:I

    iput-object p1, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:Ljava/lang/Object;

    iput p2, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    iput p3, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(II)B
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:Ljava/lang/Object;

    check-cast p0, [[B

    aget-object p0, p0, p2

    aget-byte p0, p0, p1

    return p0
.end method

.method public final getFixedSampleSize()I
    .locals 0

    iget p0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    return p0
.end method

.method public final getHeight()I
    .locals 0

    iget p0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    return p0
.end method

.method public final getSampleCount()I
    .locals 0

    iget p0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    return p0
.end method

.method public final getWidth()I
    .locals 0

    iget p0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    return p0
.end method

.method public final readNextSampleSize()I
    .locals 2

    const/4 v0, -0x1

    iget v1, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    if-ne v1, v0, :cond_0

    iget-object p0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    :cond_0
    return v1
.end method

.method public final set(III)V
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:Ljava/lang/Object;

    check-cast p0, [[B

    aget-object p0, p0, p2

    int-to-byte p2, p3

    aput-byte p2, p0, p1

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    iget v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->$r8$classId:I

    const/16 v1, 0x7d

    iget-object v2, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:Ljava/lang/Object;

    iget v3, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    iget v4, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "LayoutBounds{mHeight="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mWidth="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mLayoutType="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Status{mTYPE="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v2, Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mWhat="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mExtra="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_2
    new-instance p0, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v4, 0x2

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    move-object v5, v2

    check-cast v5, [[B

    aget-object v5, v5, v1

    move v6, v0

    :goto_1
    if-ge v6, v4, :cond_2

    aget-byte v7, v5, v6

    if-eqz v7, :cond_1

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    const-string v7, "  "

    goto :goto_2

    :cond_0
    const-string v7, " 1"

    goto :goto_2

    :cond_1
    const-string v7, " 0"

    :goto_2
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const/16 v5, 0xa

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x3 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method
