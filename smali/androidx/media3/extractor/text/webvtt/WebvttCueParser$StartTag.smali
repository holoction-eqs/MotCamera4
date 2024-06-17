.class public final Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final classes:Ljava/util/Set;

.field public final name:Ljava/lang/String;

.field public final position:I

.field public final voice:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->position:I

    iput-object p2, p0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->name:Ljava/lang/String;

    iput-object p3, p0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->voice:Ljava/lang/String;

    iput-object p4, p0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->classes:Ljava/util/Set;

    return-void
.end method
