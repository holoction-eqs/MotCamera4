.class public final Landroidx/media3/extractor/mp4/SefReader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ASTERISK_SPLITTER:Lcom/google/common/base/Splitter;

.field public static final COLON_SPLITTER:Lcom/google/common/base/Splitter;


# instance fields
.field public final dataReferences:Ljava/util/ArrayList;

.field public readerState:I

.field public tailLength:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/common/base/CharMatcher$Is;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Lcom/google/common/base/CharMatcher$Is;-><init>(C)V

    new-instance v1, Lcom/google/common/base/Splitter;

    new-instance v2, Lcom/google/common/base/Splitter$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/google/common/base/Splitter$1;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v1, v2}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$1;)V

    sput-object v1, Landroidx/media3/extractor/mp4/SefReader;->COLON_SPLITTER:Lcom/google/common/base/Splitter;

    new-instance v0, Lcom/google/common/base/CharMatcher$Is;

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Lcom/google/common/base/CharMatcher$Is;-><init>(C)V

    new-instance v1, Lcom/google/common/base/Splitter;

    new-instance v2, Lcom/google/common/base/Splitter$1;

    invoke-direct {v2, v0, v3}, Lcom/google/common/base/Splitter$1;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v1, v2}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$1;)V

    sput-object v1, Landroidx/media3/extractor/mp4/SefReader;->ASTERISK_SPLITTER:Lcom/google/common/base/Splitter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/SefReader;->dataReferences:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/mp4/SefReader;->readerState:I

    return-void
.end method
