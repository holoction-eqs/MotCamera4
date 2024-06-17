.class public abstract Landroidx/lifecycle/SavedStateHandleSupport;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_ARGS_KEY:Lkotlin/UNINITIALIZED_VALUE;

.field public static final SAVED_STATE_REGISTRY_OWNER_KEY:Lkotlin/UNINITIALIZED_VALUE;

.field public static final VIEW_MODEL_STORE_OWNER_KEY:Lkotlin/UNINITIALIZED_VALUE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/UNINITIALIZED_VALUE;

    invoke-direct {v0}, Lkotlin/UNINITIALIZED_VALUE;-><init>()V

    sput-object v0, Landroidx/lifecycle/SavedStateHandleSupport;->SAVED_STATE_REGISTRY_OWNER_KEY:Lkotlin/UNINITIALIZED_VALUE;

    new-instance v0, Lkotlin/UNINITIALIZED_VALUE;

    invoke-direct {v0}, Lkotlin/UNINITIALIZED_VALUE;-><init>()V

    sput-object v0, Landroidx/lifecycle/SavedStateHandleSupport;->VIEW_MODEL_STORE_OWNER_KEY:Lkotlin/UNINITIALIZED_VALUE;

    new-instance v0, Lkotlin/UNINITIALIZED_VALUE;

    invoke-direct {v0}, Lkotlin/UNINITIALIZED_VALUE;-><init>()V

    sput-object v0, Landroidx/lifecycle/SavedStateHandleSupport;->DEFAULT_ARGS_KEY:Lkotlin/UNINITIALIZED_VALUE;

    return-void
.end method

.method public static final createSavedStateHandle(Landroidx/lifecycle/viewmodel/MutableCreationExtras;)Landroidx/lifecycle/SavedStateHandle;
    .locals 7

    sget-object v0, Landroidx/lifecycle/SavedStateHandleSupport;->SAVED_STATE_REGISTRY_OWNER_KEY:Lkotlin/UNINITIALIZED_VALUE;

    iget-object p0, p0, Landroidx/lifecycle/viewmodel/CreationExtras;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/savedstate/SavedStateRegistryOwner;

    if-eqz v0, :cond_a

    sget-object v1, Landroidx/lifecycle/SavedStateHandleSupport;->VIEW_MODEL_STORE_OWNER_KEY:Lkotlin/UNINITIALIZED_VALUE;

    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/ViewModelStoreOwner;

    if-eqz v1, :cond_9

    sget-object v2, Landroidx/lifecycle/SavedStateHandleSupport;->DEFAULT_ARGS_KEY:Lkotlin/UNINITIALIZED_VALUE;

    invoke-virtual {p0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    sget-object v3, Lkotlin/UNINITIALIZED_VALUE;->INSTANCE$1:Lkotlin/UNINITIALIZED_VALUE;

    invoke-virtual {p0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_8

    invoke-interface {v0}, Landroidx/savedstate/SavedStateRegistryOwner;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/savedstate/SavedStateRegistry;->getSavedStateProvider()Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;

    move-result-object v0

    instance-of v3, v0, Landroidx/lifecycle/SavedStateHandlesProvider;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    check-cast v0, Landroidx/lifecycle/SavedStateHandlesProvider;

    goto :goto_0

    :cond_0
    move-object v0, v4

    :goto_0
    if-eqz v0, :cond_7

    invoke-static {v1}, Landroidx/lifecycle/SavedStateHandleSupport;->getSavedStateHandlesVM(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/SavedStateHandlesVM;

    move-result-object v1

    iget-object v1, v1, Landroidx/lifecycle/SavedStateHandlesVM;->handles:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/SavedStateHandle;

    if-nez v3, :cond_6

    sget-object v3, Landroidx/lifecycle/SavedStateHandle;->ACCEPTABLE_CLASSES:[Ljava/lang/Class;

    iget-boolean v3, v0, Landroidx/lifecycle/SavedStateHandlesProvider;->restored:Z

    const/4 v5, 0x1

    if-nez v3, :cond_1

    iget-object v3, v0, Landroidx/lifecycle/SavedStateHandlesProvider;->savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;

    const-string v6, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    invoke-virtual {v3, v6}, Landroidx/savedstate/SavedStateRegistry;->consumeRestoredStateForKey(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v0, Landroidx/lifecycle/SavedStateHandlesProvider;->restoredState:Landroid/os/Bundle;

    iput-boolean v5, v0, Landroidx/lifecycle/SavedStateHandlesProvider;->restored:Z

    iget-object v3, v0, Landroidx/lifecycle/SavedStateHandlesProvider;->viewModel$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v3}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/SavedStateHandlesVM;

    :cond_1
    iget-object v3, v0, Landroidx/lifecycle/SavedStateHandlesProvider;->restoredState:Landroid/os/Bundle;

    if-eqz v3, :cond_2

    invoke-virtual {v3, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v4

    :goto_1
    iget-object v6, v0, Landroidx/lifecycle/SavedStateHandlesProvider;->restoredState:Landroid/os/Bundle;

    if-eqz v6, :cond_3

    invoke-virtual {v6, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_3
    iget-object v6, v0, Landroidx/lifecycle/SavedStateHandlesProvider;->restoredState:Landroid/os/Bundle;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v6

    if-ne v6, v5, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_5

    iput-object v4, v0, Landroidx/lifecycle/SavedStateHandlesProvider;->restoredState:Landroid/os/Bundle;

    :cond_5
    invoke-static {v3, v2}, Landroidx/work/InputMergerFactory$1;->createHandle(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v3

    invoke-interface {v1, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v3

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "enableSavedStateHandles() wasn\'t called prior to createSavedStateHandle() call"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CreationExtras must have a value by `VIEW_MODEL_KEY`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CreationExtras must have a value by `VIEW_MODEL_STORE_OWNER_KEY`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CreationExtras must have a value by `SAVED_STATE_REGISTRY_OWNER_KEY`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final getSavedStateHandlesVM(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/SavedStateHandlesVM;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-class v1, Landroidx/lifecycle/SavedStateHandlesVM;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "clazz"

    invoke-static {v2, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Landroidx/lifecycle/viewmodel/ViewModelInitializer;

    invoke-static {v2}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v3, v2}, Landroidx/lifecycle/viewmodel/ViewModelInitializer;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroidx/lifecycle/viewmodel/InitializerViewModelFactory;

    const/4 v3, 0x0

    new-array v3, v3, [Landroidx/lifecycle/viewmodel/ViewModelInitializer;

    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/lifecycle/viewmodel/ViewModelInitializer;

    array-length v3, v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/lifecycle/viewmodel/ViewModelInitializer;

    invoke-direct {v2, v0}, Landroidx/lifecycle/viewmodel/InitializerViewModelFactory;-><init>([Landroidx/lifecycle/viewmodel/ViewModelInitializer;)V

    new-instance v0, Landroidx/core/view/MenuHostHelper;

    invoke-direct {v0, p0, v2}, Landroidx/core/view/MenuHostHelper;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-string p0, "androidx.lifecycle.internal.SavedStateHandlesVM"

    invoke-virtual {v0, v1, p0}, Landroidx/core/view/MenuHostHelper;->get(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/SavedStateHandlesVM;

    return-object p0
.end method
