.class public final Landroidx/media3/extractor/text/ttml/TextEmphasis;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MARK_FILL_VALUES:Lcom/google/common/collect/ImmutableSet;

.field public static final MARK_SHAPE_VALUES:Lcom/google/common/collect/ImmutableSet;

.field public static final POSITION_VALUES:Lcom/google/common/collect/ImmutableSet;

.field public static final SINGLE_STYLE_VALUES:Lcom/google/common/collect/ImmutableSet;

.field public static final WHITESPACE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public final markFill:I

.field public final markShape:I

.field public final position:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/text/ttml/TextEmphasis;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "auto"

    const-string v1, "none"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/google/common/collect/ImmutableSet;->construct(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/text/ttml/TextEmphasis;->SINGLE_STYLE_VALUES:Lcom/google/common/collect/ImmutableSet;

    const-string v0, "dot"

    const-string v2, "sesame"

    const-string v3, "circle"

    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {v2, v0}, Lcom/google/common/collect/ImmutableSet;->construct(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/text/ttml/TextEmphasis;->MARK_SHAPE_VALUES:Lcom/google/common/collect/ImmutableSet;

    const-string v0, "filled"

    const-string v3, "open"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/common/collect/ImmutableSet;->construct(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/text/ttml/TextEmphasis;->MARK_FILL_VALUES:Lcom/google/common/collect/ImmutableSet;

    const-string v0, "after"

    const-string v1, "before"

    const-string v3, "outside"

    filled-new-array {v0, v1, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/common/collect/ImmutableSet;->construct(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/text/ttml/TextEmphasis;->POSITION_VALUES:Lcom/google/common/collect/ImmutableSet;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/extractor/text/ttml/TextEmphasis;->markShape:I

    iput p2, p0, Landroidx/media3/extractor/text/ttml/TextEmphasis;->markFill:I

    iput p3, p0, Landroidx/media3/extractor/text/ttml/TextEmphasis;->position:I

    return-void
.end method
