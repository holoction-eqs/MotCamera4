.class public Landroidx/media3/ui/PlayerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final adOverlayFrameLayout:Landroid/widget/FrameLayout;

.field public artworkDisplayMode:I

.field public final artworkView:Landroid/widget/ImageView;

.field public final bufferingView:Landroid/view/View;

.field public final componentListener:Landroidx/media3/ui/PlayerView$ComponentListener;

.field public final contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

.field public final controller:Landroidx/media3/ui/PlayerControlView;

.field public controllerAutoShow:Z

.field public controllerHideDuringAds:Z

.field public controllerHideOnTouch:Z

.field public controllerShowTimeoutMs:I

.field public customErrorMessage:Ljava/lang/CharSequence;

.field public defaultArtwork:Landroid/graphics/drawable/Drawable;

.field public final errorMessageView:Landroid/widget/TextView;

.field public keepContentOnPlayerReset:Z

.field public legacyControllerVisibilityListener:Landroidx/media3/ui/PlayerControlView$VisibilityListener;

.field public final overlayFrameLayout:Landroid/widget/FrameLayout;

.field public player:Landroidx/media3/common/Player;

.field public showBuffering:I

.field public final shutterView:Landroid/view/View;

.field public final subtitleView:Landroidx/media3/ui/SubtitleView;

.field public final surfaceView:Landroid/view/View;

.field public final surfaceViewIgnoresVideoAspectRatio:Z

.field public textureViewRotation:I

.field public useController:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v4, Landroidx/media3/ui/PlayerView$ComponentListener;

    invoke-direct {v4, v0}, Landroidx/media3/ui/PlayerView$ComponentListener;-><init>(Landroidx/media3/ui/PlayerView;)V

    iput-object v4, v0, Landroidx/media3/ui/PlayerView;->componentListener:Landroidx/media3/ui/PlayerView$ComponentListener;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v5

    const/16 v6, 0x17

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    iput-object v7, v0, Landroidx/media3/ui/PlayerView;->contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    iput-object v7, v0, Landroidx/media3/ui/PlayerView;->shutterView:Landroid/view/View;

    iput-object v7, v0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    iput-boolean v3, v0, Landroidx/media3/ui/PlayerView;->surfaceViewIgnoresVideoAspectRatio:Z

    iput-object v7, v0, Landroidx/media3/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    iput-object v7, v0, Landroidx/media3/ui/PlayerView;->subtitleView:Landroidx/media3/ui/SubtitleView;

    iput-object v7, v0, Landroidx/media3/ui/PlayerView;->bufferingView:Landroid/view/View;

    iput-object v7, v0, Landroidx/media3/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    iput-object v7, v0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    iput-object v7, v0, Landroidx/media3/ui/PlayerView;->adOverlayFrameLayout:Landroid/widget/FrameLayout;

    iput-object v7, v0, Landroidx/media3/ui/PlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v3, Landroidx/media3/common/util/Util;->SDK_INT:I

    const v4, 0x7f0600c4

    const v5, 0x7f080127

    if-lt v3, v6, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v1, v3, v5}, Landroidx/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v4, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v1, v3, v5}, Landroidx/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_b

    :cond_1
    const/4 v8, 0x3

    const/4 v9, 0x1

    const v10, 0x7f0d0065

    const/16 v11, 0x1388

    if-eqz v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v12

    sget-object v13, Landroidx/media3/ui/R$styleable;->PlayerView:[I

    invoke-virtual {v12, v2, v13, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v12

    const/16 v13, 0x1c

    :try_start_0
    invoke-virtual {v12, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v14

    invoke-virtual {v12, v13, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v13

    const/16 v15, 0xf

    invoke-virtual {v12, v15, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    const/16 v15, 0x21

    invoke-virtual {v12, v15, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    invoke-virtual {v12, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    const/16 v7, 0x9

    invoke-virtual {v12, v7, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    const/16 v8, 0x22

    invoke-virtual {v12, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    const/16 v6, 0x1d

    invoke-virtual {v12, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    const/16 v5, 0x11

    invoke-virtual {v12, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    const/16 v3, 0x1a

    invoke-virtual {v12, v3, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    const/16 v3, 0xb

    invoke-virtual {v12, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    move/from16 v17, v3

    const/4 v3, 0x4

    invoke-virtual {v12, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    const/4 v3, 0x0

    const/16 v9, 0x17

    invoke-virtual {v12, v9, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v9

    iget-boolean v3, v0, Landroidx/media3/ui/PlayerView;->keepContentOnPlayerReset:Z

    move/from16 v19, v5

    const/16 v5, 0xc

    invoke-virtual {v12, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v0, Landroidx/media3/ui/PlayerView;->keepContentOnPlayerReset:Z

    const/16 v3, 0xa

    const/4 v5, 0x1

    invoke-virtual {v12, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    move/from16 v5, v17

    move/from16 v12, v18

    move/from16 v18, v8

    move/from16 v17, v11

    move v8, v6

    move v11, v10

    move/from16 v6, v19

    move/from16 v20, v7

    move v7, v3

    move v3, v9

    move/from16 v9, v20

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    :cond_2
    move/from16 v17, v11

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v18, 0x1

    move v11, v10

    :goto_1
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    invoke-virtual {v10, v11, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/high16 v10, 0x40000

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    const v10, 0x7f0a0185

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroidx/media3/ui/AspectRatioFrameLayout;

    iput-object v10, v0, Landroidx/media3/ui/PlayerView;->contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    if-eqz v10, :cond_3

    invoke-virtual {v10, v6}, Landroidx/media3/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    :cond_3
    const v6, 0x7f0a01a6

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v0, Landroidx/media3/ui/PlayerView;->shutterView:Landroid/view/View;

    if-eqz v6, :cond_4

    if-eqz v14, :cond_4

    invoke-virtual {v6, v13}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_4
    const/4 v6, 0x2

    if-eqz v10, :cond_8

    if-eqz v8, :cond_8

    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    const/4 v13, -0x1

    invoke-direct {v11, v13, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    if-eq v8, v6, :cond_7

    const-class v13, Landroid/content/Context;

    const/4 v14, 0x3

    if-eq v8, v14, :cond_6

    const/4 v14, 0x4

    if-eq v8, v14, :cond_5

    new-instance v8, Landroid/view/SurfaceView;

    invoke-direct {v8, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    goto :goto_2

    :cond_5
    :try_start_1
    const-class v8, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView;

    sget v14, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView;->$r8$clinit:I

    const/4 v14, 0x1

    new-array v6, v14, [Ljava/lang/Class;

    const/4 v14, 0x0

    aput-object v13, v6, v14

    invoke-virtual {v8, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    iput-object v6, v0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "video_decoder_gl_surface_view requires an ExoPlayer dependency"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    :try_start_2
    const-class v6, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    sget v8, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->$r8$clinit:I

    const/4 v8, 0x1

    new-array v14, v8, [Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v13, v14, v8

    invoke-virtual {v6, v14}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    iput-object v6, v0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v6, 0x1

    goto :goto_3

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "spherical_gl_surface_view requires an ExoPlayer dependency"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_7
    new-instance v6, Landroid/view/TextureView;

    invoke-direct {v6, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    :goto_2
    const/4 v6, 0x0

    :goto_3
    iget-object v8, v0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    invoke-virtual {v8, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, v0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    invoke-virtual {v8, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, v0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/view/View;->setClickable(Z)V

    iget-object v8, v0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    invoke-virtual {v10, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_4

    :cond_8
    const/4 v11, 0x0

    const/4 v6, 0x0

    iput-object v6, v0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    move v6, v11

    :goto_4
    iput-boolean v6, v0, Landroidx/media3/ui/PlayerView;->surfaceViewIgnoresVideoAspectRatio:Z

    const v6, 0x7f0a017d

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    iput-object v6, v0, Landroidx/media3/ui/PlayerView;->adOverlayFrameLayout:Landroid/widget/FrameLayout;

    const v6, 0x7f0a0197

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    iput-object v6, v0, Landroidx/media3/ui/PlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    const v6, 0x7f0a017e

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v0, Landroidx/media3/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    if-eqz v15, :cond_9

    if-eqz v16, :cond_9

    if-eqz v6, :cond_9

    const/4 v6, 0x1

    goto :goto_5

    :cond_9
    move v6, v11

    :goto_5
    if-eqz v6, :cond_a

    move/from16 v6, v16

    goto :goto_6

    :cond_a
    move v6, v11

    :goto_6
    iput v6, v0, Landroidx/media3/ui/PlayerView;->artworkDisplayMode:I

    if-eqz v9, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v8, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    invoke-static {v6, v9}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v0, Landroidx/media3/ui/PlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    :cond_b
    const v6, 0x7f0a01a9

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/media3/ui/SubtitleView;

    iput-object v6, v0, Landroidx/media3/ui/PlayerView;->subtitleView:Landroidx/media3/ui/SubtitleView;

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Landroidx/media3/ui/SubtitleView;->setUserDefaultStyle()V

    invoke-virtual {v6}, Landroidx/media3/ui/SubtitleView;->setUserDefaultTextSize()V

    :cond_c
    const v6, 0x7f0a0182

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v0, Landroidx/media3/ui/PlayerView;->bufferingView:Landroid/view/View;

    const/16 v8, 0x8

    if-eqz v6, :cond_d

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    iput v3, v0, Landroidx/media3/ui/PlayerView;->showBuffering:I

    const v3, 0x7f0a018a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Landroidx/media3/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    if-eqz v3, :cond_e

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    const v3, 0x7f0a0186

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/media3/ui/PlayerControlView;

    const v8, 0x7f0a0187

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v6, :cond_f

    iput-object v6, v0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    goto :goto_7

    :cond_f
    if-eqz v8, :cond_10

    new-instance v6, Landroidx/media3/ui/PlayerControlView;

    invoke-direct {v6, v1, v2}, Landroidx/media3/ui/PlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v6, v0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v6, v3}, Landroid/view/View;->setId(I)V

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v1, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_7

    :cond_10
    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    :goto_7
    iget-object v1, v0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    if-eqz v1, :cond_11

    move/from16 v3, v17

    goto :goto_8

    :cond_11
    move v3, v11

    :goto_8
    iput v3, v0, Landroidx/media3/ui/PlayerView;->controllerShowTimeoutMs:I

    iput-boolean v5, v0, Landroidx/media3/ui/PlayerView;->controllerHideOnTouch:Z

    iput-boolean v12, v0, Landroidx/media3/ui/PlayerView;->controllerAutoShow:Z

    iput-boolean v7, v0, Landroidx/media3/ui/PlayerView;->controllerHideDuringAds:Z

    if-eqz v18, :cond_12

    if-eqz v1, :cond_12

    const/4 v3, 0x1

    goto :goto_9

    :cond_12
    move v3, v11

    :goto_9
    iput-boolean v3, v0, Landroidx/media3/ui/PlayerView;->useController:Z

    if-eqz v1, :cond_15

    iget-object v1, v1, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget v2, v1, Landroidx/media3/ui/PlayerControlViewLayoutManager;->uxState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_14

    const/4 v3, 0x2

    if-ne v2, v3, :cond_13

    goto :goto_a

    :cond_13
    invoke-virtual {v1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->removeHideCallbacks()V

    invoke-virtual {v1, v3}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setUxState(I)V

    :cond_14
    :goto_a
    iget-object v1, v0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    iget-object v1, v1, Landroidx/media3/ui/PlayerControlView;->visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    if-eqz v18, :cond_16

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/ui/PlayerView;->updateContentDescription()V

    :goto_b
    return-void
.end method

.method public static applyTextureViewRotation(Landroid/view/TextureView;I)V
    .locals 6

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-eqz v4, :cond_0

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v1, v4

    div-float v4, v2, v4

    int-to-float p1, p1

    invoke-virtual {v0, p1, v5, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, v3, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr v1, p1

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr v2, p1

    invoke-virtual {v0, v1, v2, v5, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method


# virtual methods
.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    check-cast v0, Landroidx/media3/common/BasePlayer;

    invoke-virtual {v0, v1}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x13

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_2

    const/16 v1, 0x16

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x14

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10d

    if-eq v0, v1, :cond_2

    const/16 v1, 0x15

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10c

    if-eq v0, v1, :cond_2

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    :goto_1
    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->useController()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Landroidx/media3/ui/PlayerControlView;->isFullyVisible()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->useController()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1, p1}, Landroidx/media3/ui/PlayerControlView;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    if-nez v1, :cond_6

    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->useController()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0, v3}, Landroidx/media3/ui/PlayerView;->maybeShowController(Z)V

    goto :goto_4

    :cond_6
    :goto_3
    invoke-virtual {p0, v3}, Landroidx/media3/ui/PlayerView;->maybeShowController(Z)V

    move v2, v3

    :cond_7
    :goto_4
    return v2
.end method

.method public getAdOverlayInfos()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/adobe/xmp/impl/ByteBuffer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/adobe/xmp/impl/ByteBuffer;

    const/4 v3, 0x2

    const/4 v4, 0x4

    const-string v5, "Transparent overlay does not impact viewability"

    invoke-direct {v2, v1, v4, v5, v3}, Lcom/adobe/xmp/impl/ByteBuffer;-><init>(Ljava/lang/Object;ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    if-eqz p0, :cond_1

    new-instance v1, Lcom/adobe/xmp/impl/ByteBuffer;

    invoke-direct {v1, p0}, Lcom/adobe/xmp/impl/ByteBuffer;-><init>(Landroidx/media3/ui/PlayerControlView;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public getAdViewGroup()Landroid/view/ViewGroup;
    .locals 1

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->adOverlayFrameLayout:Landroid/widget/FrameLayout;

    const-string v0, "exo_ad_overlay must be present for ad playback"

    invoke-static {p0, v0}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getArtworkDisplayMode()I
    .locals 0

    iget p0, p0, Landroidx/media3/ui/PlayerView;->artworkDisplayMode:I

    return p0
.end method

.method public getControllerAutoShow()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/ui/PlayerView;->controllerAutoShow:Z

    return p0
.end method

.method public getControllerHideOnTouch()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/ui/PlayerView;->controllerHideOnTouch:Z

    return p0
.end method

.method public getControllerShowTimeoutMs()I
    .locals 0

    iget p0, p0, Landroidx/media3/ui/PlayerView;->controllerShowTimeoutMs:I

    return p0
.end method

.method public getDefaultArtwork()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getOverlayFrameLayout()Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public getPlayer()Landroidx/media3/common/Player;
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    return-object p0
.end method

.method public getResizeMode()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    invoke-static {p0}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/media3/ui/AspectRatioFrameLayout;->getResizeMode()I

    move-result p0

    return p0
.end method

.method public getSubtitleView()Landroidx/media3/ui/SubtitleView;
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->subtitleView:Landroidx/media3/ui/SubtitleView;

    return-object p0
.end method

.method public getUseArtwork()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget p0, p0, Landroidx/media3/ui/PlayerView;->artworkDisplayMode:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getUseController()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/ui/PlayerView;->useController:Z

    return p0
.end method

.method public getVideoSurfaceView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    return-object p0
.end method

.method public final isPlayingAd()Z
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    check-cast v0, Landroidx/media3/common/BasePlayer;

    invoke-virtual {v0, v1}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    check-cast p0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final maybeShowController(Z)V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->controllerHideDuringAds:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->useController()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->isFullyVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->getShowTimeoutMs()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->shouldShowControllerIndefinitely()Z

    move-result v1

    if-nez p1, :cond_2

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p0, v1}, Landroidx/media3/ui/PlayerView;->showController(Z)V

    :cond_3
    return-void
.end method

.method public final onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->useController()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->maybeShowController(Z)V

    return p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final performClick()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->toggleControllerVisibility()V

    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result p0

    return p0
.end method

.method public setArtworkDisplayMode(I)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iget v1, p0, Landroidx/media3/ui/PlayerView;->artworkDisplayMode:I

    if-eq v1, p1, :cond_2

    iput p1, p0, Landroidx/media3/ui/PlayerView;->artworkDisplayMode:I

    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerView;->updateForCurrentTrackSelections(Z)V

    :cond_2
    return-void
.end method

.method public setAspectRatioListener(Landroidx/media3/ui/AspectRatioFrameLayout$AspectRatioListener;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    invoke-static {p0}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/media3/ui/AspectRatioFrameLayout;->setAspectRatioListener(Landroidx/media3/ui/AspectRatioFrameLayout$AspectRatioListener;)V

    return-void
.end method

.method public setControllerAutoShow(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/ui/PlayerView;->controllerAutoShow:Z

    return-void
.end method

.method public setControllerHideDuringAds(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/ui/PlayerView;->controllerHideDuringAds:Z

    return-void
.end method

.method public setControllerHideOnTouch(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    iput-boolean p1, p0, Landroidx/media3/ui/PlayerView;->controllerHideOnTouch:Z

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->updateContentDescription()V

    return-void
.end method

.method public setControllerOnFullScreenModeChangedListener(Landroidx/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p0}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->setOnFullScreenModeChangedListener(Landroidx/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;)V

    return-void
.end method

.method public setControllerShowTimeoutMs(I)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    iput p1, p0, Landroidx/media3/ui/PlayerView;->controllerShowTimeoutMs:I

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->isFullyVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->shouldShowControllerIndefinitely()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->showController(Z)V

    :cond_0
    return-void
.end method

.method public setControllerVisibilityListener(Landroidx/media3/ui/PlayerControlView$VisibilityListener;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->legacyControllerVisibilityListener:Landroidx/media3/ui/PlayerControlView$VisibilityListener;

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Landroidx/media3/ui/PlayerControlView;->visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_1

    .line 1
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 2
    :cond_1
    iput-object p1, p0, Landroidx/media3/ui/PlayerView;->legacyControllerVisibilityListener:Landroidx/media3/ui/PlayerControlView$VisibilityListener;

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->setControllerVisibilityListener(Landroidx/media3/ui/PlayerView$ControllerVisibilityListener;)V

    :cond_2
    return-void
.end method

.method public setControllerVisibilityListener(Landroidx/media3/ui/PlayerView$ControllerVisibilityListener;)V
    .locals 0

    .line 5
    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->setControllerVisibilityListener(Landroidx/media3/ui/PlayerControlView$VisibilityListener;)V

    :cond_0
    return-void
.end method

.method public setCustomErrorMessage(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iput-object p1, p0, Landroidx/media3/ui/PlayerView;->customErrorMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->updateErrorMessage()V

    return-void
.end method

.method public setDefaultArtwork(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroidx/media3/ui/PlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->updateForCurrentTrackSelections(Z)V

    :cond_0
    return-void
.end method

.method public final setDrawableArtwork(Landroid/graphics/drawable/Drawable;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-lez v1, :cond_2

    if-lez v2, :cond_2

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iget v3, p0, Landroidx/media3/ui/PlayerView;->artworkDisplayMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    :cond_0
    iget-object v3, p0, Landroidx/media3/ui/PlayerView;->contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v1}, Landroidx/media3/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    :cond_1
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public setErrorMessageProvider(Landroidx/media3/common/ErrorMessageProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/ErrorMessageProvider;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->updateErrorMessage()V

    :cond_0
    return-void
.end method

.method public setFullscreenButtonClickListener(Landroidx/media3/ui/PlayerView$FullscreenButtonClickListener;)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p1}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->componentListener:Landroidx/media3/ui/PlayerView$ComponentListener;

    invoke-virtual {p1, p0}, Landroidx/media3/ui/PlayerControlView;->setOnFullScreenModeChangedListener(Landroidx/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;)V

    return-void
.end method

.method public setKeepContentOnPlayerReset(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->keepContentOnPlayerReset:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/media3/ui/PlayerView;->keepContentOnPlayerReset:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->updateForCurrentTrackSelections(Z)V

    :cond_0
    return-void
.end method

.method public setPlayer(Landroidx/media3/common/Player;)V
    .locals 10

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    if-eqz p1, :cond_2

    move-object v0, p1

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->applicationLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v2

    :goto_2
    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    if-ne v0, p1, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    const/16 v4, 0x1b

    iget-object v5, p0, Landroidx/media3/ui/PlayerView;->componentListener:Landroidx/media3/ui/PlayerView$ComponentListener;

    const/4 v6, 0x0

    if-eqz v0, :cond_6

    move-object v7, v0

    check-cast v7, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v7, v5}, Landroidx/media3/exoplayer/ExoPlayerImpl;->removeListener(Landroidx/media3/common/Player$Listener;)V

    check-cast v0, Landroidx/media3/common/BasePlayer;

    invoke-virtual {v0, v4}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_6

    instance-of v0, v1, Landroid/view/TextureView;

    if-eqz v0, :cond_4

    move-object v0, v1

    check-cast v0, Landroid/view/TextureView;

    invoke-virtual {v7}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    if-eqz v0, :cond_6

    iget-object v8, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->textureView:Landroid/view/TextureView;

    if-ne v0, v8, :cond_6

    invoke-virtual {v7}, Landroidx/media3/exoplayer/ExoPlayerImpl;->clearVideoSurface()V

    goto :goto_4

    :cond_4
    instance-of v0, v1, Landroid/view/SurfaceView;

    if-eqz v0, :cond_6

    move-object v0, v1

    check-cast v0, Landroid/view/SurfaceView;

    invoke-virtual {v7}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    if-nez v0, :cond_5

    move-object v0, v6

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    :goto_3
    invoke-virtual {v7}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    if-eqz v0, :cond_6

    iget-object v8, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-ne v0, v8, :cond_6

    invoke-virtual {v7}, Landroidx/media3/exoplayer/ExoPlayerImpl;->clearVideoSurface()V

    :cond_6
    :goto_4
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->subtitleView:Landroidx/media3/ui/SubtitleView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v6}, Landroidx/media3/ui/SubtitleView;->setCues(Ljava/util/List;)V

    :cond_7
    iput-object p1, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->useController()Z

    move-result v7

    iget-object v8, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    if-eqz v7, :cond_8

    invoke-virtual {v8, p1}, Landroidx/media3/ui/PlayerControlView;->setPlayer(Landroidx/media3/common/Player;)V

    :cond_8
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->updateBuffering()V

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->updateErrorMessage()V

    invoke-virtual {p0, v2}, Landroidx/media3/ui/PlayerView;->updateForCurrentTrackSelections(Z)V

    if-eqz p1, :cond_18

    move-object v7, p1

    check-cast v7, Landroidx/media3/common/BasePlayer;

    invoke-virtual {v7, v4}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result v4

    if-eqz v4, :cond_16

    instance-of v4, v1, Landroid/view/TextureView;

    if-eqz v4, :cond_d

    check-cast v1, Landroid/view/TextureView;

    move-object v2, p1

    check-cast v2, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    if-nez v1, :cond_9

    invoke-virtual {v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->clearVideoSurface()V

    goto/16 :goto_8

    :cond_9
    invoke-virtual {v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->removeSurfaceCallbacks()V

    iput-object v1, v2, Landroidx/media3/exoplayer/ExoPlayerImpl;->textureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v4

    if-eqz v4, :cond_a

    const-string v4, "ExoPlayerImpl"

    const-string v8, "Replacing existing SurfaceTextureListener."

    invoke-static {v4, v8}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    iget-object v4, v2, Landroidx/media3/exoplayer/ExoPlayerImpl;->componentListener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    invoke-virtual {v1, v4}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    invoke-virtual {v1}, Landroid/view/TextureView;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v4

    goto :goto_5

    :cond_b
    move-object v4, v6

    :goto_5
    if-nez v4, :cond_c

    invoke-virtual {v2, v6}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    goto/16 :goto_8

    :cond_c
    new-instance v6, Landroid/view/Surface;

    invoke-direct {v6, v4}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v2, v6}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    iput-object v6, v2, Landroidx/media3/exoplayer/ExoPlayerImpl;->ownedSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v2, v4, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    goto/16 :goto_8

    :cond_d
    instance-of v4, v1, Landroid/view/SurfaceView;

    if-eqz v4, :cond_14

    check-cast v1, Landroid/view/SurfaceView;

    move-object v4, p1

    check-cast v4, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v4}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    instance-of v8, v1, Landroidx/media3/exoplayer/video/VideoDecoderOutputBufferRenderer;

    iget-object v9, v4, Landroidx/media3/exoplayer/ExoPlayerImpl;->componentListener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    if-eqz v8, :cond_e

    invoke-virtual {v4}, Landroidx/media3/exoplayer/ExoPlayerImpl;->removeSurfaceCallbacks()V

    invoke-virtual {v4, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    goto :goto_6

    :cond_e
    instance-of v8, v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    if-eqz v8, :cond_10

    invoke-virtual {v4}, Landroidx/media3/exoplayer/ExoPlayerImpl;->removeSurfaceCallbacks()V

    move-object v6, v1

    check-cast v6, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    iput-object v6, v4, Landroidx/media3/exoplayer/ExoPlayerImpl;->sphericalGLSurfaceView:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    iget-object v6, v4, Landroidx/media3/exoplayer/ExoPlayerImpl;->frameMetadataListener:Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

    invoke-virtual {v4, v6}, Landroidx/media3/exoplayer/ExoPlayerImpl;->createMessageInternal(Landroidx/media3/exoplayer/PlayerMessage$Target;)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v6

    iget-boolean v8, v6, Landroidx/media3/exoplayer/PlayerMessage;->isSent:Z

    xor-int/2addr v2, v8

    invoke-static {v2}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    const/16 v2, 0x2710

    iput v2, v6, Landroidx/media3/exoplayer/PlayerMessage;->type:I

    iget-object v2, v4, Landroidx/media3/exoplayer/ExoPlayerImpl;->sphericalGLSurfaceView:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    invoke-virtual {v6, v2}, Landroidx/media3/exoplayer/PlayerMessage;->setPayload(Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroidx/media3/exoplayer/PlayerMessage;->send()V

    iget-object v2, v4, Landroidx/media3/exoplayer/ExoPlayerImpl;->sphericalGLSurfaceView:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    iget-object v2, v2, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->videoSurfaceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v4, Landroidx/media3/exoplayer/ExoPlayerImpl;->sphericalGLSurfaceView:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->getVideoSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    :goto_6
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-boolean v3, v4, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceHolderSurfaceIsVideoOutput:Z

    iput-object v1, v4, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v9}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v1, v4, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v4, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v4, v2, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    goto :goto_8

    :cond_f
    invoke-virtual {v4, v3, v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    goto :goto_8

    :cond_10
    if-nez v1, :cond_11

    move-object v1, v6

    goto :goto_7

    :cond_11
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    :goto_7
    invoke-virtual {v4}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    if-nez v1, :cond_12

    invoke-virtual {v4}, Landroidx/media3/exoplayer/ExoPlayerImpl;->clearVideoSurface()V

    goto :goto_8

    :cond_12
    invoke-virtual {v4}, Landroidx/media3/exoplayer/ExoPlayerImpl;->removeSurfaceCallbacks()V

    iput-boolean v2, v4, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceHolderSurfaceIsVideoOutput:Z

    iput-object v1, v4, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v9}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-virtual {v4, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v4, v2, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    goto :goto_8

    :cond_13
    invoke-virtual {v4, v6}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    invoke-virtual {v4, v3, v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    :cond_14
    :goto_8
    const/16 v1, 0x1e

    invoke-virtual {v7, v1}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_15

    move-object v1, p1

    check-cast v1, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTracks()Landroidx/media3/common/Tracks;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Tracks;->isTypeSupported()Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_15
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->updateAspectRatio()V

    :cond_16
    if-eqz v0, :cond_17

    const/16 v1, 0x1c

    invoke-virtual {v7, v1}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_17

    move-object v1, p1

    check-cast v1, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v1, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->currentCueGroup:Landroidx/media3/common/text/CueGroup;

    iget-object v1, v1, Landroidx/media3/common/text/CueGroup;->cues:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Landroidx/media3/ui/SubtitleView;->setCues(Ljava/util/List;)V

    :cond_17
    check-cast p1, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {p1, v5}, Landroidx/media3/common/util/ListenerSet;->add(Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Landroidx/media3/ui/PlayerView;->maybeShowController(Z)V

    goto :goto_9

    :cond_18
    if-eqz v8, :cond_19

    invoke-virtual {v8}, Landroidx/media3/ui/PlayerControlView;->hide()V

    :cond_19
    :goto_9
    return-void
.end method

.method public setRepeatToggleModes(I)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p0}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->setRepeatToggleModes(I)V

    return-void
.end method

.method public setResizeMode(I)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    invoke-static {p0}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/media3/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    return-void
.end method

.method public setShowBuffering(I)V
    .locals 1

    iget v0, p0, Landroidx/media3/ui/PlayerView;->showBuffering:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroidx/media3/ui/PlayerView;->showBuffering:I

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->updateBuffering()V

    :cond_0
    return-void
.end method

.method public setShowFastForwardButton(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p0}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowFastForwardButton(Z)V

    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p0}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowMultiWindowTimeBar(Z)V

    return-void
.end method

.method public setShowNextButton(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p0}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowNextButton(Z)V

    return-void
.end method

.method public setShowPreviousButton(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p0}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowPreviousButton(Z)V

    return-void
.end method

.method public setShowRewindButton(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p0}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowRewindButton(Z)V

    return-void
.end method

.method public setShowShuffleButton(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p0}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowShuffleButton(Z)V

    return-void
.end method

.method public setShowSubtitleButton(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p0}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowSubtitleButton(Z)V

    return-void
.end method

.method public setShowVrButton(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p0}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowVrButton(Z)V

    return-void
.end method

.method public setShutterBackgroundColor(I)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->shutterView:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setUseArtwork(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->setArtworkDisplayMode(I)V

    return-void
.end method

.method public setUseController(Z)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    if-eqz p1, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v1

    :goto_1
    invoke-static {v3}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->useController:Z

    if-ne v0, p1, :cond_4

    return-void

    :cond_4
    iput-boolean p1, p0, Landroidx/media3/ui/PlayerView;->useController:Z

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->useController()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    :goto_2
    invoke-virtual {v2, p1}, Landroidx/media3/ui/PlayerControlView;->setPlayer(Landroidx/media3/common/Player;)V

    goto :goto_3

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroidx/media3/ui/PlayerControlView;->hide()V

    const/4 p1, 0x0

    goto :goto_2

    :cond_6
    :goto_3
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->updateContentDescription()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    instance-of v0, p0, Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final shouldShowControllerIndefinitely()Z
    .locals 4

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlaybackState()I

    move-result v0

    iget-boolean v2, p0, Landroidx/media3/ui/PlayerView;->controllerAutoShow:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    const/16 v3, 0x11

    check-cast v2, Landroidx/media3/common/BasePlayer;

    invoke-virtual {v2, v3}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    check-cast v2, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    if-eq v0, v1, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method public final showController(Z)V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->useController()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    iget p1, p0, Landroidx/media3/ui/PlayerView;->controllerShowTimeoutMs:I

    :goto_0
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowTimeoutMs(I)V

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->playerControlView:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {p1}, Landroidx/media3/ui/PlayerControlView;->isVisible()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroidx/media3/ui/PlayerControlView;->updateAll()V

    iget-object p1, p1, Landroidx/media3/ui/PlayerControlView;->playPauseButton:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_2
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->showAllBars()V

    return-void
.end method

.method public final toggleControllerVisibility()V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->useController()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->isFullyVisible()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerView;->maybeShowController(Z)V

    goto :goto_0

    :cond_1
    iget-boolean p0, p0, Landroidx/media3/ui/PlayerView;->controllerHideOnTouch:Z

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->hide()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final updateAspectRatio()V
    .locals 6

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    if-eqz v0, :cond_0

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoSize:Landroidx/media3/common/VideoSize;

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    :goto_0
    iget v1, v0, Landroidx/media3/common/VideoSize;->width:I

    const/4 v2, 0x0

    iget v3, v0, Landroidx/media3/common/VideoSize;->height:I

    if-eqz v3, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    int-to-float v1, v1

    iget v4, v0, Landroidx/media3/common/VideoSize;->pixelWidthHeightRatio:F

    mul-float/2addr v1, v4

    int-to-float v3, v3

    div-float/2addr v1, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v2

    :goto_2
    iget-object v3, p0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    instance-of v4, v3, Landroid/view/TextureView;

    if-eqz v4, :cond_7

    cmpl-float v4, v1, v2

    iget v0, v0, Landroidx/media3/common/VideoSize;->unappliedRotationDegrees:I

    if-lez v4, :cond_4

    const/16 v4, 0x5a

    if-eq v0, v4, :cond_3

    const/16 v4, 0x10e

    if-ne v0, v4, :cond_4

    :cond_3
    const/high16 v4, 0x3f800000    # 1.0f

    div-float/2addr v4, v1

    move v1, v4

    :cond_4
    iget v4, p0, Landroidx/media3/ui/PlayerView;->textureViewRotation:I

    iget-object v5, p0, Landroidx/media3/ui/PlayerView;->componentListener:Landroidx/media3/ui/PlayerView$ComponentListener;

    if-eqz v4, :cond_5

    invoke-virtual {v3, v5}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_5
    iput v0, p0, Landroidx/media3/ui/PlayerView;->textureViewRotation:I

    if-eqz v0, :cond_6

    invoke-virtual {v3, v5}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_6
    check-cast v3, Landroid/view/TextureView;

    iget v0, p0, Landroidx/media3/ui/PlayerView;->textureViewRotation:I

    invoke-static {v3, v0}, Landroidx/media3/ui/PlayerView;->applyTextureViewRotation(Landroid/view/TextureView;I)V

    :cond_7
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->surfaceViewIgnoresVideoAspectRatio:Z

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    move v2, v1

    :goto_3
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    if-eqz p0, :cond_9

    invoke-virtual {p0, v2}, Landroidx/media3/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    :cond_9
    return-void
.end method

.method public final updateBuffering()V
    .locals 5

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->bufferingView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v1, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlaybackState()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    iget v1, p0, Landroidx/media3/ui/PlayerView;->showBuffering:I

    const/4 v4, 0x1

    if-eq v1, v3, :cond_1

    if-ne v1, v4, :cond_0

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    check-cast p0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public final updateContentDescription()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    if-eqz v1, :cond_2

    iget-boolean v2, p0, Landroidx/media3/ui/PlayerView;->useController:Z

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Landroidx/media3/ui/PlayerControlView;->isFullyVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroidx/media3/ui/PlayerView;->controllerHideOnTouch:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12017f

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12018d

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final updateErrorMessage()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->customErrorMessage:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    if-eqz p0, :cond_1

    check-cast p0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackError:Landroidx/media3/exoplayer/ExoPlaybackException;

    :cond_1
    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public final updateForCurrentTrackSelections(Z)V
    .locals 8

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->shutterView:Landroid/view/View;

    const/4 v2, 0x4

    const v3, 0x106000d

    const/4 v4, 0x0

    iget-object v5, p0, Landroidx/media3/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    move-object v6, v0

    check-cast v6, Landroidx/media3/common/BasePlayer;

    const/16 v7, 0x1e

    invoke-virtual {v6, v7}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result v7

    if-eqz v7, :cond_b

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTracks()Landroidx/media3/common/Tracks;

    move-result-object v7

    iget-object v7, v7, Landroidx/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v7}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean p1, p0, Landroidx/media3/ui/PlayerView;->keepContentOnPlayerReset:Z

    if-nez p1, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTracks()Landroidx/media3/common/Tracks;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroidx/media3/common/Tracks;->isTypeSelected(I)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz v5, :cond_2

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget p1, p0, Landroidx/media3/ui/PlayerView;->artworkDisplayMode:I

    if-eqz p1, :cond_5

    invoke-static {v5}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_5
    move p1, v4

    :goto_0
    if-eqz p1, :cond_9

    const/16 p1, 0x12

    invoke-virtual {v6, p1}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    check-cast v6, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v6}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object p1, v6, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    iget-object p1, p1, Landroidx/media3/common/MediaMetadata;->artworkData:[B

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    array-length v0, p1

    invoke-static {p1, v4, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerView;->setDrawableArtwork(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    :goto_1
    if-eqz v4, :cond_8

    return-void

    :cond_8
    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->setDrawableArtwork(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    if-eqz p0, :cond_9

    return-void

    :cond_9
    if-eqz v5, :cond_a

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_a
    return-void

    :cond_b
    :goto_2
    iget-boolean p0, p0, Landroidx/media3/ui/PlayerView;->keepContentOnPlayerReset:Z

    if-nez p0, :cond_d

    if-eqz v5, :cond_c

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_c
    if-eqz v1, :cond_d

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    return-void
.end method

.method public final useController()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->useController:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p0}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
