.class public final Landroidx/media3/extractor/GaplessInfoHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final GAPLESS_COMMENT_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public encoderDelay:I

.field public encoderPadding:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/GaplessInfoHolder;->GAPLESS_COMMENT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/extractor/GaplessInfoHolder;->encoderDelay:I

    iput v0, p0, Landroidx/media3/extractor/GaplessInfoHolder;->encoderPadding:I

    return-void
.end method


# virtual methods
.method public final setFromComment(Ljava/lang/String;)Z
    .locals 4

    sget-object v0, Landroidx/media3/extractor/GaplessInfoHolder;->GAPLESS_COMMENT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    if-gtz v1, :cond_0

    if-lez p1, :cond_1

    :cond_0
    iput v1, p0, Landroidx/media3/extractor/GaplessInfoHolder;->encoderDelay:I

    iput p1, p0, Landroidx/media3/extractor/GaplessInfoHolder;->encoderPadding:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final setFromMetadata(Landroidx/media3/common/Metadata;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Landroidx/media3/common/Metadata;->entries:[Landroidx/media3/common/Metadata$Entry;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v1, v1, v0

    instance-of v2, v1, Landroidx/media3/extractor/metadata/id3/CommentFrame;

    const-string v3, "iTunSMPB"

    if-eqz v2, :cond_0

    check-cast v1, Landroidx/media3/extractor/metadata/id3/CommentFrame;

    iget-object v2, v1, Landroidx/media3/extractor/metadata/id3/CommentFrame;->description:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, v1, Landroidx/media3/extractor/metadata/id3/CommentFrame;->text:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroidx/media3/extractor/GaplessInfoHolder;->setFromComment(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_0
    instance-of v2, v1, Landroidx/media3/extractor/metadata/id3/InternalFrame;

    if-eqz v2, :cond_1

    check-cast v1, Landroidx/media3/extractor/metadata/id3/InternalFrame;

    iget-object v2, v1, Landroidx/media3/extractor/metadata/id3/InternalFrame;->domain:Ljava/lang/String;

    const-string v4, "com.apple.iTunes"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Landroidx/media3/extractor/metadata/id3/InternalFrame;->description:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, v1, Landroidx/media3/extractor/metadata/id3/InternalFrame;->text:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroidx/media3/extractor/GaplessInfoHolder;->setFromComment(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
