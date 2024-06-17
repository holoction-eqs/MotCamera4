.class public final Lcom/google/android/material/textview/MaterialTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    const v0, 0x1010084

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzme;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v2, 0x7f040513

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Lkotlin/UnsignedKt;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v4, Lcom/google/android/material/R$styleable;->MaterialTextView:[I

    invoke-virtual {v2, p2, v4, v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    const/4 v6, 0x2

    filled-new-array {v3, v6}, [I

    move-result-object v7

    const/4 v8, -0x1

    move v9, v1

    move v10, v8

    :goto_0
    if-ge v9, v6, :cond_0

    if-gez v10, :cond_0

    aget v10, v7, v9

    invoke-static {p1, v5, v10, v8}, Lkotlin/io/ExceptionsKt;->getDimensionPixelSize(Landroid/content/Context;Landroid/content/res/TypedArray;II)I

    move-result v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    if-eq v10, v8, :cond_1

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-nez v3, :cond_2

    invoke-virtual {v2, p2, v4, v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v1, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eq p2, v8, :cond_2

    invoke-virtual {p0, p2, v2}, Lcom/google/android/material/textview/MaterialTextView;->applyLineHeightFromViewAppearance(ILandroid/content/res/Resources$Theme;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final applyLineHeightFromViewAppearance(ILandroid/content/res/Resources$Theme;)V
    .locals 5

    sget-object v0, Lcom/google/android/material/R$styleable;->MaterialTextAppearance:[I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v4, v2

    :goto_0
    if-ge v3, v1, :cond_0

    if-gez v4, :cond_0

    aget v4, v0, v3

    invoke-static {p2, p1, v4, v2}, Lkotlin/io/ExceptionsKt;->getDimensionPixelSize(Landroid/content/Context;Landroid/content/res/TypedArray;II)I

    move-result v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-ltz v4, :cond_1

    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setLineHeight(I)V

    :cond_1
    return-void
.end method

.method public final setTextAppearance(Landroid/content/Context;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextAppearance(Landroid/content/Context;I)V

    const v0, 0x7f040513

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lkotlin/UnsignedKt;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/google/android/material/textview/MaterialTextView;->applyLineHeightFromViewAppearance(ILandroid/content/res/Resources$Theme;)V

    :cond_0
    return-void
.end method
