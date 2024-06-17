.class public final Landroidx/media3/extractor/avi/AviStreamHeaderChunk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/avi/AviChunk;


# instance fields
.field public final length:I

.field public final rate:I

.field public final scale:I

.field public final streamType:I

.field public final suggestedBufferSize:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;->streamType:I

    iput p2, p0, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;->scale:I

    iput p3, p0, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;->rate:I

    iput p4, p0, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;->length:I

    iput p5, p0, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;->suggestedBufferSize:I

    return-void
.end method


# virtual methods
.method public final getType()I
    .locals 0

    const p0, 0x68727473

    return p0
.end method
