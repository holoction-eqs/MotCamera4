.class public final Landroidx/emoji2/viewsintegration/EmojiInputConnection;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "SourceFile"


# instance fields
.field public final mEmojiCompatDeleteHelper:Lkotlin/UByte$Companion;

.field public final mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Landroid/view/inputmethod/InputConnection;)V
    .locals 2

    new-instance v0, Lkotlin/UByte$Companion;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lkotlin/UByte$Companion;-><init>(I)V

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    iput-object p1, p0, Landroidx/emoji2/viewsintegration/EmojiInputConnection;->mTextView:Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiInputConnection;->mEmojiCompatDeleteHelper:Lkotlin/UByte$Companion;

    sget-object p0, Landroidx/emoji2/text/EmojiCompat;->INSTANCE_LOCK:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final deleteSurroundingText(II)Z
    .locals 2

    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Landroidx/emoji2/viewsintegration/EmojiInputConnection;->mEmojiCompatDeleteHelper:Lkotlin/UByte$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Lkotlin/UByte$Companion;->handleDeleteSurroundingText(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingText(II)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final deleteSurroundingTextInCodePoints(II)Z
    .locals 2

    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Landroidx/emoji2/viewsintegration/EmojiInputConnection;->mEmojiCompatDeleteHelper:Lkotlin/UByte$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, p2, v1}, Lkotlin/UByte$Companion;->handleDeleteSurroundingText(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingTextInCodePoints(II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method
