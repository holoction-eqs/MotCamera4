.class public Landroidx/appcompat/widget/AppCompatImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field public final mBackgroundTintHelper:Landroidx/core/provider/FontRequest;

.field public mHasLevel:Z

.field public final mImageHelper:Landroidx/media3/common/util/GlProgram;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-static {p1}, Landroidx/appcompat/widget/TintContextWrapper;->wrap(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/widget/AppCompatImageView;->mHasLevel:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Landroidx/appcompat/widget/ThemeUtils;->checkAppCompatTheme(Landroid/content/Context;Landroid/view/View;)V

    new-instance p1, Landroidx/core/provider/FontRequest;

    invoke-direct {p1, p0}, Landroidx/core/provider/FontRequest;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatImageView;->mBackgroundTintHelper:Landroidx/core/provider/FontRequest;

    invoke-virtual {p1, p2, p3}, Landroidx/core/provider/FontRequest;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    new-instance p1, Landroidx/media3/common/util/GlProgram;

    invoke-direct {p1, p0}, Landroidx/media3/common/util/GlProgram;-><init>(Landroid/widget/ImageView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Landroidx/media3/common/util/GlProgram;

    invoke-virtual {p1, p2, p3}, Landroidx/media3/common/util/GlProgram;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mBackgroundTintHelper:Landroidx/core/provider/FontRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/core/provider/FontRequest;->applySupportBackgroundTint()V

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Landroidx/media3/common/util/GlProgram;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/media3/common/util/GlProgram;->applySupportImageTint()V

    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mBackgroundTintHelper:Landroidx/core/provider/FontRequest;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/core/provider/FontRequest;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mBackgroundTintHelper:Landroidx/core/provider/FontRequest;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/core/provider/FontRequest;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSupportImageTintList()Landroid/content/res/ColorStateList;
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Landroidx/media3/common/util/GlProgram;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/TintInfo;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/TintInfo;->mTintList:Ljava/lang/Object;

    check-cast p0, Landroid/content/res/ColorStateList;

    move-object v0, p0

    :cond_0
    return-object v0
.end method

.method public getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Landroidx/media3/common/util/GlProgram;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/TintInfo;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/TintInfo;->mTintMode:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/PorterDuff$Mode;

    move-object v0, p0

    :cond_0
    return-object v0
.end method

.method public final hasOverlappingRendering()Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Landroidx/media3/common/util/GlProgram;

    iget-object v0, v0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/ImageView;->hasOverlappingRendering()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mBackgroundTintHelper:Landroidx/core/provider/FontRequest;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/core/provider/FontRequest;->onSetBackgroundDrawable()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mBackgroundTintHelper:Landroidx/core/provider/FontRequest;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/core/provider/FontRequest;->onSetBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Landroidx/media3/common/util/GlProgram;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/common/util/GlProgram;->applySupportImageTint()V

    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Landroidx/media3/common/util/GlProgram;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Landroidx/appcompat/widget/AppCompatImageView;->mHasLevel:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v1

    iput v1, v0, Landroidx/media3/common/util/GlProgram;->programId:I

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/media3/common/util/GlProgram;->applySupportImageTint()V

    iget-boolean p0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mHasLevel:Z

    if-nez p0, :cond_1

    iget-object p0, v0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, v0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iget p1, v0, Landroidx/media3/common/util/GlProgram;->programId:I

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_1
    return-void
.end method

.method public setImageLevel(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageLevel(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/widget/AppCompatImageView;->mHasLevel:Z

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Landroidx/media3/common/util/GlProgram;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/GlProgram;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Landroidx/media3/common/util/GlProgram;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/common/util/GlProgram;->applySupportImageTint()V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mBackgroundTintHelper:Landroidx/core/provider/FontRequest;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/core/provider/FontRequest;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mBackgroundTintHelper:Landroidx/core/provider/FontRequest;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/core/provider/FontRequest;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportImageTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Landroidx/media3/common/util/GlProgram;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/GlProgram;->setSupportImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Landroidx/media3/common/util/GlProgram;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/GlProgram;->setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method
