.class public final Lcom/google/android/material/resources/TextAppearance$1;
.super L_COROUTINE/_BOUNDARY;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/resources/TextAppearance;

.field public final synthetic val$callback:Landroidx/emoji2/text/EmojiCompat$InitCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/material/resources/TextAppearance;Landroidx/emoji2/text/EmojiCompat$InitCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/resources/TextAppearance$1;->this$0:Lcom/google/android/material/resources/TextAppearance;

    iput-object p2, p0, Lcom/google/android/material/resources/TextAppearance$1;->val$callback:Landroidx/emoji2/text/EmojiCompat$InitCallback;

    invoke-direct {p0}, L_COROUTINE/_BOUNDARY;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFontRetrievalFailed(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/resources/TextAppearance$1;->this$0:Lcom/google/android/material/resources/TextAppearance;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/material/resources/TextAppearance;->fontResolved:Z

    iget-object p0, p0, Lcom/google/android/material/resources/TextAppearance$1;->val$callback:Landroidx/emoji2/text/EmojiCompat$InitCallback;

    invoke-virtual {p0, p1}, Landroidx/emoji2/text/EmojiCompat$InitCallback;->onFontRetrievalFailed(I)V

    return-void
.end method

.method public final onFontRetrieved(Landroid/graphics/Typeface;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/resources/TextAppearance$1;->this$0:Lcom/google/android/material/resources/TextAppearance;

    iget v1, v0, Lcom/google/android/material/resources/TextAppearance;->textStyle:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/google/android/material/resources/TextAppearance;->fontResolved:Z

    iget-object p1, v0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/google/android/material/resources/TextAppearance$1;->val$callback:Landroidx/emoji2/text/EmojiCompat$InitCallback;

    invoke-virtual {p0, p1, v0}, Landroidx/emoji2/text/EmojiCompat$InitCallback;->onFontRetrieved(Landroid/graphics/Typeface;Z)V

    return-void
.end method
