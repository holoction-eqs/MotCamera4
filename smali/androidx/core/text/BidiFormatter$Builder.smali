.class public final Landroidx/core/text/BidiFormatter$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mFlags:I

.field public mIsRtlContext:Z

.field public mTextDirectionHeuristicCompat:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ZI)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Ljava/lang/Object;

    iput p3, p0, Landroidx/core/text/BidiFormatter$Builder;->mFlags:I

    iput-boolean p2, p0, Landroidx/core/text/BidiFormatter$Builder;->mIsRtlContext:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 2
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Landroidx/core/text/BidiFormatter$Builder;-><init>(Ljava/lang/Object;ZI)V

    return-void
.end method


# virtual methods
.method public final record(Landroid/os/Bundle;Landroidx/work/impl/StartStopTokens;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroidx/work/impl/StartStopTokens;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroidx/core/text/BidiFormatter$Builder;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    return-void
.end method

.method public final record(Landroid/os/Bundle;Ljava/lang/Integer;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :cond_0
    iget-boolean v1, p0, Landroidx/core/text/BidiFormatter$Builder;->mIsRtlContext:Z

    if-nez v1, :cond_2

    if-eqz p2, :cond_1

    .line 2
    iget v1, p0, Landroidx/core/text/BidiFormatter$Builder;->mFlags:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-nez v0, :cond_3

    .line 3
    :cond_2
    iget-object p0, p0, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    return-void
.end method

.method public final bridge synthetic record(Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 0

    .line 4
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Landroidx/core/text/BidiFormatter$Builder;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    return-void
.end method
