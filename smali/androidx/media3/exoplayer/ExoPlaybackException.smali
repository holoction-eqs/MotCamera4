.class public final Landroidx/media3/exoplayer/ExoPlaybackException;
.super Landroidx/media3/common/PlaybackException;
.source "SourceFile"


# instance fields
.field public final isRecoverable:Z

.field public final mediaPeriodId:Landroidx/media3/common/MediaPeriodId;

.field public final rendererFormat:Landroidx/media3/common/Format;

.field public final rendererFormatSupport:I

.field public final rendererIndex:I

.field public final rendererName:Ljava/lang/String;

.field public final type:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3e9

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    const/16 v0, 0x3ea

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    const/16 v0, 0x3eb

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    const/16 v0, 0x3ec

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    const/16 v0, 0x3ed

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    const/16 v0, 0x3ee

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;I)V
    .locals 9

    .line 1
    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/ExoPlaybackException;-><init>(ILjava/lang/Throwable;ILjava/lang/String;ILandroidx/media3/common/Format;IZ)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;ILjava/lang/String;ILandroidx/media3/common/Format;IZ)V
    .locals 13

    move v4, p1

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    if-eq v4, v0, :cond_1

    const/4 v0, 0x3

    if-eq v4, v0, :cond_0

    const-string v0, "Unexpected runtime error"

    goto :goto_0

    :cond_0
    const-string v0, "Remote error"

    :goto_0
    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    goto :goto_1

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, p4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error, index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p6

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", format_supported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p7 .. p7}, Landroidx/media3/common/util/Util;->getFormatSupportString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    const-string v0, "Source error"

    :goto_1
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ": null"

    .line 3
    invoke-static {v0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    move-object v1, v0

    const/4 v9, 0x0

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object v0, p0

    move-object v2, p2

    move/from16 v3, p3

    move v4, p1

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v12, p8

    invoke-direct/range {v0 .. v12}, Landroidx/media3/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILandroidx/media3/common/Format;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILandroidx/media3/common/Format;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZ)V
    .locals 9

    .line 15
    move-object v6, p0

    move v7, p4

    move/from16 v8, p12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide/from16 v4, p10

    invoke-direct/range {v0 .. v5}, Landroidx/media3/common/PlaybackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IJ)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz v8, :cond_1

    if-ne v7, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    invoke-static {v2}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    if-nez p2, :cond_2

    const/4 v2, 0x3

    if-ne v7, v2, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    iput v7, v6, Landroidx/media3/exoplayer/ExoPlaybackException;->type:I

    move-object v0, p5

    iput-object v0, v6, Landroidx/media3/exoplayer/ExoPlaybackException;->rendererName:Ljava/lang/String;

    move v0, p6

    iput v0, v6, Landroidx/media3/exoplayer/ExoPlaybackException;->rendererIndex:I

    move-object/from16 v0, p7

    iput-object v0, v6, Landroidx/media3/exoplayer/ExoPlaybackException;->rendererFormat:Landroidx/media3/common/Format;

    move/from16 v0, p8

    iput v0, v6, Landroidx/media3/exoplayer/ExoPlaybackException;->rendererFormatSupport:I

    move-object/from16 v0, p9

    iput-object v0, v6, Landroidx/media3/exoplayer/ExoPlaybackException;->mediaPeriodId:Landroidx/media3/common/MediaPeriodId;

    iput-boolean v8, v6, Landroidx/media3/exoplayer/ExoPlaybackException;->isRecoverable:Z

    return-void
.end method


# virtual methods
.method public final copyWithMediaPeriodId(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/ExoPlaybackException;
    .locals 14

    new-instance v13, Landroidx/media3/exoplayer/ExoPlaybackException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    iget v3, p0, Landroidx/media3/common/PlaybackException;->errorCode:I

    iget v4, p0, Landroidx/media3/exoplayer/ExoPlaybackException;->type:I

    iget-object v5, p0, Landroidx/media3/exoplayer/ExoPlaybackException;->rendererName:Ljava/lang/String;

    iget v6, p0, Landroidx/media3/exoplayer/ExoPlaybackException;->rendererIndex:I

    iget-object v7, p0, Landroidx/media3/exoplayer/ExoPlaybackException;->rendererFormat:Landroidx/media3/common/Format;

    iget v8, p0, Landroidx/media3/exoplayer/ExoPlaybackException;->rendererFormatSupport:I

    iget-wide v10, p0, Landroidx/media3/common/PlaybackException;->timestampMs:J

    iget-boolean v12, p0, Landroidx/media3/exoplayer/ExoPlaybackException;->isRecoverable:Z

    move-object v0, v13

    move-object v9, p1

    invoke-direct/range {v0 .. v12}, Landroidx/media3/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILandroidx/media3/common/Format;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZ)V

    return-object v13
.end method
