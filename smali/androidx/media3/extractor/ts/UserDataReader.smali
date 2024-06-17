.class public final Landroidx/media3/extractor/ts/UserDataReader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final closedCaptionFormats:Ljava/util/List;

.field public final outputs:[Landroidx/media3/extractor/TrackOutput;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/UserDataReader;->closedCaptionFormats:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroidx/media3/extractor/TrackOutput;

    iput-object p1, p0, Landroidx/media3/extractor/ts/UserDataReader;->outputs:[Landroidx/media3/extractor/TrackOutput;

    return-void
.end method


# virtual methods
.method public final consume(JLandroidx/media3/common/util/ParsableByteArray;)V
    .locals 4

    iget v0, p3, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v1, p3, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v0, v1

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-virtual {p3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    invoke-virtual {p3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    const/16 v3, 0x1b2

    if-ne v0, v3, :cond_1

    const v0, 0x47413934

    if-ne v1, v0, :cond_1

    const/4 v0, 0x3

    if-ne v2, v0, :cond_1

    iget-object p0, p0, Landroidx/media3/extractor/ts/UserDataReader;->outputs:[Landroidx/media3/extractor/TrackOutput;

    invoke-static {p1, p2, p3, p0}, Lkotlin/reflect/TypesJVMKt;->consumeCcData(JLandroidx/media3/common/util/ParsableByteArray;[Landroidx/media3/extractor/TrackOutput;)V

    :cond_1
    return-void
.end method

.method public final createTracks(Landroidx/media3/extractor/ExtractorOutput;Lcom/motorola/camera/mcf/McfParameters$ModelConfig;)V
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/media3/extractor/ts/UserDataReader;->outputs:[Landroidx/media3/extractor/TrackOutput;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->generateNewId()V

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->maybeThrowUninitializedError()V

    iget v3, p2, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->performance:I

    const/4 v4, 0x3

    invoke-interface {p1, v3, v4}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v3

    iget-object v4, p0, Landroidx/media3/extractor/ts/UserDataReader;->closedCaptionFormats:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/Format;

    iget-object v5, v4, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v6, "application/cea-608"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "application/cea-708"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    move v6, v0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v6, 0x1

    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Invalid closed caption MIME type provided: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Ljava/lang/String;Z)V

    new-instance v6, Landroidx/media3/common/Format$Builder;

    invoke-direct {v6}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->getFormatId()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    iput-object v5, v6, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    iget v5, v4, Landroidx/media3/common/Format;->selectionFlags:I

    iput v5, v6, Landroidx/media3/common/Format$Builder;->selectionFlags:I

    iget-object v5, v4, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    iput-object v5, v6, Landroidx/media3/common/Format$Builder;->language:Ljava/lang/String;

    iget v5, v4, Landroidx/media3/common/Format;->accessibilityChannel:I

    iput v5, v6, Landroidx/media3/common/Format$Builder;->accessibilityChannel:I

    iget-object v4, v4, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    iput-object v4, v6, Landroidx/media3/common/Format$Builder;->initializationData:Ljava/util/List;

    new-instance v4, Landroidx/media3/common/Format;

    invoke-direct {v4, v6}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    invoke-interface {v3, v4}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
