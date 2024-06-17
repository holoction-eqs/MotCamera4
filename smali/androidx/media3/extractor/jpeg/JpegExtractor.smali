.class public final Landroidx/media3/extractor/jpeg/JpegExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# instance fields
.field public extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field public lastExtractorInput:Landroidx/media3/extractor/ExtractorInput;

.field public marker:I

.field public motionPhotoMetadata:Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

.field public mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

.field public mp4ExtractorStartOffsetExtractorInput:Landroidx/media3/extractor/jpeg/StartOffsetExtractorInput;

.field public mp4StartPosition:J

.field public final scratch:Landroidx/media3/common/util/ParsableByteArray;

.field public segmentLength:I

.field public state:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4StartPosition:J

    return-void
.end method


# virtual methods
.method public final endReadingWithImageTrack()V
    .locals 4

    const/4 v0, 0x0

    new-array v0, v0, [Landroidx/media3/common/Metadata$Entry;

    invoke-virtual {p0, v0}, Landroidx/media3/extractor/jpeg/JpegExtractor;->outputImageTrack([Landroidx/media3/common/Metadata$Entry;)V

    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v1, Landroidx/media3/extractor/SeekMap$Unseekable;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v2, v3}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    const/4 v0, 0x6

    iput v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->state:I

    return-void
.end method

.method public final init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    return-void
.end method

.method public final varargs outputImageTrack([Landroidx/media3/common/Metadata$Entry;)V
    .locals 2

    iget-object p0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x400

    const/4 v1, 0x4

    invoke-interface {p0, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object p0

    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string v1, "image/jpeg"

    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->containerMimeType:Ljava/lang/String;

    new-instance v1, Landroidx/media3/common/Metadata;

    invoke-direct {v1, p1}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->metadata:Landroidx/media3/common/Metadata;

    new-instance p1, Landroidx/media3/common/Format;

    invoke-direct {p1, v0}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    invoke-interface {p0, p1}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    return-void
.end method

.method public final peekMarker(Landroidx/media3/extractor/DefaultExtractorInput;)I
    .locals 3

    iget-object p0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v1, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0, v2}, Landroidx/media3/extractor/DefaultExtractorInput;->peekFully([BIIZ)Z

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result p0

    return p0
.end method

.method public final read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v0, Landroidx/media3/extractor/jpeg/JpegExtractor;->state:I

    const-wide/16 v4, -0x1

    const/4 v6, 0x4

    iget-object v7, v0, Landroidx/media3/extractor/jpeg/JpegExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v3, :cond_17

    if-eq v3, v9, :cond_16

    const/4 v11, -0x1

    if-eq v3, v8, :cond_a

    const/4 v4, 0x5

    if-eq v3, v6, :cond_5

    if-eq v3, v4, :cond_1

    const/4 v0, 0x6

    if-ne v3, v0, :cond_0

    return v11

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    iget-object v3, v0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4ExtractorStartOffsetExtractorInput:Landroidx/media3/extractor/jpeg/StartOffsetExtractorInput;

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroidx/media3/extractor/jpeg/JpegExtractor;->lastExtractorInput:Landroidx/media3/extractor/ExtractorInput;

    if-eq v1, v3, :cond_3

    :cond_2
    iput-object v1, v0, Landroidx/media3/extractor/jpeg/JpegExtractor;->lastExtractorInput:Landroidx/media3/extractor/ExtractorInput;

    new-instance v3, Landroidx/media3/extractor/jpeg/StartOffsetExtractorInput;

    iget-wide v4, v0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4StartPosition:J

    invoke-direct {v3, v1, v4, v5}, Landroidx/media3/extractor/jpeg/StartOffsetExtractorInput;-><init>(Landroidx/media3/extractor/ExtractorInput;J)V

    iput-object v3, v0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4ExtractorStartOffsetExtractorInput:Landroidx/media3/extractor/jpeg/StartOffsetExtractorInput;

    :cond_3
    iget-object v1, v0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4ExtractorStartOffsetExtractorInput:Landroidx/media3/extractor/jpeg/StartOffsetExtractorInput;

    invoke-virtual {v1, v3, v2}, Landroidx/media3/extractor/mp4/Mp4Extractor;->read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result v1

    if-ne v1, v9, :cond_4

    iget-wide v3, v2, Landroidx/media3/extractor/PositionHolder;->position:J

    iget-wide v5, v0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4StartPosition:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroidx/media3/extractor/PositionHolder;->position:J

    :cond_4
    return v1

    :cond_5
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    iget-wide v11, v0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4StartPosition:J

    cmp-long v3, v5, v11

    if-eqz v3, :cond_6

    iput-wide v11, v2, Landroidx/media3/extractor/PositionHolder;->position:J

    return v9

    :cond_6
    iget-object v2, v7, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v2, v10, v9, v9}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    iget-object v2, v0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    if-nez v2, :cond_8

    new-instance v2, Landroidx/media3/extractor/mp4/Mp4Extractor;

    invoke-direct {v2, v10}, Landroidx/media3/extractor/mp4/Mp4Extractor;-><init>(I)V

    iput-object v2, v0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    :cond_8
    new-instance v2, Landroidx/media3/extractor/jpeg/StartOffsetExtractorInput;

    iget-wide v5, v0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4StartPosition:J

    invoke-direct {v2, v1, v5, v6}, Landroidx/media3/extractor/jpeg/StartOffsetExtractorInput;-><init>(Landroidx/media3/extractor/ExtractorInput;J)V

    iput-object v2, v0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4ExtractorStartOffsetExtractorInput:Landroidx/media3/extractor/jpeg/StartOffsetExtractorInput;

    iget-object v1, v0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v10, v10}, Landroidx/media3/extractor/mp4/Sniffer;->sniffInternal(Landroidx/media3/extractor/ExtractorInput;ZZ)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    new-instance v2, Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput;

    iget-wide v5, v0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4StartPosition:J

    iget-object v3, v0, Landroidx/media3/extractor/jpeg/JpegExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v5, v6, v3}, Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput;-><init>(JLandroidx/media3/extractor/ExtractorOutput;)V

    iput-object v2, v1, Landroidx/media3/extractor/mp4/Mp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    new-array v1, v9, [Landroidx/media3/common/Metadata$Entry;

    iget-object v2, v0, Landroidx/media3/extractor/jpeg/JpegExtractor;->motionPhotoMetadata:Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aput-object v2, v1, v10

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/jpeg/JpegExtractor;->outputImageTrack([Landroidx/media3/common/Metadata$Entry;)V

    iput v4, v0, Landroidx/media3/extractor/jpeg/JpegExtractor;->state:I

    goto :goto_1

    :cond_9
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/extractor/jpeg/JpegExtractor;->endReadingWithImageTrack()V

    :goto_1
    return v10

    :cond_a
    iget v2, v0, Landroidx/media3/extractor/jpeg/JpegExtractor;->marker:I

    const v3, 0xffe1

    if-ne v2, v3, :cond_14

    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    iget v3, v0, Landroidx/media3/extractor/jpeg/JpegExtractor;->segmentLength:I

    invoke-direct {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v3, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v6, v0, Landroidx/media3/extractor/jpeg/JpegExtractor;->segmentLength:I

    invoke-interface {v1, v3, v10, v6}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    iget-object v3, v0, Landroidx/media3/extractor/jpeg/JpegExtractor;->motionPhotoMetadata:Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    if-nez v3, :cond_15

    const-string v3, "http://ns.adobe.com/xap/1.0/"

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v6

    cmp-long v1, v6, v4

    if-nez v1, :cond_b

    goto/16 :goto_5

    :cond_b
    :try_start_0
    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzel;->parseInternal(Ljava/lang/String;)Landroidx/recyclerview/widget/ChildHelper$Bucket;

    move-result-object v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string v1, "MotionPhotoXmpParser"

    const-string v2, "Ignoring unexpected XMP metadata"

    invoke-static {v1, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_c

    goto/16 :goto_5

    :cond_c
    iget-object v2, v1, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v8, :cond_d

    goto/16 :goto_5

    :cond_d
    iget-object v2, v1, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v11

    move-wide v12, v4

    move-wide v14, v12

    move-wide/from16 v18, v14

    move-wide/from16 v20, v18

    move v8, v10

    :goto_3
    if-ltz v2, :cond_11

    iget-object v9, v1, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;

    iget-object v11, v9, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;->mime:Ljava/lang/String;

    const-string v3, "video/mp4"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v3, v8

    if-nez v2, :cond_e

    iget-wide v8, v9, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;->padding:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x0

    goto :goto_4

    :cond_e
    iget-wide v8, v9, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;->length:J

    sub-long v8, v6, v8

    :goto_4
    move-wide/from16 v22, v6

    move-wide v6, v8

    move-wide/from16 v8, v22

    if-eqz v3, :cond_f

    cmp-long v11, v6, v8

    if-eqz v11, :cond_f

    sub-long v20, v8, v6

    move-wide/from16 v18, v6

    move v3, v10

    :cond_f
    if-nez v2, :cond_10

    move-wide v12, v6

    move-wide v14, v8

    :cond_10
    add-int/lit8 v2, v2, -0x1

    move v8, v3

    goto :goto_3

    :cond_11
    cmp-long v2, v18, v4

    if-eqz v2, :cond_13

    cmp-long v2, v20, v4

    if-eqz v2, :cond_13

    cmp-long v2, v12, v4

    if-eqz v2, :cond_13

    cmp-long v2, v14, v4

    if-nez v2, :cond_12

    goto :goto_5

    :cond_12
    new-instance v3, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    iget-wide v1, v1, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    move-object v11, v3

    move-wide/from16 v16, v1

    invoke-direct/range {v11 .. v21}, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;-><init>(JJJJJ)V

    goto :goto_6

    :cond_13
    :goto_5
    const/4 v3, 0x0

    :goto_6
    iput-object v3, v0, Landroidx/media3/extractor/jpeg/JpegExtractor;->motionPhotoMetadata:Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    if-eqz v3, :cond_15

    iget-wide v1, v3, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->videoStartPosition:J

    iput-wide v1, v0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4StartPosition:J

    goto :goto_7

    :cond_14
    iget v2, v0, Landroidx/media3/extractor/jpeg/JpegExtractor;->segmentLength:I

    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    :cond_15
    :goto_7
    iput v10, v0, Landroidx/media3/extractor/jpeg/JpegExtractor;->state:I

    return v10

    :cond_16
    invoke-virtual {v7, v8}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v2, v7, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v2, v10, v8}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    sub-int/2addr v1, v8

    iput v1, v0, Landroidx/media3/extractor/jpeg/JpegExtractor;->segmentLength:I

    iput v8, v0, Landroidx/media3/extractor/jpeg/JpegExtractor;->state:I

    return v10

    :cond_17
    invoke-virtual {v7, v8}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v2, v7, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v2, v10, v8}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    iput v1, v0, Landroidx/media3/extractor/jpeg/JpegExtractor;->marker:I

    const v2, 0xffda

    if-ne v1, v2, :cond_19

    iget-wide v1, v0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4StartPosition:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_18

    goto :goto_8

    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/extractor/jpeg/JpegExtractor;->endReadingWithImageTrack()V

    goto :goto_9

    :cond_19
    const v2, 0xffd0

    if-lt v1, v2, :cond_1a

    const v2, 0xffd9

    if-le v1, v2, :cond_1b

    :cond_1a
    const v2, 0xff01

    if-eq v1, v2, :cond_1b

    move v6, v9

    :goto_8
    iput v6, v0, Landroidx/media3/extractor/jpeg/JpegExtractor;->state:I

    :cond_1b
    :goto_9
    return v10
.end method

.method public final release()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public final seek(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->state:I

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->state:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->mp4Extractor:Landroidx/media3/extractor/mp4/Mp4Extractor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/extractor/mp4/Mp4Extractor;->seek(JJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 5

    check-cast p1, Landroidx/media3/extractor/DefaultExtractorInput;

    invoke-virtual {p0, p1}, Landroidx/media3/extractor/jpeg/JpegExtractor;->peekMarker(Landroidx/media3/extractor/DefaultExtractorInput;)I

    move-result v0

    const v1, 0xffd8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/jpeg/JpegExtractor;->peekMarker(Landroidx/media3/extractor/DefaultExtractorInput;)I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->marker:I

    const v1, 0xffe0

    const/4 v3, 0x2

    iget-object v4, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    if-ne v0, v1, :cond_1

    invoke-virtual {v4, v3}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v0, v4, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-virtual {p1, v0, v2, v3, v2}, Landroidx/media3/extractor/DefaultExtractorInput;->peekFully([BIIZ)Z

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1, v0, v2}, Landroidx/media3/extractor/DefaultExtractorInput;->advancePeekPosition(IZ)Z

    invoke-virtual {p0, p1}, Landroidx/media3/extractor/jpeg/JpegExtractor;->peekMarker(Landroidx/media3/extractor/DefaultExtractorInput;)I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->marker:I

    :cond_1
    iget p0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->marker:I

    const v0, 0xffe1

    if-eq p0, v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1, v3, v2}, Landroidx/media3/extractor/DefaultExtractorInput;->advancePeekPosition(IZ)Z

    const/4 p0, 0x6

    invoke-virtual {v4, p0}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v0, v4, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-virtual {p1, v0, v2, p0, v2}, Landroidx/media3/extractor/DefaultExtractorInput;->peekFully([BIIZ)Z

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide p0

    const-wide/32 v0, 0x45786966    # 5.758429993E-315

    cmp-long p0, p0, v0

    if-nez p0, :cond_3

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result p0

    if-nez p0, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method
