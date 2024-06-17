.class public final Landroidx/media3/decoder/CryptoInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public clearBlocks:I

.field public encryptedBlocks:I

.field public final frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

.field public iv:[B

.field public key:[B

.field public mode:I

.field public numBytesOfClearData:[I

.field public numBytesOfEncryptedData:[I

.field public numSubSamples:I

.field public final patternHolder:Landroidx/media3/decoder/CryptoInfo$PatternHolderV24;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    iput-object v0, p0, Landroidx/media3/decoder/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    new-instance v1, Landroidx/media3/decoder/CryptoInfo$PatternHolderV24;

    invoke-direct {v1, v0}, Landroidx/media3/decoder/CryptoInfo$PatternHolderV24;-><init>(Landroid/media/MediaCodec$CryptoInfo;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Landroidx/media3/decoder/CryptoInfo;->patternHolder:Landroidx/media3/decoder/CryptoInfo$PatternHolderV24;

    return-void
.end method
