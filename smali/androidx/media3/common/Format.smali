.class public final Landroidx/media3/common/Format;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Bundleable;


# static fields
.field public static final CREATOR:Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

.field public static final DEFAULT:Landroidx/media3/common/Format;

.field public static final FIELD_ACCESSIBILITY_CHANNEL:Ljava/lang/String;

.field public static final FIELD_AVERAGE_BITRATE:Ljava/lang/String;

.field public static final FIELD_CHANNEL_COUNT:Ljava/lang/String;

.field public static final FIELD_CODECS:Ljava/lang/String;

.field public static final FIELD_COLOR_INFO:Ljava/lang/String;

.field public static final FIELD_CONTAINER_MIME_TYPE:Ljava/lang/String;

.field public static final FIELD_CRYPTO_TYPE:Ljava/lang/String;

.field public static final FIELD_DRM_INIT_DATA:Ljava/lang/String;

.field public static final FIELD_ENCODER_DELAY:Ljava/lang/String;

.field public static final FIELD_ENCODER_PADDING:Ljava/lang/String;

.field public static final FIELD_FRAME_RATE:Ljava/lang/String;

.field public static final FIELD_HEIGHT:Ljava/lang/String;

.field public static final FIELD_ID:Ljava/lang/String;

.field public static final FIELD_INITIALIZATION_DATA:Ljava/lang/String;

.field public static final FIELD_LABEL:Ljava/lang/String;

.field public static final FIELD_LANGUAGE:Ljava/lang/String;

.field public static final FIELD_MAX_INPUT_SIZE:Ljava/lang/String;

.field public static final FIELD_METADATA:Ljava/lang/String;

.field public static final FIELD_PCM_ENCODING:Ljava/lang/String;

.field public static final FIELD_PEAK_BITRATE:Ljava/lang/String;

.field public static final FIELD_PIXEL_WIDTH_HEIGHT_RATIO:Ljava/lang/String;

.field public static final FIELD_PROJECTION_DATA:Ljava/lang/String;

.field public static final FIELD_ROLE_FLAGS:Ljava/lang/String;

.field public static final FIELD_ROTATION_DEGREES:Ljava/lang/String;

.field public static final FIELD_SAMPLE_MIME_TYPE:Ljava/lang/String;

.field public static final FIELD_SAMPLE_RATE:Ljava/lang/String;

.field public static final FIELD_SELECTION_FLAGS:Ljava/lang/String;

.field public static final FIELD_STEREO_MODE:Ljava/lang/String;

.field public static final FIELD_SUBSAMPLE_OFFSET_US:Ljava/lang/String;

.field public static final FIELD_TILE_COUNT_HORIZONTAL:Ljava/lang/String;

.field public static final FIELD_TILE_COUNT_VERTICAL:Ljava/lang/String;

.field public static final FIELD_WIDTH:Ljava/lang/String;


# instance fields
.field public final accessibilityChannel:I

.field public final averageBitrate:I

.field public final bitrate:I

.field public final channelCount:I

.field public final codecs:Ljava/lang/String;

.field public final colorInfo:Landroidx/media3/common/ColorInfo;

.field public final containerMimeType:Ljava/lang/String;

.field public final cryptoType:I

.field public final drmInitData:Landroidx/media3/common/DrmInitData;

.field public final encoderDelay:I

.field public final encoderPadding:I

.field public final frameRate:F

.field public hashCode:I

.field public final height:I

.field public final id:Ljava/lang/String;

.field public final initializationData:Ljava/util/List;

.field public final label:Ljava/lang/String;

.field public final language:Ljava/lang/String;

.field public final maxInputSize:I

.field public final metadata:Landroidx/media3/common/Metadata;

.field public final pcmEncoding:I

.field public final peakBitrate:I

.field public final pixelWidthHeightRatio:F

.field public final projectionData:[B

.field public final roleFlags:I

.field public final rotationDegrees:I

.field public final sampleMimeType:Ljava/lang/String;

.field public final sampleRate:I

.field public final selectionFlags:I

.field public final stereoMode:I

.field public final subsampleOffsetUs:J

.field public final tileCountHorizontal:I

.field public final tileCountVertical:I

.field public final width:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    new-instance v1, Landroidx/media3/common/Format;

    invoke-direct {v1, v0}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    sput-object v1, Landroidx/media3/common/Format;->DEFAULT:Landroidx/media3/common/Format;

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/Format;->FIELD_ID:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/Format;->FIELD_LABEL:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/Format;->FIELD_LANGUAGE:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/Format;->FIELD_SELECTION_FLAGS:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/Format;->FIELD_ROLE_FLAGS:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/Format;->FIELD_AVERAGE_BITRATE:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/Format;->FIELD_PEAK_BITRATE:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/Format;->FIELD_CODECS:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/Format;->FIELD_METADATA:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/Format;->FIELD_CONTAINER_MIME_TYPE:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/Format;->FIELD_SAMPLE_MIME_TYPE:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/Format;->FIELD_MAX_INPUT_SIZE:Ljava/lang/String;

    const/16 v1, 0xc

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/Format;->FIELD_INITIALIZATION_DATA:Ljava/lang/String;

    const/16 v1, 0xd

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/Format;->FIELD_DRM_INIT_DATA:Ljava/lang/String;

    const/16 v1, 0xe

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/Format;->FIELD_SUBSAMPLE_OFFSET_US:Ljava/lang/String;

    const/16 v1, 0xf

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/Format;->FIELD_WIDTH:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/Format;->FIELD_HEIGHT:Ljava/lang/String;

    const/16 v1, 0x11

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/Format;->FIELD_FRAME_RATE:Ljava/lang/String;

    const/16 v1, 0x12

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/Format;->FIELD_ROTATION_DEGREES:Ljava/lang/String;

    const/16 v1, 0x13

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/Format;->FIELD_PIXEL_WIDTH_HEIGHT_RATIO:Ljava/lang/String;

    const/16 v1, 0x14

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/Format;->FIELD_PROJECTION_DATA:Ljava/lang/String;

    const/16 v1, 0x15

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/Format;->FIELD_STEREO_MODE:Ljava/lang/String;

    const/16 v1, 0x16

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/Format;->FIELD_COLOR_INFO:Ljava/lang/String;

    const/16 v1, 0x17

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/Format;->FIELD_CHANNEL_COUNT:Ljava/lang/String;

    const/16 v1, 0x18

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/Format;->FIELD_SAMPLE_RATE:Ljava/lang/String;

    const/16 v1, 0x19

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/Format;->FIELD_PCM_ENCODING:Ljava/lang/String;

    const/16 v1, 0x1a

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/Format;->FIELD_ENCODER_DELAY:Ljava/lang/String;

    const/16 v1, 0x1b

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/Format;->FIELD_ENCODER_PADDING:Ljava/lang/String;

    const/16 v1, 0x1c

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/Format;->FIELD_ACCESSIBILITY_CHANNEL:Ljava/lang/String;

    const/16 v1, 0x1d

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/Format;->FIELD_CRYPTO_TYPE:Ljava/lang/String;

    const/16 v1, 0x1e

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/Format;->FIELD_TILE_COUNT_HORIZONTAL:Ljava/lang/String;

    const/16 v1, 0x1f

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/Format;->FIELD_TILE_COUNT_VERTICAL:Ljava/lang/String;

    new-instance v1, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v1, Landroidx/media3/common/Format;->CREATOR:Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/Format$Builder;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    iget-object v0, p1, Landroidx/media3/common/Format$Builder;->label:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    iget-object v0, p1, Landroidx/media3/common/Format$Builder;->language:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    iget v0, p1, Landroidx/media3/common/Format$Builder;->selectionFlags:I

    iput v0, p0, Landroidx/media3/common/Format;->selectionFlags:I

    iget v0, p1, Landroidx/media3/common/Format$Builder;->roleFlags:I

    iput v0, p0, Landroidx/media3/common/Format;->roleFlags:I

    iget v0, p1, Landroidx/media3/common/Format$Builder;->averageBitrate:I

    iput v0, p0, Landroidx/media3/common/Format;->averageBitrate:I

    iget v1, p1, Landroidx/media3/common/Format$Builder;->peakBitrate:I

    iput v1, p0, Landroidx/media3/common/Format;->peakBitrate:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    move v0, v1

    :cond_0
    iput v0, p0, Landroidx/media3/common/Format;->bitrate:I

    iget-object v0, p1, Landroidx/media3/common/Format$Builder;->codecs:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    iget-object v0, p1, Landroidx/media3/common/Format$Builder;->metadata:Landroidx/media3/common/Metadata;

    iput-object v0, p0, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    iget-object v0, p1, Landroidx/media3/common/Format$Builder;->containerMimeType:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    iget-object v0, p1, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget v0, p1, Landroidx/media3/common/Format$Builder;->maxInputSize:I

    iput v0, p0, Landroidx/media3/common/Format;->maxInputSize:I

    iget-object v0, p1, Landroidx/media3/common/Format$Builder;->initializationData:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    iget-object v0, p1, Landroidx/media3/common/Format$Builder;->drmInitData:Landroidx/media3/common/DrmInitData;

    iput-object v0, p0, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    iget-wide v3, p1, Landroidx/media3/common/Format$Builder;->subsampleOffsetUs:J

    iput-wide v3, p0, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    iget v1, p1, Landroidx/media3/common/Format$Builder;->width:I

    iput v1, p0, Landroidx/media3/common/Format;->width:I

    iget v1, p1, Landroidx/media3/common/Format$Builder;->height:I

    iput v1, p0, Landroidx/media3/common/Format;->height:I

    iget v1, p1, Landroidx/media3/common/Format$Builder;->frameRate:F

    iput v1, p0, Landroidx/media3/common/Format;->frameRate:F

    iget v1, p1, Landroidx/media3/common/Format$Builder;->rotationDegrees:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    move v1, v3

    :cond_2
    iput v1, p0, Landroidx/media3/common/Format;->rotationDegrees:I

    iget v1, p1, Landroidx/media3/common/Format$Builder;->pixelWidthHeightRatio:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v4, v1, v4

    if-nez v4, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_3
    iput v1, p0, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    iget-object v1, p1, Landroidx/media3/common/Format$Builder;->projectionData:[B

    iput-object v1, p0, Landroidx/media3/common/Format;->projectionData:[B

    iget v1, p1, Landroidx/media3/common/Format$Builder;->stereoMode:I

    iput v1, p0, Landroidx/media3/common/Format;->stereoMode:I

    iget-object v1, p1, Landroidx/media3/common/Format$Builder;->colorInfo:Landroidx/media3/common/ColorInfo;

    iput-object v1, p0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    iget v1, p1, Landroidx/media3/common/Format$Builder;->channelCount:I

    iput v1, p0, Landroidx/media3/common/Format;->channelCount:I

    iget v1, p1, Landroidx/media3/common/Format$Builder;->sampleRate:I

    iput v1, p0, Landroidx/media3/common/Format;->sampleRate:I

    iget v1, p1, Landroidx/media3/common/Format$Builder;->pcmEncoding:I

    iput v1, p0, Landroidx/media3/common/Format;->pcmEncoding:I

    iget v1, p1, Landroidx/media3/common/Format$Builder;->encoderDelay:I

    if-ne v1, v2, :cond_4

    move v1, v3

    :cond_4
    iput v1, p0, Landroidx/media3/common/Format;->encoderDelay:I

    iget v1, p1, Landroidx/media3/common/Format$Builder;->encoderPadding:I

    if-ne v1, v2, :cond_5

    goto :goto_0

    :cond_5
    move v3, v1

    :goto_0
    iput v3, p0, Landroidx/media3/common/Format;->encoderPadding:I

    iget v1, p1, Landroidx/media3/common/Format$Builder;->accessibilityChannel:I

    iput v1, p0, Landroidx/media3/common/Format;->accessibilityChannel:I

    iget v1, p1, Landroidx/media3/common/Format$Builder;->tileCountHorizontal:I

    iput v1, p0, Landroidx/media3/common/Format;->tileCountHorizontal:I

    iget v1, p1, Landroidx/media3/common/Format$Builder;->tileCountVertical:I

    iput v1, p0, Landroidx/media3/common/Format;->tileCountVertical:I

    iget p1, p1, Landroidx/media3/common/Format$Builder;->cryptoType:I

    if-nez p1, :cond_6

    if-eqz v0, :cond_6

    const/4 p1, 0x1

    :cond_6
    iput p1, p0, Landroidx/media3/common/Format;->cryptoType:I

    return-void
.end method

.method public static keyForInitializationData(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroidx/media3/common/Format;->FIELD_INITIALIZATION_DATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x24

    invoke-static {p0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toLogString(Landroidx/media3/common/Format;)Ljava/lang/String;
    .locals 10

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    const-string v0, "id="

    invoke-static {v0}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, -0x1

    iget v2, p0, Landroidx/media3/common/Format;->bitrate:I

    if-eq v2, v1, :cond_1

    const-string v3, ", bitrate="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v2, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v3, ", codecs="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v2, 0x2c

    const/4 v3, 0x0

    iget-object v4, p0, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    if-eqz v4, :cond_b

    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    move v6, v3

    :goto_0
    iget v7, v4, Landroidx/media3/common/DrmInitData;->schemeDataCount:I

    if-ge v6, v7, :cond_8

    iget-object v7, v4, Landroidx/media3/common/DrmInitData;->schemeDatas:[Landroidx/media3/common/DrmInitData$SchemeData;

    aget-object v7, v7, v6

    iget-object v7, v7, Landroidx/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    sget-object v8, Landroidx/media3/common/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    invoke-virtual {v7, v8}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v7, "cenc"

    goto :goto_1

    :cond_3
    sget-object v8, Landroidx/media3/common/C;->CLEARKEY_UUID:Ljava/util/UUID;

    invoke-virtual {v7, v8}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v7, "clearkey"

    goto :goto_1

    :cond_4
    sget-object v8, Landroidx/media3/common/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-virtual {v7, v8}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v7, "playready"

    goto :goto_1

    :cond_5
    sget-object v8, Landroidx/media3/common/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-virtual {v7, v8}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v7, "widevine"

    goto :goto_1

    :cond_6
    sget-object v8, Landroidx/media3/common/C;->UUID_NIL:Ljava/util/UUID;

    invoke-virtual {v7, v8}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v7, "universal"

    goto :goto_1

    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "unknown ("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_8
    const-string v4, ", drm=["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :try_start_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v7, v6, Ljava/lang/CharSequence;

    if-eqz v7, :cond_9

    check-cast v6, Ljava/lang/CharSequence;

    goto :goto_3

    :cond_9
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_3
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_a
    const/16 v4, 0x5d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_b
    :goto_4
    iget v4, p0, Landroidx/media3/common/Format;->width:I

    if-eq v4, v1, :cond_c

    iget v5, p0, Landroidx/media3/common/Format;->height:I

    if-eq v5, v1, :cond_c

    const-string v6, ", res="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_c
    const/4 v4, 0x2

    iget-object v5, p0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    if-eqz v5, :cond_17

    const/4 v6, 0x1

    iget v7, v5, Landroidx/media3/common/ColorInfo;->colorSpace:I

    iget v8, v5, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    iget v5, v5, Landroidx/media3/common/ColorInfo;->colorRange:I

    if-eq v7, v1, :cond_d

    if-eq v5, v1, :cond_d

    if-eq v8, v1, :cond_d

    move v9, v6

    goto :goto_5

    :cond_d
    move v9, v3

    :goto_5
    if-eqz v9, :cond_17

    const-string v9, ", color="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v7, v1, :cond_e

    if-eq v5, v1, :cond_e

    if-eq v8, v1, :cond_e

    move v3, v6

    :cond_e
    if-nez v3, :cond_f

    const-string v3, "NA"

    goto :goto_8

    :cond_f
    if-eq v7, v1, :cond_13

    const/4 v3, 0x6

    if-eq v7, v3, :cond_12

    if-eq v7, v6, :cond_11

    if-eq v7, v4, :cond_10

    const-string v3, "Undefined color space"

    goto :goto_6

    :cond_10
    const-string v3, "BT601"

    goto :goto_6

    :cond_11
    const-string v3, "BT709"

    goto :goto_6

    :cond_12
    const-string v3, "BT2020"

    goto :goto_6

    :cond_13
    const-string v3, "Unset color space"

    :goto_6
    if-eq v5, v1, :cond_16

    if-eq v5, v6, :cond_15

    if-eq v5, v4, :cond_14

    const-string v5, "Undefined color range"

    goto :goto_7

    :cond_14
    const-string v5, "Limited range"

    goto :goto_7

    :cond_15
    const-string v5, "Full range"

    goto :goto_7

    :cond_16
    const-string v5, "Unset color range"

    :goto_7
    invoke-static {v8}, Landroidx/media3/common/ColorInfo;->colorTransferToString(I)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v3, v5, v6}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "%s/%s/%s"

    invoke-static {v5, v3}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    iget v3, p0, Landroidx/media3/common/Format;->frameRate:F

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v5, v3, v5

    if-eqz v5, :cond_18

    const-string v5, ", fps="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_18
    iget v3, p0, Landroidx/media3/common/Format;->channelCount:I

    if-eq v3, v1, :cond_19

    const-string v5, ", channels="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_19
    iget v3, p0, Landroidx/media3/common/Format;->sampleRate:I

    if-eq v3, v1, :cond_1a

    const-string v1, ", sample_rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1a
    iget-object v1, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    if-eqz v1, :cond_1b

    const-string v3, ", language="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    iget-object v1, p0, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    if-eqz v1, :cond_1c

    const-string v3, ", label="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    const-string v1, "]"

    iget v3, p0, Landroidx/media3/common/Format;->selectionFlags:I

    if-eqz v3, :cond_22

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v6, v3, 0x4

    if-eqz v6, :cond_1d

    const-string v6, "auto"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    and-int/lit8 v6, v3, 0x1

    if-eqz v6, :cond_1e

    const-string v6, "default"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    and-int/2addr v3, v4

    if-eqz v3, :cond_1f

    const-string v3, "forced"

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    const-string v3, ", selectionFlags=["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_21

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v6, v5, Ljava/lang/CharSequence;

    if-eqz v6, :cond_20

    check-cast v5, Ljava/lang/CharSequence;

    goto :goto_a

    :cond_20
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_a
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_9

    :cond_21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_22
    :goto_b
    iget p0, p0, Landroidx/media3/common/Format;->roleFlags:I

    if-eqz p0, :cond_34

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v4, p0, 0x1

    if-eqz v4, :cond_23

    const-string v4, "main"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    and-int/lit8 v4, p0, 0x2

    if-eqz v4, :cond_24

    const-string v4, "alt"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24
    and-int/lit8 v4, p0, 0x4

    if-eqz v4, :cond_25

    const-string v4, "supplementary"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    and-int/lit8 v4, p0, 0x8

    if-eqz v4, :cond_26

    const-string v4, "commentary"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_26
    and-int/lit8 v4, p0, 0x10

    if-eqz v4, :cond_27

    const-string v4, "dub"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27
    and-int/lit8 v4, p0, 0x20

    if-eqz v4, :cond_28

    const-string v4, "emergency"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    and-int/lit8 v4, p0, 0x40

    if-eqz v4, :cond_29

    const-string v4, "caption"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    and-int/lit16 v4, p0, 0x80

    if-eqz v4, :cond_2a

    const-string v4, "subtitle"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2a
    and-int/lit16 v4, p0, 0x100

    if-eqz v4, :cond_2b

    const-string v4, "sign"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    and-int/lit16 v4, p0, 0x200

    if-eqz v4, :cond_2c

    const-string v4, "describes-video"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2c
    and-int/lit16 v4, p0, 0x400

    if-eqz v4, :cond_2d

    const-string v4, "describes-music"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d
    and-int/lit16 v4, p0, 0x800

    if-eqz v4, :cond_2e

    const-string v4, "enhanced-intelligibility"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e
    and-int/lit16 v4, p0, 0x1000

    if-eqz v4, :cond_2f

    const-string v4, "transcribes-dialog"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2f
    and-int/lit16 v4, p0, 0x2000

    if-eqz v4, :cond_30

    const-string v4, "easy-read"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_30
    and-int/lit16 p0, p0, 0x4000

    if-eqz p0, :cond_31

    const-string p0, "trick-play"

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    const-string p0, ", roleFlags=["

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v4, v3, Ljava/lang/CharSequence;

    if-eqz v4, :cond_32

    check-cast v3, Ljava/lang/CharSequence;

    goto :goto_d

    :cond_32
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_c

    :cond_33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :catch_2
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_34
    :goto_e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final buildUpon()Landroidx/media3/common/Format$Builder;
    .locals 1

    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0, p0}, Landroidx/media3/common/Format$Builder;-><init>(Landroidx/media3/common/Format;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    const-class v2, Landroidx/media3/common/Format;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    :cond_1
    check-cast p1, Landroidx/media3/common/Format;

    iget v2, p0, Landroidx/media3/common/Format;->hashCode:I

    if-eqz v2, :cond_2

    iget v3, p1, Landroidx/media3/common/Format;->hashCode:I

    if-eqz v3, :cond_2

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget v2, p0, Landroidx/media3/common/Format;->selectionFlags:I

    iget v3, p1, Landroidx/media3/common/Format;->selectionFlags:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->roleFlags:I

    iget v3, p1, Landroidx/media3/common/Format;->roleFlags:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->averageBitrate:I

    iget v3, p1, Landroidx/media3/common/Format;->averageBitrate:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->peakBitrate:I

    iget v3, p1, Landroidx/media3/common/Format;->peakBitrate:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->maxInputSize:I

    iget v3, p1, Landroidx/media3/common/Format;->maxInputSize:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    iget-wide v4, p1, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->width:I

    iget v3, p1, Landroidx/media3/common/Format;->width:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->height:I

    iget v3, p1, Landroidx/media3/common/Format;->height:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->rotationDegrees:I

    iget v3, p1, Landroidx/media3/common/Format;->rotationDegrees:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->stereoMode:I

    iget v3, p1, Landroidx/media3/common/Format;->stereoMode:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->channelCount:I

    iget v3, p1, Landroidx/media3/common/Format;->channelCount:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->sampleRate:I

    iget v3, p1, Landroidx/media3/common/Format;->sampleRate:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->pcmEncoding:I

    iget v3, p1, Landroidx/media3/common/Format;->pcmEncoding:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->encoderDelay:I

    iget v3, p1, Landroidx/media3/common/Format;->encoderDelay:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->encoderPadding:I

    iget v3, p1, Landroidx/media3/common/Format;->encoderPadding:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->accessibilityChannel:I

    iget v3, p1, Landroidx/media3/common/Format;->accessibilityChannel:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->tileCountHorizontal:I

    iget v3, p1, Landroidx/media3/common/Format;->tileCountHorizontal:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->tileCountVertical:I

    iget v3, p1, Landroidx/media3/common/Format;->tileCountVertical:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->cryptoType:I

    iget v3, p1, Landroidx/media3/common/Format;->cryptoType:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->frameRate:F

    iget v3, p1, Landroidx/media3/common/Format;->frameRate:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    iget v3, p1, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media3/common/Format;->projectionData:[B

    iget-object v3, p1, Landroidx/media3/common/Format;->projectionData:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    iget-object v3, p1, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    iget-object v3, p1, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    iget-object v3, p1, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, p1}, Landroidx/media3/common/Format;->initializationDataEquals(Landroidx/media3/common/Format;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public final getPixelCount()I
    .locals 2

    iget v0, p0, Landroidx/media3/common/Format;->width:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget p0, p0, Landroidx/media3/common/Format;->height:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    mul-int v1, v0, p0

    :cond_1
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Landroidx/media3/common/Format;->hashCode:I

    if-nez v0, :cond_7

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x20f

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget-object v1, p0, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget-object v1, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget v1, p0, Landroidx/media3/common/Format;->selectionFlags:I

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget v1, p0, Landroidx/media3/common/Format;->roleFlags:I

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget v1, p0, Landroidx/media3/common/Format;->averageBitrate:I

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget v1, p0, Landroidx/media3/common/Format;->peakBitrate:I

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget-object v1, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v0

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget-object v1, p0, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    if-nez v1, :cond_4

    move v1, v0

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Landroidx/media3/common/Metadata;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget-object v1, p0, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    if-nez v1, :cond_5

    move v1, v0

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget-object v1, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->maxInputSize:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-wide v0, p0, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    long-to-int v0, v0

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->width:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->height:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->frameRate:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/Format;->rotationDegrees:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->stereoMode:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->channelCount:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->sampleRate:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->pcmEncoding:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->encoderDelay:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->encoderPadding:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->accessibilityChannel:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->tileCountHorizontal:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->tileCountVertical:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->cryptoType:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media3/common/Format;->hashCode:I

    :cond_7
    iget p0, p0, Landroidx/media3/common/Format;->hashCode:I

    return p0
.end method

.method public final initializationDataEquals(Landroidx/media3/common/Format;)Z
    .locals 4

    iget-object p0, p0, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget-object v3, p1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Format("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/media3/common/Format;->bitrate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/media3/common/Format;->width:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/media3/common/Format;->height:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/media3/common/Format;->frameRate:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/media3/common/Format;->channelCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/media3/common/Format;->sampleRate:I

    const-string v1, "])"

    invoke-static {v0, p0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
