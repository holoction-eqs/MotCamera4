.class public final Landroidx/media3/ui/PlayerControlView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final PLAYBACK_SPEEDS:[F


# instance fields
.field public adGroupTimesMs:[J

.field public final audioTrackButton:Landroid/view/View;

.field public final audioTrackSelectionAdapter:Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;

.field public final buttonAlphaDisabled:F

.field public final buttonAlphaEnabled:F

.field public final componentListener:Landroidx/media3/ui/PlayerControlView$ComponentListener;

.field public final controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

.field public currentWindowOffset:J

.field public final durationView:Landroid/widget/TextView;

.field public final extraAdGroupTimesMs:[J

.field public final extraPlayedAdGroups:[Z

.field public final fastForwardButton:Landroid/view/View;

.field public final fastForwardButtonTextView:Landroid/widget/TextView;

.field public final formatBuilder:Ljava/lang/StringBuilder;

.field public final formatter:Ljava/util/Formatter;

.field public final fullScreenButton:Landroid/widget/ImageView;

.field public final fullScreenEnterContentDescription:Ljava/lang/String;

.field public final fullScreenEnterDrawable:Landroid/graphics/drawable/Drawable;

.field public final fullScreenExitContentDescription:Ljava/lang/String;

.field public final fullScreenExitDrawable:Landroid/graphics/drawable/Drawable;

.field public isAttachedToWindow:Z

.field public isFullScreen:Z

.field public final minimalFullScreenButton:Landroid/widget/ImageView;

.field public multiWindowTimeBar:Z

.field public needToHideBars:Z

.field public final nextButton:Landroid/view/View;

.field public onFullScreenModeChangedListener:Landroidx/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;

.field public final period:Landroidx/media3/common/Timeline$Period;

.field public final playPauseButton:Landroid/view/View;

.field public final playbackSpeedAdapter:Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;

.field public final playbackSpeedButton:Landroid/view/View;

.field public playedAdGroups:[Z

.field public player:Landroidx/media3/common/Player;

.field public final positionView:Landroid/widget/TextView;

.field public final previousButton:Landroid/view/View;

.field public final repeatAllButtonContentDescription:Ljava/lang/String;

.field public final repeatAllButtonDrawable:Landroid/graphics/drawable/Drawable;

.field public final repeatOffButtonContentDescription:Ljava/lang/String;

.field public final repeatOffButtonDrawable:Landroid/graphics/drawable/Drawable;

.field public final repeatOneButtonContentDescription:Ljava/lang/String;

.field public final repeatOneButtonDrawable:Landroid/graphics/drawable/Drawable;

.field public final repeatToggleButton:Landroid/widget/ImageView;

.field public repeatToggleModes:I

.field public final resources:Landroid/content/res/Resources;

.field public final rewindButton:Landroid/view/View;

.field public final rewindButtonTextView:Landroid/widget/TextView;

.field public scrubbing:Z

.field public final settingsAdapter:Landroidx/media3/ui/PlayerControlView$SettingsAdapter;

.field public final settingsButton:Landroid/view/View;

.field public final settingsView:Landroidx/recyclerview/widget/RecyclerView;

.field public final settingsWindow:Landroid/widget/PopupWindow;

.field public final settingsWindowMargin:I

.field public showMultiWindowTimeBar:Z

.field public showTimeoutMs:I

.field public final shuffleButton:Landroid/widget/ImageView;

.field public final shuffleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

.field public final shuffleOffContentDescription:Ljava/lang/String;

.field public final shuffleOnButtonDrawable:Landroid/graphics/drawable/Drawable;

.field public final shuffleOnContentDescription:Ljava/lang/String;

.field public final subtitleButton:Landroid/widget/ImageView;

.field public final subtitleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

.field public final subtitleOffContentDescription:Ljava/lang/String;

.field public final subtitleOnButtonDrawable:Landroid/graphics/drawable/Drawable;

.field public final subtitleOnContentDescription:Ljava/lang/String;

.field public final textTrackSelectionAdapter:Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;

.field public final timeBar:Landroidx/media3/ui/TimeBar;

.field public timeBarMinUpdateIntervalMs:I

.field public final trackNameProvider:Landroidx/media3/ui/DefaultTrackNameProvider;

.field public final updateProgressAction:Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

.field public final visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final vrButton:Landroid/view/View;

.field public final window:Landroidx/media3/common/Timeline$Window;


# direct methods
.method public static $r8$lambda$ZXGKgwFyRGfHd0iIfUsKUre8R7s(Landroidx/media3/ui/PlayerControlView;)V
    .locals 6

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->onFullScreenModeChangedListener:Landroidx/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->isFullScreen:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->isFullScreen:Z

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->fullScreenExitContentDescription:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->fullScreenExitDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroidx/media3/ui/PlayerControlView;->fullScreenEnterContentDescription:Ljava/lang/String;

    iget-object v4, p0, Landroidx/media3/ui/PlayerControlView;->fullScreenEnterDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroidx/media3/ui/PlayerControlView;->fullScreenButton:Landroid/widget/ImageView;

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object v0, v3

    :goto_0
    invoke-virtual {v5, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->isFullScreen:Z

    iget-object v5, p0, Landroidx/media3/ui/PlayerControlView;->minimalFullScreenButton:Landroid/widget/ImageView;

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object v1, v3

    :goto_2
    invoke-virtual {v5, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->onFullScreenModeChangedListener:Landroidx/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;

    if-eqz p0, :cond_5

    check-cast p0, Landroidx/media3/ui/PlayerView$ComponentListener;

    iget-object p0, p0, Landroidx/media3/ui/PlayerView$ComponentListener;->this$0:Landroidx/media3/ui/PlayerView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_5
    :goto_4
    return-void
.end method

.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "media3.ui"

    invoke-static {v0}, Landroidx/media3/common/MediaLibraryInfo;->registerModule(Ljava/lang/String;)V

    const/4 v0, 0x7

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/ui/PlayerControlView;->PLAYBACK_SPEEDS:[F

    return-void

    :array_0
    .array-data 4
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v1, p2

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v0, v8, v9, v10}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v2, 0x1388

    iput v2, v0, Landroidx/media3/ui/PlayerControlView;->showTimeoutMs:I

    iput v10, v0, Landroidx/media3/ui/PlayerControlView;->repeatToggleModes:I

    const/16 v2, 0xc8

    iput v2, v0, Landroidx/media3/ui/PlayerControlView;->timeBarMinUpdateIntervalMs:I

    const/4 v11, 0x2

    const/16 v12, 0x17

    const v2, 0x7f0d0064

    const/4 v13, 0x1

    if-eqz v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget-object v4, Landroidx/media3/ui/R$styleable;->PlayerControlView:[I

    invoke-virtual {v3, v1, v4, v10, v10}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v4, 0x6

    :try_start_0
    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iget v4, v0, Landroidx/media3/ui/PlayerControlView;->showTimeoutMs:I

    const/16 v5, 0x15

    invoke-virtual {v3, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v0, Landroidx/media3/ui/PlayerControlView;->showTimeoutMs:I

    iget v4, v0, Landroidx/media3/ui/PlayerControlView;->repeatToggleModes:I

    const/16 v5, 0x9

    invoke-virtual {v3, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v0, Landroidx/media3/ui/PlayerControlView;->repeatToggleModes:I

    const/16 v4, 0x12

    invoke-virtual {v3, v4, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    const/16 v5, 0xf

    invoke-virtual {v3, v5, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    const/16 v6, 0x11

    invoke-virtual {v3, v6, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    const/16 v7, 0x10

    invoke-virtual {v3, v7, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    const/16 v14, 0x13

    invoke-virtual {v3, v14, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    const/16 v15, 0x14

    invoke-virtual {v3, v15, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    const/16 v9, 0x16

    invoke-virtual {v3, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iget v10, v0, Landroidx/media3/ui/PlayerControlView;->timeBarMinUpdateIntervalMs:I

    invoke-virtual {v3, v12, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    invoke-virtual {v0, v10}, Landroidx/media3/ui/PlayerControlView;->setTimeBarMinUpdateInterval(I)V

    invoke-virtual {v3, v11, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    move/from16 v29, v9

    move v9, v4

    move v4, v15

    move v15, v7

    move/from16 v7, v29

    move/from16 v30, v10

    move v10, v5

    move v5, v14

    move v14, v6

    move/from16 v6, v30

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    :cond_0
    move v6, v13

    move v9, v6

    move v10, v9

    move v14, v10

    move v15, v14

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/high16 v2, 0x40000

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    new-instance v3, Landroidx/media3/ui/PlayerControlView$ComponentListener;

    invoke-direct {v3, v0}, Landroidx/media3/ui/PlayerControlView$ComponentListener;-><init>(Landroidx/media3/ui/PlayerControlView;)V

    iput-object v3, v0, Landroidx/media3/ui/PlayerControlView;->componentListener:Landroidx/media3/ui/PlayerControlView$ComponentListener;

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, v0, Landroidx/media3/ui/PlayerControlView;->visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v2}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iput-object v2, v0, Landroidx/media3/ui/PlayerControlView;->period:Landroidx/media3/common/Timeline$Period;

    new-instance v2, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v2}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object v2, v0, Landroidx/media3/ui/PlayerControlView;->window:Landroidx/media3/common/Timeline$Window;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, v0, Landroidx/media3/ui/PlayerControlView;->formatBuilder:Ljava/lang/StringBuilder;

    new-instance v12, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-direct {v12, v2, v11}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v12, v0, Landroidx/media3/ui/PlayerControlView;->formatter:Ljava/util/Formatter;

    const/4 v2, 0x0

    new-array v11, v2, [J

    iput-object v11, v0, Landroidx/media3/ui/PlayerControlView;->adGroupTimesMs:[J

    new-array v11, v2, [Z

    iput-object v11, v0, Landroidx/media3/ui/PlayerControlView;->playedAdGroups:[Z

    new-array v11, v2, [J

    iput-object v11, v0, Landroidx/media3/ui/PlayerControlView;->extraAdGroupTimesMs:[J

    new-array v11, v2, [Z

    iput-object v11, v0, Landroidx/media3/ui/PlayerControlView;->extraPlayedAdGroups:[Z

    new-instance v2, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    const/16 v11, 0xb

    invoke-direct {v2, v0, v11}, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object v2, v0, Landroidx/media3/ui/PlayerControlView;->updateProgressAction:Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    const v2, 0x7f0a0189

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Landroidx/media3/ui/PlayerControlView;->durationView:Landroid/widget/TextView;

    const v2, 0x7f0a019c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Landroidx/media3/ui/PlayerControlView;->positionView:Landroid/widget/TextView;

    const v2, 0x7f0a01a8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, v0, Landroidx/media3/ui/PlayerControlView;->subtitleButton:Landroid/widget/ImageView;

    if-eqz v11, :cond_1

    invoke-virtual {v11, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v2, 0x7f0a018f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Landroidx/media3/ui/PlayerControlView;->fullScreenButton:Landroid/widget/ImageView;

    new-instance v12, Landroidx/media3/ui/PlayerControlView$$ExternalSyntheticLambda0;

    const/4 v13, 0x0

    invoke-direct {v12, v0, v13}, Landroidx/media3/ui/PlayerControlView$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/ui/PlayerControlView;I)V

    const/16 v13, 0x8

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    const v2, 0x7f0a0193

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Landroidx/media3/ui/PlayerControlView;->minimalFullScreenButton:Landroid/widget/ImageView;

    new-instance v12, Landroidx/media3/ui/PlayerControlView$$ExternalSyntheticLambda0;

    const/4 v13, 0x1

    invoke-direct {v12, v0, v13}, Landroidx/media3/ui/PlayerControlView$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/ui/PlayerControlView;I)V

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    const/16 v13, 0x8

    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    const v2, 0x7f0a01a3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/ui/PlayerControlView;->settingsButton:Landroid/view/View;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    const v2, 0x7f0a019b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/ui/PlayerControlView;->playbackSpeedButton:Landroid/view/View;

    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    const v2, 0x7f0a017f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/ui/PlayerControlView;->audioTrackButton:Landroid/view/View;

    if-eqz v2, :cond_6

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    const v2, 0x7f0a019e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroidx/media3/ui/TimeBar;

    const v13, 0x7f0a019f

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    if-eqz v12, :cond_7

    :goto_3
    iput-object v12, v0, Landroidx/media3/ui/PlayerControlView;->timeBar:Landroidx/media3/ui/TimeBar;

    goto :goto_4

    :cond_7
    if-eqz v13, :cond_8

    new-instance v12, Landroidx/media3/ui/DefaultTimeBar;

    invoke-direct {v12, v8, v1}, Landroidx/media3/ui/DefaultTimeBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v12, v2}, Landroid/view/View;->setId(I)V

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v13}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v13}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v1, v12, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/media3/ui/PlayerControlView;->timeBar:Landroidx/media3/ui/TimeBar;

    :goto_4
    iget-object v1, v0, Landroidx/media3/ui/PlayerControlView;->timeBar:Landroidx/media3/ui/TimeBar;

    if-eqz v1, :cond_9

    check-cast v1, Landroidx/media3/ui/DefaultTimeBar;

    iget-object v1, v1, Landroidx/media3/ui/DefaultTimeBar;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    :cond_9
    const v1, 0x7f0a019a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/ui/PlayerControlView;->playPauseButton:Landroid/view/View;

    if-eqz v1, :cond_a

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    const v1, 0x7f0a019d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    iput-object v12, v0, Landroidx/media3/ui/PlayerControlView;->previousButton:Landroid/view/View;

    if-eqz v12, :cond_b

    invoke-virtual {v12, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    const v1, 0x7f0a0194

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    iput-object v13, v0, Landroidx/media3/ui/PlayerControlView;->nextButton:Landroid/view/View;

    if-eqz v13, :cond_c

    invoke-virtual {v13, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    const/high16 v2, 0x7f090000

    sget-object v1, Landroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_d

    move-object/from16 v24, v3

    move/from16 v25, v4

    move/from16 v26, v5

    move/from16 v27, v6

    move/from16 v28, v7

    const/4 v1, 0x0

    goto :goto_5

    :cond_d
    new-instance v19, Landroid/util/TypedValue;

    invoke-direct/range {v19 .. v19}, Landroid/util/TypedValue;-><init>()V

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v1, p1

    move-object/from16 v24, v3

    move-object/from16 v3, v19

    move/from16 v25, v4

    move/from16 v4, v20

    move/from16 v26, v5

    move-object/from16 v5, v21

    move/from16 v27, v6

    move/from16 v6, v22

    move/from16 v28, v7

    move/from16 v7, v23

    invoke-static/range {v1 .. v7}, Landroidx/core/content/res/ResourcesCompat;->loadFont(Landroid/content/Context;ILandroid/util/TypedValue;IL_COROUTINE/_BOUNDARY;ZZ)Landroid/graphics/Typeface;

    move-result-object v1

    :goto_5
    const v2, 0x7f0a01a1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_e

    const v3, 0x7f0a01a2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    goto :goto_6

    :cond_e
    const/4 v3, 0x0

    :goto_6
    iput-object v3, v0, Landroidx/media3/ui/PlayerControlView;->rewindButtonTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_f

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_f
    if-nez v2, :cond_10

    move-object v2, v3

    :cond_10
    iput-object v2, v0, Landroidx/media3/ui/PlayerControlView;->rewindButton:Landroid/view/View;

    move-object/from16 v3, v24

    if-eqz v2, :cond_11

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_11
    const v4, 0x7f0a018d

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_12

    const v5, 0x7f0a018e

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    goto :goto_7

    :cond_12
    const/4 v5, 0x0

    :goto_7
    iput-object v5, v0, Landroidx/media3/ui/PlayerControlView;->fastForwardButtonTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_13

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_13
    if-nez v4, :cond_14

    move-object v4, v5

    :cond_14
    iput-object v4, v0, Landroidx/media3/ui/PlayerControlView;->fastForwardButton:Landroid/view/View;

    if-eqz v4, :cond_15

    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_15
    const v1, 0x7f0a01a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Landroidx/media3/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_16

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_16
    const v5, 0x7f0a01a5

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v0, Landroidx/media3/ui/PlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    if-eqz v5, :cond_17

    invoke-virtual {v5, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iput-object v6, v0, Landroidx/media3/ui/PlayerControlView;->resources:Landroid/content/res/Resources;

    const v7, 0x7f0b0019

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-float v7, v7

    const/high16 v19, 0x42c80000    # 100.0f

    div-float v7, v7, v19

    iput v7, v0, Landroidx/media3/ui/PlayerControlView;->buttonAlphaEnabled:F

    const v7, 0x7f0b0018

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-float v7, v7

    div-float v7, v7, v19

    iput v7, v0, Landroidx/media3/ui/PlayerControlView;->buttonAlphaDisabled:F

    const v7, 0x7f0a01ad

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v0, Landroidx/media3/ui/PlayerControlView;->vrButton:Landroid/view/View;

    move-object/from16 p2, v1

    if-eqz v7, :cond_18

    const/4 v1, 0x0

    invoke-virtual {v0, v7, v1}, Landroidx/media3/ui/PlayerControlView;->updateButton(Landroid/view/View;Z)V

    :cond_18
    new-instance v1, Landroidx/media3/ui/PlayerControlViewLayoutManager;

    invoke-direct {v1, v0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;-><init>(Landroidx/media3/ui/PlayerControlView;)V

    iput-object v1, v0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    move-object/from16 v19, v7

    move/from16 v7, v27

    iput-boolean v7, v1, Landroidx/media3/ui/PlayerControlViewLayoutManager;->animationEnabled:Z

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v11

    const v11, 0x7f120185

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v20, v5

    const v5, 0x7f080172

    invoke-static {v8, v6, v5}, Landroidx/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/16 v16, 0x0

    aput-object v5, v7, v16

    const v5, 0x7f1201a6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v11, v5}, [Ljava/lang/String;

    move-result-object v5

    const v11, 0x7f080160

    invoke-static {v8, v6, v11}, Landroidx/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const/16 v18, 0x1

    aput-object v11, v7, v18

    new-instance v11, Landroidx/media3/ui/PlayerControlView$SettingsAdapter;

    invoke-direct {v11, v0, v5, v7}, Landroidx/media3/ui/PlayerControlView$SettingsAdapter;-><init>(Landroidx/media3/ui/PlayerControlView;[Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V

    iput-object v11, v0, Landroidx/media3/ui/PlayerControlView;->settingsAdapter:Landroidx/media3/ui/PlayerControlView$SettingsAdapter;

    const v5, 0x7f070155

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v0, Landroidx/media3/ui/PlayerControlView;->settingsWindowMargin:I

    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v7, 0x7f0d0066

    move-object/from16 v21, v13

    const/4 v13, 0x0

    invoke-virtual {v5, v7, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v5, v0, Landroidx/media3/ui/PlayerControlView;->settingsView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v11}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v7, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    invoke-direct {v7}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>()V

    invoke-virtual {v5, v7}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v7, Landroid/widget/PopupWindow;

    const/4 v11, -0x2

    const/4 v13, 0x1

    invoke-direct {v7, v5, v11, v11, v13}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v7, v0, Landroidx/media3/ui/PlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    sget v5, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v11, 0x17

    if-ge v5, v11, :cond_19

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/4 v11, 0x0

    invoke-direct {v5, v11}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v7, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_19
    invoke-virtual {v7, v3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iput-boolean v13, v0, Landroidx/media3/ui/PlayerControlView;->needToHideBars:Z

    new-instance v3, Landroidx/media3/ui/DefaultTrackNameProvider;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v3, v5}, Landroidx/media3/ui/DefaultTrackNameProvider;-><init>(Landroid/content/res/Resources;)V

    iput-object v3, v0, Landroidx/media3/ui/PlayerControlView;->trackNameProvider:Landroidx/media3/ui/DefaultTrackNameProvider;

    const v3, 0x7f080174

    invoke-static {v8, v6, v3}, Landroidx/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/ui/PlayerControlView;->subtitleOnButtonDrawable:Landroid/graphics/drawable/Drawable;

    const v3, 0x7f080173

    invoke-static {v8, v6, v3}, Landroidx/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/ui/PlayerControlView;->subtitleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    const v3, 0x7f12017a

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/ui/PlayerControlView;->subtitleOnContentDescription:Ljava/lang/String;

    const v3, 0x7f120179

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/ui/PlayerControlView;->subtitleOffContentDescription:Ljava/lang/String;

    new-instance v3, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;

    const/4 v5, 0x0

    invoke-direct {v3, v0, v5, v5}, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;-><init>(Landroidx/media3/ui/PlayerControlView;II)V

    iput-object v3, v0, Landroidx/media3/ui/PlayerControlView;->textTrackSelectionAdapter:Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;

    new-instance v3, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;

    const/4 v7, 0x1

    invoke-direct {v3, v0, v7, v5}, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;-><init>(Landroidx/media3/ui/PlayerControlView;II)V

    iput-object v3, v0, Landroidx/media3/ui/PlayerControlView;->audioTrackSelectionAdapter:Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;

    new-instance v3, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;

    const/high16 v7, 0x7f030000

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    sget-object v11, Landroidx/media3/ui/PlayerControlView;->PLAYBACK_SPEEDS:[F

    invoke-direct {v3, v0, v7, v11}, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;-><init>(Landroidx/media3/ui/PlayerControlView;[Ljava/lang/String;[F)V

    iput-object v3, v0, Landroidx/media3/ui/PlayerControlView;->playbackSpeedAdapter:Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;

    const v3, 0x7f080164

    invoke-static {v8, v6, v3}, Landroidx/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/ui/PlayerControlView;->fullScreenExitDrawable:Landroid/graphics/drawable/Drawable;

    const v3, 0x7f080163

    invoke-static {v8, v6, v3}, Landroidx/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/ui/PlayerControlView;->fullScreenEnterDrawable:Landroid/graphics/drawable/Drawable;

    const v3, 0x7f08016c

    invoke-static {v8, v6, v3}, Landroidx/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/ui/PlayerControlView;->repeatOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    const v3, 0x7f08016d

    invoke-static {v8, v6, v3}, Landroidx/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/ui/PlayerControlView;->repeatOneButtonDrawable:Landroid/graphics/drawable/Drawable;

    const v3, 0x7f08016b

    invoke-static {v8, v6, v3}, Landroidx/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/ui/PlayerControlView;->repeatAllButtonDrawable:Landroid/graphics/drawable/Drawable;

    const v3, 0x7f080171

    invoke-static {v8, v6, v3}, Landroidx/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/ui/PlayerControlView;->shuffleOnButtonDrawable:Landroid/graphics/drawable/Drawable;

    const v3, 0x7f080170

    invoke-static {v8, v6, v3}, Landroidx/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/ui/PlayerControlView;->shuffleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    const v3, 0x7f12017e

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/ui/PlayerControlView;->fullScreenExitContentDescription:Ljava/lang/String;

    const v3, 0x7f12017d

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/ui/PlayerControlView;->fullScreenEnterContentDescription:Ljava/lang/String;

    const v3, 0x7f120188

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/ui/PlayerControlView;->repeatOffButtonContentDescription:Ljava/lang/String;

    const v3, 0x7f120189

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/ui/PlayerControlView;->repeatOneButtonContentDescription:Ljava/lang/String;

    const v3, 0x7f120187

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/ui/PlayerControlView;->repeatAllButtonContentDescription:Ljava/lang/String;

    const v3, 0x7f12018f

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/ui/PlayerControlView;->shuffleOnContentDescription:Ljava/lang/String;

    const v3, 0x7f12018e

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/ui/PlayerControlView;->shuffleOffContentDescription:Ljava/lang/String;

    const v3, 0x7f0a0181

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v6, 0x1

    invoke-virtual {v1, v3, v6}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    invoke-virtual {v1, v4, v10}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    invoke-virtual {v1, v2, v9}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    invoke-virtual {v1, v12, v14}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    move-object/from16 v2, v21

    invoke-virtual {v1, v2, v15}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    move-object/from16 v2, v20

    move/from16 v14, v26

    invoke-virtual {v1, v2, v14}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    move-object/from16 v2, v17

    move/from16 v15, v25

    invoke-virtual {v1, v2, v15}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    move-object/from16 v2, v19

    move/from16 v9, v28

    invoke-virtual {v1, v2, v9}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    iget v2, v0, Landroidx/media3/ui/PlayerControlView;->repeatToggleModes:I

    if-eqz v2, :cond_1a

    move-object/from16 v2, p2

    const/4 v10, 0x1

    goto :goto_8

    :cond_1a
    move-object/from16 v2, p2

    move v10, v5

    :goto_8
    invoke-virtual {v1, v2, v10}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    new-instance v1, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public static synthetic access$4000(Landroidx/media3/ui/PlayerControlView;F)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/ui/PlayerControlView;->setPlaybackSpeed(F)V

    return-void
.end method

.method public static canShowMultiWindowTimeBar(Landroidx/media3/common/Player;Landroidx/media3/common/Timeline$Window;)Z
    .locals 8

    check-cast p0, Landroidx/media3/common/BasePlayer;

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_4

    const/16 v3, 0x64

    if-le v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_3

    invoke-virtual {p0, v3, p1}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v4

    iget-wide v4, v4, Landroidx/media3/common/Timeline$Window;->durationUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    :goto_1
    return v1
.end method

.method private setPlaybackSpeed(F)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    if-eqz v0, :cond_1

    const/16 v1, 0xd

    check-cast v0, Landroidx/media3/common/BasePlayer;

    invoke-virtual {v0, v1}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    check-cast p0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    new-instance v1, Landroidx/media3/common/PlaybackParameters;

    iget v0, v0, Landroidx/media3/common/PlaybackParameters;->pitch:F

    invoke-direct {v1, p1, v0}, Landroidx/media3/common/PlaybackParameters;-><init>(FF)V

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 13

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    const/4 v1, 0x0

    if-eqz p0, :cond_e

    const/4 v2, 0x1

    const/16 v3, 0x58

    const/16 v4, 0x57

    const/16 v5, 0x7f

    const/16 v6, 0x7e

    const/16 v7, 0x4f

    const/16 v8, 0x55

    const/16 v9, 0x59

    const/16 v10, 0x5a

    if-eq v0, v10, :cond_1

    if-eq v0, v9, :cond_1

    if-eq v0, v8, :cond_1

    if-eq v0, v7, :cond_1

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_1

    if-eq v0, v4, :cond_1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v11, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v11, v2

    :goto_1
    if-nez v11, :cond_2

    goto/16 :goto_5

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v11

    if-nez v11, :cond_d

    const/4 v11, 0x4

    if-ne v0, v10, :cond_3

    move-object p1, p0

    check-cast p1, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlaybackState()I

    move-result p1

    if-eq p1, v11, :cond_d

    check-cast p0, Landroidx/media3/common/BasePlayer;

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-wide v0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->seekForwardIncrementMs:J

    invoke-virtual {p0, p1, v0, v1}, Landroidx/media3/common/BasePlayer;->seekToOffset(IJ)V

    goto/16 :goto_4

    :cond_3
    if-ne v0, v9, :cond_4

    move-object v9, p0

    check-cast v9, Landroidx/media3/common/BasePlayer;

    const/16 v10, 0xb

    invoke-virtual {v9, v10}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result v12

    if-eqz v12, :cond_4

    move-object p0, v9

    check-cast p0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-wide p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->seekBackIncrementMs:J

    neg-long p0, p0

    invoke-virtual {v9, v10, p0, p1}, Landroidx/media3/common/BasePlayer;->seekToOffset(IJ)V

    goto/16 :goto_4

    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_d

    if-eq v0, v7, :cond_9

    if-eq v0, v8, :cond_9

    if-eq v0, v4, :cond_8

    if-eq v0, v3, :cond_7

    if-eq v0, v6, :cond_6

    if-eq v0, v5, :cond_5

    goto :goto_4

    :cond_5
    sget p1, Landroidx/media3/common/util/Util;->SDK_INT:I

    check-cast p0, Landroidx/media3/common/BasePlayer;

    invoke-virtual {p0, v2}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_d

    check-cast p0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setPlayWhenReady(Z)V

    goto :goto_4

    :cond_6
    invoke-static {p0}, Landroidx/media3/common/util/Util;->handlePlayButtonAction(Landroidx/media3/common/Player;)Z

    goto :goto_4

    :cond_7
    check-cast p0, Landroidx/media3/common/BasePlayer;

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->seekToPrevious()V

    goto :goto_4

    :cond_8
    check-cast p0, Landroidx/media3/common/BasePlayer;

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->seekToNext()V

    goto :goto_4

    :cond_9
    sget p1, Landroidx/media3/common/util/Util;->SDK_INT:I

    move-object p1, p0

    check-cast p1, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlaybackState()I

    move-result v0

    if-eq v0, v2, :cond_b

    invoke-virtual {p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlaybackState()I

    move-result p1

    if-ne p1, v11, :cond_a

    goto :goto_2

    :cond_a
    move p1, v1

    goto :goto_3

    :cond_b
    :goto_2
    move p1, v2

    :goto_3
    if-eqz p1, :cond_c

    invoke-static {p0}, Landroidx/media3/common/util/Util;->handlePlayButtonAction(Landroidx/media3/common/Player;)Z

    goto :goto_4

    :cond_c
    check-cast p0, Landroidx/media3/common/BasePlayer;

    invoke-virtual {p0, v2}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_d

    check-cast p0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setPlayWhenReady(Z)V

    :cond_d
    :goto_4
    return v2

    :cond_e
    :goto_5
    return v1
.end method

.method public final displaySettingsWindow(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->settingsView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->updateSettingsWindowSize()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/ui/PlayerControlView;->needToHideBars:Z

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->needToHideBars:Z

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget p0, p0, Landroidx/media3/ui/PlayerControlView;->settingsWindowMargin:I

    sub-int/2addr v0, p0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v1

    neg-int v1, v1

    sub-int/2addr v1, p0

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method public final gatherSupportedTrackInfosOfType(Landroidx/media3/common/Tracks;I)Lcom/google/common/collect/RegularImmutableList;
    .locals 10

    const/4 v0, 0x4

    const-string v1, "initialCapacity"

    invoke-static {v0, v1}, Lkotlin/LazyKt__LazyKt;->checkNonnegative(ILjava/lang/String;)V

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p1, Landroidx/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/common/Tracks$Group;

    iget-object v6, v5, Landroidx/media3/common/Tracks$Group;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    iget v6, v6, Landroidx/media3/common/TrackGroup;->type:I

    if-eq v6, p2, :cond_0

    goto :goto_3

    :cond_0
    move v6, v2

    :goto_1
    iget v7, v5, Landroidx/media3/common/Tracks$Group;->length:I

    if-ge v6, v7, :cond_4

    invoke-virtual {v5, v6}, Landroidx/media3/common/Tracks$Group;->isTrackSupported(I)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v5, v6}, Landroidx/media3/common/Tracks$Group;->getTrackFormat(I)Landroidx/media3/common/Format;

    move-result-object v7

    iget v8, v7, Landroidx/media3/common/Format;->selectionFlags:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    iget-object v8, p0, Landroidx/media3/ui/PlayerControlView;->trackNameProvider:Landroidx/media3/ui/DefaultTrackNameProvider;

    invoke-virtual {v8, v7}, Landroidx/media3/ui/DefaultTrackNameProvider;->getTrackName(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroidx/media3/ui/PlayerControlView$TrackInformation;

    invoke-direct {v8, p1, v3, v6, v7}, Landroidx/media3/ui/PlayerControlView$TrackInformation;-><init>(Landroidx/media3/common/Tracks;IILjava/lang/String;)V

    add-int/lit8 v7, v4, 0x1

    array-length v9, v0

    if-ge v9, v7, :cond_3

    array-length v9, v0

    invoke-static {v9, v7}, Lcom/google/common/collect/ImmutableCollection$Builder;->expandedCapacity(II)I

    move-result v9

    invoke-static {v0, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    :cond_3
    aput-object v8, v0, v4

    move v4, v7

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    invoke-static {v4, v0}, Lcom/google/common/collect/ImmutableList;->asImmutableList(I[Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public getPlayer()Landroidx/media3/common/Player;
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    return-object p0
.end method

.method public getRepeatToggleModes()I
    .locals 0

    iget p0, p0, Landroidx/media3/ui/PlayerControlView;->repeatToggleModes:I

    return p0
.end method

.method public getShowShuffleButton()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->getShowButton(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public getShowSubtitleButton()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->subtitleButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->getShowButton(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public getShowTimeoutMs()I
    .locals 0

    iget p0, p0, Landroidx/media3/ui/PlayerControlView;->showTimeoutMs:I

    return p0
.end method

.method public getShowVrButton()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->vrButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->getShowButton(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public final hide()V
    .locals 2

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->uxState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->removeHideCallbacks()V

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->animationEnabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setUxState(I)V

    goto :goto_0

    :cond_1
    iget v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->uxState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->hideProgressBarAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->hideAllBarsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final isFullyVisible()Z
    .locals 1

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->uxState:I

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->playerControlView:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isVisible()Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object v1, v0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->onLayoutChangeListener:Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda1;

    iget-object v2, v0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->playerControlView:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v2, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media3/ui/PlayerControlView;->isAttachedToWindow:Z

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->isFullyVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->resetHideCallbacks()V

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->updateAll()V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object v1, v0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->onLayoutChangeListener:Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda1;

    iget-object v2, v0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->playerControlView:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v2, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/media3/ui/PlayerControlView;->isAttachedToWindow:Z

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->updateProgressAction:Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->removeHideCallbacks()V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->controlsBackground:Landroid/view/View;

    if-eqz p0, :cond_0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p4, p5}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method public setAnimationEnabled(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iput-boolean p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->animationEnabled:Z

    return-void
.end method

.method public setOnFullScreenModeChangedListener(Landroidx/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView;->onFullScreenModeChangedListener:Landroidx/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/16 v3, 0x8

    iget-object v4, p0, Landroidx/media3/ui/PlayerControlView;->fullScreenButton:Landroid/widget/ImageView;

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->minimalFullScreenButton:Landroid/widget/ImageView;

    if-nez p0, :cond_4

    goto :goto_5

    :cond_4
    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    move v1, v3

    :goto_4
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    return-void
.end method

.method public setPlayer(Landroidx/media3/common/Player;)V
    .locals 4

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
    move v2, v3

    :cond_2
    :goto_1
    invoke-static {v2}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    if-ne v0, p1, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->componentListener:Landroidx/media3/ui/PlayerControlView$ComponentListener;

    if-eqz v0, :cond_4

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->removeListener(Landroidx/media3/common/Player$Listener;)V

    :cond_4
    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    if-eqz p1, :cond_5

    check-cast p1, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {p1, v1}, Landroidx/media3/common/util/ListenerSet;->add(Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->updateAll()V

    return-void
.end method

.method public setProgressUpdateListener(Landroidx/media3/ui/PlayerControlView$ProgressUpdateListener;)V
    .locals 0

    return-void
.end method

.method public setRepeatToggleModes(I)V
    .locals 4

    iput p1, p0, Landroidx/media3/ui/PlayerControlView;->repeatToggleModes:I

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const/16 v3, 0xf

    check-cast v0, Landroidx/media3/common/BasePlayer;

    invoke-virtual {v0, v3}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget v0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->repeatMode:I

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setRepeatMode(I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne p1, v2, :cond_1

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setRepeatMode(I)V

    goto :goto_0

    :cond_1
    if-ne p1, v3, :cond_2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setRepeatMode(I)V

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0, v1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->updateRepeatModeButton()V

    return-void
.end method

.method public setShowFastForwardButton(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->fastForwardButton:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->updateNavigation()V

    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/ui/PlayerControlView;->showMultiWindowTimeBar:Z

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->updateTimeline()V

    return-void
.end method

.method public setShowNextButton(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->nextButton:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->updateNavigation()V

    return-void
.end method

.method public setShowPreviousButton(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->previousButton:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->updateNavigation()V

    return-void
.end method

.method public setShowRewindButton(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->rewindButton:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->updateNavigation()V

    return-void
.end method

.method public setShowShuffleButton(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->updateShuffleButton()V

    return-void
.end method

.method public setShowSubtitleButton(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->subtitleButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0, p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    return-void
.end method

.method public setShowTimeoutMs(I)V
    .locals 0

    iput p1, p0, Landroidx/media3/ui/PlayerControlView;->showTimeoutMs:I

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->isFullyVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->resetHideCallbacks()V

    :cond_0
    return-void
.end method

.method public setShowVrButton(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->vrButton:Landroid/view/View;

    invoke-virtual {v0, p0, p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    return-void
.end method

.method public setTimeBarMinUpdateInterval(I)V
    .locals 2

    const/16 v0, 0x10

    const/16 v1, 0x3e8

    invoke-static {p1, v0, v1}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result p1

    iput p1, p0, Landroidx/media3/ui/PlayerControlView;->timeBarMinUpdateIntervalMs:I

    return-void
.end method

.method public setVrButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->vrButton:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, v0, p1}, Landroidx/media3/ui/PlayerControlView;->updateButton(Landroid/view/View;Z)V

    :cond_1
    return-void
.end method

.method public final updateAll()V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->updatePlayPauseButton()V

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->updateNavigation()V

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->updateRepeatModeButton()V

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->updateShuffleButton()V

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->updateTrackLists()V

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->updatePlaybackSpeedList()V

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->updateTimeline()V

    return-void
.end method

.method public final updateButton(Landroid/view/View;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p2, :cond_1

    iget p0, p0, Landroidx/media3/ui/PlayerControlView;->buttonAlphaEnabled:F

    goto :goto_0

    :cond_1
    iget p0, p0, Landroidx/media3/ui/PlayerControlView;->buttonAlphaDisabled:F

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final updateNavigation()V
    .locals 12

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->isAttachedToWindow:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Landroidx/media3/ui/PlayerControlView;->showMultiWindowTimeBar:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->window:Landroidx/media3/common/Timeline$Window;

    invoke-static {v0, v1}, Landroidx/media3/ui/PlayerControlView;->canShowMultiWindowTimeBar(Landroidx/media3/common/Player;Landroidx/media3/common/Timeline$Window;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xa

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    :goto_0
    move-object v2, v0

    check-cast v2, Landroidx/media3/common/BasePlayer;

    invoke-virtual {v2, v1}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result v1

    check-cast v0, Landroidx/media3/common/BasePlayer;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result v2

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result v3

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result v4

    const/16 v5, 0x9

    invoke-virtual {v0, v5}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    move v0, v1

    move v2, v0

    move v3, v2

    move v4, v3

    :goto_1
    iget-object v5, p0, Landroidx/media3/ui/PlayerControlView;->resources:Landroid/content/res/Resources;

    iget-object v6, p0, Landroidx/media3/ui/PlayerControlView;->rewindButton:Landroid/view/View;

    const-wide/16 v7, 0x3e8

    if-eqz v3, :cond_5

    iget-object v9, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    if-eqz v9, :cond_3

    check-cast v9, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v9}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-wide v9, v9, Landroidx/media3/exoplayer/ExoPlayerImpl;->seekBackIncrementMs:J

    goto :goto_2

    :cond_3
    const-wide/16 v9, 0x1388

    :goto_2
    div-long/2addr v9, v7

    long-to-int v9, v9

    iget-object v10, p0, Landroidx/media3/ui/PlayerControlView;->rewindButtonTextView:Landroid/widget/TextView;

    if-eqz v10, :cond_4

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    if-eqz v6, :cond_5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    const v11, 0x7f100001

    invoke-virtual {v5, v11, v9, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v9, p0, Landroidx/media3/ui/PlayerControlView;->fastForwardButton:Landroid/view/View;

    if-eqz v4, :cond_8

    iget-object v10, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    if-eqz v10, :cond_6

    check-cast v10, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v10}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-wide v10, v10, Landroidx/media3/exoplayer/ExoPlayerImpl;->seekForwardIncrementMs:J

    goto :goto_3

    :cond_6
    const-wide/16 v10, 0x3a98

    :goto_3
    div-long/2addr v10, v7

    long-to-int v7, v10

    iget-object v8, p0, Landroidx/media3/ui/PlayerControlView;->fastForwardButtonTextView:Landroid/widget/TextView;

    if-eqz v8, :cond_7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    if-eqz v9, :cond_8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const/high16 v10, 0x7f100000

    invoke-virtual {v5, v10, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_8
    iget-object v5, p0, Landroidx/media3/ui/PlayerControlView;->previousButton:Landroid/view/View;

    invoke-virtual {p0, v5, v2}, Landroidx/media3/ui/PlayerControlView;->updateButton(Landroid/view/View;Z)V

    invoke-virtual {p0, v6, v3}, Landroidx/media3/ui/PlayerControlView;->updateButton(Landroid/view/View;Z)V

    invoke-virtual {p0, v9, v4}, Landroidx/media3/ui/PlayerControlView;->updateButton(Landroid/view/View;Z)V

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->nextButton:Landroid/view/View;

    invoke-virtual {p0, v2, v0}, Landroidx/media3/ui/PlayerControlView;->updateButton(Landroid/view/View;Z)V

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->timeBar:Landroidx/media3/ui/TimeBar;

    if-eqz p0, :cond_9

    check-cast p0, Landroidx/media3/ui/DefaultTimeBar;

    invoke-virtual {p0, v1}, Landroidx/media3/ui/DefaultTimeBar;->setEnabled(Z)V

    :cond_9
    :goto_4
    return-void
.end method

.method public final updatePlayPauseButton()V
    .locals 8

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->isAttachedToWindow:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->playPauseButton:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    check-cast v1, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlaybackState()I

    move-result v4

    if-eq v4, v3, :cond_2

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlaybackState()I

    move-result v1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v3

    :goto_1
    if-eqz v1, :cond_3

    const v4, 0x7f080169

    goto :goto_2

    :cond_3
    const v4, 0x7f080168

    :goto_2
    if-eqz v1, :cond_4

    const v1, 0x7f120184

    goto :goto_3

    :cond_4
    const v1, 0x7f120183

    :goto_3
    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Landroidx/media3/ui/PlayerControlView;->resources:Landroid/content/res/Resources;

    invoke-static {v6, v7, v4}, Landroidx/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    if-eqz v1, :cond_6

    check-cast v1, Landroidx/media3/common/BasePlayer;

    invoke-virtual {v1, v3}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    const/16 v4, 0x11

    check-cast v1, Landroidx/media3/common/BasePlayer;

    invoke-virtual {v1, v4}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    check-cast v1, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    move v2, v3

    :cond_6
    invoke-virtual {p0, v0, v2}, Landroidx/media3/ui/PlayerControlView;->updateButton(Landroid/view/View;Z)V

    :cond_7
    :goto_4
    return-void
.end method

.method public final updatePlaybackSpeedList()V
    .locals 8

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    iget v0, v0, Landroidx/media3/common/PlaybackParameters;->speed:F

    const/4 v1, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    move v3, v1

    move v4, v3

    :goto_0
    iget-object v5, p0, Landroidx/media3/ui/PlayerControlView;->playbackSpeedAdapter:Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;

    iget-object v6, v5, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;->playbackSpeeds:[F

    array-length v7, v6

    if-ge v3, v7, :cond_2

    aget v5, v6, v3

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v6, v5, v2

    if-gez v6, :cond_1

    move v4, v3

    move v2, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iput v4, v5, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;->selectedIndex:I

    iget-object v0, v5, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;->playbackSpeedTexts:[Ljava/lang/String;

    aget-object v0, v0, v4

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->settingsAdapter:Landroidx/media3/ui/PlayerControlView$SettingsAdapter;

    iget-object v3, v2, Landroidx/media3/ui/PlayerControlView$SettingsAdapter;->subTexts:[Ljava/lang/String;

    aput-object v0, v3, v1

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroidx/media3/ui/PlayerControlView$SettingsAdapter;->shouldShowSetting(I)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2, v1}, Landroidx/media3/ui/PlayerControlView$SettingsAdapter;->shouldShowSetting(I)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v1, v0

    :cond_4
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->settingsButton:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Landroidx/media3/ui/PlayerControlView;->updateButton(Landroid/view/View;Z)V

    return-void
.end method

.method public final updateProgress()V
    .locals 11

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->isAttachedToWindow:Z

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    if-eqz v0, :cond_5

    const/16 v1, 0x10

    move-object v2, v0

    check-cast v2, Landroidx/media3/common/BasePlayer;

    invoke-virtual {v2, v1}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-wide v1, p0, Landroidx/media3/ui/PlayerControlView;->currentWindowOffset:J

    move-object v3, v0

    check-cast v3, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v4, v3, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v3, v4}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getContentPositionInternal(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v4

    add-long/2addr v4, v1

    iget-wide v1, p0, Landroidx/media3/ui/PlayerControlView;->currentWindowOffset:J

    invoke-virtual {v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v6, v3, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v6, v6, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v6}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-wide v6, v3, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingWindowPositionMs:J

    goto :goto_1

    :cond_1
    iget-object v6, v3, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v7, v6, Landroidx/media3/exoplayer/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v7, v7, Landroidx/media3/common/MediaPeriodId;->windowSequenceNumber:J

    iget-object v9, v6, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v9, v9, Landroidx/media3/common/MediaPeriodId;->windowSequenceNumber:J

    cmp-long v7, v7, v9

    if-eqz v7, :cond_2

    iget-object v6, v6, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v7

    iget-object v3, v3, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v6, v7, v3}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v3

    iget-wide v6, v3, Landroidx/media3/common/Timeline$Window;->durationUs:J

    invoke-static {v6, v7}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v6

    goto :goto_1

    :cond_2
    iget-wide v6, v6, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    iget-object v8, v3, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v8, v8, Landroidx/media3/exoplayer/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v8}, Landroidx/media3/common/MediaPeriodId;->isAd()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v6, v3, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v7, v6, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v6, v6, Landroidx/media3/exoplayer/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v6, v6, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v8, v3, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v7, v6, v8}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v6

    iget-object v7, v3, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v7, v7, Landroidx/media3/exoplayer/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v7, v7, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    invoke-virtual {v6, v7}, Landroidx/media3/common/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v7

    const-wide/high16 v9, -0x8000000000000000L

    cmp-long v9, v7, v9

    if-nez v9, :cond_3

    iget-wide v6, v6, Landroidx/media3/common/Timeline$Period;->durationUs:J

    goto :goto_0

    :cond_3
    move-wide v6, v7

    :cond_4
    :goto_0
    iget-object v8, v3, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v9, v8, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v8, v8, Landroidx/media3/exoplayer/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v8, v8, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v3, v3, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v9, v8, v3}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget-wide v8, v3, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v6

    :goto_1
    add-long/2addr v1, v6

    goto :goto_2

    :cond_5
    const-wide/16 v4, 0x0

    move-wide v1, v4

    :goto_2
    iget-object v3, p0, Landroidx/media3/ui/PlayerControlView;->positionView:Landroid/widget/TextView;

    if-eqz v3, :cond_6

    iget-boolean v6, p0, Landroidx/media3/ui/PlayerControlView;->scrubbing:Z

    if-nez v6, :cond_6

    iget-object v6, p0, Landroidx/media3/ui/PlayerControlView;->formatBuilder:Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroidx/media3/ui/PlayerControlView;->formatter:Ljava/util/Formatter;

    invoke-static {v6, v7, v4, v5}, Landroidx/media3/common/util/Util;->getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v3, p0, Landroidx/media3/ui/PlayerControlView;->timeBar:Landroidx/media3/ui/TimeBar;

    if-eqz v3, :cond_7

    check-cast v3, Landroidx/media3/ui/DefaultTimeBar;

    invoke-virtual {v3, v4, v5}, Landroidx/media3/ui/DefaultTimeBar;->setPosition(J)V

    iget-object v3, p0, Landroidx/media3/ui/PlayerControlView;->timeBar:Landroidx/media3/ui/TimeBar;

    check-cast v3, Landroidx/media3/ui/DefaultTimeBar;

    invoke-virtual {v3, v1, v2}, Landroidx/media3/ui/DefaultTimeBar;->setBufferedPosition(J)V

    :cond_7
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->updateProgressAction:Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v1, 0x1

    if-nez v0, :cond_8

    move v2, v1

    goto :goto_3

    :cond_8
    move-object v2, v0

    check-cast v2, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlaybackState()I

    move-result v2

    :goto_3
    const-wide/16 v6, 0x3e8

    if-eqz v0, :cond_c

    move-object v3, v0

    check-cast v3, Landroidx/media3/common/BasePlayer;

    check-cast v3, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlaybackState()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_9

    invoke-virtual {v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v3, v3, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    if-nez v3, :cond_9

    move v3, v1

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_c

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->timeBar:Landroidx/media3/ui/TimeBar;

    if-eqz v1, :cond_a

    check-cast v1, Landroidx/media3/ui/DefaultTimeBar;

    invoke-virtual {v1}, Landroidx/media3/ui/DefaultTimeBar;->getPreferredUpdateDelay()J

    move-result-wide v1

    goto :goto_5

    :cond_a
    move-wide v1, v6

    :goto_5
    rem-long/2addr v4, v6

    sub-long v3, v6, v4

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    iget v0, v0, Landroidx/media3/common/PlaybackParameters;->speed:F

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_b

    long-to-float v1, v1

    div-float/2addr v1, v0

    float-to-long v6, v1

    :cond_b
    move-wide v0, v6

    iget v2, p0, Landroidx/media3/ui/PlayerControlView;->timeBarMinUpdateIntervalMs:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    invoke-static/range {v0 .. v5}, Landroidx/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->updateProgressAction:Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    invoke-virtual {p0, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6

    :cond_c
    const/4 v0, 0x4

    if-eq v2, v0, :cond_d

    if-eq v2, v1, :cond_d

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->updateProgressAction:Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    invoke-virtual {p0, v0, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_d
    :goto_6
    return-void
.end method

.method public final updateRepeatModeButton()V
    .locals 7

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->isAttachedToWindow:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    iget v1, p0, Landroidx/media3/ui/PlayerControlView;->repeatToggleModes:I

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {p0, v0, v2}, Landroidx/media3/ui/PlayerControlView;->updateButton(Landroid/view/View;Z)V

    return-void

    :cond_1
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    iget-object v3, p0, Landroidx/media3/ui/PlayerControlView;->repeatOffButtonContentDescription:Ljava/lang/String;

    iget-object v4, p0, Landroidx/media3/ui/PlayerControlView;->repeatOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    const/16 v5, 0xf

    move-object v6, v1

    check-cast v6, Landroidx/media3/common/BasePlayer;

    invoke-virtual {v6, v5}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Landroidx/media3/ui/PlayerControlView;->updateButton(Landroid/view/View;Z)V

    check-cast v1, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget v1, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->repeatMode:I

    if-eqz v1, :cond_5

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->repeatAllButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->repeatAllButtonContentDescription:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->repeatOneButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->repeatOneButtonContentDescription:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_6
    :goto_2
    invoke-virtual {p0, v0, v2}, Landroidx/media3/ui/PlayerControlView;->updateButton(Landroid/view/View;Z)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public final updateSettingsWindowSize()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->settingsView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v2, p0, Landroidx/media3/ui/PlayerControlView;->settingsWindowMargin:I

    mul-int/lit8 v3, v2, 0x2

    sub-int/2addr v0, v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v3, p0, Landroidx/media3/ui/PlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr p0, v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-virtual {v3, p0}, Landroid/widget/PopupWindow;->setHeight(I)V

    return-void
.end method

.method public final updateShuffleButton()V
    .locals 7

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->isAttachedToWindow:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    invoke-virtual {v2, v0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->getShowButton(Landroid/view/View;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-virtual {p0, v0, v3}, Landroidx/media3/ui/PlayerControlView;->updateButton(Landroid/view/View;Z)V

    goto :goto_2

    :cond_1
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->shuffleOffContentDescription:Ljava/lang/String;

    iget-object v4, p0, Landroidx/media3/ui/PlayerControlView;->shuffleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    const/16 v5, 0xe

    move-object v6, v1

    check-cast v6, Landroidx/media3/common/BasePlayer;

    invoke-virtual {v6, v5}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Landroidx/media3/ui/PlayerControlView;->updateButton(Landroid/view/View;Z)V

    check-cast v1, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-boolean v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleModeEnabled:Z

    if-eqz v3, :cond_3

    iget-object v4, p0, Landroidx/media3/ui/PlayerControlView;->shuffleOnButtonDrawable:Landroid/graphics/drawable/Drawable;

    :cond_3
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-boolean v1, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleModeEnabled:Z

    if-eqz v1, :cond_5

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->shuffleOnContentDescription:Ljava/lang/String;

    goto :goto_1

    :cond_4
    :goto_0
    invoke-virtual {p0, v0, v3}, Landroidx/media3/ui/PlayerControlView;->updateButton(Landroid/view/View;Z)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public final updateTimeline()V
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v2, v0, Landroidx/media3/ui/PlayerControlView;->showMultiWindowTimeBar:Z

    const/4 v4, 0x1

    iget-object v5, v0, Landroidx/media3/ui/PlayerControlView;->window:Landroidx/media3/common/Timeline$Window;

    if-eqz v2, :cond_1

    invoke-static {v1, v5}, Landroidx/media3/ui/PlayerControlView;->canShowMultiWindowTimeBar(Landroidx/media3/common/Player;Landroidx/media3/common/Timeline$Window;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Landroidx/media3/ui/PlayerControlView;->multiWindowTimeBar:Z

    const-wide/16 v6, 0x0

    iput-wide v6, v0, Landroidx/media3/ui/PlayerControlView;->currentWindowOffset:J

    move-object v2, v1

    check-cast v2, Landroidx/media3/common/BasePlayer;

    const/16 v8, 0x11

    invoke-virtual {v2, v8}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, v1

    check-cast v8, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v8}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v8

    goto :goto_1

    :cond_2
    sget-object v8, Landroidx/media3/common/Timeline;->EMPTY:Landroidx/media3/common/Timeline$1;

    :goto_1
    invoke-virtual {v8}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v9

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v9, :cond_13

    check-cast v1, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v1

    iget-boolean v2, v0, Landroidx/media3/ui/PlayerControlView;->multiWindowTimeBar:Z

    if-eqz v2, :cond_3

    const/4 v9, 0x0

    goto :goto_2

    :cond_3
    move v9, v1

    :goto_2
    if-eqz v2, :cond_4

    invoke-virtual {v8}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v2

    sub-int/2addr v2, v4

    goto :goto_3

    :cond_4
    move v2, v1

    :goto_3
    move-wide v12, v6

    const/4 v14, 0x0

    :goto_4
    if-gt v9, v2, :cond_12

    if-ne v9, v1, :cond_5

    invoke-static {v12, v13}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v6

    iput-wide v6, v0, Landroidx/media3/ui/PlayerControlView;->currentWindowOffset:J

    :cond_5
    invoke-virtual {v8, v9, v5}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    iget-wide v6, v5, Landroidx/media3/common/Timeline$Window;->durationUs:J

    cmp-long v6, v6, v10

    if-nez v6, :cond_6

    iget-boolean v1, v0, Landroidx/media3/ui/PlayerControlView;->multiWindowTimeBar:Z

    xor-int/2addr v1, v4

    invoke-static {v1}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    goto/16 :goto_d

    :cond_6
    iget v6, v5, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    :goto_5
    iget v7, v5, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    if-gt v6, v7, :cond_11

    iget-object v7, v0, Landroidx/media3/ui/PlayerControlView;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v8, v6, v7}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget-object v15, v7, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget v3, v15, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    :goto_6
    iget v4, v15, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    if-ge v3, v4, :cond_10

    invoke-virtual {v7, v3}, Landroidx/media3/common/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v18

    const-wide/high16 v20, -0x8000000000000000L

    cmp-long v4, v18, v20

    if-nez v4, :cond_8

    move v4, v1

    move/from16 v20, v2

    iget-wide v1, v7, Landroidx/media3/common/Timeline$Period;->durationUs:J

    cmp-long v18, v1, v10

    if-nez v18, :cond_7

    move/from16 v21, v4

    move-object/from16 v22, v7

    const/4 v7, 0x1

    const-wide/16 v16, 0x0

    goto/16 :goto_c

    :cond_7
    move-wide/from16 v18, v1

    goto :goto_7

    :cond_8
    move v4, v1

    move/from16 v20, v2

    :goto_7
    iget-wide v1, v7, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    add-long v18, v18, v1

    const-wide/16 v16, 0x0

    cmp-long v1, v18, v16

    if-ltz v1, :cond_f

    iget-object v1, v0, Landroidx/media3/ui/PlayerControlView;->adGroupTimesMs:[J

    array-length v2, v1

    if-ne v14, v2, :cond_a

    array-length v2, v1

    if-nez v2, :cond_9

    const/4 v2, 0x1

    goto :goto_8

    :cond_9
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    :goto_8
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/ui/PlayerControlView;->adGroupTimesMs:[J

    iget-object v1, v0, Landroidx/media3/ui/PlayerControlView;->playedAdGroups:[Z

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/ui/PlayerControlView;->playedAdGroups:[Z

    :cond_a
    iget-object v1, v0, Landroidx/media3/ui/PlayerControlView;->adGroupTimesMs:[J

    add-long v18, v12, v18

    invoke-static/range {v18 .. v19}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v18

    aput-wide v18, v1, v14

    iget-object v1, v0, Landroidx/media3/ui/PlayerControlView;->playedAdGroups:[Z

    iget-object v2, v7, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v2, v3}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v2

    iget v10, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_b

    move/from16 v21, v4

    move-object/from16 v22, v7

    const/4 v7, 0x1

    goto :goto_a

    :cond_b
    const/4 v11, 0x0

    :goto_9
    move/from16 v21, v4

    if-ge v11, v10, :cond_e

    iget-object v4, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    aget v4, v4, v11

    move-object/from16 v22, v7

    const/4 v7, 0x1

    if-eqz v4, :cond_d

    if-ne v4, v7, :cond_c

    goto :goto_a

    :cond_c
    add-int/lit8 v11, v11, 0x1

    move/from16 v4, v21

    move-object/from16 v7, v22

    goto :goto_9

    :cond_d
    :goto_a
    move v2, v7

    goto :goto_b

    :cond_e
    move-object/from16 v22, v7

    const/4 v7, 0x1

    const/4 v2, 0x0

    :goto_b
    xor-int/2addr v2, v7

    aput-boolean v2, v1, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_c

    :cond_f
    move/from16 v21, v4

    move-object/from16 v22, v7

    const/4 v7, 0x1

    :goto_c
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v20

    move/from16 v1, v21

    move-object/from16 v7, v22

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_6

    :cond_10
    move/from16 v21, v1

    move/from16 v20, v2

    const/4 v7, 0x1

    const-wide/16 v16, 0x0

    add-int/lit8 v6, v6, 0x1

    move v4, v7

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_5

    :cond_11
    move/from16 v21, v1

    move/from16 v20, v2

    move v7, v4

    const-wide/16 v16, 0x0

    iget-wide v1, v5, Landroidx/media3/common/Timeline$Window;->durationUs:J

    add-long/2addr v12, v1

    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v6, v16

    move/from16 v2, v20

    move/from16 v1, v21

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_4

    :cond_12
    :goto_d
    move v7, v4

    goto :goto_e

    :cond_13
    move-wide/from16 v16, v6

    move v7, v4

    const/16 v1, 0x10

    invoke-virtual {v2, v1}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v2}, Landroidx/media3/common/BasePlayer;->getContentDuration()J

    move-result-wide v1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v3

    if-eqz v3, :cond_14

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v1

    move-wide/from16 v16, v1

    :cond_14
    move-wide/from16 v12, v16

    const/4 v14, 0x0

    :goto_e
    invoke-static {v12, v13}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v1

    iget-object v3, v0, Landroidx/media3/ui/PlayerControlView;->durationView:Landroid/widget/TextView;

    if-eqz v3, :cond_15

    iget-object v4, v0, Landroidx/media3/ui/PlayerControlView;->formatBuilder:Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroidx/media3/ui/PlayerControlView;->formatter:Ljava/util/Formatter;

    invoke-static {v4, v5, v1, v2}, Landroidx/media3/common/util/Util;->getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_15
    iget-object v3, v0, Landroidx/media3/ui/PlayerControlView;->timeBar:Landroidx/media3/ui/TimeBar;

    if-eqz v3, :cond_19

    check-cast v3, Landroidx/media3/ui/DefaultTimeBar;

    invoke-virtual {v3, v1, v2}, Landroidx/media3/ui/DefaultTimeBar;->setDuration(J)V

    iget-object v1, v0, Landroidx/media3/ui/PlayerControlView;->extraAdGroupTimesMs:[J

    array-length v2, v1

    add-int v4, v14, v2

    iget-object v5, v0, Landroidx/media3/ui/PlayerControlView;->adGroupTimesMs:[J

    array-length v6, v5

    if-le v4, v6, :cond_16

    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v5

    iput-object v5, v0, Landroidx/media3/ui/PlayerControlView;->adGroupTimesMs:[J

    iget-object v5, v0, Landroidx/media3/ui/PlayerControlView;->playedAdGroups:[Z

    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v5

    iput-object v5, v0, Landroidx/media3/ui/PlayerControlView;->playedAdGroups:[Z

    :cond_16
    iget-object v5, v0, Landroidx/media3/ui/PlayerControlView;->adGroupTimesMs:[J

    const/4 v6, 0x0

    invoke-static {v1, v6, v5, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Landroidx/media3/ui/PlayerControlView;->extraPlayedAdGroups:[Z

    iget-object v5, v0, Landroidx/media3/ui/PlayerControlView;->playedAdGroups:[Z

    invoke-static {v1, v6, v5, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Landroidx/media3/ui/PlayerControlView;->adGroupTimesMs:[J

    iget-object v2, v0, Landroidx/media3/ui/PlayerControlView;->playedAdGroups:[Z

    if-eqz v4, :cond_17

    if-eqz v1, :cond_18

    if-eqz v2, :cond_18

    :cond_17
    move v6, v7

    :cond_18
    invoke-static {v6}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    iput v4, v3, Landroidx/media3/ui/DefaultTimeBar;->adGroupCount:I

    iput-object v1, v3, Landroidx/media3/ui/DefaultTimeBar;->adGroupTimesMs:[J

    iput-object v2, v3, Landroidx/media3/ui/DefaultTimeBar;->playedAdGroups:[Z

    invoke-virtual {v3}, Landroidx/media3/ui/DefaultTimeBar;->update()V

    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/ui/PlayerControlView;->updateProgress()V

    return-void
.end method

.method public final updateTrackLists()V
    .locals 6

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->textTrackSelectionAdapter:Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->audioTrackSelectionAdapter:Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    const/4 v3, 0x1

    iget-object v4, p0, Landroidx/media3/ui/PlayerControlView;->subtitleButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    const/16 v5, 0x1e

    check-cast v2, Landroidx/media3/common/BasePlayer;

    invoke-virtual {v2, v5}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    const/16 v5, 0x1d

    check-cast v2, Landroidx/media3/common/BasePlayer;

    invoke-virtual {v2, v5}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    check-cast v2, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTracks()Landroidx/media3/common/Tracks;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Landroidx/media3/ui/PlayerControlView;->gatherSupportedTrackInfosOfType(Landroidx/media3/common/Tracks;I)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->init(Lcom/google/common/collect/RegularImmutableList;)V

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    invoke-virtual {v1, v4}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->getShowButton(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    invoke-virtual {p0, v2, v1}, Landroidx/media3/ui/PlayerControlView;->gatherSupportedTrackInfosOfType(Landroidx/media3/common/Tracks;I)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->init(Lcom/google/common/collect/RegularImmutableList;)V

    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ListAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_3

    move v0, v3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    invoke-virtual {p0, v4, v0}, Landroidx/media3/ui/PlayerControlView;->updateButton(Landroid/view/View;Z)V

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->settingsAdapter:Landroidx/media3/ui/PlayerControlView$SettingsAdapter;

    invoke-virtual {v0, v3}, Landroidx/media3/ui/PlayerControlView$SettingsAdapter;->shouldShowSetting(I)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerControlView$SettingsAdapter;->shouldShowSetting(I)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move v3, v1

    :cond_5
    :goto_3
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->settingsButton:Landroid/view/View;

    invoke-virtual {p0, v0, v3}, Landroidx/media3/ui/PlayerControlView;->updateButton(Landroid/view/View;Z)V

    return-void
.end method
