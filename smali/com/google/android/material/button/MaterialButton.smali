.class public Lcom/google/android/material/button/MaterialButton;
.super Landroidx/appcompat/widget/AppCompatButton;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Checkable;
.implements Lcom/google/android/material/shape/Shapeable;


# static fields
.field public static final CHECKABLE_STATE_SET:[I

.field public static final CHECKED_STATE_SET:[I


# instance fields
.field public accessibilityClassName:Ljava/lang/String;

.field public broadcasting:Z

.field public checked:Z

.field public icon:Landroid/graphics/drawable/Drawable;

.field public iconGravity:I

.field public iconLeft:I

.field public iconPadding:I

.field public iconSize:I

.field public iconTint:Landroid/content/res/ColorStateList;

.field public iconTintMode:Landroid/graphics/PorterDuff$Mode;

.field public iconTop:I

.field public final materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

.field public final onCheckedChangeListeners:Ljava/util/LinkedHashSet;

.field public onPressedChangeListenerInternal:Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x101009f

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/button/MaterialButton;->CHECKABLE_STATE_SET:[I

    const v0, 0x10100a0

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/button/MaterialButton;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    const v0, 0x7f04032d

    const v1, 0x7f130497

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzme;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->onCheckedChangeListeners:Ljava/util/LinkedHashSet;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->broadcasting:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    sget-object v4, Lcom/google/android/material/R$styleable;->MaterialButton:[I

    const v6, 0x7f130497

    new-array v7, p1, [I

    const v5, 0x7f04032d

    move-object v2, v8

    move-object v3, p2

    invoke-static/range {v2 .. v7}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    const/16 v3, 0xf

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v3, v5}, Lkotlin/LazyKt__LazyKt;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v5, 0xe

    invoke-static {v3, v2, v5}, Lkotlin/io/ExceptionsKt;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v5, 0xa

    invoke-static {v3, v2, v5}, Lkotlin/io/ExceptionsKt;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    const/16 v3, 0xb

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    const/16 v3, 0xd

    invoke-virtual {v2, v3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    invoke-static {v8, p2, v0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p2

    new-instance v0, Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v0, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)V

    new-instance p2, Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-direct {p2, p0, v0}, Lcom/google/android/material/button/MaterialButtonHelper;-><init>(Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    iput-object p2, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v2, v5, p1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p2, Lcom/google/android/material/button/MaterialButtonHelper;->insetLeft:I

    const/4 v0, 0x2

    invoke-virtual {v2, v0, p1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p2, Lcom/google/android/material/button/MaterialButtonHelper;->insetRight:I

    const/4 v0, 0x3

    invoke-virtual {v2, v0, p1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p2, Lcom/google/android/material/button/MaterialButtonHelper;->insetTop:I

    const/4 v0, 0x4

    invoke-virtual {v2, v0, p1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p2, Lcom/google/android/material/button/MaterialButtonHelper;->insetBottom:I

    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p2, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadius:I

    iget-object v1, p2, Lcom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->withCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/material/button/MaterialButtonHelper;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    iput-boolean v5, p2, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadiusSet:Z

    :cond_0
    const/16 v0, 0x14

    invoke-virtual {v2, v0, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p2, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    const/4 v0, 0x7

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Lkotlin/LazyKt__LazyKt;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p2, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v2, v1}, Lkotlin/io/ExceptionsKt;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p2, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x13

    invoke-static {v0, v2, v1}, Lkotlin/io/ExceptionsKt;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p2, Lcom/google/android/material/button/MaterialButtonHelper;->strokeColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v2, v1}, Lkotlin/io/ExceptionsKt;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p2, Lcom/google/android/material/button/MaterialButtonHelper;->rippleColor:Landroid/content/res/ColorStateList;

    const/4 v0, 0x5

    invoke-virtual {v2, v0, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p2, Lcom/google/android/material/button/MaterialButtonHelper;->checkable:Z

    const/16 v0, 0x9

    invoke-virtual {v2, v0, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p2, Lcom/google/android/material/button/MaterialButtonHelper;->elevation:I

    const/16 v0, 0x15

    invoke-virtual {v2, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p2, Lcom/google/android/material/button/MaterialButtonHelper;->toggleCheckedStateOnClick:Z

    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api17Impl;->getPaddingStart(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api17Impl;->getPaddingEnd(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_1

    iput-boolean v5, p2, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundOverwritten:Z

    iget-object v6, p2, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v6}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v6, p2, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v6}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/google/android/material/button/MaterialButtonHelper;->updateBackground()V

    :goto_0
    iget v6, p2, Lcom/google/android/material/button/MaterialButtonHelper;->insetLeft:I

    add-int/2addr v0, v6

    iget v6, p2, Lcom/google/android/material/button/MaterialButtonHelper;->insetTop:I

    add-int/2addr v1, v6

    iget v6, p2, Lcom/google/android/material/button/MaterialButtonHelper;->insetRight:I

    add-int/2addr v3, v6

    iget p2, p2, Lcom/google/android/material/button/MaterialButtonHelper;->insetBottom:I

    add-int/2addr v4, p2

    invoke-static {p0, v0, v1, v3, v4}, Landroidx/core/view/ViewCompat$Api17Impl;->setPaddingRelative(Landroid/view/View;IIII)V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object p2, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_2

    move p1, v5

    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    return-void
.end method

.method private getActualTextAlignment()Landroid/text/Layout$Alignment;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getTextAlignment()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p0, 0x6

    if-eq v0, p0, :cond_1

    const/4 p0, 0x3

    if-eq v0, p0, :cond_1

    const/4 p0, 0x4

    if-eq v0, p0, :cond_0

    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    return-object p0

    :cond_0
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object p0

    :cond_1
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    return-object p0

    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getGravityTextAlignment()Landroid/text/Layout$Alignment;

    move-result-object p0

    return-object p0
.end method

.method private getGravityTextAlignment()Landroid/text/Layout$Alignment;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result p0

    const v0, 0x800007

    and-int/2addr p0, v0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const v0, 0x800005

    if-eq p0, v0, :cond_0

    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    return-object p0

    :cond_0
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    return-object p0

    :cond_1
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method private getTextHeight()I
    .locals 5

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/Layout;->getHeight()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v2

    invoke-interface {v2, v1, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/Layout;->getHeight()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private getTextLayoutWidth()I
    .locals 4

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method


# virtual methods
.method public getA11yClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->accessibilityClassName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->accessibilityClassName:Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    if-eqz p0, :cond_1

    iget-boolean p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->checkable:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    const-class p0, Landroid/widget/CompoundButton;

    goto :goto_1

    :cond_2
    const-class p0, Landroid/widget/Button;

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0
.end method

.method public getCornerRadius()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    iget p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadius:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getIconGravity()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    return p0
.end method

.method public getIconPadding()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    return p0
.end method

.method public getIconSize()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    return p0
.end method

.method public getIconTint()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object p0
.end method

.method public getInsetBottom()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    iget p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetBottom:I

    return p0
.end method

.method public getInsetTop()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    iget p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetTop:I

    return p0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleColor:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getStrokeColor()Landroid/content/res/ColorStateList;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeColor:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getStrokeWidth()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    iget p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    return-object p0

    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0
.end method

.method public final isChecked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    return p0
.end method

.method public final isUsingOriginalBackground()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundOverwritten:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {v1, v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/ResultKt;->setParentAbsoluteElevation(Landroid/view/View;Lcom/google/android/material/shape/MaterialShapeDrawable;)V

    :cond_0
    return-void
.end method

.method public final onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x2

    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/google/android/material/button/MaterialButtonHelper;->checkable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/material/button/MaterialButton;->CHECKABLE_STATE_SET:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/google/android/material/button/MaterialButton;->CHECKED_STATE_SET:[I

    invoke-static {p1, p0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_2
    return-object p1
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getA11yClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getA11yClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/google/android/material/button/MaterialButtonHelper;->checkable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/AppCompatButton;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/button/MaterialButton;->updateIconPosition(II)V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/google/android/material/button/MaterialButton$SavedState;

    iget-object v0, p1, Landroidx/customview/view/AbsSavedState;->mSuperState:Landroid/os/Parcelable;

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean p1, p1, Lcom/google/android/material/button/MaterialButton$SavedState;->checked:Z

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/button/MaterialButton$SavedState;

    invoke-direct {v1, v0}, Lcom/google/android/material/button/MaterialButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-boolean p0, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    iput-boolean p0, v1, Lcom/google/android/material/button/MaterialButton$SavedState;->checked:Z

    return-object v1
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatButton;->onTextChanged(Ljava/lang/CharSequence;III)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/button/MaterialButton;->updateIconPosition(II)V

    return-void
.end method

.method public final performClick()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    iget-boolean v0, v0, Lcom/google/android/material/button/MaterialButtonHelper;->toggleCheckedStateOnClick:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->toggle()V

    :cond_0
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result p0

    return p0
.end method

.method public final refreshDrawableState()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->refreshDrawableState()V

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final resetIconDrawable()V
    .locals 5

    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v0, v4, v4, v4}, Landroidx/core/widget/TextViewCompat$Api17Impl;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_2
    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    goto :goto_2

    :cond_3
    move v3, v1

    goto :goto_3

    :cond_4
    :goto_2
    move v3, v2

    :goto_3
    if-eqz v3, :cond_5

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v4, v4, v0, v4}, Landroidx/core/widget/TextViewCompat$Api17Impl;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_5
    const/16 v3, 0x10

    if-eq v0, v3, :cond_6

    const/16 v3, 0x20

    if-ne v0, v3, :cond_7

    :cond_6
    move v1, v2

    :cond_7
    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v4, v0, v4, v4}, Landroidx/core/widget/TextViewCompat$Api17Impl;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_8
    :goto_4
    return-void
.end method

.method public setA11yClassName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->accessibilityClassName:Ljava/lang/String;

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTint(I)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_0

    const-string v0, "MaterialButton"

    const-string v1, "MaterialButton manages its own background to control elevation, shape, color and states. Consider using backgroundTint, shapeAppearance and other attributes where available. A custom background will ignore these attributes and you should consider handling interaction states such as pressed, focused and disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    iput-boolean v0, v1, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundOverwritten:Z

    iget-object v0, v1, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    iget-object v2, v1, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v2, v0}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, v1, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_1

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/reflect/TypesJVMKt;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setCheckable(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->checkable:Z

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    if-eqz v2, :cond_0

    iget-boolean v2, v2, Lcom/google/android/material/button/MaterialButtonHelper;->checkable:Z

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    if-eq v2, p1, :cond_5

    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->refreshDrawableState()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    iget-boolean v2, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    iget-boolean v3, p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;->skipCheckedStateTracker:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {p1, v3, v2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkInternal(IZ)V

    :cond_2
    :goto_1
    iget-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->broadcasting:Z

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->broadcasting:Z

    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->onCheckedChangeListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    iput-boolean v1, p0, Lcom/google/android/material/button/MaterialButton;->broadcasting:Z

    goto :goto_2

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_5
    :goto_2
    return-void
.end method

.method public setCornerRadius(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadiusSet:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadius:I

    if-eq v0, p1, :cond_1

    :cond_0
    iput p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadius:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadiusSet:Z

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->withCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    :cond_1
    return-void
.end method

.method public setCornerRadiusResource(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setCornerRadius(I)V

    :cond_0
    return-void
.end method

.method public setElevation(F)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setElevation(F)V

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/button/MaterialButton;->updateIconPosition(II)V

    :cond_0
    return-void
.end method

.method public setIconGravity(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/button/MaterialButton;->updateIconPosition(II)V

    :cond_0
    return-void
.end method

.method public setIconPadding(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    :cond_0
    return-void
.end method

.method public setIconResource(I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/reflect/TypesJVMKt;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconSize(I)V
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "iconSize cannot be less than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    :cond_0
    return-void
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    :cond_0
    return-void
.end method

.method public setIconTintResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setInsetBottom(I)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    iget v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetTop:I

    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setVerticalInsets(II)V

    return-void
.end method

.method public setInsetTop(I)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    iget v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetBottom:I

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/button/MaterialButtonHelper;->setVerticalInsets(II)V

    return-void
.end method

.method public setInternalBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOnPressedChangeListenerInternal(Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->onPressedChangeListenerInternal:Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;

    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->onPressedChangeListenerInternal:Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/adobe/xmp/impl/xpath/XMPPath;

    iget-object v0, v0, Lcom/adobe/xmp/impl/xpath/XMPPath;->segments:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleColor:Landroid/content/res/ColorStateList;

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method public setRippleColorResource(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setRippleColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setShouldDrawSurfaceColorStroke(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shouldDrawSurfaceColorStroke:Z

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->updateStroke()V

    :cond_0
    return-void
.end method

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->updateStroke()V

    :cond_0
    return-void
.end method

.method public setStrokeColorResource(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    iget v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->updateStroke()V

    :cond_0
    return-void
.end method

.method public setStrokeWidthResource(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setStrokeWidth(I)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    invoke-static {p1, p0}, Landroidx/core/graphics/drawable/DrawableCompat$Api21Impl;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, p0}, Landroidx/core/graphics/drawable/DrawableCompat$Api21Impl;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTextAlignment(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setTextAlignment(I)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/button/MaterialButton;->updateIconPosition(II)V

    return-void
.end method

.method public setToggleCheckedStateOnClick(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->toggleCheckedStateOnClick:Z

    return-void
.end method

.method public final toggle()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    return-void
.end method

.method public final updateIcon(Z)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    invoke-static {v0, v2}, Landroidx/core/graphics/drawable/DrawableCompat$Api21Impl;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v0}, Landroidx/core/graphics/drawable/DrawableCompat$Api21Impl;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_0
    iget v2, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    :goto_1
    iget-object v3, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/google/android/material/button/MaterialButton;->iconLeft:I

    iget v5, p0, Lcom/google/android/material/button/MaterialButton;->iconTop:I

    add-int/2addr v0, v4

    add-int/2addr v2, v5

    invoke-virtual {v3, v4, v5, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->resetIconDrawable()V

    return-void

    :cond_4
    invoke-static {p0}, Landroidx/core/widget/TextViewCompat$Api17Impl;->getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x0

    aget-object v2, p1, v0

    aget-object v3, p1, v1

    const/4 v4, 0x2

    aget-object p1, p1, v4

    iget v5, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    if-eq v5, v1, :cond_6

    if-ne v5, v4, :cond_5

    goto :goto_2

    :cond_5
    move v4, v0

    goto :goto_3

    :cond_6
    :goto_2
    move v4, v1

    :goto_3
    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-ne v2, v4, :cond_e

    :cond_7
    const/4 v2, 0x3

    if-eq v5, v2, :cond_9

    const/4 v2, 0x4

    if-ne v5, v2, :cond_8

    goto :goto_4

    :cond_8
    move v2, v0

    goto :goto_5

    :cond_9
    :goto_4
    move v2, v1

    :goto_5
    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-ne p1, v2, :cond_e

    :cond_a
    const/16 p1, 0x10

    if-eq v5, p1, :cond_c

    const/16 p1, 0x20

    if-ne v5, p1, :cond_b

    goto :goto_6

    :cond_b
    move p1, v0

    goto :goto_7

    :cond_c
    :goto_6
    move p1, v1

    :goto_7
    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-eq v3, p1, :cond_d

    goto :goto_8

    :cond_d
    move v1, v0

    :cond_e
    :goto_8
    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->resetIconDrawable()V

    :cond_f
    return-void
.end method

.method public final updateIconPosition(II)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_b

    :cond_0
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v4, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v3

    :goto_1
    const/4 v5, 0x4

    const/4 v6, 0x3

    if-nez v4, :cond_a

    if-eq v0, v6, :cond_4

    if-ne v0, v5, :cond_3

    goto :goto_2

    :cond_3
    move v4, v2

    goto :goto_3

    :cond_4
    :goto_2
    move v4, v3

    :goto_3
    if-eqz v4, :cond_5

    goto :goto_5

    :cond_5
    const/16 p1, 0x10

    if-eq v0, p1, :cond_7

    const/16 v4, 0x20

    if-ne v0, v4, :cond_6

    goto :goto_4

    :cond_6
    move v3, v2

    :cond_7
    :goto_4
    if-eqz v3, :cond_12

    iput v2, p0, Lcom/google/android/material/button/MaterialButton;->iconLeft:I

    if-ne v0, p1, :cond_8

    iput v2, p0, Lcom/google/android/material/button/MaterialButton;->iconTop:I

    goto/16 :goto_a

    :cond_8
    iget p1, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    :cond_9
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getTextHeight()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    sub-int/2addr p2, p1

    iget p1, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    sub-int/2addr p2, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p2, p1

    div-int/2addr p2, v1

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->iconTop:I

    if-eq p2, p1, :cond_12

    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->iconTop:I

    goto :goto_8

    :cond_a
    :goto_5
    iput v2, p0, Lcom/google/android/material/button/MaterialButton;->iconTop:I

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getActualTextAlignment()Landroid/text/Layout$Alignment;

    move-result-object p2

    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    if-eq v0, v3, :cond_13

    if-eq v0, v6, :cond_13

    if-ne v0, v1, :cond_b

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-eq p2, v1, :cond_13

    :cond_b
    if-ne v0, v5, :cond_c

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne p2, v0, :cond_c

    goto :goto_9

    :cond_c
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :cond_d
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getTextLayoutWidth()I

    move-result v1

    sub-int/2addr p1, v1

    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api17Impl;->getPaddingEnd(Landroid/view/View;)I

    move-result v1

    sub-int/2addr p1, v1

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    sub-int/2addr p1, v0

    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api17Impl;->getPaddingStart(Landroid/view/View;)I

    move-result v0

    sub-int/2addr p1, v0

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne p2, v0, :cond_e

    div-int/lit8 p1, p1, 0x2

    :cond_e
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    move-result p2

    if-ne p2, v3, :cond_f

    move p2, v3

    goto :goto_6

    :cond_f
    move p2, v2

    :goto_6
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    if-ne v0, v5, :cond_10

    goto :goto_7

    :cond_10
    move v3, v2

    :goto_7
    if-eq p2, v3, :cond_11

    neg-int p1, p1

    :cond_11
    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->iconLeft:I

    if-eq p2, p1, :cond_12

    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->iconLeft:I

    :goto_8
    invoke-virtual {p0, v2}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    :cond_12
    return-void

    :cond_13
    :goto_9
    iput v2, p0, Lcom/google/android/material/button/MaterialButton;->iconLeft:I

    :goto_a
    invoke-virtual {p0, v2}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    :cond_14
    :goto_b
    return-void
.end method
