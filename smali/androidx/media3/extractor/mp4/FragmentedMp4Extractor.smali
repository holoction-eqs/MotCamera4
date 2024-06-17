.class public final Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# static fields
.field public static final EMSG_FORMAT:Landroidx/media3/common/Format;

.field public static final PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B


# instance fields
.field public atomData:Landroidx/media3/common/util/ParsableByteArray;

.field public final atomHeader:Landroidx/media3/common/util/ParsableByteArray;

.field public atomHeaderBytesRead:I

.field public atomSize:J

.field public atomType:I

.field public ceaTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

.field public final closedCaptionFormats:Ljava/util/List;

.field public final containerAtoms:Ljava/util/ArrayDeque;

.field public currentTrackBundle:Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

.field public durationUs:J

.field public emsgTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

.field public endOfMdatPosition:J

.field public final eventMessageEncoder:Lcom/motorola/camera/device/CameraService;

.field public extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field public final flags:I

.field public haveOutputSeekMap:Z

.field public final nalBuffer:Landroidx/media3/common/util/ParsableByteArray;

.field public final nalPrefix:Landroidx/media3/common/util/ParsableByteArray;

.field public final nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

.field public parserState:I

.field public pendingMetadataSampleBytes:I

.field public final pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

.field public pendingSeekTimeUs:J

.field public processSeiNalUnitPayload:Z

.field public sampleBytesWritten:I

.field public sampleCurrentNalBytesRemaining:I

.field public sampleSize:I

.field public final scratch:Landroidx/media3/common/util/ParsableByteArray;

.field public final scratchBytes:[B

.field public segmentIndexEarliestPresentationTimeUs:J

.field public final trackBundles:Landroid/util/SparseArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string v1, "application/x-emsg"

    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->EMSG_FORMAT:Landroidx/media3/common/Format;

    return-void

    nop

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->flags:I

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->closedCaptionFormats:Ljava/util/List;

    new-instance v0, Lcom/motorola/camera/device/CameraService;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Lcom/motorola/camera/device/CameraService;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->eventMessageEncoder:Lcom/motorola/camera/device/CameraService;

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v3, 0x10

    invoke-direct {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    sget-object v4, Landroidx/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {v0, v4}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Landroidx/media3/common/util/ParsableByteArray;

    new-array v0, v3, [B

    iput-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->scratchBytes:[B

    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v2, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    iput-wide v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    iput-wide v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->segmentIndexEarliestPresentationTimeUs:J

    sget-object v0, Landroidx/media3/extractor/ExtractorOutput;->PLACEHOLDER:Landroidx/work/InputMergerFactory$1;

    iput-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    new-array v0, v1, [Landroidx/media3/extractor/TrackOutput;

    iput-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    new-array v0, v1, [Landroidx/media3/extractor/TrackOutput;

    iput-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    return-void
.end method

.method public static getDrmInitDataFromAtoms(Ljava/util/ArrayList;)Landroidx/media3/common/DrmInitData;
    .locals 9

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v1

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_4

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    iget v6, v5, Landroidx/media3/decoder/Buffer;->flags:I

    const v7, 0x70737368    # 3.013775E29f

    if-ne v6, v7, :cond_3

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iget-object v5, v5, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v5, v5, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-static {v5}, Landroidx/room/util/DBUtil;->parsePsshAtom([B)Lcom/adobe/xmp/impl/ByteBuffer;

    move-result-object v6

    if-nez v6, :cond_1

    move-object v6, v1

    goto :goto_1

    :cond_1
    iget-object v6, v6, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast v6, Ljava/util/UUID;

    :goto_1
    if-nez v6, :cond_2

    const-string v5, "FragmentedMp4Extractor"

    const-string v6, "Skipped pssh atom (failed to extract uuid)"

    invoke-static {v5, v6}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    new-instance v7, Landroidx/media3/common/DrmInitData$SchemeData;

    const-string v8, "video/mp4"

    invoke-direct {v7, v6, v1, v8, v5}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    new-instance p0, Landroidx/media3/common/DrmInitData;

    new-array v0, v2, [Landroidx/media3/common/DrmInitData$SchemeData;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media3/common/DrmInitData$SchemeData;

    invoke-direct {p0, v1, v2, v0}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;Z[Landroidx/media3/common/DrmInitData$SchemeData;)V

    move-object v1, p0

    :goto_3
    return-object v1
.end method

.method public static parseSenc(Landroidx/media3/common/util/ParsableByteArray;ILandroidx/media3/extractor/mp4/TrackFragment;)V
    .locals 4

    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result p1

    const v0, 0xffffff

    and-int/2addr p1, v0

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_3

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    if-nez v2, :cond_1

    iget-object p0, p2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    iget p1, p2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleCount:I

    invoke-static {p0, v1, p1, v1}, Ljava/util/Arrays;->fill([ZIIZ)V

    return-void

    :cond_1
    iget v3, p2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleCount:I

    if-ne v2, v3, :cond_2

    iget-object v3, p2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    invoke-static {v3, v1, v2, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    iget p1, p0, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr p1, v2

    iget-object v2, p2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleEncryptionData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v2, p1}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iput-boolean v0, p2, Landroidx/media3/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    iput-boolean v0, p2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    iget-object p1, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v0, v2, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    invoke-virtual {p0, v1, v0, p1}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iput-boolean v1, p2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    return-void

    :cond_2
    const-string p0, "Senc sample count "

    const-string p1, " is different from fragment sample count"

    invoke-static {p0, v2, p1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget p1, p2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleCount:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_3
    const-string p0, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-static {p0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 6

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    iput v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    const/4 v1, 0x2

    new-array v1, v1, [Landroidx/media3/extractor/TrackOutput;

    iput-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    iget v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->flags:I

    and-int/lit8 v2, v2, 0x4

    const/16 v3, 0x64

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    invoke-interface {p1, v3, v2}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object p1

    aput-object p1, v1, v0

    const/4 p1, 0x1

    const/16 v3, 0x65

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    invoke-static {p1, v1}, Landroidx/media3/common/util/Util;->nullSafeArrayCopy(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/media3/extractor/TrackOutput;

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    array-length v1, p1

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v4, p1, v2

    sget-object v5, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->EMSG_FORMAT:Landroidx/media3/common/Format;

    invoke-interface {v4, v5}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->closedCaptionFormats:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroidx/media3/extractor/TrackOutput;

    iput-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    :goto_2
    iget-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    add-int/lit8 v2, v3, 0x1

    const/4 v4, 0x3

    invoke-interface {v1, v3, v4}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/Format;

    invoke-interface {v1, v3}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    iget-object v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    aput-object v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    move v3, v2

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final processAtomEnded(J)V
    .locals 47

    move-object/from16 v0, p0

    move-object v1, v0

    :cond_0
    :goto_0
    iget-object v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5e

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    iget-wide v3, v3, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_5e

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    iget v3, v4, Landroidx/media3/decoder/Buffer;->flags:I

    iget-object v12, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    iget-object v5, v4, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/ArrayList;

    const v6, 0x6d6f6f76

    const/16 v7, 0xc

    if-ne v3, v6, :cond_c

    invoke-static {v5}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->getDrmInitDataFromAtoms(Ljava/util/ArrayList;)Landroidx/media3/common/DrmInitData;

    move-result-object v8

    const v2, 0x6d766578

    invoke-virtual {v4, v2}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iget-object v2, v2, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    :goto_1
    if-ge v6, v5, :cond_4

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    iget v13, v11, Landroidx/media3/decoder/Buffer;->flags:I

    const v14, 0x74726578

    iget-object v11, v11, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    if-ne v13, v14, :cond_1

    invoke-virtual {v11, v7}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v7

    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v14

    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v15

    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v16, v2

    new-instance v2, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    invoke-direct {v2, v13, v14, v15, v11}, Landroidx/media3/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    invoke-static {v7, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    iget-object v7, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    invoke-virtual {v3, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :cond_1
    move-object/from16 v16, v2

    const v2, 0x6d656864

    if-ne v13, v2, :cond_3

    const/16 v2, 0x8

    invoke-virtual {v11, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    shr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    if-nez v2, :cond_2

    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v9

    goto :goto_2

    :cond_2
    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v9

    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    const/16 v7, 0xc

    move-object/from16 v2, v16

    goto :goto_1

    :cond_4
    new-instance v5, Landroidx/media3/extractor/GaplessInfoHolder;

    invoke-direct {v5}, Landroidx/media3/extractor/GaplessInfoHolder;-><init>()V

    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    const/4 v11, 0x0

    new-instance v13, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda0;

    invoke-direct {v13, v0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;)V

    move-wide v6, v9

    move v9, v2

    move v10, v11

    move-object v11, v13

    invoke-static/range {v4 .. v11}, Landroidx/media3/extractor/mp4/AtomParsers;->parseTraks(Landroidx/media3/extractor/mp4/Atom$ContainerAtom;Landroidx/media3/extractor/GaplessInfoHolder;JLandroidx/media3/common/DrmInitData;ZZLcom/google/common/base/Function;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-nez v5, :cond_8

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_7

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v7, v6, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    new-instance v8, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v9, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    iget v10, v7, Landroidx/media3/extractor/mp4/Track;->type:I

    invoke-interface {v9, v5, v10}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v9

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v10

    iget v11, v7, Landroidx/media3/extractor/mp4/Track;->id:I

    const/4 v13, 0x1

    if-ne v10, v13, :cond_6

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    goto :goto_5

    :cond_6
    invoke-virtual {v3, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_5
    invoke-direct {v8, v9, v6, v10}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;-><init>(Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/mp4/TrackSampleTable;Landroidx/media3/extractor/mp4/DefaultSampleValues;)V

    invoke-virtual {v12, v11, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-wide v8, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    iget-wide v6, v7, Landroidx/media3/extractor/mp4/Track;->durationUs:J

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_7
    iget-object v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v2}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    goto :goto_9

    :cond_8
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ne v5, v4, :cond_9

    const/4 v5, 0x1

    goto :goto_6

    :cond_9
    const/4 v5, 0x0

    :goto_6
    invoke-static {v5}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v4, :cond_b

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v7, v6, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    iget v8, v7, Landroidx/media3/extractor/mp4/Track;->id:I

    invoke-virtual {v12, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_a

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    goto :goto_8

    :cond_a
    iget v7, v7, Landroidx/media3/extractor/mp4/Track;->id:I

    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_8
    iput-object v6, v8, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iput-object v7, v8, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultSampleValues:Landroidx/media3/extractor/mp4/DefaultSampleValues;

    iget-object v6, v6, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    iget-object v6, v6, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget-object v7, v8, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v7, v6}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    invoke-virtual {v8}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->resetFragmentInfo()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_b
    :goto_9
    move-object/from16 v5, p0

    goto/16 :goto_0

    :cond_c
    const v6, 0x6d6f6f66

    if-ne v3, v6, :cond_5d

    iget-object v2, v4, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v6, v4

    move-object v4, v1

    move-object v1, v0

    :goto_a
    if-ge v6, v3, :cond_55

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    iget v8, v7, Landroidx/media3/decoder/Buffer;->flags:I

    const v9, 0x74726166

    if-ne v8, v9, :cond_54

    const v8, 0x74666864

    invoke-virtual {v7, v8}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v8, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v9

    const v10, 0xffffff

    and-int/2addr v9, v10

    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v10

    invoke-virtual {v12, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    if-nez v10, :cond_d

    const/4 v10, 0x0

    move-object/from16 v16, v1

    goto :goto_f

    :cond_d
    and-int/lit8 v11, v9, 0x1

    iget-object v13, v10, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    if-eqz v11, :cond_e

    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v14

    iput-wide v14, v13, Landroidx/media3/extractor/mp4/TrackFragment;->dataPosition:J

    iput-wide v14, v13, Landroidx/media3/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    :cond_e
    iget-object v11, v10, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultSampleValues:Landroidx/media3/extractor/mp4/DefaultSampleValues;

    and-int/lit8 v14, v9, 0x2

    if-eqz v14, :cond_f

    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    goto :goto_b

    :cond_f
    iget v14, v11, Landroidx/media3/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    :goto_b
    and-int/lit8 v15, v9, 0x8

    if-eqz v15, :cond_10

    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v15

    goto :goto_c

    :cond_10
    iget v15, v11, Landroidx/media3/extractor/mp4/DefaultSampleValues;->duration:I

    :goto_c
    and-int/lit8 v16, v9, 0x10

    if-eqz v16, :cond_11

    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v16

    move/from16 v46, v16

    move-object/from16 v16, v1

    move/from16 v1, v46

    goto :goto_d

    :cond_11
    move-object/from16 v16, v1

    iget v1, v11, Landroidx/media3/extractor/mp4/DefaultSampleValues;->size:I

    :goto_d
    and-int/lit8 v9, v9, 0x20

    if-eqz v9, :cond_12

    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v8

    goto :goto_e

    :cond_12
    iget v8, v11, Landroidx/media3/extractor/mp4/DefaultSampleValues;->flags:I

    :goto_e
    new-instance v9, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    invoke-direct {v9, v14, v15, v1, v8}, Landroidx/media3/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    iput-object v9, v13, Landroidx/media3/extractor/mp4/TrackFragment;->header:Landroidx/media3/extractor/mp4/DefaultSampleValues;

    :goto_f
    if-nez v10, :cond_13

    goto/16 :goto_37

    :cond_13
    iget-object v1, v10, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget-wide v8, v1, Landroidx/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    iget-boolean v4, v1, Landroidx/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTimeIncludesMoov:Z

    invoke-virtual {v10}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->resetFragmentInfo()V

    const/4 v11, 0x1

    iput-boolean v11, v10, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    const v11, 0x74666474

    invoke-virtual {v7, v11}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v11

    iget v0, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->flags:I

    if-eqz v11, :cond_15

    and-int/lit8 v13, v0, 0x2

    if-nez v13, :cond_15

    iget-object v4, v11, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v8

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    const/4 v9, 0x1

    if-ne v8, v9, :cond_14

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v8

    goto :goto_10

    :cond_14
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    :goto_10
    const/4 v4, 0x1

    :cond_15
    iput-wide v8, v1, Landroidx/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    iput-boolean v4, v1, Landroidx/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTimeIncludesMoov:Z

    iget-object v4, v7, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_11
    const v14, 0x7472756e

    if-ge v9, v8, :cond_17

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-object/from16 v17, v2

    iget v2, v15, Landroidx/media3/decoder/Buffer;->flags:I

    if-ne v2, v14, :cond_16

    iget-object v2, v15, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v14, 0xc

    invoke-virtual {v2, v14}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    if-lez v2, :cond_16

    add-int/2addr v13, v2

    add-int/lit8 v11, v11, 0x1

    :cond_16
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, v17

    goto :goto_11

    :cond_17
    move-object/from16 v17, v2

    const/4 v2, 0x0

    iput v2, v10, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    iput v2, v10, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    iput v2, v10, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    iput v11, v1, Landroidx/media3/extractor/mp4/TrackFragment;->trunCount:I

    iput v13, v1, Landroidx/media3/extractor/mp4/TrackFragment;->sampleCount:I

    iget-object v2, v1, Landroidx/media3/extractor/mp4/TrackFragment;->trunLength:[I

    array-length v2, v2

    if-ge v2, v11, :cond_18

    new-array v2, v11, [J

    iput-object v2, v1, Landroidx/media3/extractor/mp4/TrackFragment;->trunDataPosition:[J

    new-array v2, v11, [I

    iput-object v2, v1, Landroidx/media3/extractor/mp4/TrackFragment;->trunLength:[I

    :cond_18
    iget-object v2, v1, Landroidx/media3/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    array-length v2, v2

    if-ge v2, v13, :cond_19

    mul-int/lit8 v13, v13, 0x7d

    div-int/lit8 v13, v13, 0x64

    new-array v2, v13, [I

    iput-object v2, v1, Landroidx/media3/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    new-array v2, v13, [J

    iput-object v2, v1, Landroidx/media3/extractor/mp4/TrackFragment;->samplePresentationTimesUs:[J

    new-array v2, v13, [Z

    iput-object v2, v1, Landroidx/media3/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    new-array v2, v13, [Z

    iput-object v2, v1, Landroidx/media3/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    :cond_19
    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v13, v10

    :goto_12
    if-ge v2, v8, :cond_34

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v15, v18

    check-cast v15, Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move/from16 v18, v3

    iget v3, v15, Landroidx/media3/decoder/Buffer;->flags:I

    if-ne v3, v14, :cond_33

    add-int/lit8 v3, v9, 0x1

    iget-object v14, v15, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v14}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v15

    const v16, 0xffffff

    and-int v15, v15, v16

    iget-object v13, v13, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v13, v13, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    move/from16 v16, v3

    iget-object v3, v1, Landroidx/media3/extractor/mp4/TrackFragment;->header:Landroidx/media3/extractor/mp4/DefaultSampleValues;

    sget v21, Landroidx/media3/common/util/Util;->SDK_INT:I

    move/from16 v21, v8

    iget-object v8, v1, Landroidx/media3/extractor/mp4/TrackFragment;->trunLength:[I

    invoke-virtual {v14}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v22

    aput v22, v8, v9

    iget-object v8, v1, Landroidx/media3/extractor/mp4/TrackFragment;->trunDataPosition:[J

    move-object/from16 v22, v5

    move/from16 v23, v6

    iget-wide v5, v1, Landroidx/media3/extractor/mp4/TrackFragment;->dataPosition:J

    aput-wide v5, v8, v9

    and-int/lit8 v24, v15, 0x1

    if-eqz v24, :cond_1a

    move-object/from16 v24, v12

    invoke-virtual {v14}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v12

    move-object/from16 v25, v10

    move/from16 v26, v11

    int-to-long v10, v12

    add-long/2addr v5, v10

    aput-wide v5, v8, v9

    goto :goto_13

    :cond_1a
    move-object/from16 v25, v10

    move/from16 v26, v11

    move-object/from16 v24, v12

    :goto_13
    and-int/lit8 v5, v15, 0x4

    if-eqz v5, :cond_1b

    const/4 v5, 0x1

    goto :goto_14

    :cond_1b
    const/4 v5, 0x0

    :goto_14
    iget v6, v3, Landroidx/media3/extractor/mp4/DefaultSampleValues;->flags:I

    if-eqz v5, :cond_1c

    invoke-virtual {v14}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v6

    :cond_1c
    and-int/lit16 v8, v15, 0x100

    if-eqz v8, :cond_1d

    const/4 v8, 0x1

    goto :goto_15

    :cond_1d
    const/4 v8, 0x0

    :goto_15
    and-int/lit16 v10, v15, 0x200

    if-eqz v10, :cond_1e

    const/4 v10, 0x1

    goto :goto_16

    :cond_1e
    const/4 v10, 0x0

    :goto_16
    and-int/lit16 v11, v15, 0x400

    if-eqz v11, :cond_1f

    const/4 v11, 0x1

    goto :goto_17

    :cond_1f
    const/4 v11, 0x0

    :goto_17
    and-int/lit16 v12, v15, 0x800

    if-eqz v12, :cond_20

    const/4 v12, 0x1

    goto :goto_18

    :cond_20
    const/4 v12, 0x0

    :goto_18
    iget-object v15, v13, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    move/from16 v27, v6

    iget-object v6, v13, Landroidx/media3/extractor/mp4/Track;->editListMediaTimes:[J

    move-object/from16 v28, v4

    if-eqz v15, :cond_24

    array-length v4, v15

    move-object/from16 v29, v7

    const/4 v7, 0x1

    if-ne v4, v7, :cond_23

    if-nez v6, :cond_21

    goto :goto_1a

    :cond_21
    const/4 v4, 0x0

    aget-wide v30, v15, v4

    const-wide/16 v19, 0x0

    cmp-long v7, v30, v19

    if-nez v7, :cond_22

    move v7, v5

    move v15, v11

    move/from16 v30, v12

    goto :goto_19

    :cond_22
    aget-wide v32, v6, v4

    add-long v34, v30, v32

    const-wide/32 v36, 0xf4240

    move v7, v5

    iget-wide v4, v13, Landroidx/media3/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v38, v4

    invoke-static/range {v34 .. v39}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v4

    move v15, v11

    move/from16 v30, v12

    iget-wide v11, v13, Landroidx/media3/extractor/mp4/Track;->durationUs:J

    cmp-long v4, v4, v11

    if-ltz v4, :cond_25

    :goto_19
    const/4 v4, 0x1

    goto :goto_1c

    :cond_23
    :goto_1a
    move v7, v5

    move v15, v11

    move/from16 v30, v12

    goto :goto_1b

    :cond_24
    move-object/from16 v29, v7

    move v15, v11

    move/from16 v30, v12

    move v7, v5

    :cond_25
    :goto_1b
    const/4 v4, 0x0

    :goto_1c
    if-eqz v4, :cond_26

    const/4 v4, 0x0

    aget-wide v4, v6, v4

    move-wide/from16 v19, v4

    goto :goto_1d

    :cond_26
    const-wide/16 v19, 0x0

    :goto_1d
    iget-object v4, v1, Landroidx/media3/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    iget-object v5, v1, Landroidx/media3/extractor/mp4/TrackFragment;->samplePresentationTimesUs:[J

    iget-object v6, v1, Landroidx/media3/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    iget v11, v13, Landroidx/media3/extractor/mp4/Track;->type:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_27

    and-int/lit8 v11, v0, 0x1

    if-eqz v11, :cond_27

    const/4 v11, 0x1

    goto :goto_1e

    :cond_27
    const/4 v11, 0x0

    :goto_1e
    iget-object v12, v1, Landroidx/media3/extractor/mp4/TrackFragment;->trunLength:[I

    aget v9, v12, v9

    add-int v9, v9, v26

    iget-wide v12, v13, Landroidx/media3/extractor/mp4/Track;->timescale:J

    move-object/from16 v37, v4

    move-object/from16 v38, v5

    iget-wide v4, v1, Landroidx/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    move/from16 v39, v0

    move/from16 v0, v26

    :goto_1f
    if-ge v0, v9, :cond_32

    if-eqz v8, :cond_28

    invoke-virtual {v14}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v26

    move/from16 v40, v8

    move/from16 v41, v9

    move/from16 v8, v26

    goto :goto_20

    :cond_28
    move/from16 v40, v8

    iget v8, v3, Landroidx/media3/extractor/mp4/DefaultSampleValues;->duration:I

    move/from16 v41, v9

    :goto_20
    const-string v9, "Unexpected negative value: "

    if-ltz v8, :cond_31

    if-eqz v10, :cond_29

    invoke-virtual {v14}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v26

    move/from16 v42, v10

    move/from16 v10, v26

    goto :goto_21

    :cond_29
    move/from16 v42, v10

    iget v10, v3, Landroidx/media3/extractor/mp4/DefaultSampleValues;->size:I

    :goto_21
    if-ltz v10, :cond_30

    if-eqz v15, :cond_2a

    invoke-virtual {v14}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v9

    goto :goto_22

    :cond_2a
    if-nez v0, :cond_2b

    if-eqz v7, :cond_2b

    move/from16 v9, v27

    goto :goto_22

    :cond_2b
    iget v9, v3, Landroidx/media3/extractor/mp4/DefaultSampleValues;->flags:I

    :goto_22
    if-eqz v30, :cond_2c

    invoke-virtual {v14}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v26

    goto :goto_23

    :cond_2c
    const/16 v26, 0x0

    :goto_23
    move-object/from16 v43, v3

    move-object/from16 v44, v14

    move/from16 v45, v15

    move/from16 v3, v26

    int-to-long v14, v3

    add-long/2addr v14, v4

    sub-long v31, v14, v19

    const-wide/32 v33, 0xf4240

    move-wide/from16 v35, v12

    invoke-static/range {v31 .. v36}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v14

    aput-wide v14, v38, v0

    iget-boolean v3, v1, Landroidx/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTimeIncludesMoov:Z

    if-nez v3, :cond_2d

    move-object/from16 v3, v25

    move/from16 v25, v7

    iget-object v7, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    move-wide/from16 v31, v12

    iget-wide v12, v7, Landroidx/media3/extractor/mp4/TrackSampleTable;->durationUs:J

    add-long/2addr v14, v12

    aput-wide v14, v38, v0

    goto :goto_24

    :cond_2d
    move-wide/from16 v31, v12

    move-object/from16 v3, v25

    move/from16 v25, v7

    :goto_24
    aput v10, v37, v0

    shr-int/lit8 v7, v9, 0x10

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_2f

    if-eqz v11, :cond_2e

    if-nez v0, :cond_2f

    :cond_2e
    const/4 v7, 0x1

    goto :goto_25

    :cond_2f
    const/4 v7, 0x0

    :goto_25
    aput-boolean v7, v6, v0

    int-to-long v7, v8

    add-long/2addr v4, v7

    add-int/lit8 v0, v0, 0x1

    move/from16 v7, v25

    move-wide/from16 v12, v31

    move/from16 v8, v40

    move/from16 v9, v41

    move/from16 v10, v42

    move-object/from16 v14, v44

    move/from16 v15, v45

    move-object/from16 v25, v3

    move-object/from16 v3, v43

    goto/16 :goto_1f

    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_31
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_32
    move/from16 v41, v9

    move-object/from16 v3, v25

    iput-wide v4, v1, Landroidx/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    move-object v13, v3

    move/from16 v9, v16

    move/from16 v11, v41

    goto :goto_26

    :cond_33
    move/from16 v39, v0

    move-object/from16 v28, v4

    move-object/from16 v22, v5

    move/from16 v23, v6

    move-object/from16 v29, v7

    move/from16 v21, v8

    move-object v3, v10

    move/from16 v26, v11

    move-object/from16 v24, v12

    :goto_26
    add-int/lit8 v2, v2, 0x1

    const v14, 0x7472756e

    move-object v10, v3

    move/from16 v3, v18

    move/from16 v8, v21

    move-object/from16 v5, v22

    move/from16 v6, v23

    move-object/from16 v12, v24

    move-object/from16 v4, v28

    move-object/from16 v7, v29

    move/from16 v0, v39

    goto/16 :goto_12

    :cond_34
    move/from16 v18, v3

    move-object/from16 v28, v4

    move-object/from16 v22, v5

    move/from16 v23, v6

    move-object/from16 v29, v7

    move-object v3, v10

    move-object/from16 v24, v12

    const/4 v0, 0x2

    iget-object v2, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v2, v2, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    iget-object v3, v1, Landroidx/media3/extractor/mp4/TrackFragment;->header:Landroidx/media3/extractor/mp4/DefaultSampleValues;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Landroidx/media3/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    if-nez v2, :cond_35

    const/4 v2, 0x0

    goto :goto_27

    :cond_35
    iget v3, v3, Landroidx/media3/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    aget-object v2, v2, v3

    :goto_27
    const v3, 0x7361697a

    move-object/from16 v7, v29

    invoke-virtual {v7, v3}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    if-eqz v3, :cond_3c

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v5

    const v6, 0xffffff

    and-int/2addr v5, v6

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_36

    invoke-virtual {v3, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_36
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    iget v6, v1, Landroidx/media3/extractor/mp4/TrackFragment;->sampleCount:I

    if-gt v5, v6, :cond_3b

    iget v6, v2, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->perSampleIvSize:I

    if-nez v4, :cond_39

    iget-object v4, v1, Landroidx/media3/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_28
    if-ge v8, v5, :cond_38

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    add-int/2addr v9, v10

    if-le v10, v6, :cond_37

    const/4 v10, 0x1

    goto :goto_29

    :cond_37
    const/4 v10, 0x0

    :goto_29
    aput-boolean v10, v4, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_28

    :cond_38
    const/4 v3, 0x0

    goto :goto_2b

    :cond_39
    if-le v4, v6, :cond_3a

    const/4 v3, 0x1

    goto :goto_2a

    :cond_3a
    const/4 v3, 0x0

    :goto_2a
    mul-int/2addr v4, v5

    const/4 v6, 0x0

    add-int/lit8 v9, v4, 0x0

    iget-object v4, v1, Landroidx/media3/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    invoke-static {v4, v6, v5, v3}, Ljava/util/Arrays;->fill([ZIIZ)V

    move v3, v6

    :goto_2b
    iget-object v4, v1, Landroidx/media3/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    iget v6, v1, Landroidx/media3/extractor/mp4/TrackFragment;->sampleCount:I

    invoke-static {v4, v5, v6, v3}, Ljava/util/Arrays;->fill([ZIIZ)V

    if-lez v9, :cond_3c

    iget-object v3, v1, Landroidx/media3/extractor/mp4/TrackFragment;->sampleEncryptionData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v3, v9}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    const/4 v3, 0x1

    iput-boolean v3, v1, Landroidx/media3/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    iput-boolean v3, v1, Landroidx/media3/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    goto :goto_2c

    :cond_3b
    const-string v0, "Saiz sample count "

    const-string v2, " is greater than fragment sample count"

    invoke-static {v0, v5, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v1, Landroidx/media3/extractor/mp4/TrackFragment;->sampleCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_3c
    :goto_2c
    const v3, 0x7361696f

    invoke-virtual {v7, v3}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    if-eqz v3, :cond_40

    iget-object v3, v3, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v5

    const v6, 0xffffff

    and-int/2addr v6, v5

    const/4 v8, 0x1

    and-int/2addr v6, v8

    if-ne v6, v8, :cond_3d

    invoke-virtual {v3, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_3d
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    if-ne v4, v8, :cond_3f

    shr-int/lit8 v4, v5, 0x18

    and-int/lit16 v4, v4, 0xff

    iget-wide v5, v1, Landroidx/media3/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    if-nez v4, :cond_3e

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    goto :goto_2d

    :cond_3e
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v3

    :goto_2d
    add-long/2addr v5, v3

    iput-wide v5, v1, Landroidx/media3/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    goto :goto_2e

    :cond_3f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected saio entry count: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_40
    :goto_2e
    const/4 v3, 0x0

    const v4, 0x73656e63

    invoke-virtual {v7, v4}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    if-eqz v4, :cond_41

    iget-object v4, v4, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v5, 0x0

    invoke-static {v4, v5, v1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Landroidx/media3/common/util/ParsableByteArray;ILandroidx/media3/extractor/mp4/TrackFragment;)V

    :cond_41
    if-eqz v2, :cond_42

    iget-object v2, v2, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    move-object v6, v2

    goto :goto_2f

    :cond_42
    move-object v6, v3

    :goto_2f
    const/4 v2, 0x0

    move-object v4, v3

    move-object v5, v4

    :goto_30
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v7

    move-object/from16 v12, v28

    if-ge v2, v7, :cond_45

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    iget-object v8, v7, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    iget v7, v7, Landroidx/media3/decoder/Buffer;->flags:I

    const v9, 0x73626770

    const v10, 0x73656967

    const/16 v11, 0xc

    if-ne v7, v9, :cond_43

    invoke-virtual {v8, v11}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v7

    if-ne v7, v10, :cond_44

    move-object v4, v8

    goto :goto_31

    :cond_43
    const v9, 0x73677064

    if-ne v7, v9, :cond_44

    invoke-virtual {v8, v11}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v7

    if-ne v7, v10, :cond_44

    move-object v5, v8

    :cond_44
    :goto_31
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v28, v12

    goto :goto_30

    :cond_45
    if-eqz v4, :cond_50

    if-nez v5, :cond_46

    goto/16 :goto_34

    :cond_46
    const/16 v2, 0x8

    invoke-virtual {v4, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    shr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    const/4 v8, 0x1

    if-ne v2, v8, :cond_47

    invoke-virtual {v4, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_47
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    if-ne v2, v8, :cond_4f

    const/16 v2, 0x8

    invoke-virtual {v5, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    shr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v5, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    if-ne v2, v8, :cond_49

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-eqz v0, :cond_48

    goto :goto_32

    :cond_48
    const-string v0, "Variable length description in sgpd found (unsupported)"

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_49
    if-lt v2, v0, :cond_4a

    invoke-virtual {v5, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_4a
    :goto_32
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v7

    const-wide/16 v9, 0x1

    cmp-long v0, v7, v9

    if-nez v0, :cond_4e

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    and-int/lit16 v4, v2, 0xf0

    shr-int/lit8 v9, v4, 0x4

    and-int/lit8 v10, v2, 0xf

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    if-ne v2, v0, :cond_4b

    const/4 v0, 0x1

    goto :goto_33

    :cond_4b
    const/4 v0, 0x0

    :goto_33
    if-nez v0, :cond_4c

    goto :goto_34

    :cond_4c
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    const/16 v2, 0x10

    new-array v8, v2, [B

    const/4 v4, 0x0

    invoke-virtual {v5, v4, v2, v8}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    if-nez v7, :cond_4d

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    new-array v3, v2, [B

    invoke-virtual {v5, v4, v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    :cond_4d
    move-object v11, v3

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/media3/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    new-instance v2, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move-object v4, v2

    move v5, v0

    invoke-direct/range {v4 .. v11}, Landroidx/media3/extractor/mp4/TrackEncryptionBox;-><init>(ZLjava/lang/String;I[BII[B)V

    iput-object v2, v1, Landroidx/media3/extractor/mp4/TrackFragment;->trackEncryptionBox:Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    goto :goto_34

    :cond_4e
    const-string v0, "Entry count in sgpd != 1 (unsupported)."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_4f
    const-string v0, "Entry count in sbgp != 1 (unsupported)."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_50
    :goto_34
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_35
    if-ge v2, v0, :cond_53

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    iget v4, v3, Landroidx/media3/decoder/Buffer;->flags:I

    const v5, 0x75756964

    if-ne v4, v5, :cond_52

    iget-object v3, v3, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    move-object/from16 v5, p0

    iget-object v4, v5, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->scratchBytes:[B

    const/16 v6, 0x10

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v6, v4}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    sget-object v7, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

    invoke-static {v4, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_51

    goto :goto_36

    :cond_51
    invoke-static {v3, v6, v1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Landroidx/media3/common/util/ParsableByteArray;ILandroidx/media3/extractor/mp4/TrackFragment;)V

    goto :goto_36

    :cond_52
    move-object/from16 v5, p0

    :goto_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :cond_53
    move-object/from16 v5, p0

    move-object v0, v5

    move-object v1, v0

    move-object v4, v1

    goto :goto_38

    :cond_54
    move-object/from16 v16, v1

    :goto_37
    move-object/from16 v17, v2

    move/from16 v18, v3

    move-object/from16 v22, v5

    move/from16 v23, v6

    move-object/from16 v24, v12

    move-object/from16 v5, p0

    move-object/from16 v1, v16

    :goto_38
    add-int/lit8 v6, v23, 0x1

    move-object/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v5, v22

    move-object/from16 v12, v24

    goto/16 :goto_a

    :cond_55
    move-object/from16 v16, v1

    move-object/from16 v22, v5

    move-object/from16 v24, v12

    move-object/from16 v5, p0

    const/4 v1, 0x0

    invoke-static/range {v22 .. v22}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->getDrmInitDataFromAtoms(Ljava/util/ArrayList;)Landroidx/media3/common/DrmInitData;

    move-result-object v2

    if-eqz v2, :cond_58

    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v6, 0x0

    :goto_39
    if-ge v6, v3, :cond_58

    move-object/from16 v7, v24

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v9, v8, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v9, v9, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    iget-object v10, v8, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget-object v10, v10, Landroidx/media3/extractor/mp4/TrackFragment;->header:Landroidx/media3/extractor/mp4/DefaultSampleValues;

    sget v11, Landroidx/media3/common/util/Util;->SDK_INT:I

    iget v10, v10, Landroidx/media3/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    iget-object v9, v9, Landroidx/media3/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    if-nez v9, :cond_56

    move-object v9, v1

    goto :goto_3a

    :cond_56
    aget-object v9, v9, v10

    :goto_3a
    if-eqz v9, :cond_57

    iget-object v9, v9, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    goto :goto_3b

    :cond_57
    move-object v9, v1

    :goto_3b
    invoke-virtual {v2, v9}, Landroidx/media3/common/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Landroidx/media3/common/DrmInitData;

    move-result-object v9

    iget-object v10, v8, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v10, v10, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    iget-object v10, v10, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Landroidx/media3/common/Format$Builder;

    invoke-direct {v11, v10}, Landroidx/media3/common/Format$Builder;-><init>(Landroidx/media3/common/Format;)V

    iput-object v9, v11, Landroidx/media3/common/Format$Builder;->drmInitData:Landroidx/media3/common/DrmInitData;

    new-instance v9, Landroidx/media3/common/Format;

    invoke-direct {v9, v11}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iget-object v8, v8, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v8, v9}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v24, v7

    goto :goto_39

    :cond_58
    move-object/from16 v7, v24

    iget-wide v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v8

    if-eqz v1, :cond_5c

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_3c
    if-ge v2, v1, :cond_5b

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-wide v8, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    iget v6, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    :goto_3d
    iget-object v10, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget v11, v10, Landroidx/media3/extractor/mp4/TrackFragment;->sampleCount:I

    if-ge v6, v11, :cond_5a

    iget-object v11, v10, Landroidx/media3/extractor/mp4/TrackFragment;->samplePresentationTimesUs:[J

    aget-wide v11, v11, v6

    cmp-long v11, v11, v8

    if-gtz v11, :cond_5a

    iget-object v10, v10, Landroidx/media3/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    aget-boolean v10, v10, v6

    if-eqz v10, :cond_59

    iput v6, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->firstSampleToOutputIndex:I

    :cond_59
    add-int/lit8 v6, v6, 0x1

    goto :goto_3d

    :cond_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    :cond_5b
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    :cond_5c
    move-object v1, v4

    move-object/from16 v0, v16

    goto/16 :goto_0

    :cond_5d
    move-object/from16 v5, p0

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    iget-object v2, v2, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5e
    const/4 v0, 0x0

    iput v0, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    iput v0, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    return-void
.end method

.method public final read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object v1, v0

    :goto_0
    iget v3, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    iget-object v4, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    iget-object v5, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    const/4 v6, 0x2

    const/4 v8, 0x1

    const v10, 0x656d7367

    const v11, 0x73696478

    if-eqz v3, :cond_3a

    iget-object v12, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    const-string v13, "FragmentedMp4Extractor"

    if-eq v3, v8, :cond_2b

    const-wide v10, 0x7fffffffffffffffL

    if-eq v3, v6, :cond_26

    iget-object v3, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    if-nez v3, :cond_9

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v3, :cond_4

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-boolean v14, v8, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    if-nez v14, :cond_0

    iget v15, v8, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    iget-object v7, v8, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget v7, v7, Landroidx/media3/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-eq v15, v7, :cond_3

    :cond_0
    iget-object v7, v8, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    if-eqz v14, :cond_1

    iget v15, v8, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    iget v9, v7, Landroidx/media3/extractor/mp4/TrackFragment;->trunCount:I

    if-ne v15, v9, :cond_1

    goto :goto_3

    :cond_1
    if-nez v14, :cond_2

    iget-object v7, v8, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v7, v7, Landroidx/media3/extractor/mp4/TrackSampleTable;->offsets:[J

    iget v9, v8, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget-wide v14, v7, v9

    goto :goto_2

    :cond_2
    iget-object v7, v7, Landroidx/media3/extractor/mp4/TrackFragment;->trunDataPosition:[J

    iget v9, v8, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    aget-wide v14, v7, v9

    :goto_2
    cmp-long v7, v14, v10

    if-gez v7, :cond_3

    move-object v4, v8

    move-wide v10, v14

    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    if-nez v4, :cond_6

    iget-wide v3, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->endOfMdatPosition:J

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-int v3, v3

    if-ltz v3, :cond_5

    invoke-interface {v2, v3}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    const/4 v3, 0x0

    iput v3, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    iput v3, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    const/4 v9, 0x0

    goto/16 :goto_15

    :cond_5
    const-string v0, "Offset to end of mdat was negative."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_6
    iget-boolean v3, v4, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    if-nez v3, :cond_7

    iget-object v3, v4, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v3, v3, Landroidx/media3/extractor/mp4/TrackSampleTable;->offsets:[J

    iget v5, v4, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget-wide v5, v3, v5

    goto :goto_4

    :cond_7
    iget-object v3, v4, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget-object v3, v3, Landroidx/media3/extractor/mp4/TrackFragment;->trunDataPosition:[J

    iget v5, v4, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    aget-wide v5, v3, v5

    :goto_4
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-int v3, v5

    if-gez v3, :cond_8

    const-string v3, "Ignoring negative offset to sample data."

    invoke-static {v13, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_8
    invoke-interface {v2, v3}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    iput-object v4, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-object v3, v4

    :cond_9
    iget v4, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_12

    iget-boolean v4, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    iget-object v5, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    if-nez v4, :cond_a

    iget-object v4, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v4, v4, Landroidx/media3/extractor/mp4/TrackSampleTable;->sizes:[I

    iget v6, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget v4, v4, v6

    goto :goto_5

    :cond_a
    iget-object v4, v5, Landroidx/media3/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    iget v6, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget v4, v4, v6

    :goto_5
    iput v4, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    iget v6, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    iget v7, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->firstSampleToOutputIndex:I

    if-ge v6, v7, :cond_f

    invoke-interface {v2, v4}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    invoke-virtual {v3}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getEncryptionBoxIfEncrypted()Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move-result-object v4

    if-nez v4, :cond_b

    goto :goto_7

    :cond_b
    iget-object v6, v5, Landroidx/media3/extractor/mp4/TrackFragment;->sampleEncryptionData:Landroidx/media3/common/util/ParsableByteArray;

    iget v4, v4, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->perSampleIvSize:I

    if-eqz v4, :cond_c

    invoke-virtual {v6, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_c
    iget v4, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    iget-boolean v7, v5, Landroidx/media3/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    if-eqz v7, :cond_d

    iget-object v5, v5, Landroidx/media3/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    aget-boolean v4, v5, v4

    if-eqz v4, :cond_d

    const/4 v9, 0x1

    goto :goto_6

    :cond_d
    const/4 v9, 0x0

    :goto_6
    if-eqz v9, :cond_e

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    mul-int/lit8 v4, v4, 0x6

    invoke-virtual {v6, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_e
    :goto_7
    invoke-virtual {v3}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->next()Z

    move-result v3

    if-nez v3, :cond_25

    const/4 v3, 0x0

    iput-object v3, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    goto/16 :goto_14

    :cond_f
    iget-object v5, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v5, v5, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    iget v5, v5, Landroidx/media3/extractor/mp4/Track;->sampleTransformation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_10

    add-int/lit8 v4, v4, -0x8

    iput v4, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    const/16 v4, 0x8

    invoke-interface {v2, v4}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    :cond_10
    iget-object v4, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v4, v4, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    iget-object v4, v4, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget-object v4, v4, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v5, "audio/ac4"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    iget v4, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    const/4 v5, 0x7

    invoke-virtual {v3, v4, v5}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->outputSampleEncryptionData(II)I

    move-result v4

    iput v4, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    iget v4, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    iget-object v6, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v4, v6}, Landroidx/media3/extractor/Ac4Util;->getAc4SampleHeader(ILandroidx/media3/common/util/ParsableByteArray;)V

    iget-object v4, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v4, v5, v6}, Landroidx/media3/extractor/TrackOutput;->sampleData(ILandroidx/media3/common/util/ParsableByteArray;)V

    iget v4, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v4, v5

    const/4 v5, 0x0

    goto :goto_8

    :cond_11
    iget v4, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->outputSampleEncryptionData(II)I

    move-result v4

    :goto_8
    iput v4, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    iget v6, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    add-int/2addr v6, v4

    iput v6, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    const/4 v4, 0x4

    iput v4, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    iput v5, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    :cond_12
    iget-object v4, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v5, v4, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    iget-object v6, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroidx/media3/extractor/TrackOutput;

    iget-boolean v7, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    iget-object v8, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    if-nez v7, :cond_13

    iget-object v4, v4, Landroidx/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    iget v7, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget-wide v9, v4, v7

    goto :goto_9

    :cond_13
    iget v4, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    iget-object v7, v8, Landroidx/media3/extractor/mp4/TrackFragment;->samplePresentationTimesUs:[J

    aget-wide v9, v7, v4

    :goto_9
    iget v4, v5, Landroidx/media3/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    if-eqz v4, :cond_1c

    iget-object v7, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v11, v7, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/4 v13, 0x0

    aput-byte v13, v11, v13

    const/4 v14, 0x1

    aput-byte v13, v11, v14

    const/4 v14, 0x2

    aput-byte v13, v11, v14

    add-int/lit8 v13, v4, 0x1

    rsub-int/lit8 v4, v4, 0x4

    :goto_a
    iget v14, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    iget v15, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    if-ge v14, v15, :cond_1d

    iget v14, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    const-string v15, "video/hevc"

    iget-object v0, v5, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    if-nez v14, :cond_1a

    invoke-interface {v2, v11, v4, v13}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v14

    move-object/from16 v16, v5

    const/4 v5, 0x1

    if-lt v14, v5, :cond_19

    add-int/lit8 v14, v14, -0x1

    iput v14, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    iget-object v5, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 v14, 0x4

    invoke-interface {v6, v14, v5}, Landroidx/media3/extractor/TrackOutput;->sampleData(ILandroidx/media3/common/util/ParsableByteArray;)V

    const/4 v5, 0x1

    invoke-interface {v6, v5, v7}, Landroidx/media3/extractor/TrackOutput;->sampleData(ILandroidx/media3/common/util/ParsableByteArray;)V

    iget-object v5, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    array-length v5, v5

    if-lez v5, :cond_17

    iget-object v0, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    aget-byte v5, v11, v14

    sget-object v14, Landroidx/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    const-string v14, "video/avc"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    and-int/lit8 v14, v5, 0x1f

    move-object/from16 v17, v7

    const/4 v7, 0x6

    if-eq v14, v7, :cond_15

    goto :goto_b

    :cond_14
    move-object/from16 v17, v7

    :goto_b
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    and-int/lit8 v0, v5, 0x7e

    shr-int/lit8 v0, v0, 0x1

    const/16 v5, 0x27

    if-ne v0, v5, :cond_16

    :cond_15
    const/4 v0, 0x1

    goto :goto_c

    :cond_16
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_d

    :cond_17
    move-object/from16 v17, v7

    :cond_18
    const/4 v0, 0x0

    :goto_d
    iput-boolean v0, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->processSeiNalUnitPayload:Z

    iget v0, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/lit8 v0, v0, 0x5

    iput v0, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    iget v0, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    add-int/2addr v0, v4

    iput v0, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    move/from16 p2, v4

    goto :goto_f

    :cond_19
    const-string v0, "Invalid NAL length"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_1a
    move-object/from16 v16, v5

    move-object/from16 v17, v7

    iget-boolean v5, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->processSeiNalUnitPayload:Z

    if-eqz v5, :cond_1b

    iget-object v5, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v5, v14}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v7, v5, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v14, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    move/from16 p2, v4

    const/4 v4, 0x0

    invoke-interface {v2, v7, v4, v14}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    iget v4, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    invoke-interface {v6, v4, v5}, Landroidx/media3/extractor/TrackOutput;->sampleData(ILandroidx/media3/common/util/ParsableByteArray;)V

    iget v4, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    iget-object v7, v5, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v14, v5, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    invoke-static {v7, v14}, Landroidx/media3/container/NalUnitUtil;->unescapeStream([BI)I

    move-result v7

    iget-object v0, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v5, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v5, v7}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    iget-object v0, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    invoke-static {v9, v10, v5, v0}, Lkotlin/reflect/TypesJVMKt;->consume(JLandroidx/media3/common/util/ParsableByteArray;[Landroidx/media3/extractor/TrackOutput;)V

    goto :goto_e

    :cond_1b
    move/from16 p2, v4

    const/4 v0, 0x0

    invoke-interface {v6, v2, v14, v0}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result v4

    :goto_e
    iget v0, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v0, v4

    iput v0, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    iget v0, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v0, v4

    iput v0, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    :goto_f
    move-object/from16 v0, p0

    move/from16 v4, p2

    move-object/from16 v5, v16

    move-object/from16 v7, v17

    goto/16 :goto_a

    :cond_1c
    :goto_10
    iget v0, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    iget v4, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    if-ge v0, v4, :cond_1d

    sub-int/2addr v4, v0

    const/4 v0, 0x0

    invoke-interface {v6, v2, v4, v0}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result v0

    iget v4, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v4, v0

    iput v4, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    goto :goto_10

    :cond_1d
    iget-boolean v0, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    if-nez v0, :cond_1e

    iget-object v0, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v0, v0, Landroidx/media3/extractor/mp4/TrackSampleTable;->flags:[I

    iget v4, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget v0, v0, v4

    goto :goto_11

    :cond_1e
    iget-object v0, v8, Landroidx/media3/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    iget v4, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_11

    :cond_1f
    const/4 v0, 0x0

    :goto_11
    invoke-virtual {v3}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getEncryptionBoxIfEncrypted()Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move-result-object v4

    if-eqz v4, :cond_20

    const/high16 v4, 0x40000000    # 2.0f

    or-int/2addr v0, v4

    :cond_20
    move/from16 v20, v0

    invoke-virtual {v3}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getEncryptionBoxIfEncrypted()Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, v0, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->cryptoData:Landroidx/media3/extractor/TrackOutput$CryptoData;

    goto :goto_12

    :cond_21
    const/4 v0, 0x0

    :goto_12
    move-object/from16 v23, v0

    iget v0, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    const/16 v22, 0x0

    move-object/from16 v17, v6

    move-wide/from16 v18, v9

    move/from16 v21, v0

    invoke-interface/range {v17 .. v23}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    :cond_22
    invoke-virtual {v12}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {v12}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;

    iget v4, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    iget v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->size:I

    sub-int/2addr v4, v5

    iput v4, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    iget-boolean v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->sampleTimeIsRelative:Z

    iget-wide v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->sampleTimeUs:J

    if-eqz v4, :cond_23

    add-long/2addr v5, v9

    :cond_23
    iget-object v4, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    array-length v7, v4

    const/4 v8, 0x0

    :goto_13
    if-ge v8, v7, :cond_22

    aget-object v13, v4, v8

    const/16 v16, 0x1

    iget v11, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->size:I

    iget v14, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    const/16 v19, 0x0

    move/from16 v18, v14

    move-wide v14, v5

    move/from16 v17, v11

    invoke-interface/range {v13 .. v19}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    :cond_24
    invoke-virtual {v3}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->next()Z

    move-result v0

    if-nez v0, :cond_25

    const/4 v0, 0x0

    iput-object v0, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    :cond_25
    :goto_14
    const/4 v0, 0x3

    iput v0, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    const/4 v9, 0x1

    :goto_15
    if-eqz v9, :cond_4d

    const/4 v0, 0x0

    return v0

    :cond_26
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v0, :cond_28

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v6, v6, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget-boolean v7, v6, Landroidx/media3/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    if-eqz v7, :cond_27

    iget-wide v6, v6, Landroidx/media3/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    cmp-long v8, v6, v10

    if-gez v8, :cond_27

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-wide v10, v6

    :cond_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_28
    if-nez v3, :cond_29

    const/4 v0, 0x3

    iput v0, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    goto/16 :goto_29

    :cond_29
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    sub-long/2addr v10, v4

    long-to-int v0, v10

    if-ltz v0, :cond_2a

    invoke-interface {v2, v0}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    iget-object v0, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget-object v3, v0, Landroidx/media3/extractor/mp4/TrackFragment;->sampleEncryptionData:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v4, v3, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v5, v3, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    const/4 v6, 0x0

    invoke-interface {v2, v4, v6, v5}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    invoke-virtual {v3, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iput-boolean v6, v0, Landroidx/media3/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    goto/16 :goto_29

    :cond_2a
    const-string v0, "Offset to encryption data was negative."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_2b
    iget-wide v5, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    long-to-int v0, v5

    iget v3, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    sub-int/2addr v0, v3

    iget-object v3, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomData:Landroidx/media3/common/util/ParsableByteArray;

    if-eqz v3, :cond_39

    iget-object v5, v3, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/16 v6, 0x8

    invoke-interface {v2, v5, v6, v0}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    new-instance v0, Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    iget v5, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-direct {v0, v5, v3}, Landroidx/media3/extractor/mp4/Atom$LeafAtom;-><init>(ILandroidx/media3/common/util/ParsableByteArray;)V

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2c

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    iget-object v3, v3, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1e

    :cond_2c
    iget v0, v0, Landroidx/media3/decoder/Buffer;->flags:I

    if-ne v0, v11, :cond_30

    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x4

    invoke-virtual {v3, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v1

    if-nez v0, :cond_2d

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v7

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v9

    goto :goto_17

    :cond_2d
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v7

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v9

    :goto_17
    move-wide v13, v7

    add-long/2addr v5, v9

    const-wide/32 v9, 0xf4240

    move-wide v7, v13

    move-wide v11, v1

    invoke-static/range {v7 .. v12}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v15

    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    new-array v4, v0, [I

    new-array v11, v0, [J

    new-array v12, v0, [J

    new-array v9, v0, [J

    const/4 v7, 0x0

    move-wide/from16 v17, v15

    move-wide/from16 v24, v13

    move v13, v7

    move-wide/from16 v7, v24

    :goto_18
    if-ge v13, v0, :cond_2f

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v10

    const/high16 v14, -0x80000000

    and-int/2addr v14, v10

    if-nez v14, :cond_2e

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v19

    const v14, 0x7fffffff

    and-int/2addr v10, v14

    aput v10, v4, v13

    aput-wide v5, v11, v13

    aput-wide v17, v9, v13

    add-long v17, v7, v19

    const-wide/32 v19, 0xf4240

    move-wide/from16 v7, v17

    move-object v14, v9

    move-wide/from16 v9, v19

    move/from16 p2, v0

    move-object/from16 v19, v11

    move-object v0, v12

    move-wide v11, v1

    invoke-static/range {v7 .. v12}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    aget-wide v9, v14, v13

    sub-long v9, v7, v9

    aput-wide v9, v0, v13

    const/4 v9, 0x4

    invoke-virtual {v3, v9}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    aget v9, v4, v13

    int-to-long v9, v9

    add-long/2addr v5, v9

    add-int/lit8 v13, v13, 0x1

    move-object v12, v0

    move-object v9, v14

    move-object/from16 v11, v19

    move/from16 v0, p2

    move-wide/from16 v24, v7

    move-wide/from16 v7, v17

    move-wide/from16 v17, v24

    goto :goto_18

    :cond_2e
    const-string v0, "Unhandled indirect reference"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_2f
    move-object v14, v9

    move-object/from16 v19, v11

    move-object v0, v12

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Landroidx/media3/extractor/ChunkIndex;

    move-object/from16 v3, v19

    invoke-direct {v2, v4, v3, v0, v14}, Landroidx/media3/extractor/ChunkIndex;-><init>([I[J[J[J)V

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-object/from16 v6, p0

    iput-wide v1, v6, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->segmentIndexEarliestPresentationTimeUs:J

    iget-object v1, v6, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/extractor/SeekMap;

    invoke-interface {v1, v0}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    const/4 v0, 0x1

    iput-boolean v0, v6, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    move-object v1, v6

    goto/16 :goto_1d

    :cond_30
    move-object/from16 v6, p0

    if-ne v0, v10, :cond_38

    iget-object v0, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    array-length v0, v0

    if-nez v0, :cond_31

    goto/16 :goto_1d

    :cond_31
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_33

    const/4 v2, 0x1

    if-eq v0, v2, :cond_32

    const-string v2, "Skipping unsupported emsg version: "

    invoke-static {v2, v0, v13}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1d

    :cond_32
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v7

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v14

    const-wide/32 v16, 0xf4240

    move-wide/from16 v18, v7

    invoke-static/range {v14 .. v19}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v9

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    invoke-static/range {v14 .. v19}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v13

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_19

    :cond_33
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v7

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v13

    const-wide/32 v15, 0xf4240

    move-wide/from16 v17, v7

    invoke-static/range {v13 .. v18}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v9

    iget-wide v13, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->segmentIndexEarliestPresentationTimeUs:J

    cmp-long v11, v13, v4

    if-eqz v11, :cond_34

    add-long v4, v13, v9

    :cond_34
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    move-wide/from16 v17, v7

    invoke-static/range {v13 .. v18}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v13

    move-wide/from16 v24, v4

    move-wide v4, v9

    move-wide/from16 v9, v24

    :goto_19
    iget v11, v3, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v15, v3, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v11, v15

    new-array v15, v11, [B

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v11, v15}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    new-instance v3, Landroidx/media3/extractor/metadata/emsg/EventMessage;

    new-instance v3, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v6, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->eventMessageEncoder:Lcom/motorola/camera/device/CameraService;

    iget-object v11, v6, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Ljava/lang/Object;

    check-cast v11, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->reset()V

    :try_start_0
    iget-object v11, v6, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Ljava/lang/Object;

    check-cast v11, Ljava/io/DataOutputStream;

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, v6, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Ljava/lang/Object;

    check-cast v0, Ljava/io/DataOutputStream;

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, v6, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Ljava/lang/Object;

    check-cast v0, Ljava/io/DataOutputStream;

    invoke-virtual {v0, v7, v8}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-object v0, v6, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Ljava/lang/Object;

    check-cast v0, Ljava/io/DataOutputStream;

    invoke-virtual {v0, v13, v14}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-object v0, v6, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Ljava/lang/Object;

    check-cast v0, Ljava/io/DataOutputStream;

    invoke-virtual {v0, v15}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, v6, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Ljava/lang/Object;

    check-cast v0, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    iget-object v0, v6, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Ljava/lang/Object;

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {v3, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iget v0, v3, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v2, v3, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v0, v2

    iget-object v2, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    array-length v6, v2

    const/4 v7, 0x0

    :goto_1a
    if-ge v7, v6, :cond_35

    aget-object v8, v2, v7

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-interface {v8, v0, v3}, Landroidx/media3/extractor/TrackOutput;->sampleData(ILandroidx/media3/common/util/ParsableByteArray;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1a

    :cond_35
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v9, v2

    if-nez v2, :cond_36

    new-instance v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;

    const/4 v3, 0x1

    invoke-direct {v2, v4, v5, v0, v3}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;-><init>(JIZ)V

    goto :goto_1b

    :cond_36
    invoke-virtual {v12}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_37

    new-instance v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v9, v10, v0, v3}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;-><init>(JIZ)V

    :goto_1b
    invoke-virtual {v12, v2}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget v2, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    add-int/2addr v2, v0

    iput v2, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    goto :goto_1d

    :cond_37
    iget-object v2, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1c
    if-ge v4, v3, :cond_38

    aget-object v13, v2, v4

    const/16 v16, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-wide v14, v9

    move/from16 v17, v0

    invoke-interface/range {v13 .. v19}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_38
    :goto_1d
    move-object/from16 v2, p1

    goto :goto_1e

    :cond_39
    invoke-interface {v2, v0}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    :goto_1e
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->processAtomEnded(J)V

    goto/16 :goto_29

    :cond_3a
    iget v0, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    iget-object v3, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    if-nez v0, :cond_3c

    iget-object v0, v3, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/16 v6, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-interface {v2, v0, v8, v6, v7}, Landroidx/media3/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_3b

    goto/16 :goto_28

    :cond_3b
    iput v6, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    invoke-virtual {v3, v8}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    iput-wide v6, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    iput v0, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    :cond_3c
    iget-wide v6, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    const-wide/16 v8, 0x1

    cmp-long v0, v6, v8

    if-nez v0, :cond_3d

    iget-object v0, v3, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/16 v6, 0x8

    invoke-interface {v2, v0, v6, v6}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    iget v0, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    add-int/2addr v0, v6

    iput v0, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    goto :goto_1f

    :cond_3d
    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-nez v0, :cond_3f

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-nez v0, :cond_3e

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    iget-wide v6, v0, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    :cond_3e
    cmp-long v0, v6, v8

    if-eqz v0, :cond_3f

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    sub-long/2addr v6, v8

    iget v0, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v8, v0

    add-long/2addr v6, v8

    :goto_1f
    iput-wide v6, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    :cond_3f
    iget-wide v6, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    iget v0, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v8, v0

    cmp-long v0, v6, v8

    if-ltz v0, :cond_4f

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    iget v0, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v8, v0

    sub-long/2addr v6, v8

    iget v0, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    const v8, 0x6d646174

    const v9, 0x6d6f6f66

    if-eq v0, v9, :cond_40

    if-ne v0, v8, :cond_41

    :cond_40
    iget-boolean v0, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    if-nez v0, :cond_41

    iget-object v0, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v12, Landroidx/media3/extractor/SeekMap$Unseekable;

    iget-wide v13, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    invoke-direct {v12, v13, v14, v6, v7}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(JJ)V

    invoke-interface {v0, v12}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    const/4 v0, 0x1

    iput-boolean v0, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    :cond_41
    iget v0, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    if-ne v0, v9, :cond_42

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v12, 0x0

    :goto_20
    if-ge v12, v0, :cond_42

    invoke-virtual {v5, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v13, v13, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-wide v6, v13, Landroidx/media3/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    iput-wide v6, v13, Landroidx/media3/extractor/mp4/TrackFragment;->dataPosition:J

    add-int/lit8 v12, v12, 0x1

    goto :goto_20

    :cond_42
    iget v0, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    const/4 v5, 0x0

    if-ne v0, v8, :cond_43

    iput-object v5, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-wide v3, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    add-long/2addr v6, v3

    iput-wide v6, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->endOfMdatPosition:J

    const/4 v0, 0x2

    iput v0, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    const/4 v8, 0x1

    goto/16 :goto_28

    :cond_43
    const v6, 0x6d6f6f76

    if-eq v0, v6, :cond_45

    const v6, 0x7472616b

    if-eq v0, v6, :cond_45

    const v6, 0x6d646961

    if-eq v0, v6, :cond_45

    const v6, 0x6d696e66

    if-eq v0, v6, :cond_45

    const v6, 0x7374626c

    if-eq v0, v6, :cond_45

    if-eq v0, v9, :cond_45

    const v6, 0x74726166

    if-eq v0, v6, :cond_45

    const v6, 0x6d766578

    if-eq v0, v6, :cond_45

    const v6, 0x65647473

    if-ne v0, v6, :cond_44

    goto :goto_21

    :cond_44
    const/4 v6, 0x0

    goto :goto_22

    :cond_45
    :goto_21
    const/4 v6, 0x1

    :goto_22
    if-eqz v6, :cond_47

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    iget-wide v7, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    add-long/2addr v5, v7

    const-wide/16 v7, 0x8

    sub-long/2addr v5, v7

    new-instance v0, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    iget v3, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-direct {v0, v3, v5, v6}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;-><init>(IJ)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v3, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    iget v0, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v7, v0

    cmp-long v0, v3, v7

    if-nez v0, :cond_46

    invoke-virtual {v1, v5, v6}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->processAtomEnded(J)V

    goto :goto_23

    :cond_46
    const/4 v0, 0x0

    iput v0, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    iput v0, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    :goto_23
    const/4 v0, 0x1

    :goto_24
    move v8, v0

    goto/16 :goto_28

    :cond_47
    const v4, 0x68646c72    # 4.3148E24f

    if-eq v0, v4, :cond_49

    const v4, 0x6d646864

    if-eq v0, v4, :cond_49

    const v4, 0x6d766864

    if-eq v0, v4, :cond_49

    if-eq v0, v11, :cond_49

    const v4, 0x73747364

    if-eq v0, v4, :cond_49

    const v4, 0x73747473

    if-eq v0, v4, :cond_49

    const v4, 0x63747473

    if-eq v0, v4, :cond_49

    const v4, 0x73747363

    if-eq v0, v4, :cond_49

    const v4, 0x7374737a

    if-eq v0, v4, :cond_49

    const v4, 0x73747a32

    if-eq v0, v4, :cond_49

    const v4, 0x7374636f

    if-eq v0, v4, :cond_49

    const v4, 0x636f3634

    if-eq v0, v4, :cond_49

    const v4, 0x73747373

    if-eq v0, v4, :cond_49

    const v4, 0x74666474

    if-eq v0, v4, :cond_49

    const v4, 0x74666864

    if-eq v0, v4, :cond_49

    const v4, 0x746b6864

    if-eq v0, v4, :cond_49

    const v4, 0x74726578

    if-eq v0, v4, :cond_49

    const v4, 0x7472756e

    if-eq v0, v4, :cond_49

    const v4, 0x70737368    # 3.013775E29f

    if-eq v0, v4, :cond_49

    const v4, 0x7361697a

    if-eq v0, v4, :cond_49

    const v4, 0x7361696f

    if-eq v0, v4, :cond_49

    const v4, 0x73656e63

    if-eq v0, v4, :cond_49

    const v4, 0x75756964

    if-eq v0, v4, :cond_49

    const v4, 0x73626770

    if-eq v0, v4, :cond_49

    const v4, 0x73677064

    if-eq v0, v4, :cond_49

    const v4, 0x656c7374

    if-eq v0, v4, :cond_49

    const v4, 0x6d656864

    if-eq v0, v4, :cond_49

    if-ne v0, v10, :cond_48

    goto :goto_25

    :cond_48
    const/4 v0, 0x0

    goto :goto_26

    :cond_49
    :goto_25
    const/4 v0, 0x1

    :goto_26
    const-wide/32 v6, 0x7fffffff

    if-eqz v0, :cond_4c

    iget v0, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    const/16 v4, 0x8

    if-ne v0, v4, :cond_4b

    iget-wide v8, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    cmp-long v0, v8, v6

    if-gtz v0, :cond_4a

    new-instance v5, Landroidx/media3/common/util/ParsableByteArray;

    iget-wide v6, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    long-to-int v0, v6

    invoke-direct {v5, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v0, v3, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget-object v3, v5, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/4 v6, 0x0

    invoke-static {v0, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_27

    :cond_4a
    const-string v0, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_4b
    const-string v0, "Leaf atom defines extended atom size (unsupported)."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_4c
    iget-wide v3, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    cmp-long v0, v3, v6

    if-gtz v0, :cond_4e

    :goto_27
    iput-object v5, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomData:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v0, 0x1

    iput v0, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    goto/16 :goto_24

    :goto_28
    if-nez v8, :cond_4d

    const/4 v0, -0x1

    return v0

    :cond_4d
    :goto_29
    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_4e
    const-string v0, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_4f
    const-string v0, "Atom size less than header length (unsupported)."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0
.end method

.method public final release()V
    .locals 0

    return-void
.end method

.method public final seek(JJ)V
    .locals 3

    iget-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_0

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-virtual {v2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->resetFragmentInfo()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    iput v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    iput-wide p3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    iget-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    iput v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    iput v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    return-void
.end method

.method public final sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 1

    const/4 p0, 0x1

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroidx/media3/extractor/mp4/Sniffer;->sniffInternal(Landroidx/media3/extractor/ExtractorInput;ZZ)Z

    move-result p0

    return p0
.end method
