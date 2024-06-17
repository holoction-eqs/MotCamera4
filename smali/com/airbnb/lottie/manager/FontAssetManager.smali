.class public final Lcom/airbnb/lottie/manager/FontAssetManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public assetManager:Ljava/lang/Object;

.field public defaultFontFileExtension:Ljava/lang/Object;

.field public delegate:Ljava/lang/Object;

.field public fontFamilies:Ljava/lang/Object;

.field public fontMap:Ljava/lang/Object;

.field public tempPair:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f080048

    const v0, 0x7f080094

    const v1, 0x7f080092

    filled-new-array {v0, v1, p1}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->tempPair:Ljava/lang/Object;

    const/4 p1, 0x7

    new-array v0, p1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->fontMap:Ljava/lang/Object;

    new-array p1, p1, [I

    fill-array-data p1, :array_1

    iput-object p1, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->fontFamilies:Ljava/lang/Object;

    const p1, 0x7f080078

    const v0, 0x7f080079

    const v1, 0x7f080057

    filled-new-array {v0, v1, p1}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->assetManager:Ljava/lang/Object;

    const p1, 0x7f08008b

    const v0, 0x7f080095

    filled-new-array {p1, v0}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->delegate:Ljava/lang/Object;

    const p1, 0x7f08004b

    const v0, 0x7f080051

    const v1, 0x7f08004c

    const v2, 0x7f080052

    filled-new-array {p1, v0, v1, v2}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->defaultFontFileExtension:Ljava/lang/Object;

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    :array_0
    .array-data 4
        0x7f080060
        0x7f080083
        0x7f080067
        0x7f080062
        0x7f080063
        0x7f080066
        0x7f080065
    .end array-data

    :array_1
    .array-data 4
        0x7f080091
        0x7f080093
        0x7f080059
        0x7f08008d
        0x7f08008e
        0x7f08008f
        0x7f080090
    .end array-data
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/airbnb/lottie/model/MutablePair;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/airbnb/lottie/model/MutablePair;-><init>(II)V

    iput-object v0, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->tempPair:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->fontMap:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->fontFamilies:Ljava/lang/Object;

    const-string v0, ".ttf"

    iput-object v0, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->defaultFontFileExtension:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->delegate:Ljava/lang/Object;

    instance-of v1, p1, Landroid/view/View;

    if-nez v1, :cond_0

    const-string p1, "LottieDrawable must be inside of a view for images to work."

    invoke-static {p1}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->assetManager:Ljava/lang/Object;

    return-void

    :cond_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->assetManager:Ljava/lang/Object;

    return-void
.end method

.method public static arrayContains([II)Z
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static bottom(Lcom/google/android/material/color/utilities/QuantizerWu$Box;I[I)I
    .locals 3

    if-eqz p1, :cond_3

    add-int/lit8 v0, p1, -0x1

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget p1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    invoke-static {p1, v0, v1}, Lcom/airbnb/lottie/manager/FontAssetManager;->getIndex(III)I

    move-result p1

    aget p1, p2, p1

    neg-int p1, p1

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    invoke-static {v0, v1, v2}, Lcom/airbnb/lottie/manager/FontAssetManager;->getIndex(III)I

    move-result v0

    aget v0, p2, v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    invoke-static {v0, v1, v2}, Lcom/airbnb/lottie/manager/FontAssetManager;->getIndex(III)I

    move-result v0

    aget v0, p2, v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget p0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    invoke-static {v0, v1, p0}, Lcom/airbnb/lottie/manager/FontAssetManager;->getIndex(III)I

    move-result p0

    aget p0, p2, p0

    :goto_0
    sub-int/2addr p1, p0

    return p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->stringValueOf$3(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "unexpected direction "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget p1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    invoke-static {p1, v0, v1}, Lcom/airbnb/lottie/manager/FontAssetManager;->getIndex(III)I

    move-result p1

    aget p1, p2, p1

    neg-int p1, p1

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    invoke-static {v0, v1, v2}, Lcom/airbnb/lottie/manager/FontAssetManager;->getIndex(III)I

    move-result v0

    aget v0, p2, v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    invoke-static {v0, v1, v2}, Lcom/airbnb/lottie/manager/FontAssetManager;->getIndex(III)I

    move-result v0

    aget v0, p2, v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget p0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    invoke-static {v0, v1, p0}, Lcom/airbnb/lottie/manager/FontAssetManager;->getIndex(III)I

    move-result p0

    aget p0, p2, p0

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    invoke-static {p1, v0, v1}, Lcom/airbnb/lottie/manager/FontAssetManager;->getIndex(III)I

    move-result p1

    aget p1, p2, p1

    neg-int p1, p1

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    invoke-static {v0, v1, v2}, Lcom/airbnb/lottie/manager/FontAssetManager;->getIndex(III)I

    move-result v0

    aget v0, p2, v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    invoke-static {v0, v1, v2}, Lcom/airbnb/lottie/manager/FontAssetManager;->getIndex(III)I

    move-result v0

    aget v0, p2, v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget p0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    invoke-static {v0, v1, p0}, Lcom/airbnb/lottie/manager/FontAssetManager;->getIndex(III)I

    move-result p0

    aget p0, p2, p0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    throw p0
.end method

.method public static createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [[I

    const v1, 0x7f040108

    invoke-static {p0, v1}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v1

    const v2, 0x7f040105

    invoke-static {p0, v2}, Landroidx/appcompat/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result p0

    sget-object v2, Landroidx/appcompat/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    const/4 v3, 0x0

    aput-object v2, v0, v3

    sget-object v2, Landroidx/appcompat/widget/ThemeUtils;->PRESSED_STATE_SET:[I

    const/4 v3, 0x1

    aput-object v2, v0, v3

    invoke-static {v1, p1}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result v2

    sget-object v3, Landroidx/appcompat/widget/ThemeUtils;->FOCUSED_STATE_SET:[I

    const/4 v4, 0x2

    aput-object v3, v0, v4

    invoke-static {v1, p1}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result v1

    sget-object v3, Landroidx/appcompat/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    const/4 v4, 0x3

    aput-object v3, v0, v4

    filled-new-array {p0, v2, v1, p1}, [I

    move-result-object p0

    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, v0, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p1
.end method

.method public static getIndex(III)I
    .locals 2

    shl-int/lit8 v0, p0, 0xa

    shl-int/lit8 v1, p0, 0x6

    add-int/2addr v0, v1

    add-int/2addr v0, p0

    shl-int/lit8 p0, p1, 0x5

    add-int/2addr v0, p0

    add-int/2addr v0, p1

    add-int/2addr v0, p2

    return v0
.end method

.method public static getRatingBarLayerDrawable(Landroidx/appcompat/widget/ResourceManagerInternal;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    const v0, 0x7f080087

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, 0x7f080088

    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of p1, v0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    if-ne p1, p2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    if-ne p1, p2, :cond_0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1, v1, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object p1, v2

    :goto_0
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    instance-of v2, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-ne v2, p2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-ne v2, p2, :cond_1

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_1

    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1, v1, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :goto_1
    new-instance p2, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v2, v1

    const/4 v0, 0x1

    aput-object p0, v2, v0

    const/4 p0, 0x2

    aput-object p1, v2, p0

    invoke-direct {p2, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/high16 p1, 0x1020000

    invoke-virtual {p2, v1, p1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    const p1, 0x102000f

    invoke-virtual {p2, v0, p1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    const p1, 0x102000d

    invoke-virtual {p2, p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    return-object p2
.end method

.method public static setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1

    sget-object v0, Landroidx/appcompat/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p2, :cond_0

    sget-object p2, Landroidx/appcompat/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    :cond_0
    invoke-static {p1, p2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public static top(Lcom/google/android/material/color/utilities/QuantizerWu$Box;II[I)I
    .locals 2

    if-eqz p1, :cond_3

    add-int/lit8 v0, p1, -0x1

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget p1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    invoke-static {p1, v0, p2}, Lcom/airbnb/lottie/manager/FontAssetManager;->getIndex(III)I

    move-result p1

    aget p1, p3, p1

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    invoke-static {v0, v1, p2}, Lcom/airbnb/lottie/manager/FontAssetManager;->getIndex(III)I

    move-result v0

    aget v0, p3, v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    invoke-static {v0, v1, p2}, Lcom/airbnb/lottie/manager/FontAssetManager;->getIndex(III)I

    move-result v0

    aget v0, p3, v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget p0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    invoke-static {v0, p0, p2}, Lcom/airbnb/lottie/manager/FontAssetManager;->getIndex(III)I

    move-result p0

    aget p0, p3, p0

    :goto_0
    add-int/2addr p1, p0

    return p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->stringValueOf$3(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "unexpected direction "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget p1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    invoke-static {p1, p2, v0}, Lcom/airbnb/lottie/manager/FontAssetManager;->getIndex(III)I

    move-result p1

    aget p1, p3, p1

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    invoke-static {v0, p2, v1}, Lcom/airbnb/lottie/manager/FontAssetManager;->getIndex(III)I

    move-result v0

    aget v0, p3, v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    invoke-static {v0, p2, v1}, Lcom/airbnb/lottie/manager/FontAssetManager;->getIndex(III)I

    move-result v0

    aget v0, p3, v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget p0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    invoke-static {v0, p2, p0}, Lcom/airbnb/lottie/manager/FontAssetManager;->getIndex(III)I

    move-result p0

    aget p0, p3, p0

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    invoke-static {p2, p1, v0}, Lcom/airbnb/lottie/manager/FontAssetManager;->getIndex(III)I

    move-result p1

    aget p1, p3, p1

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    invoke-static {p2, v0, v1}, Lcom/airbnb/lottie/manager/FontAssetManager;->getIndex(III)I

    move-result v0

    aget v0, p3, v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    invoke-static {p2, v0, v1}, Lcom/airbnb/lottie/manager/FontAssetManager;->getIndex(III)I

    move-result v0

    aget v0, p3, v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget p0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    invoke-static {p2, v0, p0}, Lcom/airbnb/lottie/manager/FontAssetManager;->getIndex(III)I

    move-result p0

    aget p0, p3, p0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    throw p0
.end method

.method public static volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I
    .locals 4

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    invoke-static {v0, v1, v2}, Lcom/airbnb/lottie/manager/FontAssetManager;->getIndex(III)I

    move-result v0

    aget v0, p1, v0

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iget v3, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    invoke-static {v1, v2, v3}, Lcom/airbnb/lottie/manager/FontAssetManager;->getIndex(III)I

    move-result v1

    aget v1, p1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget v3, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    invoke-static {v1, v2, v3}, Lcom/airbnb/lottie/manager/FontAssetManager;->getIndex(III)I

    move-result v1

    aget v1, p1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget v3, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    invoke-static {v1, v2, v3}, Lcom/airbnb/lottie/manager/FontAssetManager;->getIndex(III)I

    move-result v1

    aget v1, p1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iget v3, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    invoke-static {v1, v2, v3}, Lcom/airbnb/lottie/manager/FontAssetManager;->getIndex(III)I

    move-result v1

    aget v1, p1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iget v3, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    invoke-static {v1, v2, v3}, Lcom/airbnb/lottie/manager/FontAssetManager;->getIndex(III)I

    move-result v1

    aget v1, p1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget v3, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    invoke-static {v1, v2, v3}, Lcom/airbnb/lottie/manager/FontAssetManager;->getIndex(III)I

    move-result v1

    aget v1, p1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget p0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    invoke-static {v1, v2, p0}, Lcom/airbnb/lottie/manager/FontAssetManager;->getIndex(III)I

    move-result p0

    aget p0, p1, p0

    sub-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public final addMetadata(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/airbnb/lottie/manager/FontAssetManager;->getAutoMetadata()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final build()Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;
    .locals 11

    iget-object v0, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->defaultFontFileExtension:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, " transportName"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->fontFamilies:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/datatransport/runtime/EncodedPayload;

    if-nez v1, :cond_1

    const-string v1, " encodedPayload"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->assetManager:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_2

    const-string v1, " eventMillis"

    invoke-static {v0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->delegate:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_3

    const-string v1, " uptimeMillis"

    invoke-static {v0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget-object v1, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->fontMap:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_4

    const-string v1, " autoMetadata"

    invoke-static {v0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;

    iget-object v1, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->defaultFontFileExtension:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    iget-object v1, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->tempPair:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->fontFamilies:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Lcom/google/android/datatransport/runtime/EncodedPayload;

    iget-object v1, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->assetManager:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v1, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->delegate:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object p0, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->fontMap:Ljava/lang/Object;

    move-object v10, p0

    check-cast v10, Ljava/util/Map;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/google/android/datatransport/runtime/EncodedPayload;JJLjava/util/Map;)V

    return-object v0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing required properties:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getAutoMetadata()Ljava/util/Map;
    .locals 1

    iget-object p0, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->fontMap:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Map;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Property \"autoMetadata\" has not been set"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getTintListForDrawableRes(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 7

    const v0, 0x7f08005c

    if-ne p2, v0, :cond_0

    const p0, 0x7f060015

    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_0
    const v0, 0x7f08008a

    if-ne p2, v0, :cond_1

    const p0, 0x7f060018

    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_1
    const v0, 0x7f080089

    const/4 v1, 0x0

    if-ne p2, v0, :cond_3

    const/4 p0, 0x3

    new-array p2, p0, [[I

    new-array p0, p0, [I

    const v0, 0x7f04013c

    invoke-static {p1, v0}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    const/4 v3, 0x2

    const v4, 0x7f040107

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v0, Landroidx/appcompat/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v0, p2, v1

    invoke-virtual {v2, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    aput v0, p0, v1

    sget-object v0, Landroidx/appcompat/widget/ThemeUtils;->CHECKED_STATE_SET:[I

    aput-object v0, p2, v5

    invoke-static {p1, v4}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result p1

    aput p1, p0, v5

    sget-object p1, Landroidx/appcompat/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object p1, p2, v3

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    aput p1, p0, v3

    goto :goto_0

    :cond_2
    sget-object v2, Landroidx/appcompat/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v2, p2, v1

    invoke-static {p1, v0}, Landroidx/appcompat/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v2

    aput v2, p0, v1

    sget-object v1, Landroidx/appcompat/widget/ThemeUtils;->CHECKED_STATE_SET:[I

    aput-object v1, p2, v5

    invoke-static {p1, v4}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v1

    aput v1, p0, v5

    sget-object v1, Landroidx/appcompat/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v1, p2, v3

    invoke-static {p1, v0}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result p1

    aput p1, p0, v3

    :goto_0
    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, p2, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p1

    :cond_3
    const v0, 0x7f080050

    if-ne p2, v0, :cond_4

    const p0, 0x7f040105

    invoke-static {p1, p0}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result p0

    invoke-static {p1, p0}, Lcom/airbnb/lottie/manager/FontAssetManager;->createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_4
    const v0, 0x7f08004a

    if-ne p2, v0, :cond_5

    invoke-static {p1, v1}, Lcom/airbnb/lottie/manager/FontAssetManager;->createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_5
    const v0, 0x7f08004f

    if-ne p2, v0, :cond_6

    const p0, 0x7f040103

    invoke-static {p1, p0}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result p0

    invoke-static {p1, p0}, Lcom/airbnb/lottie/manager/FontAssetManager;->createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_6
    const v0, 0x7f080085

    if-eq p2, v0, :cond_c

    const v0, 0x7f080086

    if-ne p2, v0, :cond_7

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->fontMap:Ljava/lang/Object;

    check-cast v0, [I

    invoke-static {v0, p2}, Lcom/airbnb/lottie/manager/FontAssetManager;->arrayContains([II)Z

    move-result v0

    if-eqz v0, :cond_8

    const p0, 0x7f040109

    invoke-static {p1, p0}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_8
    iget-object v0, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->delegate:Ljava/lang/Object;

    check-cast v0, [I

    invoke-static {v0, p2}, Lcom/airbnb/lottie/manager/FontAssetManager;->arrayContains([II)Z

    move-result v0

    if-eqz v0, :cond_9

    const p0, 0x7f060014

    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_9
    iget-object p0, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->defaultFontFileExtension:Ljava/lang/Object;

    check-cast p0, [I

    invoke-static {p0, p2}, Lcom/airbnb/lottie/manager/FontAssetManager;->arrayContains([II)Z

    move-result p0

    if-eqz p0, :cond_a

    const p0, 0x7f060013

    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_a
    const p0, 0x7f080082

    if-ne p2, p0, :cond_b

    const p0, 0x7f060016

    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0

    :cond_c
    :goto_1
    const p0, 0x7f060017

    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public final maximize$enumunboxing$(Lcom/google/android/material/color/utilities/QuantizerWu$Box;IIIIIII)Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lcom/airbnb/lottie/manager/FontAssetManager;->fontMap:Ljava/lang/Object;

    check-cast v3, [I

    invoke-static {v1, v2, v3}, Lcom/airbnb/lottie/manager/FontAssetManager;->bottom(Lcom/google/android/material/color/utilities/QuantizerWu$Box;I[I)I

    move-result v3

    iget-object v4, v0, Lcom/airbnb/lottie/manager/FontAssetManager;->fontFamilies:Ljava/lang/Object;

    check-cast v4, [I

    invoke-static {v1, v2, v4}, Lcom/airbnb/lottie/manager/FontAssetManager;->bottom(Lcom/google/android/material/color/utilities/QuantizerWu$Box;I[I)I

    move-result v4

    iget-object v5, v0, Lcom/airbnb/lottie/manager/FontAssetManager;->assetManager:Ljava/lang/Object;

    check-cast v5, [I

    invoke-static {v1, v2, v5}, Lcom/airbnb/lottie/manager/FontAssetManager;->bottom(Lcom/google/android/material/color/utilities/QuantizerWu$Box;I[I)I

    move-result v5

    iget-object v6, v0, Lcom/airbnb/lottie/manager/FontAssetManager;->tempPair:Ljava/lang/Object;

    check-cast v6, [I

    invoke-static {v1, v2, v6}, Lcom/airbnb/lottie/manager/FontAssetManager;->bottom(Lcom/google/android/material/color/utilities/QuantizerWu$Box;I[I)I

    move-result v6

    const-wide/16 v7, 0x0

    const/4 v9, -0x1

    move/from16 v11, p4

    move v10, v9

    move-wide v8, v7

    move/from16 v7, p3

    :goto_0
    if-ge v7, v11, :cond_3

    iget-object v12, v0, Lcom/airbnb/lottie/manager/FontAssetManager;->fontMap:Ljava/lang/Object;

    check-cast v12, [I

    invoke-static {v1, v2, v7, v12}, Lcom/airbnb/lottie/manager/FontAssetManager;->top(Lcom/google/android/material/color/utilities/QuantizerWu$Box;II[I)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, v0, Lcom/airbnb/lottie/manager/FontAssetManager;->fontFamilies:Ljava/lang/Object;

    check-cast v13, [I

    invoke-static {v1, v2, v7, v13}, Lcom/airbnb/lottie/manager/FontAssetManager;->top(Lcom/google/android/material/color/utilities/QuantizerWu$Box;II[I)I

    move-result v13

    add-int/2addr v13, v4

    iget-object v14, v0, Lcom/airbnb/lottie/manager/FontAssetManager;->assetManager:Ljava/lang/Object;

    check-cast v14, [I

    invoke-static {v1, v2, v7, v14}, Lcom/airbnb/lottie/manager/FontAssetManager;->top(Lcom/google/android/material/color/utilities/QuantizerWu$Box;II[I)I

    move-result v14

    add-int/2addr v14, v5

    iget-object v15, v0, Lcom/airbnb/lottie/manager/FontAssetManager;->tempPair:Ljava/lang/Object;

    check-cast v15, [I

    invoke-static {v1, v2, v7, v15}, Lcom/airbnb/lottie/manager/FontAssetManager;->top(Lcom/google/android/material/color/utilities/QuantizerWu$Box;II[I)I

    move-result v15

    add-int/2addr v15, v6

    if-nez v15, :cond_0

    move/from16 v16, v3

    goto :goto_1

    :cond_0
    mul-int v16, v12, v12

    mul-int v17, v13, v13

    add-int v17, v17, v16

    mul-int v16, v14, v14

    add-int v0, v16, v17

    int-to-double v0, v0

    move/from16 v16, v3

    int-to-double v2, v15

    div-double/2addr v0, v2

    sub-int v2, p5, v12

    sub-int v3, p6, v13

    sub-int v12, p7, v14

    sub-int v13, p8, v15

    if-nez v13, :cond_1

    goto :goto_1

    :cond_1
    mul-int/2addr v2, v2

    mul-int/2addr v3, v3

    add-int/2addr v3, v2

    mul-int/2addr v12, v12

    add-int/2addr v12, v3

    int-to-double v2, v12

    int-to-double v12, v13

    div-double/2addr v2, v12

    add-double/2addr v2, v0

    cmpl-double v0, v2, v8

    if-lez v0, :cond_2

    move-wide v8, v2

    move v10, v7

    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v16

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;

    invoke-direct {v0, v10, v8, v9}, Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;-><init>(ID)V

    return-object v0
.end method

.method public final variance(Lcom/google/android/material/color/utilities/QuantizerWu$Box;)D
    .locals 9

    iget-object v0, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->fontMap:Ljava/lang/Object;

    check-cast v0, [I

    invoke-static {p1, v0}, Lcom/airbnb/lottie/manager/FontAssetManager;->volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->fontFamilies:Ljava/lang/Object;

    check-cast v1, [I

    invoke-static {p1, v1}, Lcom/airbnb/lottie/manager/FontAssetManager;->volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I

    move-result v1

    iget-object v2, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->assetManager:Ljava/lang/Object;

    check-cast v2, [I

    invoke-static {p1, v2}, Lcom/airbnb/lottie/manager/FontAssetManager;->volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I

    move-result v2

    iget-object v3, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->delegate:Ljava/lang/Object;

    check-cast v3, [D

    iget v4, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v5, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iget v6, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    invoke-static {v4, v5, v6}, Lcom/airbnb/lottie/manager/FontAssetManager;->getIndex(III)I

    move-result v4

    aget-wide v3, v3, v4

    iget-object v5, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->delegate:Ljava/lang/Object;

    check-cast v5, [D

    iget v6, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v7, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iget v8, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    invoke-static {v6, v7, v8}, Lcom/airbnb/lottie/manager/FontAssetManager;->getIndex(III)I

    move-result v6

    aget-wide v5, v5, v6

    sub-double/2addr v3, v5

    iget-object v5, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->delegate:Ljava/lang/Object;

    check-cast v5, [D

    iget v6, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v7, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget v8, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    invoke-static {v6, v7, v8}, Lcom/airbnb/lottie/manager/FontAssetManager;->getIndex(III)I

    move-result v6

    aget-wide v5, v5, v6

    sub-double/2addr v3, v5

    iget-object v5, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->delegate:Ljava/lang/Object;

    check-cast v5, [D

    iget v6, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v7, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget v8, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    invoke-static {v6, v7, v8}, Lcom/airbnb/lottie/manager/FontAssetManager;->getIndex(III)I

    move-result v6

    aget-wide v5, v5, v6

    add-double/2addr v3, v5

    iget-object v5, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->delegate:Ljava/lang/Object;

    check-cast v5, [D

    iget v6, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v7, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iget v8, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    invoke-static {v6, v7, v8}, Lcom/airbnb/lottie/manager/FontAssetManager;->getIndex(III)I

    move-result v6

    aget-wide v5, v5, v6

    sub-double/2addr v3, v5

    iget-object v5, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->delegate:Ljava/lang/Object;

    check-cast v5, [D

    iget v6, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v7, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iget v8, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    invoke-static {v6, v7, v8}, Lcom/airbnb/lottie/manager/FontAssetManager;->getIndex(III)I

    move-result v6

    aget-wide v5, v5, v6

    add-double/2addr v3, v5

    iget-object v5, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->delegate:Ljava/lang/Object;

    check-cast v5, [D

    iget v6, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v7, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget v8, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    invoke-static {v6, v7, v8}, Lcom/airbnb/lottie/manager/FontAssetManager;->getIndex(III)I

    move-result v6

    aget-wide v5, v5, v6

    add-double/2addr v3, v5

    iget-object v5, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->delegate:Ljava/lang/Object;

    check-cast v5, [D

    iget v6, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v7, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget v8, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    invoke-static {v6, v7, v8}, Lcom/airbnb/lottie/manager/FontAssetManager;->getIndex(III)I

    move-result v6

    aget-wide v5, v5, v6

    sub-double/2addr v3, v5

    mul-int/2addr v0, v0

    mul-int/2addr v1, v1

    add-int/2addr v1, v0

    mul-int/2addr v2, v2

    add-int/2addr v2, v1

    iget-object p0, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->tempPair:Ljava/lang/Object;

    check-cast p0, [I

    invoke-static {p1, p0}, Lcom/airbnb/lottie/manager/FontAssetManager;->volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I

    move-result p0

    int-to-double v0, v2

    int-to-double p0, p0

    div-double/2addr v0, p0

    sub-double/2addr v3, v0

    return-wide v3
.end method
