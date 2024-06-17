.class public final Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$SkippingHelper19;
.super Lcom/adobe/xmp/XMPMetaFactory$1;
.source "SourceFile"


# instance fields
.field public final mHelperDelegate:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/adobe/xmp/XMPMetaFactory$1;-><init>(I)V

    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;

    invoke-direct {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$SkippingHelper19;->mHelperDelegate:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;

    return-void
.end method


# virtual methods
.method public final getFilters([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .locals 0

    sget-object p0, Landroidx/emoji2/text/EmojiCompat;->INSTANCE_LOCK:Ljava/lang/Object;

    return-object p1
.end method

.method public final isEnabled()Z
    .locals 0

    iget-object p0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$SkippingHelper19;->mHelperDelegate:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;

    iget-boolean p0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->mEnabled:Z

    return p0
.end method

.method public final setAllCaps(Z)V
    .locals 0

    sget-object p0, Landroidx/emoji2/text/EmojiCompat;->INSTANCE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public final setEnabled(Z)V
    .locals 1

    sget-object v0, Landroidx/emoji2/text/EmojiCompat;->INSTANCE_LOCK:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$SkippingHelper19;->mHelperDelegate:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;

    iput-boolean p1, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$HelperInternal19;->mEnabled:Z

    return-void
.end method

.method public final wrapTransformationMethod(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;
    .locals 0

    sget-object p0, Landroidx/emoji2/text/EmojiCompat;->INSTANCE_LOCK:Ljava/lang/Object;

    return-object p1
.end method
