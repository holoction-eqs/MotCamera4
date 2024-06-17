.class public final Lcom/google/android/material/resources/TextAppearance$2;
.super Landroidx/emoji2/text/EmojiCompat$InitCallback;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/resources/TextAppearance;

.field public final synthetic val$callback:Landroidx/emoji2/text/EmojiCompat$InitCallback;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$textPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Lcom/google/android/material/resources/TextAppearance;Landroid/content/Context;Landroid/text/TextPaint;Landroidx/emoji2/text/EmojiCompat$InitCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/resources/TextAppearance$2;->this$0:Lcom/google/android/material/resources/TextAppearance;

    iput-object p2, p0, Lcom/google/android/material/resources/TextAppearance$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/material/resources/TextAppearance$2;->val$textPaint:Landroid/text/TextPaint;

    iput-object p4, p0, Lcom/google/android/material/resources/TextAppearance$2;->val$callback:Landroidx/emoji2/text/EmojiCompat$InitCallback;

    invoke-direct {p0}, Landroidx/emoji2/text/EmojiCompat$InitCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFontRetrievalFailed(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/resources/TextAppearance$2;->val$callback:Landroidx/emoji2/text/EmojiCompat$InitCallback;

    invoke-virtual {p0, p1}, Landroidx/emoji2/text/EmojiCompat$InitCallback;->onFontRetrievalFailed(I)V

    return-void
.end method

.method public final onFontRetrieved(Landroid/graphics/Typeface;Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/resources/TextAppearance$2;->val$textPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/material/resources/TextAppearance$2;->this$0:Lcom/google/android/material/resources/TextAppearance;

    iget-object v2, p0, Lcom/google/android/material/resources/TextAppearance$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v2, v0, p1}, Lcom/google/android/material/resources/TextAppearance;->updateTextPaintMeasureState(Landroid/content/Context;Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    iget-object p0, p0, Lcom/google/android/material/resources/TextAppearance$2;->val$callback:Landroidx/emoji2/text/EmojiCompat$InitCallback;

    invoke-virtual {p0, p1, p2}, Landroidx/emoji2/text/EmojiCompat$InitCallback;->onFontRetrieved(Landroid/graphics/Typeface;Z)V

    return-void
.end method
