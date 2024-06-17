.class public final Landroidx/media3/extractor/text/cea/CeaDecoder$CeaOutputBuffer;
.super Landroidx/media3/extractor/text/SubtitleOutputBuffer;
.source "SourceFile"


# instance fields
.field public final owner:Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaOutputBuffer;->owner:Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;

    return-void
.end method


# virtual methods
.method public final release()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaOutputBuffer;->owner:Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;

    iget-object v0, v0, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/extractor/text/cea/CeaDecoder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    iput v1, p0, Landroidx/media3/decoder/Buffer;->flags:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->subtitle:Landroidx/media3/extractor/text/Subtitle;

    iget-object v0, v0, Landroidx/media3/extractor/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method
