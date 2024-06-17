.class public final Landroidx/core/provider/FontRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public mCertificates:Ljava/lang/Object;

.field public mCertificatesArray:I

.field public mIdentifier:Ljava/lang/Object;

.field public final mProviderAuthority:Ljava/lang/Object;

.field public final mProviderPackage:Ljava/lang/Object;

.field public mQuery:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;ILcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/core/provider/FontRequest;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p6, Landroid/graphics/Rect;->left:I

    invoke-static {v0}, L_COROUTINE/_BOUNDARY;->checkArgumentNonnegative(I)V

    iget v0, p6, Landroid/graphics/Rect;->top:I

    invoke-static {v0}, L_COROUTINE/_BOUNDARY;->checkArgumentNonnegative(I)V

    iget v0, p6, Landroid/graphics/Rect;->right:I

    invoke-static {v0}, L_COROUTINE/_BOUNDARY;->checkArgumentNonnegative(I)V

    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0}, L_COROUTINE/_BOUNDARY;->checkArgumentNonnegative(I)V

    iput-object p6, p0, Landroidx/core/provider/FontRequest;->mProviderAuthority:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/core/provider/FontRequest;->mProviderPackage:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/core/provider/FontRequest;->mQuery:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/core/provider/FontRequest;->mIdentifier:Ljava/lang/Object;

    iput p4, p0, Landroidx/core/provider/FontRequest;->mCertificatesArray:I

    iput-object p5, p0, Landroidx/core/provider/FontRequest;->mCertificates:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/core/provider/FontRequest;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/core/provider/FontRequest;->mCertificatesArray:I

    iput-object p1, p0, Landroidx/core/provider/FontRequest;->mProviderAuthority:Ljava/lang/Object;

    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->get()Landroidx/appcompat/widget/AppCompatDrawableManager;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/provider/FontRequest;->mProviderPackage:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/core/provider/FontRequest;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/provider/FontRequest;->mProviderAuthority:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/core/provider/FontRequest;->mProviderPackage:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/core/provider/FontRequest;->mQuery:Ljava/lang/Object;

    .line 4
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    check-cast p4, Ljava/util/List;

    iput-object p4, p0, Landroidx/core/provider/FontRequest;->mCertificates:Ljava/lang/Object;

    iput v0, p0, Landroidx/core/provider/FontRequest;->mCertificatesArray:I

    .line 6
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "-"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    iput-object p1, p0, Landroidx/core/provider/FontRequest;->mIdentifier:Ljava/lang/Object;

    return-void
.end method

.method public static create(Landroid/content/Context;I)Landroidx/core/provider/FontRequest;
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    sget-object v2, Lcom/google/android/material/R$styleable;->MaterialCalendarItem:[I

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    const/4 v4, 0x3

    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11, v2, v3, v0, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lkotlin/io/ExceptionsKt;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    const/16 v0, 0x9

    invoke-static {p0, p1, v0}, Lkotlin/io/ExceptionsKt;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v7

    const/4 v0, 0x7

    invoke-static {p0, p1, v0}, Lkotlin/io/ExceptionsKt;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v8

    const/16 v0, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    new-instance v3, Lcom/google/android/material/shape/AbsoluteCornerSize;

    int-to-float v1, v1

    invoke-direct {v3, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    invoke-static {p0, v0, v2, v3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;IILcom/google/android/material/shape/AbsoluteCornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p0

    new-instance v10, Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v10, p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p0, Landroidx/core/provider/FontRequest;

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Landroidx/core/provider/FontRequest;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;ILcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/Rect;)V

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot create a CalendarItemStyle with a styleResId of 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final applySupportBackgroundTint()V
    .locals 6

    iget-object v0, p0, Landroidx/core/provider/FontRequest;->mProviderAuthority:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v2, p0, Landroidx/core/provider/FontRequest;->mQuery:Ljava/lang/Object;

    check-cast v2, Landroidx/appcompat/widget/TintInfo;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_6

    iget-object v2, p0, Landroidx/core/provider/FontRequest;->mCertificates:Ljava/lang/Object;

    check-cast v2, Landroidx/appcompat/widget/TintInfo;

    if-nez v2, :cond_1

    new-instance v2, Landroidx/appcompat/widget/TintInfo;

    invoke-direct {v2, v3}, Landroidx/appcompat/widget/TintInfo;-><init>(I)V

    iput-object v2, p0, Landroidx/core/provider/FontRequest;->mCertificates:Ljava/lang/Object;

    :cond_1
    iget-object v2, p0, Landroidx/core/provider/FontRequest;->mCertificates:Ljava/lang/Object;

    check-cast v2, Landroidx/appcompat/widget/TintInfo;

    const/4 v5, 0x0

    iput-object v5, v2, Landroidx/appcompat/widget/TintInfo;->mTintList:Ljava/lang/Object;

    iput-boolean v3, v2, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    iput-object v5, v2, Landroidx/appcompat/widget/TintInfo;->mTintMode:Ljava/lang/Object;

    iput-boolean v3, v2, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    sget-object v5, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v0}, Landroidx/core/view/ViewCompat$Api21Impl;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v5

    if-eqz v5, :cond_2

    iput-boolean v4, v2, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    iput-object v5, v2, Landroidx/appcompat/widget/TintInfo;->mTintList:Ljava/lang/Object;

    :cond_2
    invoke-static {v0}, Landroidx/core/view/ViewCompat$Api21Impl;->getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v5

    if-eqz v5, :cond_3

    iput-boolean v4, v2, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    iput-object v5, v2, Landroidx/appcompat/widget/TintInfo;->mTintMode:Ljava/lang/Object;

    :cond_3
    iget-boolean v5, v2, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    if-nez v5, :cond_4

    iget-boolean v5, v2, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    if-eqz v5, :cond_5

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V

    move v3, v4

    :cond_5
    if-eqz v3, :cond_6

    return-void

    :cond_6
    iget-object v2, p0, Landroidx/core/provider/FontRequest;->mIdentifier:Ljava/lang/Object;

    check-cast v2, Landroidx/appcompat/widget/TintInfo;

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-static {v1, v2, p0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V

    goto :goto_1

    :cond_7
    iget-object p0, p0, Landroidx/core/provider/FontRequest;->mQuery:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/TintInfo;

    if-eqz p0, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-static {v1, p0, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V

    :cond_8
    :goto_1
    return-void
.end method

.method public final getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object p0, p0, Landroidx/core/provider/FontRequest;->mIdentifier:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Landroidx/appcompat/widget/TintInfo;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/appcompat/widget/TintInfo;

    iget-object p0, p0, Landroidx/appcompat/widget/TintInfo;->mTintList:Ljava/lang/Object;

    check-cast p0, Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object p0, p0, Landroidx/core/provider/FontRequest;->mIdentifier:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Landroidx/appcompat/widget/TintInfo;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/appcompat/widget/TintInfo;

    iget-object p0, p0, Landroidx/appcompat/widget/TintInfo;->mTintMode:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 9

    iget-object v0, p0, Landroidx/core/provider/FontRequest;->mProviderAuthority:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper:[I

    invoke-static {v2, p1, v3, p2}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v8

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, v8, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    const/4 v7, 0x0

    sget-object v4, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    move-object v4, p1

    move v6, p2

    invoke-static/range {v1 .. v7}, Landroidx/core/view/ViewCompat$Api29Impl;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {v8, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p2

    const/4 v1, -0x1

    if-eqz p2, :cond_0

    invoke-virtual {v8, p1, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Landroidx/core/provider/FontRequest;->mCertificatesArray:I

    iget-object p1, p0, Landroidx/core/provider/FontRequest;->mProviderPackage:Ljava/lang/Object;

    check-cast p1, Landroidx/appcompat/widget/AppCompatDrawableManager;

    move-object p2, v0

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget v2, p0, Landroidx/core/provider/FontRequest;->mCertificatesArray:I

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p1, Landroidx/appcompat/widget/AppCompatDrawableManager;->mResourceManager:Landroidx/appcompat/widget/ResourceManagerInternal;

    invoke-virtual {v3, p2, v2}, Landroidx/appcompat/widget/ResourceManagerInternal;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Landroidx/core/provider/FontRequest;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_0
    :goto_0
    const/4 p0, 0x1

    invoke-virtual {v8, p0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_1

    move-object p1, v0

    check-cast p1, Landroid/view/View;

    invoke-virtual {v8, p0}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat$Api21Impl;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    :cond_1
    const/4 p0, 0x2

    invoke-virtual {v8, p0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_2

    check-cast v0, Landroid/view/View;

    invoke-virtual {v8, p0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat$Api21Impl;->setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    invoke-virtual {v8}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {v8}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    throw p0
.end method

.method public final onSetBackgroundDrawable()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Landroidx/core/provider/FontRequest;->mCertificatesArray:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/core/provider/FontRequest;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroidx/core/provider/FontRequest;->applySupportBackgroundTint()V

    return-void
.end method

.method public final onSetBackgroundResource(I)V
    .locals 3

    iput p1, p0, Landroidx/core/provider/FontRequest;->mCertificatesArray:I

    iget-object v0, p0, Landroidx/core/provider/FontRequest;->mProviderPackage:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/AppCompatDrawableManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/core/provider/FontRequest;->mProviderAuthority:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Landroidx/appcompat/widget/AppCompatDrawableManager;->mResourceManager:Landroidx/appcompat/widget/ResourceManagerInternal;

    invoke-virtual {v2, v1, p1}, Landroidx/appcompat/widget/ResourceManagerInternal;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/core/provider/FontRequest;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroidx/core/provider/FontRequest;->applySupportBackgroundTint()V

    return-void
.end method

.method public final setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/core/provider/FontRequest;->mQuery:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/TintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/TintInfo;-><init>(I)V

    iput-object v0, p0, Landroidx/core/provider/FontRequest;->mQuery:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Landroidx/core/provider/FontRequest;->mQuery:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/appcompat/widget/TintInfo;

    iput-object p1, v1, Landroidx/appcompat/widget/TintInfo;->mTintList:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/TintInfo;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/core/provider/FontRequest;->mQuery:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Landroidx/core/provider/FontRequest;->applySupportBackgroundTint()V

    return-void
.end method

.method public final setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Landroidx/core/provider/FontRequest;->mIdentifier:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/TintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/TintInfo;-><init>(I)V

    iput-object v0, p0, Landroidx/core/provider/FontRequest;->mIdentifier:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Landroidx/core/provider/FontRequest;->mIdentifier:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/TintInfo;

    iput-object p1, v0, Landroidx/appcompat/widget/TintInfo;->mTintList:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    invoke-virtual {p0}, Landroidx/core/provider/FontRequest;->applySupportBackgroundTint()V

    return-void
.end method

.method public final setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Landroidx/core/provider/FontRequest;->mIdentifier:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/TintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/TintInfo;-><init>(I)V

    iput-object v0, p0, Landroidx/core/provider/FontRequest;->mIdentifier:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Landroidx/core/provider/FontRequest;->mIdentifier:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/TintInfo;

    iput-object p1, v0, Landroidx/appcompat/widget/TintInfo;->mTintMode:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    invoke-virtual {p0}, Landroidx/core/provider/FontRequest;->applySupportBackgroundTint()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Landroidx/core/provider/FontRequest;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FontRequest {mProviderAuthority: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/core/provider/FontRequest;->mProviderAuthority:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mProviderPackage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/core/provider/FontRequest;->mProviderPackage:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mQuery: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/core/provider/FontRequest;->mQuery:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mCertificates:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Landroidx/core/provider/FontRequest;->mCertificates:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    const-string v3, " ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/core/provider/FontRequest;->mCertificates:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move v4, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    const-string v5, " \""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-static {v5, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    const-string v3, " ]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mCertificatesArray: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroidx/core/provider/FontRequest;->mCertificatesArray:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
