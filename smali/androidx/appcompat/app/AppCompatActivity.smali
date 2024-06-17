.class public abstract Landroidx/appcompat/app/AppCompatActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/app/AppCompatCallback;


# instance fields
.field public mDelegate:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mSavedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    iget-object v0, v0, Landroidx/savedstate/SavedStateRegistryController;->savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;

    new-instance v1, Landroidx/appcompat/app/AppCompatActivity$1;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AppCompatActivity$1;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    const-string v2, "androidx:appcompat"

    invoke-virtual {v0, v2, v1}, Landroidx/savedstate/SavedStateRegistry;->registerSavedStateProvider(Ljava/lang/String;Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;)V

    new-instance v0, Landroidx/appcompat/app/AppCompatActivity$2;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AppCompatActivity$2;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->addOnContextAvailableListener(Landroidx/activity/contextaware/OnContextAvailableListener;)V

    return-void
.end method

.method private initViewTreeOwners()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0a048c

    invoke-virtual {v0, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0a048f

    invoke-virtual {v0, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0a048e

    invoke-virtual {v0, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0a048d

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;->initViewTreeOwners()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDelegate;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 9

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mBaseContextAttached:Z

    iget v2, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mLocalNightMode:I

    const/16 v3, -0x64

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    sget v2, Landroidx/appcompat/app/AppCompatDelegate;->sDefaultNightMode:I

    :goto_0
    invoke-virtual {v0, p1, v2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->mapNightMode(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p1}, Landroidx/appcompat/app/AppCompatDelegate;->isAutoStorageOptedIn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {p1}, Landroidx/appcompat/app/AppCompatDelegate;->isAutoStorageOptedIn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-boolean v2, Landroidx/appcompat/app/AppCompatDelegate;->sIsFrameworkSyncChecked:Z

    if-nez v2, :cond_7

    sget-object v2, Landroidx/appcompat/app/AppCompatDelegate;->sSerialExecutorForLocalesStorage:Landroidx/room/TransactionExecutor;

    new-instance v3, Landroidx/appcompat/app/AppCompatDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Landroidx/appcompat/app/AppCompatDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroidx/room/TransactionExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_2
    sget-object v2, Landroidx/appcompat/app/AppCompatDelegate;->sAppLocalesStorageSyncLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v3, Landroidx/appcompat/app/AppCompatDelegate;->sRequestedAppLocales:Landroidx/core/os/LocaleListCompat;

    if-nez v3, :cond_5

    sget-object v3, Landroidx/appcompat/app/AppCompatDelegate;->sStoredAppLocales:Landroidx/core/os/LocaleListCompat;

    if-nez v3, :cond_3

    invoke-static {p1}, Landroidx/media3/ui/HtmlUtils;->readLocales(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/core/os/LocaleListCompat;->forLanguageTags(Ljava/lang/String;)Landroidx/core/os/LocaleListCompat;

    move-result-object v3

    sput-object v3, Landroidx/appcompat/app/AppCompatDelegate;->sStoredAppLocales:Landroidx/core/os/LocaleListCompat;

    :cond_3
    sget-object v3, Landroidx/appcompat/app/AppCompatDelegate;->sStoredAppLocales:Landroidx/core/os/LocaleListCompat;

    iget-object v3, v3, Landroidx/core/os/LocaleListCompat;->mImpl:Landroidx/core/os/LocaleListInterface;

    check-cast v3, Landroidx/core/os/LocaleListPlatformWrapper;

    iget-object v3, v3, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v3}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    sget-object v3, Landroidx/appcompat/app/AppCompatDelegate;->sStoredAppLocales:Landroidx/core/os/LocaleListCompat;

    sput-object v3, Landroidx/appcompat/app/AppCompatDelegate;->sRequestedAppLocales:Landroidx/core/os/LocaleListCompat;

    goto :goto_1

    :cond_5
    sget-object v4, Landroidx/appcompat/app/AppCompatDelegate;->sStoredAppLocales:Landroidx/core/os/LocaleListCompat;

    invoke-virtual {v3, v4}, Landroidx/core/os/LocaleListCompat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Landroidx/appcompat/app/AppCompatDelegate;->sRequestedAppLocales:Landroidx/core/os/LocaleListCompat;

    sput-object v3, Landroidx/appcompat/app/AppCompatDelegate;->sStoredAppLocales:Landroidx/core/os/LocaleListCompat;

    iget-object v3, v3, Landroidx/core/os/LocaleListCompat;->mImpl:Landroidx/core/os/LocaleListInterface;

    check-cast v3, Landroidx/core/os/LocaleListPlatformWrapper;

    iget-object v3, v3, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v3}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroidx/media3/ui/HtmlUtils;->persistLocales(Landroid/content/Context;Ljava/lang/String;)V

    :cond_6
    :goto_1
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_7
    :goto_2
    invoke-static {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->calculateApplicationLocales(Landroid/content/Context;)Landroidx/core/os/LocaleListCompat;

    move-result-object v2

    sget-boolean v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->sCanApplyOverrideConfiguration:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_8

    instance-of v3, p1, Landroid/view/ContextThemeWrapper;

    if-eqz v3, :cond_8

    invoke-static {p1, v0, v2, v5, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl;->createOverrideAppConfiguration(Landroid/content/Context;ILandroidx/core/os/LocaleListCompat;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    move-result-object v3

    :try_start_1
    move-object v6, p1

    check-cast v6, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v6, v3}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    :catch_0
    :cond_8
    instance-of v3, p1, Landroidx/appcompat/view/ContextThemeWrapper;

    if-eqz v3, :cond_9

    invoke-static {p1, v0, v2, v5, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl;->createOverrideAppConfiguration(Landroid/content/Context;ILandroidx/core/os/LocaleListCompat;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    move-result-object v3

    :try_start_2
    move-object v6, p1

    check-cast v6, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-virtual {v6, v3}, Landroidx/appcompat/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_5

    :catch_1
    :cond_9
    sget-boolean v3, Landroidx/appcompat/app/AppCompatDelegateImpl;->sCanReturnDifferentContext:Z

    if-nez v3, :cond_a

    goto/16 :goto_5

    :cond_a
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    const/4 v6, -0x1

    iput v6, v3, Landroid/content/res/Configuration;->uiMode:I

    const/4 v6, 0x0

    iput v6, v3, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p1, v3}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v8, v7, Landroid/content/res/Configuration;->uiMode:I

    iput v8, v3, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {v3, v7}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v8

    if-nez v8, :cond_20

    new-instance v5, Landroid/content/res/Configuration;

    invoke-direct {v5}, Landroid/content/res/Configuration;-><init>()V

    iput v6, v5, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v3, v7}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v6

    if-nez v6, :cond_b

    goto/16 :goto_3

    :cond_b
    iget v6, v3, Landroid/content/res/Configuration;->fontScale:F

    iget v8, v7, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_c

    iput v8, v5, Landroid/content/res/Configuration;->fontScale:F

    :cond_c
    iget v6, v3, Landroid/content/res/Configuration;->mcc:I

    iget v8, v7, Landroid/content/res/Configuration;->mcc:I

    if-eq v6, v8, :cond_d

    iput v8, v5, Landroid/content/res/Configuration;->mcc:I

    :cond_d
    iget v6, v3, Landroid/content/res/Configuration;->mnc:I

    iget v8, v7, Landroid/content/res/Configuration;->mnc:I

    if-eq v6, v8, :cond_e

    iput v8, v5, Landroid/content/res/Configuration;->mnc:I

    :cond_e
    invoke-static {v3, v7, v5}, Landroidx/appcompat/app/AppCompatDelegateImpl$Api24Impl;->generateConfigDelta_locale(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    iget v6, v3, Landroid/content/res/Configuration;->touchscreen:I

    iget v8, v7, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v6, v8, :cond_f

    iput v8, v5, Landroid/content/res/Configuration;->touchscreen:I

    :cond_f
    iget v6, v3, Landroid/content/res/Configuration;->keyboard:I

    iget v8, v7, Landroid/content/res/Configuration;->keyboard:I

    if-eq v6, v8, :cond_10

    iput v8, v5, Landroid/content/res/Configuration;->keyboard:I

    :cond_10
    iget v6, v3, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v8, v7, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v6, v8, :cond_11

    iput v8, v5, Landroid/content/res/Configuration;->keyboardHidden:I

    :cond_11
    iget v6, v3, Landroid/content/res/Configuration;->navigation:I

    iget v8, v7, Landroid/content/res/Configuration;->navigation:I

    if-eq v6, v8, :cond_12

    iput v8, v5, Landroid/content/res/Configuration;->navigation:I

    :cond_12
    iget v6, v3, Landroid/content/res/Configuration;->navigationHidden:I

    iget v8, v7, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v6, v8, :cond_13

    iput v8, v5, Landroid/content/res/Configuration;->navigationHidden:I

    :cond_13
    iget v6, v3, Landroid/content/res/Configuration;->orientation:I

    iget v8, v7, Landroid/content/res/Configuration;->orientation:I

    if-eq v6, v8, :cond_14

    iput v8, v5, Landroid/content/res/Configuration;->orientation:I

    :cond_14
    iget v6, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v6, v6, 0xf

    iget v8, v7, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v8, v8, 0xf

    if-eq v6, v8, :cond_15

    iget v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v6, v8

    iput v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    :cond_15
    iget v6, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v6, v6, 0xc0

    iget v8, v7, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v8, v8, 0xc0

    if-eq v6, v8, :cond_16

    iget v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v6, v8

    iput v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    :cond_16
    iget v6, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v6, v6, 0x30

    iget v8, v7, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v8, v8, 0x30

    if-eq v6, v8, :cond_17

    iget v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v6, v8

    iput v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    :cond_17
    iget v6, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v6, v6, 0x300

    iget v8, v7, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v8, v8, 0x300

    if-eq v6, v8, :cond_18

    iget v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v6, v8

    iput v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    :cond_18
    iget v6, v3, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v6, v6, 0x3

    iget v8, v7, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v8, v8, 0x3

    if-eq v6, v8, :cond_19

    iget v6, v5, Landroid/content/res/Configuration;->colorMode:I

    or-int/2addr v6, v8

    iput v6, v5, Landroid/content/res/Configuration;->colorMode:I

    :cond_19
    iget v6, v3, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v6, v6, 0xc

    iget v8, v7, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v8, v8, 0xc

    if-eq v6, v8, :cond_1a

    iget v6, v5, Landroid/content/res/Configuration;->colorMode:I

    or-int/2addr v6, v8

    iput v6, v5, Landroid/content/res/Configuration;->colorMode:I

    :cond_1a
    iget v6, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v6, v6, 0xf

    iget v8, v7, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v8, v8, 0xf

    if-eq v6, v8, :cond_1b

    iget v6, v5, Landroid/content/res/Configuration;->uiMode:I

    or-int/2addr v6, v8

    iput v6, v5, Landroid/content/res/Configuration;->uiMode:I

    :cond_1b
    iget v6, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v6, v6, 0x30

    iget v8, v7, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v8, v8, 0x30

    if-eq v6, v8, :cond_1c

    iget v6, v5, Landroid/content/res/Configuration;->uiMode:I

    or-int/2addr v6, v8

    iput v6, v5, Landroid/content/res/Configuration;->uiMode:I

    :cond_1c
    iget v6, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v8, v7, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v6, v8, :cond_1d

    iput v8, v5, Landroid/content/res/Configuration;->screenWidthDp:I

    :cond_1d
    iget v6, v3, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v8, v7, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v6, v8, :cond_1e

    iput v8, v5, Landroid/content/res/Configuration;->screenHeightDp:I

    :cond_1e
    iget v6, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v8, v7, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v6, v8, :cond_1f

    iput v8, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    :cond_1f
    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    iget v6, v7, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v3, v6, :cond_20

    iput v6, v5, Landroid/content/res/Configuration;->densityDpi:I

    :cond_20
    :goto_3
    invoke-static {p1, v0, v2, v5, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->createOverrideAppConfiguration(Landroid/content/Context;ILandroidx/core/os/LocaleListCompat;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    move-result-object v0

    new-instance v2, Landroidx/appcompat/view/ContextThemeWrapper;

    const v3, 0x7f1302b3

    invoke-direct {v2, p1, v3}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v0}, Landroidx/appcompat/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V

    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz p1, :cond_21

    goto :goto_4

    :cond_21
    move v1, v4

    :goto_4
    move v4, v1

    :catch_2
    if-eqz v4, :cond_22

    invoke-virtual {v2}, Landroidx/appcompat/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/content/res/ResourcesCompat$ThemeCompat$Api29Impl;->rebase(Landroid/content/res/Resources$Theme;)V

    :cond_22
    move-object p1, v2

    :goto_5
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final closeOptionsMenu()V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->initWindowDecorActionBar()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->closeOptionsMenu()V

    :cond_0
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->initWindowDecorActionBar()V

    invoke-super {p0, p1}, Landroidx/core/app/ComponentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->ensureSubDecor()V

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {p0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final getDelegate()Landroidx/appcompat/app/AppCompatDelegate;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatActivity;->mDelegate:Landroidx/appcompat/app/AppCompatDelegateImpl;

    if-nez v0, :cond_0

    sget-object v0, Landroidx/appcompat/app/AppCompatDelegate;->sSerialExecutorForLocalesStorage:Landroidx/room/TransactionExecutor;

    new-instance v0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p0, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;-><init>(Landroid/content/Context;Landroid/view/Window;Landroidx/appcompat/app/AppCompatCallback;Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/appcompat/app/AppCompatActivity;->mDelegate:Landroidx/appcompat/app/AppCompatDelegateImpl;

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatActivity;->mDelegate:Landroidx/appcompat/app/AppCompatDelegateImpl;

    return-object p0
.end method

.method public final getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mMenuInflater:Landroidx/appcompat/view/SupportMenuInflater;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->initWindowDecorActionBar()V

    new-instance v0, Landroidx/appcompat/view/SupportMenuInflater;

    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionBar:Landroidx/appcompat/app/WindowDecorActionBar;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/appcompat/app/WindowDecorActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    :goto_0
    invoke-direct {v0, v1}, Landroidx/appcompat/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mMenuInflater:Landroidx/appcompat/view/SupportMenuInflater;

    :cond_1
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mMenuInflater:Landroidx/appcompat/view/SupportMenuInflater;

    return-object p0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 1

    sget v0, Landroidx/appcompat/widget/VectorEnabledTintResources;->$r8$clinit:I

    invoke-super {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public final invalidateOptionsMenu()V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegate;->invalidateOptionsMenu()V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-boolean p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHasActionBar:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecorInstalled:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->initWindowDecorActionBar()V

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionBar:Landroidx/appcompat/app/WindowDecorActionBar;

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroidx/appcompat/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f050000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/WindowDecorActionBar;->setHasEmbeddedTabs(Z)V

    :cond_0
    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->get()Landroidx/appcompat/widget/AppCompatDrawableManager;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    monitor-enter p1

    :try_start_0
    iget-object v1, p1, Landroidx/appcompat/widget/AppCompatDrawableManager;->mResourceManager:Landroidx/appcompat/widget/ResourceManagerInternal;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, v1, Landroidx/appcompat/widget/ResourceManagerInternal;->mDrawableCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/LongSparseArray;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p1

    new-instance p1, Landroid/content/res/Configuration;

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mEffectiveConfiguration:Landroid/content/res/Configuration;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->applyApplicationSpecificConfig(ZZ)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v1

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method public final onContentChanged()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegate;->onDestroy()V

    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 7

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->initWindowDecorActionBar()V

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionBar:Landroidx/appcompat/app/WindowDecorActionBar;

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const v1, 0x102002c

    const/4 v2, 0x0

    if-ne p2, v1, :cond_a

    if-eqz p1, :cond_a

    iget-object p1, p1, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    check-cast p1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    iget p1, p1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_a

    invoke-static {p0}, Lokio/SegmentPool;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-static {p0, p1}, Landroidx/core/app/NavUtils$Api16Impl;->shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_8

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lokio/SegmentPool;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-static {p0}, Lokio/SegmentPool;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object p2

    :cond_1
    const/4 v1, 0x0

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_0
    :try_start_0
    invoke-static {p0, v3}, Lokio/SegmentPool;->getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    move-object v3, v1

    goto :goto_1

    :cond_3
    new-instance v6, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v6}, Lokio/SegmentPool;->getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-static {v6}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    goto :goto_1

    :cond_4
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_5

    invoke-virtual {p1, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_5
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :goto_2
    const-string p1, "TaskStackBuilder"

    const-string p2, "Bad ComponentName while traversing activity parent metadata"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_6
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    new-array p2, v2, [Landroid/content/Intent;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/Intent;

    new-instance p2, Landroid/content/Intent;

    aget-object v3, p1, v2

    invoke-direct {p2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v3, 0x1000c000

    invoke-virtual {p2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    aput-object p2, p1, v2

    sget-object p2, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Landroidx/core/content/ContextCompat$Api16Impl;->startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)V

    :try_start_1
    sget p1, Landroidx/core/app/ActivityCompat;->$r8$clinit:I

    invoke-static {p0}, Landroidx/core/app/ActivityCompat$Api16Impl;->finishAffinity(Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_4

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No intents added to TaskStackBuilder; cannot startActivities"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    invoke-static {p0, p1}, Landroidx/core/app/NavUtils$Api16Impl;->navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)Z

    goto :goto_4

    :cond_9
    move v0, v2

    :goto_4
    return v0

    :cond_a
    return v2
.end method

.method public final onMenuOpened(ILandroid/view/Menu;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public final onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public final onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->ensureSubDecor()V

    return-void
.end method

.method public final onPostResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPostResume()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->initWindowDecorActionBar()V

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionBar:Landroidx/appcompat/app/WindowDecorActionBar;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->applyApplicationSpecificConfig(ZZ)Z

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->initWindowDecorActionBar()V

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionBar:Landroidx/appcompat/app/WindowDecorActionBar;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    iget-object p0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mCurrentShowAnim:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->cancel()V

    :cond_0
    return-void
.end method

.method public final onSupportActionModeFinished()V
    .locals 0

    return-void
.end method

.method public final onSupportActionModeStarted()V
    .locals 0

    return-void
.end method

.method public final onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onWindowStartingSupportActionMode()V
    .locals 0

    return-void
.end method

.method public final openOptionsMenu()V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->initWindowDecorActionBar()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->openOptionsMenu()V

    :cond_0
    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;->initViewTreeOwners()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;->initViewTreeOwners()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;->initViewTreeOwners()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDelegate;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setTheme(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->setTheme(I)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    iput p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mThemeResId:I

    return-void
.end method

.method public final supportInvalidateOptionsMenu()V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegate;->invalidateOptionsMenu()V

    return-void
.end method
