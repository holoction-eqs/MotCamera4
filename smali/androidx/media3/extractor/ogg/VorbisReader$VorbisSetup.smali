.class public final Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final commentHeader:Lcom/adobe/xmp/impl/ByteBuffer;

.field public final iLogModes:I

.field public final idHeader:Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;

.field public final modes:[Landroidx/media3/extractor/VorbisUtil$Mode;

.field public final setupHeaderData:[B


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;Lcom/adobe/xmp/impl/ByteBuffer;[B[Landroidx/media3/extractor/VorbisUtil$Mode;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;

    iput-object p2, p0, Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;->commentHeader:Lcom/adobe/xmp/impl/ByteBuffer;

    iput-object p3, p0, Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;->setupHeaderData:[B

    iput-object p4, p0, Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;->modes:[Landroidx/media3/extractor/VorbisUtil$Mode;

    iput p5, p0, Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;->iLogModes:I

    return-void
.end method
