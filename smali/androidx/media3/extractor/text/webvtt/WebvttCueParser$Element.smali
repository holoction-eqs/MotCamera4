.class public final Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BY_START_POSITION_ASC:Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;


# instance fields
.field public final endPosition:I

.field public final startTag:Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;->BY_START_POSITION_ASC:Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;->startTag:Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;

    iput p2, p0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;->endPosition:I

    return-void
.end method
