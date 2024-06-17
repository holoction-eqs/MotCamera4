.class public final Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment;
.super Lcom/motorola/camera/ui/controls_2020/settings/fragment/BaseNestedPreferencesFragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment;",
        "Lcom/motorola/camera/ui/controls_2020/settings/fragment/BaseNestedPreferencesFragment;",
        "<init>",
        "()V",
        "Companion",
        "MotCamera4-v9.1.0.91_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public watermarkCache:Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;


# direct methods
.method public constructor <init>()V
    .locals 2

    const v0, 0x7f150008

    const v1, 0x7f120296

    invoke-direct {p0, v0, v1}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BaseNestedPreferencesFragment;-><init>(II)V

    return-void
.end method

.method public static getStringSetsFromSizes(Ljava/util/ArrayList;)Ljava/util/HashSet;
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment$onCreatePreferences$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment$onCreatePreferences$1;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {v2, p2, v1, p1, v0}, Lkotlinx/coroutines/DelayKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    move-result-object p1

    new-instance p2, Landroidx/work/JobListenableFuture$1;

    const/16 v0, 0x9

    invoke-direct {p2, p0, v0}, Landroidx/work/JobListenableFuture$1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/JobSupport;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;->onDestroy()V

    sget-object p0, Lcom/motorola/camera/service/WatermarkGenerator$LazyLoader;->INSTANCE:Lcom/motorola/camera/service/WatermarkGenerator;

    iget-object v0, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLeftSignTemplate:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/motorola/camera/service/WatermarkGenerator;->releaseBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLogoBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/motorola/camera/service/WatermarkGenerator;->releaseBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mRightPreviewTemplate:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/motorola/camera/service/WatermarkGenerator;->releaseBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLeftPreviewTemplate:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/motorola/camera/service/WatermarkGenerator;->releaseBitmap(Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mTimestampTemplate:Landroid/graphics/Bitmap;

    invoke-static {p0}, Lcom/motorola/camera/service/WatermarkGenerator;->releaseBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final onStop()V
    .locals 10

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onStop()V

    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_key_locale_language"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->isTimestampChecked()Z

    move-result v0

    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->isSignatureChecked()Z

    move-result v1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment;->watermarkCache:Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;

    if-eqz p0, :cond_7

    iput-boolean v1, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;->mIsSignatureEnabled:Z

    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getSignatureText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getSignatureText()"

    invoke-static {v2, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    if-gt v6, v3, :cond_5

    if-nez v7, :cond_0

    move v8, v6

    goto :goto_1

    :cond_0
    move v8, v3

    :goto_1
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x20

    invoke-static {v8, v9}, Lkotlin/ExceptionsKt;->compare(II)I

    move-result v8

    if-gtz v8, :cond_1

    move v8, v4

    goto :goto_2

    :cond_1
    move v8, v5

    :goto_2
    if-nez v7, :cond_3

    if-nez v8, :cond_2

    move v7, v4

    goto :goto_0

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    if-nez v8, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_5
    :goto_3
    add-int/2addr v3, v4

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;->mSignatureText:Ljava/lang/String;

    if-nez v1, :cond_6

    if-eqz v0, :cond_7

    :cond_6
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/motorola/camera/service/WatermarkEditorService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.motorola.camera.service.action.CREATE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "com.motorola.camera.service.extra.CACHE"

    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "com.motorola.camera.service.extra.BUNDLE"

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_7
    return-void
.end method
