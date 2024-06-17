.class public final synthetic Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;
.implements Landroidx/media3/extractor/ExtractorsFactory;
.implements Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$OnClickListener;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createExtractors()[Landroidx/media3/extractor/Extractor;
    .locals 2

    const/4 p0, 0x1

    new-array p0, p0, [Landroidx/media3/extractor/Extractor;

    new-instance v0, Landroidx/media3/extractor/ts/PsExtractor;

    invoke-direct {v0}, Landroidx/media3/extractor/ts/PsExtractor;-><init>()V

    const/4 v1, 0x0

    aput-object v0, p0, v1

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public onClick(Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;)V
    .locals 0

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->dismiss()V

    return-void
.end method
