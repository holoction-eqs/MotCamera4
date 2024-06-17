.class public final Lcom/google/zxing/client/result/URIParsedResult;
.super Landroidx/transition/ViewOverlayApi14;
.source "SourceFile"


# instance fields
.field public final title:Ljava/lang/String;

.field public final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->URI:Lcom/google/zxing/client/result/ParsedResultType;

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Landroidx/transition/ViewOverlayApi14;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_3

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/16 v2, 0x2f

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-gez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    :cond_0
    sub-int/2addr v2, v0

    sget-object v3, Lcom/google/zxing/client/result/ResultParser;->PARSERS:[Lcom/google/zxing/client/result/ResultParser;

    if-gtz v2, :cond_1

    goto :goto_0

    :cond_1
    add-int/2addr v2, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v2, :cond_2

    sget-object v3, Lcom/google/zxing/client/result/ResultParser;->DIGITS:Ljava/util/regex/Pattern;

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    :cond_3
    const-string v0, "http://"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    iput-object p1, p0, Lcom/google/zxing/client/result/URIParsedResult;->uri:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/zxing/client/result/URIParsedResult;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDisplayResult()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/google/zxing/client/result/URIParsedResult;->title:Ljava/lang/String;

    invoke-static {v1, v0}, Landroidx/transition/ViewOverlayApi14;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object p0, p0, Lcom/google/zxing/client/result/URIParsedResult;->uri:Ljava/lang/String;

    invoke-static {p0, v0}, Landroidx/transition/ViewOverlayApi14;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
