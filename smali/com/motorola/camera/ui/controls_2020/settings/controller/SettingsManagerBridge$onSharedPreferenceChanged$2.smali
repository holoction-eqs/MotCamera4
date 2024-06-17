.class public final Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $key:Lcom/motorola/camera/settings/SettingsManager$Key;

.field public final synthetic $result:Lkotlinx/coroutines/Deferred;

.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/Deferred;Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;Lcom/motorola/camera/settings/SettingsManager$Key;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$2;->$result:Lkotlinx/coroutines/Deferred;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$2;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$2;->$key:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-direct {p0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$2;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$2;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$2;->$key:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$2;->$result:Lkotlinx/coroutines/Deferred;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$2;-><init>(Lkotlinx/coroutines/Deferred;Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;Lcom/motorola/camera/settings/SettingsManager$Key;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$2;->$result:Lkotlinx/coroutines/Deferred;

    iput v2, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$2;->label:I

    invoke-interface {p1, p0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Lcom/motorola/camera/settings/Setting;

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$2;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$2;->$key:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v1, "key"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    if-nez v1, :cond_3

    goto/16 :goto_c

    :cond_3
    iget-object v3, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    instance-of v4, v3, Landroid/util/Size;

    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;->fragment:Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v4, :cond_8

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->Companion:Lkotlin/UByte$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->values()[Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;

    move-result-object v2

    array-length v3, v2

    :goto_1
    if-ge v6, v3, :cond_5

    aget-object v4, v2, v6

    iget-object v7, v4, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v0}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    move-object v4, v5

    :goto_2
    if-eqz v4, :cond_16

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, v4, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->key:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference;

    if-eqz p1, :cond_6

    iget-object v5, p1, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    :cond_6
    iget-object v0, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {v5, v0}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_c

    :cond_7
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v2, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;

    const/16 v3, 0x11

    invoke-direct {v2, v3, p1, v1}, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_c

    :cond_8
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_12

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->Companion:Lkotlin/ULong$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->values()[Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;

    move-result-object v3

    array-length v4, v3

    move v7, v6

    :goto_4
    if-ge v7, v4, :cond_a

    aget-object v8, v3, v7

    iget-object v9, v8, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v9, v0}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_a
    move-object v8, v5

    :goto_5
    if-eqz v8, :cond_d

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v8, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->key:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/controls_2020/settings/preferences/IntSettingListPreference;

    if-eqz v3, :cond_b

    iget-object v4, v3, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    goto :goto_6

    :cond_b
    move-object v4, v5

    :goto_6
    iget-object v7, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {v4, v7}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    goto/16 :goto_c

    :cond_c
    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v7, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;

    const/16 v8, 0x12

    invoke-direct {v7, v8, v3, v1}, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v7}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    :cond_d
    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;->values()[Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;

    move-result-object v3

    array-length v4, v3

    move v7, v6

    :goto_7
    if-ge v7, v4, :cond_f

    aget-object v8, v3, v7

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Lcom/motorola/camera/utility/ForegroundRunner$handler$2;->INSTANCE$12:Lcom/motorola/camera/utility/ForegroundRunner$handler$2;

    invoke-virtual {v9}, Lcom/motorola/camera/utility/ForegroundRunner$handler$2;->invoke$2()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v9, v0}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    move-object v5, v8

    goto :goto_8

    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_f
    :goto_8
    if-eqz v5, :cond_16

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f120475

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz p1, :cond_10

    iget-boolean v0, p1, Landroidx/preference/TwoStatePreference;->mChecked:Z

    iget-object v3, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-ne v0, v3, :cond_10

    goto :goto_9

    :cond_10
    move v2, v6

    :goto_9
    if-eqz v2, :cond_11

    goto :goto_c

    :cond_11
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v1, v6}, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$$ExternalSyntheticLambda0;-><init>(Landroidx/preference/SwitchPreferenceCompat;Lcom/motorola/camera/settings/Setting;I)V

    goto/16 :goto_3

    :cond_12
    instance-of v3, v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_16

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->Companion:Lkotlin/UInt$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->values()[Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    move-result-object v3

    array-length v4, v3

    :goto_a
    if-ge v6, v4, :cond_14

    aget-object v7, v3, v6

    iget-object v8, v7, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v0}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    goto :goto_b

    :cond_13
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_14
    move-object v7, v5

    :goto_b
    if-eqz v7, :cond_16

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v3, v7, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->key:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz p1, :cond_15

    iget-boolean v0, p1, Landroidx/preference/TwoStatePreference;->mChecked:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    :cond_15
    iget-object v0, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {v5, v0}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1, v1, v2}, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$$ExternalSyntheticLambda0;-><init>(Landroidx/preference/SwitchPreferenceCompat;Lcom/motorola/camera/settings/Setting;I)V

    invoke-virtual {v0, v3}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    :cond_16
    :goto_c
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$2;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;

    iget-object v0, p1, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;->resultList:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$2;->$result:Lkotlinx/coroutines/Deferred;

    monitor-enter v0

    :try_start_0
    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;->resultList:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
