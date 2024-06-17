.class public final Lcom/google/android/material/resources/CancelableFontCallback;
.super Landroidx/emoji2/text/EmojiCompat$InitCallback;
.source "SourceFile"


# instance fields
.field public final applyFont:Lcom/google/common/base/Splitter$1;

.field public cancelled:Z

.field public final fallbackFont:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Lcom/google/common/base/Splitter$1;Landroid/graphics/Typeface;)V
    .locals 0

    invoke-direct {p0}, Landroidx/emoji2/text/EmojiCompat$InitCallback;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/resources/CancelableFontCallback;->fallbackFont:Landroid/graphics/Typeface;

    iput-object p1, p0, Lcom/google/android/material/resources/CancelableFontCallback;->applyFont:Lcom/google/common/base/Splitter$1;

    return-void
.end method


# virtual methods
.method public final onFontRetrievalFailed(I)V
    .locals 0

    iget-boolean p1, p0, Lcom/google/android/material/resources/CancelableFontCallback;->cancelled:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/resources/CancelableFontCallback;->applyFont:Lcom/google/common/base/Splitter$1;

    iget-object p1, p1, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/internal/CollapsingTextHelper;

    iget-object p0, p0, Lcom/google/android/material/resources/CancelableFontCallback;->fallbackFont:Landroid/graphics/Typeface;

    invoke-virtual {p1, p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTypefaceInternal(Landroid/graphics/Typeface;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate(Z)V

    :cond_0
    return-void
.end method

.method public final onFontRetrieved(Landroid/graphics/Typeface;Z)V
    .locals 0

    iget-boolean p2, p0, Lcom/google/android/material/resources/CancelableFontCallback;->cancelled:Z

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/google/android/material/resources/CancelableFontCallback;->applyFont:Lcom/google/common/base/Splitter$1;

    iget-object p0, p0, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTypefaceInternal(Landroid/graphics/Typeface;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate(Z)V

    :cond_0
    return-void
.end method
