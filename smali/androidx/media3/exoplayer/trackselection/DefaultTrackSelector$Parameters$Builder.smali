.class public final Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;
.super Landroidx/media3/common/TrackSelectionParameters$Builder;
.source "SourceFile"


# instance fields
.field public allowAudioMixedChannelCountAdaptiveness:Z

.field public allowAudioMixedDecoderSupportAdaptiveness:Z

.field public allowAudioMixedMimeTypeAdaptiveness:Z

.field public allowAudioMixedSampleRateAdaptiveness:Z

.field public allowInvalidateSelectionsOnRendererCapabilitiesChange:Z

.field public allowMultipleAdaptiveSelections:Z

.field public allowVideoMixedDecoderSupportAdaptiveness:Z

.field public allowVideoMixedMimeTypeAdaptiveness:Z

.field public allowVideoNonSeamlessAdaptiveness:Z

.field public constrainAudioChannelCountToDeviceCapabilities:Z

.field public exceedAudioConstraintsIfNecessary:Z

.field public exceedRendererCapabilitiesIfNecessary:Z

.field public exceedVideoConstraintsIfNecessary:Z

.field public final rendererDisabledFlags:Landroid/util/SparseBooleanArray;

.field public final selectionOverrides:Landroid/util/SparseArray;

.field public tunnelingEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/media3/common/TrackSelectionParameters$Builder;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->selectionOverrides:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroidx/media3/common/TrackSelectionParameters$Builder;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettings(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setViewportSizeToPhysicalDisplaySize(Landroid/content/Context;)V

    .line 3
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->selectionOverrides:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->init()V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V
    .locals 5

    .line 4
    invoke-direct {p0, p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;-><init>(Landroidx/media3/common/TrackSelectionParameters;)V

    iget-boolean v0, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->exceedVideoConstraintsIfNecessary:Z

    iget-boolean v0, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedMimeTypeAdaptiveness:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->allowVideoMixedMimeTypeAdaptiveness:Z

    iget-boolean v0, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowVideoNonSeamlessAdaptiveness:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->allowVideoNonSeamlessAdaptiveness:Z

    iget-boolean v0, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedDecoderSupportAdaptiveness:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->allowVideoMixedDecoderSupportAdaptiveness:Z

    iget-boolean v0, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedAudioConstraintsIfNecessary:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->exceedAudioConstraintsIfNecessary:Z

    iget-boolean v0, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedMimeTypeAdaptiveness:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->allowAudioMixedMimeTypeAdaptiveness:Z

    iget-boolean v0, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedSampleRateAdaptiveness:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->allowAudioMixedSampleRateAdaptiveness:Z

    iget-boolean v0, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedChannelCountAdaptiveness:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->allowAudioMixedChannelCountAdaptiveness:Z

    iget-boolean v0, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedDecoderSupportAdaptiveness:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->allowAudioMixedDecoderSupportAdaptiveness:Z

    iget-boolean v0, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->constrainAudioChannelCountToDeviceCapabilities:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->constrainAudioChannelCountToDeviceCapabilities:Z

    iget-boolean v0, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->exceedRendererCapabilitiesIfNecessary:Z

    iget-boolean v0, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->tunnelingEnabled:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->tunnelingEnabled:Z

    iget-boolean v0, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowMultipleAdaptiveSelections:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->allowMultipleAdaptiveSelections:Z

    iget-boolean v0, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowInvalidateSelectionsOnRendererCapabilitiesChange:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->allowInvalidateSelectionsOnRendererCapabilitiesChange:Z

    .line 5
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    new-instance v4, Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-direct {v4, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iput-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->selectionOverrides:Landroid/util/SparseArray;

    iget-object p1, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method public final clearOverridesOfType(I)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->clearOverridesOfType(I)V

    return-void
.end method

.method public final init()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->exceedVideoConstraintsIfNecessary:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->allowVideoMixedMimeTypeAdaptiveness:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->allowVideoNonSeamlessAdaptiveness:Z

    iput-boolean v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->allowVideoMixedDecoderSupportAdaptiveness:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->exceedAudioConstraintsIfNecessary:Z

    iput-boolean v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->allowAudioMixedMimeTypeAdaptiveness:Z

    iput-boolean v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->allowAudioMixedSampleRateAdaptiveness:Z

    iput-boolean v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->allowAudioMixedChannelCountAdaptiveness:Z

    iput-boolean v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->allowAudioMixedDecoderSupportAdaptiveness:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->constrainAudioChannelCountToDeviceCapabilities:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->exceedRendererCapabilitiesIfNecessary:Z

    iput-boolean v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->tunnelingEnabled:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->allowMultipleAdaptiveSelections:Z

    iput-boolean v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->allowInvalidateSelectionsOnRendererCapabilitiesChange:Z

    return-void
.end method

.method public final setOverrideForType(Landroidx/media3/common/TrackSelectionOverride;)V
    .locals 2

    iget-object v0, p1, Landroidx/media3/common/TrackSelectionOverride;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    iget v1, v0, Landroidx/media3/common/TrackGroup;->type:I

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->clearOverridesOfType(I)V

    iget-object p0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->overrides:Ljava/util/HashMap;

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettings(Landroid/content/Context;)V
    .locals 2

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_3

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "captioning"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/CaptioningManager;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x440

    iput v1, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->preferredTextRoleFlags:I

    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object p1

    if-eqz p1, :cond_3

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    :cond_3
    :goto_1
    return-void
.end method

.method public final setTrackTypeDisabled(I)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->disabledTrackTypes:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setViewportSize(II)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setViewportSize(II)Landroidx/media3/common/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public final setViewportSizeToPhysicalDisplaySize(Landroid/content/Context;)V
    .locals 12

    const-string v0, "Util"

    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x11

    if-lt v1, v4, :cond_0

    const-string v5, "display"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/display/DisplayManager;

    if-eqz v5, :cond_0

    invoke-virtual {v5, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v2

    :goto_0
    if-nez v5, :cond_1

    const-string v5, "window"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    :cond_1
    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    move-result v6

    if-nez v6, :cond_5

    invoke-static {p1}, Landroidx/media3/common/util/Util;->isTv(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x1c

    if-ge v1, v6, :cond_2

    const-string v6, "sys.display-size"

    goto :goto_1

    :cond_2
    const-string v6, "vendor.display-size"

    :goto_1
    const/4 v7, 0x1

    :try_start_0
    const-string v8, "android.os.SystemProperties"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const-string v9, "get"

    new-array v10, v7, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v3

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v8

    goto :goto_2

    :catch_0
    move-exception v8

    const-string v9, "Failed to read system property "

    invoke-virtual {v9, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v8}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v8, "x"

    const/4 v9, -0x1

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    array-length v8, v6

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    aget-object v3, v6, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-lez v3, :cond_3

    if-lez v6, :cond_3

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v3, v6}, Landroid/graphics/Point;-><init>(II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Invalid display size: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v0, "Sony"

    sget-object v2, Landroidx/media3/common/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Landroidx/media3/common/util/Util;->MODEL:Ljava/lang/String;

    const-string v2, "BRAVIA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "com.sony.dtv.hardware.panel.qfhd"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance v7, Landroid/graphics/Point;

    const/16 p1, 0xf00

    const/16 v0, 0x870

    invoke-direct {v7, p1, v0}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_3

    :cond_5
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    const/16 p1, 0x17

    if-lt v1, p1, :cond_6

    invoke-virtual {v5}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v0

    iput v0, v7, Landroid/graphics/Point;->x:I

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result p1

    iput p1, v7, Landroid/graphics/Point;->y:I

    goto :goto_3

    :cond_6
    if-lt v1, v4, :cond_7

    invoke-virtual {v5, v7}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v5, v7}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    :goto_3
    iget p1, v7, Landroid/graphics/Point;->x:I

    iget v0, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1, v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setViewportSize(II)Landroidx/media3/common/TrackSelectionParameters$Builder;

    return-void
.end method
