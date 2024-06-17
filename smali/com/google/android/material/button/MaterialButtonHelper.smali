.class public final Lcom/google/android/material/button/MaterialButtonHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public backgroundOverwritten:Z

.field public backgroundTint:Landroid/content/res/ColorStateList;

.field public backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

.field public checkable:Z

.field public cornerRadius:I

.field public cornerRadiusSet:Z

.field public elevation:I

.field public insetBottom:I

.field public insetLeft:I

.field public insetRight:I

.field public insetTop:I

.field public maskDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field public final materialButton:Lcom/google/android/material/button/MaterialButton;

.field public rippleColor:Landroid/content/res/ColorStateList;

.field public rippleDrawable:Landroid/graphics/drawable/RippleDrawable;

.field public shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field public shouldDrawSurfaceColorStroke:Z

.field public strokeColor:Landroid/content/res/ColorStateList;

.field public strokeWidth:I

.field public toggleCheckedStateOnClick:Z


# direct methods
.method public constructor <init>(Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shouldDrawSurfaceColorStroke:Z

    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundOverwritten:Z

    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadiusSet:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->toggleCheckedStateOnClick:Z

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    iput-object p2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-void
.end method


# virtual methods
.method public final getMaskDrawable()Lcom/google/android/material/shape/Shapeable;
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_0
    check-cast p0, Lcom/google/android/material/shape/Shapeable;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMaterialShapeDrawable(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaskDrawable()Lcom/google/android/material/shape/Shapeable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaskDrawable()Lcom/google/android/material/shape/Shapeable;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/android/material/shape/Shapeable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    :cond_2
    return-void
.end method

.method public final setVerticalInsets(II)V
    .locals 8

    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v0}, Landroidx/core/view/ViewCompat$Api17Impl;->getPaddingStart(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-static {v0}, Landroidx/core/view/ViewCompat$Api17Impl;->getPaddingEnd(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    iget v5, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetTop:I

    iget v6, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetBottom:I

    iput p2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetBottom:I

    iput p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetTop:I

    iget-boolean v7, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundOverwritten:Z

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->updateBackground()V

    :cond_0
    add-int/2addr v2, p1

    sub-int/2addr v2, v5

    add-int/2addr v4, p2

    sub-int/2addr v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/core/view/ViewCompat$Api17Impl;->setPaddingRelative(Landroid/view/View;IIII)V

    return-void
.end method

.method public final updateBackground()V
    .locals 12

    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    invoke-static {v0, v2}, Landroidx/core/graphics/drawable/DrawableCompat$Api21Impl;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v2, :cond_0

    invoke-static {v0, v2}, Landroidx/core/graphics/drawable/DrawableCompat$Api21Impl;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    iget v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeColor:Landroid/content/res/ColorStateList;

    iget-object v4, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iput v2, v4, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeWidth:F

    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    iget-object v2, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v4, v2, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeColor:Landroid/content/res/ColorStateList;

    if-eq v4, v3, :cond_1

    iput-object v3, v2, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->onStateChange([I)Z

    :cond_1
    new-instance v2, Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v2, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTint(I)V

    iget v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    int-to-float v4, v4

    iget-boolean v5, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shouldDrawSurfaceColorStroke:Z

    if-eqz v5, :cond_2

    const v5, 0x7f040132

    invoke-static {v1, v5}, Ljms/IJobMgrService$_Parcel;->getColor(Landroid/view/View;I)I

    move-result v5

    goto :goto_0

    :cond_2
    move v5, v3

    :goto_0
    iget-object v6, v2, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iput v4, v6, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeWidth:F

    invoke-virtual {v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iget-object v5, v2, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v6, v5, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeColor:Landroid/content/res/ColorStateList;

    if-eq v6, v4, :cond_3

    iput-object v4, v5, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->onStateChange([I)Z

    :cond_3
    new-instance v4, Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v5, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v4, v5}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    iput-object v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->maskDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    const/4 v5, -0x1

    invoke-static {v4, v5}, Landroidx/core/graphics/drawable/DrawableCompat$Api21Impl;->setTint(Landroid/graphics/drawable/Drawable;I)V

    new-instance v4, Landroid/graphics/drawable/RippleDrawable;

    iget-object v5, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleColor:Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    :goto_1
    new-instance v7, Landroid/graphics/drawable/LayerDrawable;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v6, v3

    const/4 v2, 0x1

    aput-object v0, v6, v2

    invoke-direct {v7, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget v8, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetLeft:I

    iget v9, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetTop:I

    iget v10, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetRight:I

    iget v11, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetBottom:I

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->maskDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v4, v5, v0, v2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1, v4}, Lcom/google/android/material/button/MaterialButton;->setInternalBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v3}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    if-eqz v0, :cond_5

    iget p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->elevation:I

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_5
    return-void
.end method

.method public final updateStroke()V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v2

    if-eqz v1, :cond_2

    iget v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeColor:Landroid/content/res/ColorStateList;

    iget-object v5, v1, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iput v3, v5, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeWidth:F

    invoke-virtual {v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    iget-object v3, v1, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v5, v3, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeColor:Landroid/content/res/ColorStateList;

    if-eq v5, v4, :cond_0

    iput-object v4, v3, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->onStateChange([I)Z

    :cond_0
    if-eqz v2, :cond_2

    iget v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    int-to-float v1, v1

    iget-boolean v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shouldDrawSurfaceColorStroke:Z

    if-eqz v3, :cond_1

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    const v0, 0x7f040132

    invoke-static {p0, v0}, Ljms/IJobMgrService$_Parcel;->getColor(Landroid/view/View;I)I

    move-result v0

    :cond_1
    iget-object p0, v2, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iput v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeWidth:F

    invoke-virtual {v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    iget-object v0, v2, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeColor:Landroid/content/res/ColorStateList;

    if-eq v1, p0, :cond_2

    iput-object p0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->onStateChange([I)Z

    :cond_2
    return-void
.end method
