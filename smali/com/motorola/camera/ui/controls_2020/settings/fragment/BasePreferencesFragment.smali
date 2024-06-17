.class public abstract Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ActivityStarter;


# instance fields
.field public final coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

.field public final preferenceRes:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;->preferenceRes:I

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    return-void
.end method


# virtual methods
.method public final disableScrollInPreference()V
    .locals 3

    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment$CustomRecycler;

    iget-object v2, p0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    iget v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    iget-boolean v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    invoke-direct {v1, v2, v0}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment$CustomRecycler;-><init>(IZ)V

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment$CustomRecycler;->isScrollEnabled:Z

    iget-object p0, p0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 5

    iget-object p1, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    const-string v0, "com.motorola.camera_preferences"

    iput-object v0, p1, Landroidx/preference/PreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p1, Landroidx/preference/PreferenceManager;->mSharedPreferencesMode:I

    const/4 v1, 0x0

    iput-object v1, p1, Landroidx/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, p1, Landroidx/preference/PreferenceManager;->mNoCommit:Z

    new-instance v3, Landroidx/preference/PreferenceInflater;

    invoke-direct {v3, v1, p1}, Landroidx/preference/PreferenceInflater;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceManager;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v4, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;->preferenceRes:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    :try_start_0
    invoke-virtual {v3, v1}, Landroidx/preference/PreferenceInflater;->inflate(Landroid/content/res/XmlResourceParser;)Landroidx/preference/PreferenceGroup;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    check-cast v3, Landroidx/preference/PreferenceScreen;

    invoke-virtual {v3, p1}, Landroidx/preference/Preference;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V

    iget-object v1, p1, Landroidx/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    iput-boolean v0, p1, Landroidx/preference/PreferenceManager;->mNoCommit:Z

    if-eqz p2, :cond_2

    invoke-virtual {v3, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    instance-of p1, v3, Landroidx/preference/PreferenceScreen;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Preference object with key "

    const-string v0, " is not a PreferenceScreen"

    invoke-static {p1, p2, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    check-cast v3, Landroidx/preference/PreferenceScreen;

    iget-object p1, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    iget-object p2, p1, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    if-eq v3, p2, :cond_4

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->onDetached()V

    :cond_3
    iput-object v3, p1, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    move v0, v2

    :cond_4
    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    iput-boolean v2, p0, Landroidx/preference/PreferenceFragmentCompat;->mHavePrefs:Z

    iget-boolean p1, p0, Landroidx/preference/PreferenceFragmentCompat;->mInitDone:Z

    if-eqz p1, :cond_6

    iget-object p0, p0, Landroidx/preference/PreferenceFragmentCompat;->mHandler:Landroidx/preference/PreferenceFragmentCompat$1;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_6
    :goto_1
    return-void

    :catchall_0
    move-exception p0

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "This should be called after super.onCreate."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {p0}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;)V

    return-void
.end method

.method public final startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->requestCode:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p1, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
