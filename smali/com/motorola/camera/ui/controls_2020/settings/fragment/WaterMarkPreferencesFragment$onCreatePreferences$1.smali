.class public final Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment$onCreatePreferences$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment$onCreatePreferences$1;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment$onCreatePreferences$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment$onCreatePreferences$1;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment$onCreatePreferences$1;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment$onCreatePreferences$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment$onCreatePreferences$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment$onCreatePreferences$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget p1, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment;->$r8$clinit:I

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment$onCreatePreferences$1;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/motorola/camera/service/WatermarkGenerator$LazyLoader;->INSTANCE:Lcom/motorola/camera/service/WatermarkGenerator;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v0

    iput-boolean v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mIsRtl:Z

    const v0, 0x7f070526

    iget-object v1, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mResource:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mShotOnTxtSize:I

    const v0, 0x7f070518

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mByTxtSize:I

    const v0, 0x7f07052a

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mTsXMargin:I

    const v0, 0x7f07052b

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mTsYMargin:I

    const v0, 0x7f07052c

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mTsTxtSize:I

    const v0, 0x7f07051d

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mLineWidth:I

    const v0, 0x7f07051b

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mLineHeight:I

    const v0, 0x7f07051c

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mLineTop:I

    const v0, 0x7f070525

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mPreviewWidth:I

    const v0, 0x7f070524

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mPreviewHeight:I

    const v0, 0x7f070517

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/Util;->roundToFour(I)I

    move-result v0

    iput v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mAreaWidth:I

    const v0, 0x7f070516

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/Util;->roundToFour(I)I

    move-result v0

    iput v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mAreaHeight:I

    invoke-static {}, Lcom/motorola/camera/Util;->isBrandLenovo()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f070520

    goto :goto_0

    :cond_0
    const v0, 0x7f070522

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mLogoWidth:I

    invoke-static {}, Lcom/motorola/camera/Util;->isBrandLenovo()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f07051f

    goto :goto_1

    :cond_1
    const v0, 0x7f07051e

    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mLogoHeight:I

    const v0, 0x7f070521

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mLogoMarginV:I

    iput v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mLogoMarginH:I

    invoke-static {}, Lcom/motorola/camera/Util;->isBrandLenovo()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    iget v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mLogoMarginH:I

    iget v3, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mLogoWidth:I

    add-int/2addr v3, v0

    add-int/2addr v3, v0

    iget v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mLineWidth:I

    add-int/2addr v0, v3

    :goto_2
    iget v3, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mLogoMarginH:I

    add-int/2addr v0, v3

    iput v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mSignXOffset:I

    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->isTimestampChecked()Z

    move-result v0

    iput-boolean v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mIsTimestampOn:Z

    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->isSignatureChecked()Z

    move-result v0

    iput-boolean v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mIsSignatureOn:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mSignText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v3

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    iput-boolean v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mIsSignPresent:Z

    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getSignatureText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/motorola/camera/service/WatermarkGenerator;->setSignText(Ljava/lang/String;)V

    iget v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mPreviewWidth:I

    iget v4, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mPreviewHeight:I

    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v6, 0x7f08037b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v5, v0, v4}, Lcom/motorola/camera/service/WatermarkEditorService;->loadDrawableBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mLeftPreviewTemplate:Landroid/graphics/Bitmap;

    iget v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mPreviewWidth:I

    iget v4, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mPreviewHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mRightPreviewTemplate:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v4, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mRightPreviewTemplate:Landroid/graphics/Bitmap;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const v4, 0x7f0603f5

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-static {}, Lcom/motorola/camera/Util;->isBrandLenovo()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    const v0, 0x7f080292

    :goto_4
    iget v1, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mLogoWidth:I

    iget v4, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mLogoHeight:I

    if-eqz v0, :cond_5

    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v5, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :cond_5
    invoke-static {v5, v1, v4}, Lcom/motorola/camera/service/WatermarkEditorService;->loadDrawableBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mLogoBitmap:Landroid/graphics/Bitmap;

    iget v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mAreaWidth:I

    iget v1, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mAreaHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mLeftSignTemplate:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/motorola/camera/service/WatermarkGenerator;->isBitmapInvalid(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    iget-object v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mLeftSignTemplate:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/service/WatermarkGenerator;->preDraw(Landroid/graphics/Bitmap;)V

    :goto_5
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/motorola/camera/service/WatermarkEditorService;->getTimestampString(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget v4, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mTsTxtSize:I

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v4, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mLineColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v0, v2, v5, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    iget v1, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget v1, v4, Landroid/graphics/Rect;->right:I

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v4

    iget v4, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mTsXMargin:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    iget v1, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mTsYMargin:I

    add-int/2addr v1, v0

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v4, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mTsXMargin:I

    iput v4, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mTsTxtXStart:I

    iput v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mTsTxtYStart:I

    iput-object v1, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mTimestampTemplate:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_a

    const v0, 0x7f120479

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreferenceCompat;

    const v1, 0x7f120478

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SwitchPreferenceCompat;

    const v4, 0x7f120477

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference;

    const v5, 0x7f120476

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;

    if-eqz v0, :cond_7

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4, v2}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference;I)V

    iput-object v5, v0, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    :cond_7
    if-eqz v1, :cond_8

    new-instance v0, Lcom/motorola/camera/service/WatermarkEditorService$$ExternalSyntheticLambda1;

    const/16 v5, 0x11

    invoke-direct {v0, v5, v4, p1}, Lcom/motorola/camera/service/WatermarkEditorService$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, v1, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    :cond_8
    if-eqz p1, :cond_9

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, v4, v3}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference;I)V

    iput-object v0, p1, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    :cond_9
    new-instance p1, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;

    invoke-direct {p1}, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment;->watermarkCache:Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/motorola/camera/service/WatermarkEditorService;->getCameraPictureSizes(Z)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/motorola/camera/service/WatermarkEditorService;->getCameraPictureSizes(Z)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkPref()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {p1}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment;->getStringSetsFromSizes(Ljava/util/ArrayList;)Ljava/util/HashSet;

    move-result-object v2

    const-string v3, "supported_front_pic_sizes"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {v0}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment;->getStringSetsFromSizes(Ljava/util/ArrayList;)Ljava/util/HashSet;

    move-result-object v2

    const-string v3, "supported_rear_pic_sizes"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment;->watermarkCache:Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;

    const-string v2, "front"

    invoke-static {v1, v2, p1}, Lcom/motorola/camera/service/WatermarkEditorService;->cacheWatermarkItems(Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment;->watermarkCache:Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;

    const-string p1, "rear"

    invoke-static {p0, p1, v0}, Lcom/motorola/camera/service/WatermarkEditorService;->cacheWatermarkItems(Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_a
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
