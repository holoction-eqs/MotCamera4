.class public final Landroidx/media3/extractor/mkv/DefaultEbmlReader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public elementContentSize:J

.field public elementId:I

.field public elementState:I

.field public final masterElementsStack:Ljava/util/ArrayDeque;

.field public processor:Landroidx/appcompat/widget/Toolbar$1;

.field public final scratch:[B

.field public final varintReader:Landroidx/media3/extractor/mkv/VarintReader;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->scratch:[B

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/ArrayDeque;

    new-instance v0, Landroidx/media3/extractor/mkv/VarintReader;

    invoke-direct {v0}, Landroidx/media3/extractor/mkv/VarintReader;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->varintReader:Landroidx/media3/extractor/mkv/VarintReader;

    return-void
.end method
