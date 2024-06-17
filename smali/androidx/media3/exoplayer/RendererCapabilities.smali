.class public interface abstract Landroidx/media3/exoplayer/RendererCapabilities;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static create(I)I
    .locals 0

    or-int/lit8 p0, p0, 0x0

    or-int/lit8 p0, p0, 0x0

    or-int/lit8 p0, p0, 0x0

    or-int/lit16 p0, p0, 0x80

    return p0
.end method

.method public static getDecoderSupport(I)I
    .locals 0

    and-int/lit16 p0, p0, 0x180

    return p0
.end method

.method public static getHardwareAccelerationSupport(I)I
    .locals 0

    and-int/lit8 p0, p0, 0x40

    return p0
.end method


# virtual methods
.method public clearListener()V
    .locals 0

    return-void
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getTrackType()I
.end method

.method public setListener()V
    .locals 0

    return-void
.end method

.method public abstract supportsFormat(Landroidx/media3/common/Format;)I
.end method

.method public abstract supportsMixedMimeTypeAdaptation()I
.end method
